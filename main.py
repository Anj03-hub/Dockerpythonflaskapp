from flask import Flask, render_template

# Create the Flask app instance
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return render_template('index.html')

# If you want to test it directly
if __name__ == "__main__":
    app.run(debug=True)
