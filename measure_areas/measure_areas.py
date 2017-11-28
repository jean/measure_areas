# -*- coding: utf-8 -*-

"""Main module."""
from svgpathtools import svg2paths

def measure_areas(filename):
    """
    Compute the areas of all paths in the SVG file `filename`
    """
    paths, attributes = svg2paths(filename)

    areas = []
    for p in paths:
        try:
            areas.append(p.area())
        except Exception as e:
            print("""
{0} in {1}:
{2}
""".format(repr(e), filename, p))

    print("{0}: {1}".format(filename, abs(sum(areas))))
    return "{0:,.2f}".format(abs(sum(areas)))
