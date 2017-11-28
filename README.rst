=============
Measure Areas
=============

Measure areas of shapes in SVG


Install
-------

::

    git clone https://github.com/jean/measure_areas.git
    cd measure_areas
    virtualenv .
    . bin/activate
    pip install -e .

Usage
-----

Commandline usage::

        ./bin/measure_areas filename ...

You can start up a server too::

        ./bin/measure_areas_serve ...

This accepts POSTs on port 8080, expecting a file under the key `upload`.

Features
--------

* Naively try and compute the total enclosed area in files given on the commandline

* Free software: MIT license

Credits
---------

This package was created with Cookiecutter_ and the `audreyr/cookiecutter-pypackage`_ project template.

.. _Cookiecutter: https://github.com/audreyr/cookiecutter
.. _`audreyr/cookiecutter-pypackage`: https://github.com/audreyr/cookiecutter-pypackage

