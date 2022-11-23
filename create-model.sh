modelname="$1"

if [ ! -d src/$modelname ]; then
  mkdir src/$modelname 
fi

cd src/$modelname/

touch model.py
touch preprocess.py
touch train.py