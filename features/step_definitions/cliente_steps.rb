And "estou na pagina de criacaodo cliente" do
visit "/clientes/new"
expect(page).to have_current_path('/clientes/new')
end

When('eu preencho nome {string}, telefone {string},celular {string},email {string}, rua {string},numero {string},bairro {string}, cidade {string},cep {string},estado {string},complemento {string}') do |nome, telefone, celular, email, rua, numero, bairro, cidade, cep, estado, complemento|
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[telefone]', :with => telefone
    fill_in 'cliente[celular]', :with => celular
    fill_in 'cliente[email]', :with => email
    fill_in 'cliente[endereco_attributes][rua]', :with => rua
    fill_in 'cliente[endereco_attributes][numero]', :with => numero
    fill_in 'cliente[endereco_attributes][bairro]', :with => bairro
    fill_in 'cliente[endereco_attributes][cidade]', :with => cidade
    fill_in 'cliente[endereco_attributes][cep]', :with => cep
    fill_in 'cliente[endereco_attributes][estado]', :with => estado
    fill_in 'cliente[endereco_attributes][complemento]', :with => complemento
end

Then("eu vejo uma mensagem {string}") do |mensagem|
    expect(page).to have_content(mensagem)
end

And('o cliente nome {string}, telefone {string},celular {string},email {string}, rua {string},numero {string},bairro {string}, cidade {string},cep {string},estado {string},complemento {string} existe') do |nome, telefone, celular, email, rua, numero, bairro, cidade, cep, estado, complemento|
    visit "/clientes/new"
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[telefone]', :with => telefone
    fill_in 'cliente[celular]', :with => celular
    fill_in 'cliente[email]', :with => email
    fill_in 'cliente[endereco_attributes][rua]', :with => rua
    fill_in 'cliente[endereco_attributes][numero]', :with => numero
    fill_in 'cliente[endereco_attributes][bairro]', :with => bairro
    fill_in 'cliente[endereco_attributes][cidade]', :with => cidade
    fill_in 'cliente[endereco_attributes][cep]', :with => cep
    fill_in 'cliente[endereco_attributes][estado]', :with => estado
    fill_in 'cliente[endereco_attributes][complemento]', :with => complemento
    click_button 'commit'
end

When("estou na pagina de edicao do cliente com o nome {string") do |nome|
    visit '/clientes'
    click_link "e-#{nome}"
end

Then("eu vejo uma mensagem {string}") do |mensagem|
    expect(page).to have_content(mensagem)
end

Then("eu vejo uma mensagem erro") do
    expect(page).to have_content("1 error prohibited this client from being saved:")
end

And 'eu clico em criar cliente' do
    click_button 'commit'
end

And 'eu clico em editar cliente' do
    click_button 'commit'
end