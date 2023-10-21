Feature: Signup

        Background:
            Given Abro o aplicativo
              And Nao estou logado

        @SignUp
        Scenario: Eu faco o SignUp sem preencher o Primeiro Nome
            Given eu clico em CADASTRE-SE
              And nao preencho o Primeiro Nome "Sergio"
             When clico em Proximo
             Then O botao Proximo esta desativado

        @SignUp
        Scenario: Eu faco o SignUp sem preencher o Sobrenome
            Given eu clico em CADASTRE-SE
              And eu preencho o Primeiro Nome "Sergio"
              And nao preencho a sobrenome "Santana"
             When clico em Proximo
             Then o botao Proximo esta desativado

        @SignUp
        Scenario: Eu faco o SignUp sem preencher o email
            Given eu clico em CADASTRE-SE
              And eu preencho o Primeiro Nome "Sergio"
              And eu preencho a sobrenome "Santana"
              And nao preencho a email "sergio.santana@email.com"
             When clico em Proximo
             Then o botao Proximo esta desativado

        @SignUp
        Scenario: Eu faco o SignUp sem preencher o Telefone

        @SignUp
        Scenario: Eu faco o SignUp sem preencher o CPF

        @SignUp
        Scenario: Eu faco o SignUp sem preencher o Data de Nascimento

        @SignUp
        Scenario: Eu faco o SignUp sem preencher a senha

        @SignUp
        Scenario: Eu faco o SignUp com a senha sem caractere especial

        @SignUp
        Scenario: Eu faco o SignUp sem preencher a confirmacao de senha

        @SignUp
        Scenario: Eu faco o SignUp com a confirmacao de senha diferente da senha

 
        @smoketest @SignUp @e2e
        Scenario: Eu faco o SignUp com sucesso - sem a comunicacao e ofertas personalizadas
            Given eu clico em CADASTRE-SE
              And eu preencho o Primeiro Nome "Sergio"
              And eu preencho a sobrenome "Santana"
              And eu preencho a email "sergio.santana@email.com"
              And eu preencho a Telefone "48991913984"
              And eu preencho a CPF "659.711.280-60"
              And eu preencho a Data de Nascimento "08/10/1982"
              And eu preencho a senha "Senha$teste1"
              And eu preencho a confirmacao da senha "Senha$teste1"
              And eu seleciono os aceites de Termo de uso
              And eu seleciono aceite de Politica de Privacidade
              And nao seleciono recebimento de Comunicacao e Ofertas Personalizadas WeChange
             When clico em Finalizar cadastro
             Then eu cadastro e realizado com sucesso



        @smoketest @SignUp @e2e
        Scenario:  Eu faco o SignUp com sucesso - com comunicacao e ofertas personalizadas
            Given eu clico em CADASTRE-SE
              And eu preencho o Primeiro Nome "Sergio"
              And eu preencho a sobrenome "Santana"
              And eu preencho a email "sergio.santana@email.com"
              And eu preencho a Telefone "48991913984"
              And eu preencho a CPF "659.711.280-60"
              And eu preencho a Data de Nascimento "08/10/1982"
              And eu preencho a senha "Senha$teste1"
              And eu preencho a confirmacao da senha "Senha$teste1"
              And eu seleciono os aceites de Termo de uso
              And eu seleciono aceite de Politica de Privacidade
              And eu seleciono recebimento de Comunicacao e Ofertas Personalizadas WeChange
             When clico em Finalizar cadastro
             Then eu cadastro e realizado com sucesso

        @smoketest @SignUp @e2e
        Scenario:  Eu faco o SignUp com sucesso - sem selecionar o Termo de Uso
            Given eu clico em CADASTRE-SE
              And eu preencho o Primeiro Nome "Sergio"
              And eu preencho a sobrenome "Santana"
              And eu preencho a email "sergio.santana@email.com"
              And eu preencho a Telefone "48991913984"
              And eu preencho a CPF "659.711.280-60"
              And eu preencho a Data de Nascimento "08/10/1982"
              And eu preencho a senha "Senha$teste1"
              And eu preencho a confirmacao da senha "Senha$teste1"
              And nao seleciono os aceites de Termo de uso
              And eu seleciono aceite de Politica de Privacidade
              And eu seleciono recebimento de Comunicacao e Ofertas Personalizadas WeChange
             When clico em Finalizar cadastro
             Then O botao Finalizar cadastro esta desativado

        @smoketest @SignUp @e2e
        Scenario:  Eu faco o SignUp com sucesso - sem selecionar a Politica de Privacidade
            Given eu clico em CADASTRE-SE
              And eu preencho o Primeiro Nome "Sergio"
              And eu preencho a sobrenome "Santana"
              And eu preencho a email "sergio.santana@email.com"
              And eu preencho a Telefone "48991913984"
              And eu preencho a CPF "659.711.280-60"
              And eu preencho a Data de Nascimento "08/10/1982"
              And eu preencho a senha "Senha$teste1"
              And eu preencho a confirmacao da senha "Senha$teste1"
              And eu seleciono os aceites de Termo de uso
              And nao seleciono aceite de Politica de Privacidade
              And eu seleciono recebimento de Comunicacao e Ofertas Personalizadas WeChange
             When clico em Finalizar cadastro
             Then O botao Finalizar cadastro esta desativado


