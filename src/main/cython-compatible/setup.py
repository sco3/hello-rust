from setuptools import setup
from setuptools import Extension
from Cython.Build import cythonize




extensions = [
    Extension(
        "gen", ["cython_compatible/gen.py"],
        extra_compile_args=['-O3']
    )  
]

setup(
    ext_modules = cythonize(
        extensions,
        build_dir="build",
        language_level="3"
    )
)