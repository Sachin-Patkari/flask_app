from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Dockerized Flask!"

if __name__ == "__main__":
    # Must run on 0.0.0.0 so host can access it
    app.run(host="0.0.0.0", port=5000, debug=True)
