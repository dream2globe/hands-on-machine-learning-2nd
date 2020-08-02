import io
from setuptools import find_packages, setup

# Read in the README for the long description on PyPI
def long_description():
    with io.open("README.md", "r", encoding="utf-8") as f:
        readme = f.read()
    return readme


setup(
    name="RealFaultPredictor",
    version="1.1.0",
    description="AI service for false alram detection of mobile RF test process",
    long_description=long_description(),
    url="",
    author="Seonghyeon Kang",
    author_email="shyeon.kang@samsung.com",
    license="MIT",
    packages=find_packages(),
    classifiers=["Programming Language :: Python :: 3", "Programming Language :: Python :: 3.8",],
    zip_safe=False,
)
