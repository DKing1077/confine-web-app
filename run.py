from app import create_app
from config import Development, Production, Test

app = create_app(Test)

if __name__ == '__main__':
    app.run(debug=True)

