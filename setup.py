import os

from setuptools import setup, find_packages

here = os.path.abspath(os.path.dirname(__file__))
README = open(os.path.join(here, 'README.txt')).read()
CHANGES = open(os.path.join(here, 'CHANGES.txt')).read()

requires = [
    'pyramid'
    , 'beaker'
    , 'pyramid_beaker'
    , 'pyramid_debugtoolbar'
    , 'waitress'
    , 'sqlalchemy'
    , 'gunicorn'
    , 'hiero'
    , 'hem'
    , 'horus'
    , 'deform_bootstrap'
    # testing dependancies
    , 'webtest'
    , 'mock'
]

setup(name='pzatrick_com',
    version='0.0',
    description="pzatrick's website",
    long_description=README + '\n\n' +  CHANGES,
    classifiers=[
    "Programming Language :: Python",
    "Framework :: Pylons",
    "Topic :: Internet :: WWW/HTTP",
    "Topic :: Internet :: WWW/HTTP :: WSGI :: Application",
    ],
    author='',
    author_email='',
    url='',
    keywords='web pyramid pylons',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=requires,
    tests_require=requires,
    test_suite="pzatrick_com",
    entry_points = """\
    [paste.app_factory]
    main = pzatrick_com:main
    [console_scripts]
    init_pzatrick_com_db = pzatrick_com.scripts.initializedb:main
    migrate_from_tekblog = pzatrick_com.scripts.migrate_from_tekblog:main
    """,
)

