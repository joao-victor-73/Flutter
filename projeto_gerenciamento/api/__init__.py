from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
import settings as settings

app = Flask(__name__)

app.config.from_object('settings')

db = SQLAlchemy(app)

mi = Migrate(app, db)

from .models import contas_models