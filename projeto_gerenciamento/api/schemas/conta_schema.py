from api import ma
from ..models import contas_models
from marshmallow import fields
from api.schemas import operacao_schema

class ContaSchema(ma.SQLAlchemyAutoSchema):
    # operacoes = ma.Nested(operacao_schema.OperacaoSchema, many=True)
    operacoes = ma.Nested("OperacaoSchema", many=True)


    class Meta:
        model = contas_models.Conta
        load_instance = True

    nome = fields.String(required=True)
    resumo = fields.String(required=True)
    valor = fields.Float(required=True)