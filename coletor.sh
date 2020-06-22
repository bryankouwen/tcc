
for j in {13..20}; do for i in 0{1..9} {10..12} ; do wget http://www.portaltransparencia.gov.br/download-de-dados/cpgf/20$j$i; done; done
find . -type f -exec mv '{}' '{}'.zip \;
unzip \*.zip
rm *.zip
for file in *.csv; do iconv -f iso-8859-1 -t utf8 "$file" >"$file.new" && mv -f "$file.new" "$file"; done
