from flask import Flask, jsonify
import time

app = Flask(_name_)

@app.route('/heavy')
def heavy():
    time.sleep(1)  # Simulate heavy computation
    return jsonify({"message": "This is a heavy endpoint"})

@app.route('/')
def home():
    return jsonify({"message": "Hello, World!"})

if _name_ == "_main_":
    app.run(host='0.0.0.0', port=5000)
