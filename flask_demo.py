from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/ping")
def pinger():
    return "<p>I am under waterf!</p>"