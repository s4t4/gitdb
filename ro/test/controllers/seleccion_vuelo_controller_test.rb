require 'test_helper'

class SeleccionVueloControllerTest < ActionDispatch::IntegrationTest
  test "should get seleccionVuelo" do
    get seleccion_vuelo_seleccionVuelo_url
    assert_response :success
  end

end
