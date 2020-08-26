# javascript だけできる人をその人のレベルとともに取り出す
.[] | { name, js: (.skills[] | select(.area == "javascript") | .level) }
