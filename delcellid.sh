cat python.ipynb | jq 'del(.cells[].id)' > tmp
rm python.ipynb
mv tmp python.ipynb

cat python-results.ipynb | jq 'del(.cells[].id)' > tmp
rm python-results.ipynb
mv tmp python-results.ipynb
