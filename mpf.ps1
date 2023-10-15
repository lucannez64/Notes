# Get all markdown files in current directory recursively 
$mdFiles = ls -a *.md  

# Filter files with fzf
$selected = $mdFiles | fzf
$pdfFile = $selected.Replace(".md", ".pdf")

& "start" $pdfFile
# Open MD file in Neovim
nvim $selected

# Get PDF file with same name



