file="$1"
echo Converting $file.py to notebook
ipynb-py-convert src/models/$file.py src/models/$file.ipynb
echo Finished