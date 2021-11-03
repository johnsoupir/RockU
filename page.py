from flask import Flask, render_template

app = Flask(__name__)


posts = [

    {
    'author': 'john',
    'title': 'names',
    'content': 'Blah, blah',
    'date_posted': 'today dummy!'
    
    },
    {
    'author': 'jack',
    'title': 'derp',
    'content': 'Bleh, bleh',
    'date_posted': 'time is a construct!'
    } 
        ]





@app.route("/")
def hello():
    return render_template('home.html', post=posts)





if __name__ == '__main__':
    app.run(debug=True)
