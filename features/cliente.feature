Feature: cliente
  As an  Como administrador da Doceria_Dona_Torta
  I whant to criar, editar e deletar um cliente com nome, telefone, celular, email, endereco
  so that eu possa manipular dados do cliente

  Scenario: criar cliente
    Given conectado como administrador com email 'carla@gmail.com' e senha '12345678'
    And estou na pagina de criacao do cliente
    When eu preencho nome 'Leonardo Noronha', telefone '376173333',celular'999994444',email'leonardo@gmail.com', rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    And eu clico em criar cliente
    Then eu vejo uma mensagem 'Cliente was successfully created'

  Scenario: editar cliente
    Given  conectado como administrador com email 'carla@gmail.com' e senha '12345678'
    And o cliente nome 'Leonardo Noronha', telefone '376173333',celular'999994444',email'leonardo@gmail.com', rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    When estou na pagina de edicao do cliente com o nome 'Leonardo Noronha'
    And eu preencho nome 'Leonardo Noronha Silva' , telefone '376173333',celular'999994444',email'leonardo@gmail.com',rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    And eu clico em editar cliente
    Then eu vejo uma mensagem 'Cliente was successfully updated'

  Scenario: editar cliente quando tamanho do nome menor que 10
    Given  conectado como administrador com email 'carla@gmail.com' e senha '12345678'
    And o cliente nome 'Leonardo Noronha', telefone '376173333',celular'999994444',email'leonardo@gmail.com', rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    When estou na pagina de edicao do cliente com o nome 'Leonardo Noronha'
    And eu preencho nome 'Leonardo ', telefone '376173333',celular'999994444',email'leonardo@gmail.com',rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    And eu clico em editar cliente
    Then eu vejo uma mensagem erro 'Nome is too short (minimum is 10 characters)'

  Scenario: editar cliente quando tamanho do numero de telefone maior que 11
    Given  conectado como administrador com email 'carla@gmail.com' e senha '12345678'
    And o cliente nome 'Leonardo Noronha', telefone '376173333',celular'999994444',email'leonardo@gmail.com', rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    When estou na pagina de edicao do cliente com o nome 'Leonardo Noronha'
    And eu preencho nome 'Leonardo Noronha ', telefone '376173333444',celular'999994444',email'leonardo@gmail.com',rua 'rua numero1',numero '202',bairro'centro', cidade 'Garanhuns',cep'55290000',estado'pe',complemento 'prox hospital'
    And eu clico em editar cliente
    Then eu vejo uma mensagem erro 'Telefone is too long (maximum is 11 characters)'