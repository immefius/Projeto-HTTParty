# language: pt

Funcionalidade: Pesquisar Funcionarios
    Para consultar sobre os funcionarios
    O usuário do sistema
    Deseja obter essas informacoes

    Cenario: Buscar informações de funcionario
        Dado que o usuario consulte informacoes do funcionario
        Quando ele realizar a busca
        Entao uma lista de funcionarios deve retornar

    @cenario_dois
    Cenario: Cadastrar novo funcionario
        Dado que o usuario queira cadastrar um novo funcionario
        Quando ele inserir seus dados
        Entao o funcionario estara cadastrado

    @cenario_tres
    Cenario: Alterar informacoes cadastrais
        Dado que o usuario queira alterar alguma informacao
        Quando ele enviar as alteracoes
        Entao novas informacoes serao definidas

    @cenario_quatro
    Cenario: Deletar cadastro de funcionario
        Dado que o usuario queira deletar um funcionario
        Quando ele enviar a identificacao unica
        Entao esse funcionario sera deletado do sistema