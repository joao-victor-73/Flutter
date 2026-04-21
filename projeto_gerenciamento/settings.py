USERNAME = 'root'
PASSWORD = 'darc147'
SERVER =  'localhost'
DB = 'gerenciamento_contas'

SQLALCHEMY_DATABASE_URI = f'mysql://{USERNAME}:{PASSWORD}@{SERVER}/{DB}'

SQLALCHEMY_TRACK_MODIFICATIONS = True

SECRET_KEY = "Chave_secreta"

