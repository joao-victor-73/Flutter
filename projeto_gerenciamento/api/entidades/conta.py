class Conta():
    def __init__(self, nome, resumo, valor):
        self.__nome = nome
        self.__resumo = resumo
        self.__valor = valor

    # NOME
    @property
    def nome(self):
        return self.__nome

    @nome.setter
    def nome(self, nome):
        self.__nome = nome


    # RESUMO
    @property
    def resumo(self):
        return self.__resumo

    @resumo.setter
    def resumo(self, resumo):
        self.__resumo = resumo


    # VALOR
    @property
    def valor(self):
        return self.__valor

    @valor.setter
    def valor(self, valor):
        self.__valor = valor