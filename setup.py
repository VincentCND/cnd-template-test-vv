"""Python setup.py for cnd_template_test_vv package"""
import io
import os
from setuptools import find_packages, setup


def read(*paths, **kwargs):
    """Read the contents of a text file safely.
    >>> read("cnd_template_test_vv", "VERSION")
    '0.1.0'
    >>> read("README.md")
    ...
    """

    content = ""
    with io.open(
        os.path.join(os.path.dirname(__file__), *paths),
        encoding=kwargs.get("encoding", "utf8"),
    ) as open_file:
        content = open_file.read().strip()
    return content


def read_requirements(path):
    return [
        line.strip()
        for line in read(path).split("\n")
        if not line.startswith(('"', "#", "-", "git+"))
    ]


setup(
    name="cnd_template_test_vv",
    version=read("cnd_template_test_vv", "VERSION"),
    description="Awesome cnd_template_test_vv created by VincentCND",
    url="https://github.com/VincentCND/cnd-template-test-vv/",
    long_description=read("README.md"),
    long_description_content_type="text/markdown",
    author="VincentCND",
    packages=find_packages(exclude=["tests", ".github"]),
    install_requires=read_requirements("requirements.txt"),
    entry_points={
        "console_scripts": ["cnd_template_test_vv = cnd_template_test_vv.__main__:main"]
    },
    extras_require={"test": read_requirements("requirements-test.txt")},
)
