from setuptools import setup, find_packages

setup(
    name='apiverve_grammarcheck',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Grammar Check is a grammar checker and spell check API that inspects text for spelling and grammar errors, returning the corrected wording, error count, and a modified flag. Paid plans add detailed rule descriptions, character offsets, and suggestions for every detected mistake.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/grammarcheck?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
