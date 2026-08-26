
import os 

import redis
from flask import Flask




r= redis.Redis(host=os.getenv('REDIS_HOST', 'localhost'), port = int(os.getenv('REDIS_PORT', '6379')), db=int(os.getenv('REDIS_DB', '0')))
app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello world! Redis/Flask is up and running"

@app.route('/count')
def count():
    count = r.incr('page_views')
    return f'Page views: {count}'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)


