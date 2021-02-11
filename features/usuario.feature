Feature: Usuario
  As an usuario do sistema eu desejo ter acesso a logins e cadastros do sistema

    Background:
      Given Estou logado como administrador com email "adm@email.com" e senha "123456"

    Scenario: cadastrar usuario
      #Given Estou logado como administrador com email "adm@email.com" e senha "123456"
      And Estou na pagina de cadastro de usuario
      When Preencho os campos email com "usr@email.com", senha com "123456" e confirmacao de senha com "123456"
      And Clico no botao de confirmar
      Then Vejo que o usuario de email "usr@email.com" confirmado

    Scenario: editar usuario
      #Given Estou logado como administrador com email "adm@email.com" e senha "123456"
      And Estou na pagina de edicao do usuario de email "adm@email.com"
      And Preencho os campos email com "adm@email.com", senha com "123456789" e confirmacao de senha com "123456789"
      When Clico no botao de confirmar
      Then Vejo que o usuario de email "adm@email.com" confirmado

    @cenario_positivo
    Scenario: remover usuario
      Given Estou na pagina de usuarios e identifico o usuario de email "leo@email.com"
      When Clico em deletar o usuario de email "leo@email.com"
      Then Vejo a mensagem de que o usuario de email "leo@email.com" foi removido

    @cenario_negativo
    Scenario: editar usuario sem ser proprietario
      Given Estou na pagina de usuarios e identifico o usuario de email "junio@email.com"
      And Estou na pagina de edicao do usuario de email "junio@email.com"
      Then Vejo a mensagem de que nao posso editar o usuario de email "junio@email.com"






