from flask import Flask,render_template
import os, datetime
_basedir = os.path.abspath(os.path.dirname(__file__))
print datetime.datetime.now()


app = Flask(__name__)

@app.route("/")
def index():
    return render_template('index.html')
    
if __name__ == "__main__":
    app.run()

