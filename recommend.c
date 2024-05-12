#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_USERS 610
#define MAX_MOVIES 9742
#define NUM_FACTORS 10
#define NUM_ITERATIONS 100
#define LEARNING_RATE 0.001
#define REGULARIZATION 0.02

double ratings[MAX_USERS][MAX_MOVIES];
double user_factors[MAX_USERS][NUM_FACTORS];
double movie_factors[MAX_MOVIES][NUM_FACTORS];
double mu = 3.5; // Moyenne globale des notes

void init_factors() {
    for (int u = 0; u < MAX_USERS; u++) {
        for (int f = 0; f < NUM_FACTORS; f++) {
            user_factors[u][f] = (double)rand() / RAND_MAX;
        }
    }

    for (int i = 0; i < MAX_MOVIES; i++) {
        for (int f = 0; f < NUM_FACTORS; f++) {
            movie_factors[i][f] = (double)rand() / RAND_MAX;
        }
    }
}

double predict_rating(int user, int movie) {
    double sum = 0.0;
    for (int f = 0; f < NUM_FACTORS; f++) {
        sum += user_factors[user][f] * movie_factors[movie][f];
    }
    return mu + sum;
}

void train_model() {
    for (int iter = 0; iter < NUM_ITERATIONS; iter++) {
        for (int u = 0; u < MAX_USERS; u++) {
            for (int i = 0; i < MAX_MOVIES; i++) {
                if (ratings[u][i] > 0) { // Si une note existe pour cet utilisateur et ce film
                    double err = ratings[u][i] - predict_rating(u, i);
                    for (int f = 0; f < NUM_FACTORS; f++) {
                        double tmp = user_factors[u][f];
                        user_factors[u][f] += LEARNING_RATE * (err * movie_factors[i][f] - REGULARIZATION * user_factors[u][f]);
                        movie_factors[i][f] += LEARNING_RATE * (err * tmp - REGULARIZATION * movie_factors[i][f]);
                    }
                }
            }
        }
    }
}

int main() {
    // Initialiser les facteurs user et movie de manière aléatoire
    init_factors();

    // Entraîner le modèle
    train_model();

    // Prédire une note pour un utilisateur et un film
    int user_id = 42;
    int movie_id = 567;
    double predicted_rating = predict_rating(user_id, movie_id);
    printf("Prédiction pour l'utilisateur %d et le film %d : %.2f\n",
           user_id, movie_id, predicted_rating);

    return 0;
}
