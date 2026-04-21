from api import ma
from ..models import contas_models
from marshmallow import fields

class ContaSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = contas_models.Conta
        load_instance = True

    nome = fields.String(required=True)
    resumo = fields.String(required=True)
    valor = fields.Float(required=True)