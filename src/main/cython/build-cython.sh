
# pip install cython 


rm -rf build
rm -f *.so

python setup.py build_ext --inplace --verbose 


 python main.py