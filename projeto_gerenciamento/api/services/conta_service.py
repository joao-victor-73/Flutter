from api import db
from api.models import contas_models


def listar_contas():
    contas = contas_models.Conta.query.all()
    return contas


def listar_conta_id(id):
    conta = contas_models.Conta.query.filter_by(id=id).first()
    return conta

def cadastrar_conta(conta):
    conta_bd = contas_models.Conta(nome=conta.nome, resumo=conta.resumo, valor=conta.valor)
    db.session.add(conta_bd)
    db.session.commit()
    return conta_bd


def atualizar_conta(conta, conta_nova):
    conta.nome = conta_nova.nome
    conta.resumo = conta_nova.resumo
    conta.valor = conta_nova.valor
    db.session.commit()
    return conta


def excluir_conta(conta):
    db.session.delete(conta)
    db.session.commit()