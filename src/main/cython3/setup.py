from setuptools import setup, Extension
from Cython.Build import cythonize



setup(
    ext_modules=cythonize([Extension("main", ["main.py"], extra_compile_args=['-O3'])]),
    py_modules=[],
)
