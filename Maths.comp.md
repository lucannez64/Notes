```mcomp
let results = find_backlink(current_file);

let md = "";

for result in results {
  md += "["+result+"]("+result+")\n";
}

md
```
