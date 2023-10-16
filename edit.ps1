ls -a *.pdf | fzf | % {nvim $_ }
