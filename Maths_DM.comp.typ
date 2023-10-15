#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths DM.comp",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "13 Octobre, 2023",
)

#set heading(numbering: "1.1.")

```mcomp
let results = find_backlink(current_file);

let md = "";

for result in results {
  md += "["+result+"]("+result+")\n";
}

md
```

#link("Maths.pdf")[Maths]
