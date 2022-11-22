model="$1"
echo Converting $model to notebook

if [ ! -d "src/${model}_nb/" ]; then
  mkdir "src/${model}_nb/" 
fi

for filepath in src/$model/*.py; do
    ipynb-py-convert "${filepath%.*}".py "${filepath%.*}".ipynb
    filename=$(basename -- "$filepath")
    mv "${filepath%.*}".ipynb "src/${model}_nb/${filename%.*}.ipynb"
done