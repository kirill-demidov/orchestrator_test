from flask import Flask
import time

app = Flask(__name__)

@app.route('/')
def hello():
    return 'LLM Server is running!'

if __name__ == '__main__':
    print("Starting LLM Server...")
    app.run(host='0.0.0.0', port=8001) 