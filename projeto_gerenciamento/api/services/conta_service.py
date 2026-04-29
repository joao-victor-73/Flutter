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


def alterar_saldo_conta(conta_id, operacao, tipo_funcao, valor_antigo=None):
    # tipo_funcao = 1 > Cadastro de operação
    # tipo_funcao = 2 > Atualização de operação
    # tipo_funcao = 3  > Remoção de operação

    conta = listar_conta_id(conta_id)

    if tipo_funcao == 1:    
        if operacao.tipo == "entrada":
            conta.valor += operacao.custo
        else:
            conta.valor -= operacao.custo

    elif tipo_funcao == 2:
        if operacao.tipo == "entrada":
            conta.valor -= valor_antigo
            conta.valor += operacao.custo
        else:
            conta.valor += valor_antigo
            conta.valor -= operacao.custo
    else:
        if operacao.tipo.value == "entrada":
            conta.valor -= operacao.custo
        else:
            conta.valor += operacao.custo


    db.session.commit()