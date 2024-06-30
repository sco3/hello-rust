from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize(
        "gen.py", 
        build_dir="build",
        language_level="3"
    )
)