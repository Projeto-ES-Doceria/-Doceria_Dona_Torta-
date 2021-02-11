Given('Estou logado como administrador com email {string} e senha {string}') do |email, password|
  visit "/login"
  fill_in "email", :with => email
  fill_in "password", :with => password
  click_button "Login"
end

And('Estou na pagina de cadastro de usuario') do
  visit "/usuarios/new"
end

When('Preencho os campos email com {string}, senha com {string} e confirmacao de senha com {string}') do |email, password, password_confirmation|
  fill_in "usuario[email]", :with => email
  fill_in "usuario[password]", :with => password
  fill_in "usuario[password_confirmation]", :with => password_confirmation
end

When('Clico no botao de confirmar') do
  click_button "Cadastrar"
end

Then('Vejo que o usuario de email {string} confirmado') do |email|
  expect(page).to have_content(email)
end

And('Estou na pagina de edicao do usuario de email {string}') do |email|
  visit "/usuarios"
  click_link "Edit-#{email}"
end

Given('Estou na pagina de usuarios e identifico o usuario de email {string}') do |email|
  visit "/usuarios/new"
  fill_in "usuario[email]", :with => email
  fill_in "usuario[password]", :with => "123456"
  fill_in "usuario[password_confirmation]", :with => "123456"
  click_button "Cadastrar"

  visit '/usuarios'
  expect(page).to have_content(email)
end

Then('Vejo a mensagem de que nao posso editar o usuario de email {string}') do |email|
  expect(page).to have_content(email)
  expect(page).to have_content("Somente o proprietário da conta pode fazer alterações.")
end

When('Clico em deletar o usuario de email {string}') do |email|
  click_link "Destroy-#{email}"
end

Then('Vejo a mensagem de que o usuario de email {string} foi removido') do |email|
  expect(page).to have_no_content(email)
end