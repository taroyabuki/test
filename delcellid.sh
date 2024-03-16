cat python.ipynb \
| jq 'walk(if type == "object" then del(.id) else . end)' \
| jq 'walk(if type == "object" and .metadata == {} then del(.metadata) else . end)' \
> tmp
rm python.ipynb
mv tmp python.ipynb

cat python-results.ipynb \
| jq 'walk(if type == "object" then del(.id) else . end)' \
| jq 'walk(if type == "object" and .metadata == {} then del(.metadata) else . end)' \
> tmp
rm python-results.ipynb
mv tmp python-results.ipynb
