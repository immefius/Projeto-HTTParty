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