from quart import Quart

app = Quart(__name__)

@app.route('/')
async def hello():
    return 'hello'

@app.route('/users')
async def welcome():
    return 'this is the users page'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)