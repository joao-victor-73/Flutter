from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_marshmallow import Marshmallow
from flask_restful import Api
import settings as settings

app = Flask(__name__)

app.config.from_object('settings')

db = SQLAlchemy(app)

ma = Marshmallow(app)

mi = Migrate(app, db)

api = Api(app)

from .models import contas_models, operacao_model
from .views import conta_view, operacao_view