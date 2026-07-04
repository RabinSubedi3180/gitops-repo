from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
	env = os.getenv("APP_ENV", "Development")
	return f"<h1>Hello from Updated DevOps Pipeline! Target Env: {env}</h1>"
if __name__ == '__main__':
	app.run(host='0.0.0.0', port=5000)
