
# pip install cython 


rm -rf build
rm -f *.so

#export CC=clang

python setup.py build_ext --inplace

#--verbose


 python main.py