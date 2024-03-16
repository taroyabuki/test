cat r.ipynb | jq 'del(.cells[].id)' > tmp
rm r.ipynb
mv tmp r.ipynb

cat python.ipynb | jq 'del(.cells[].id)' > tmp
rm python.ipynb
mv tmp python.ipynb

cat python-results.ipynb | jq 'del(.cells[].id)' > tmp
rm python-results.ipynb
mv tmp python-results.ipynb
