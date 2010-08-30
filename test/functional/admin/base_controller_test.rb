require 'test_helper'

class Admin::BaseControllerTest < ActionController::TestCase     
  should 'be an ApplicationController' do
    assert @controller.is_a?(ApplicationController)
  end
end