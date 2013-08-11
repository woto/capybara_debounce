require 'test_helper'

class TasksTest < ActionDispatch::IntegrationTest

  test "Failed debounced submit test" do
    visit '/'
    click_link 'Debounced submit'
    assert find 'b', text: '1'
  end

  test "Passed debounced submit test" do
    visit '/'
    click_link 'Debounced submit'
    sleep 3
    assert find 'b', text: '1'
  end
end
