require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  test 'deve salvar o cliente com nome, telefone, celular, email e endereco' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    endereco.save
    cliente = Cliente.new nome: 'Leonardo Noronha', telefone: '376173333',celular:'999994444',email:'leonardo@gmail.com', endereco_id: endereco.id
    assert cliente.save
  end
  test 'deve deletar o cliente' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    endereco.save
    cliente = Cliente.new nome: 'Leonardo Noronha', telefone: '376173333',celular:'999994444',email:'leonardo@gmail.com', endereco_id: endereco.id
    cliente.save
    assert cliente.destroy
  end
  test 'deve editar o cliente de nome' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    endereco.save
    cliente = Cliente.new nome: 'Leonardo Noronha', telefone: '376173333',celular:'999994444',email:'leonardo@gmail.com', endereco_id: endereco.id
    cliente.save
    assert cliente.update nome: 'Leonardo Noronha Silva'
  end
  test 'não deve salvar cliente sem rua' do
    endereco = Endereco.new  numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    endereco.save
    cliente = Cliente.new nome: 'Leonardo Noronha', telefone: '376173333',celular:'999994444',email:'leonardo@gmail.com', endereco_id: endereco.id
    assert_not cliente.save
  end
  test 'não deve salvar com nome violando complemento minimo' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    endereco.save
    cliente = Cliente.new nome: 'Leonardo ', telefone: '376173333',celular:'999994444',email:'leonardo@gmail.com', endereco_id: endereco.id
    assert_not cliente.save
  end
  test 'deve editar o cliente com formato do telefone diferente' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    endereco.save
    cliente = Cliente.new nome: 'Leonardo Noronha', telefone: '376173333',celular:'999994444',email:'leonardo@gmail.com', endereco_id: endereco.id
    cliente.save
    assert_not cliente.update telefone: '37617AA33'
  end
end
