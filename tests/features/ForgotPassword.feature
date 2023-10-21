Feature: Forgot Password

    Background:
        Given Abro o aplicativo
        And Nao estou logado

    @ForgotPassword
    Scenario: Eu solicito uma redefinicao de senha
        Given Eu clico em EsquecEu a senha?
        And Eu preencho o email valido e cadastrado
        When Eu clico em Enviar
        Then Exibe uma mensagem de sucesso "Enviamos as instrucoes para voce redefinir sua senha"
        And Clico em voltar
        Then Volta para tela inicial

    @ForgotPassword
    Scenario: Eu solicito uma redefinicao de senha de email invalido
        Given Eu clico em EsquecEu a senha?
        And Eu preencho o email invalido
        When Eu clico em Enviar
        Then O botao Proximo esta desativado

    @ForgotPassword
    Scenario: Eu solicito uma redefinicao de senha de sem preenchimento do email
        Given Eu clico em EsquecEu a senha?
        And Nao preencho o campo de email
        When Eu em Enviar
        Then O botao Proximo esta desativado


    @ForgotPassword
    Scenario: Eu cancelo uma solicitacao de definicao de senha
        Given Eu clico em EsquecEu a senha?
        When clico em Cancelar
        Then Volta para tela inicial
