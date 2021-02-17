require 'test_helper'

class IngredientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingrediente = ingredientes(:one)
  end

  test "should get index" do
    get ingredientes_url
    assert_response :success
  end

  test "should get new" do
    get new_ingrediente_url
    assert_response :success
  end

  test "should create ingrediente" do
    assert_difference('Ingrediente.count') do
      post ingredientes_url, params: { ingrediente: { descricao: @ingrediente.descricao, nome: @ingrediente.nome, preco: @ingrediente.preco, produto_id: @ingrediente.produto_id, quantidade: @ingrediente.quantidade, vencimento: @ingrediente.vencimento } }
    end

    assert_redirected_to ingrediente_url(Ingrediente.last)
  end

  test "should show ingrediente" do
    get ingrediente_url(@ingrediente)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingrediente_url(@ingrediente)
    assert_response :success
  end

  test "should update ingrediente" do
    patch ingrediente_url(@ingrediente), params: { ingrediente: { descricao: @ingrediente.descricao, nome: @ingrediente.nome, preco: @ingrediente.preco, produto_id: @ingrediente.produto_id, quantidade: @ingrediente.quantidade, vencimento: @ingrediente.vencimento } }
    assert_redirected_to ingrediente_url(@ingrediente)
  end

  test "should destroy ingrediente" do
    assert_difference('Ingrediente.count', -1) do
      delete ingrediente_url(@ingrediente)
    end

    assert_redirected_to ingredientes_url
  end
end
