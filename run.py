from app import create_app
from config import Development, Production, Test

app = create_app(Test)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)


