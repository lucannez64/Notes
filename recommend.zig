const std = @import("std");
const rand = std.rand;
const Allocator = std.mem.Allocator;
const fs = std.fs;

var max_user_id: usize = 0;
var max_movie_id: usize = 0;

var ratings: [][]f64 = undefined;
var user_factors: [][]f64 = undefined;
var movie_factors: [][]f64 = undefined;

const NUM_FACTORS = 10;
const NUM_ITERATIONS = 100;
const LEARNING_RATE = 0.001;
const REGULARIZATION = 0.02;
const MU = 3.5; // Moyenne globale des notes

fn initFactors(rng: *const rand.Random) !void {
    var i: usize = 0;
    while (i < max_user_id) : (i += 1) {
        var j: usize = 0;
        while (j < NUM_FACTORS) : (j += 1) {
            user_factors[i][j] = rng.float(f64);
        }
    }

    i = 0;
    while (i < max_movie_id) : (i += 1) {
        var j: usize = 0;
        while (j < NUM_FACTORS) : (j += 1) {
            movie_factors[i][j] = rng.float(f64);
        }
    }
}

fn predictRating(user: usize, movie: usize) f64 {
    var sum: f64 = 0.0;
    var f: usize = 0;
    while (f < NUM_FACTORS) : (f += 1) {
        sum += user_factors[user][f] * movie_factors[movie][f];
    }
    return MU + sum;
}

fn trainModel() !void {
    var iter: usize = 0;
    while (iter < NUM_ITERATIONS) : (iter += 1) {
        var u: usize = 0;
        while (u < max_user_id) : (u += 1) {
            var i: usize = 0;
            while (i < max_movie_id) : (i += 1) {
                if (ratings[u][i] > 0) { // Si une note existe pour cet utilisateur et ce film
                    const err = ratings[u][i] - predictRating(u, i);
                    var f: usize = 0;
                    while (f < NUM_FACTORS) : (f += 1) {
                        const tmp = user_factors[u][f];
                        user_factors[u][f] += LEARNING_RATE * (err * movie_factors[i][f] - REGULARIZATION * user_factors[u][f]);
                        movie_factors[i][f] += LEARNING_RATE * (err * tmp - REGULARIZATION * movie_factors[i][f]);
                    }
                }
            }
        }
    }
}

fn loadRatingsData(allocator: Allocator) !void {
    const ratings_file = try fs.cwd().openFile("ratings.csv", .{});
    defer ratings_file.close();

    var buf_reader = std.io.bufferedReader(ratings_file.reader());
    var in_stream = buf_reader.reader();

    // Ignorer la ligne d'en-tête
    var header_buf: [1024]u8 = undefined;
    _ = try in_stream.readUntilDelimiterOrEof(&header_buf, '\n');

    var line_buf: [1024]u8 = undefined;
    while (try in_stream.readUntilDelimiterOrEof(&line_buf, '\n')) |line| {
        var it = std.mem.tokenize(u8, line, ",");
        const user_id = try std.fmt.parseInt(usize, it.next().?, 10);
        const movie_id = try std.fmt.parseInt(usize, it.next().?, 10);
        const rating = try std.fmt.parseFloat(f64, it.next().?);
        std.debug.print("{d:.2}\n",.{rating});
        max_user_id = @max(max_user_id, user_id);
        max_movie_id = @max(max_movie_id, movie_id);
    }

    // Allouer les tableaux avec les dimensions maximales
    ratings = try allocator.alloc([]f64, max_user_id + 1);
    user_factors = try allocator.alloc([]f64, max_user_id + 1);
    movie_factors = try allocator.alloc([]f64, max_movie_id + 1);

    for (ratings) |*row| {
        row.* = try allocator.alloc(f64, max_movie_id + 1);
    }

    for (user_factors) |*row| {
        row.* = try allocator.alloc(f64, NUM_FACTORS);
    }

    for (movie_factors) |*row| {
        row.* = try allocator.alloc(f64, NUM_FACTORS);
    }

    // Réinitialiser le curseur du fichier au début
    try ratings_file.seekTo(0);
    in_stream = buf_reader.reader();

    // Ignorer la ligne d'en-tête
    _ = try in_stream.readUntilDelimiterOrEof(&header_buf, '\n');

    // Remplir les tableaux avec les données
    while (try in_stream.readUntilDelimiterOrEof(&line_buf, '\n')) |line| {
        var it = std.mem.tokenize(u8, line, ",");
        const user_id = try std.fmt.parseInt(usize, it.next().?, 10);
        const movie_id = try std.fmt.parseInt(usize, it.next().?, 10);
        const rating = try std.fmt.parseFloat(f64, it.next().?);

        ratings[user_id - 1][movie_id - 1] = rating;
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer {
        for (ratings) |row| {
            gpa.allocator().free(row);
        }
        gpa.allocator().free(ratings);
        for (user_factors) |row| {
            gpa.allocator().free(row);
        }
        gpa.allocator().free(user_factors);
        for (movie_factors) |row| {
            gpa.allocator().free(row);
        }
        gpa.allocator().free(movie_factors);
        _ = gpa.deinit();
    }
    const allocator = gpa.allocator();

    var rng = rand.DefaultPrng.init(@intCast(std.time.milliTimestamp()));

    try loadRatingsData(allocator);
    try initFactors(&rng.random());
    try trainModel();

    const user_id = 611;
    const movie_id = 189333;
    const predicted_rating = predictRating(user_id - 1, movie_id - 1);
    std.debug.print("Prédiction pour l'utilisateur {} et le film {} : {d:.2}\n", .{ user_id, movie_id, predicted_rating });
}
