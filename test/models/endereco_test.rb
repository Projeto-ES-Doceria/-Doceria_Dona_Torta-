require 'test_helper'

class EnderecoTest < ActiveSupport::TestCase

  test 'deve salvar endreco com rua, numero, bairro, cidade, cep, estado,complemento' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    assert endereco.save
  end
  test 'deve deletar o endereco' do
  endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
  assert endereco.delete
  end
  test 'deve editar a rua' do
    endereco = Endereco.new  rua: 'rua numero1',numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    assert endereco.update rua: 'Paraiba'
  end
  test 'não deve salvar endreco sem rua'do
    endereco = Endereco.new  numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'55290000',estado:'pe',complemento: 'prox hospital'
    assert_not endereco.save
  end
  test 'não deve salvar endreco com cep formato violado'do
    endereco = Endereco.new  numero: '202',bairro:'centro', cidade: 'Garanhuns',cep:'5529AAAAA',estado:'pe',complemento: 'prox hospital'
    assert_not endereco.save
  end
end
