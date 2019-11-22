import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
	return "Welcome Checho!"

@app.route('/how are you')
def hello():
	return 'I am sick'

if __name__ == "__main___":
	app.run( host="0.0.0.0", port=8080)
