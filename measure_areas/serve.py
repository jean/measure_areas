# -*- coding: utf-8 -*-

"""Console script to start a bottle server for measure_areas."""

from bottle import route, run, request, template, get, static_file
from tempfile import NamedTemporaryFile
from measure_areas.measure_areas import measure_areas


def main():
    """Server for measure_areas."""
    run()
    return "OK"

@route('/measure', method='POST')
def measure():
    upload = request.files.get('upload', None)
    if not upload:
        return "No files specified"
    tmpfile = NamedTemporaryFile()
    upload.save(tmpfile.name, overwrite=True)
    return measure_areas(tmpfile.name)

@get("/css/<filepath:re:.*\.(css|map)>")
def css(filepath):
    return static_file(filepath, root="css")

@get("/font/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
def font(filepath):
    return static_file(filepath, root="font")

@get("/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
def img(filepath):
    return static_file(filepath, root="img")

@get("/js/<filepath:re:.*\.js>")
def js(filepath):
    return static_file(filepath, root="js")

@route('/')
def index():
    return template('index.tpl')

if __name__ == "__main__":
    main()

