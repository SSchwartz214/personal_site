require './test/test_helper'

class ErrorTest < CapybaraTestCase
  def test_gets_error_on_nonexistent_page
    visit '/blog'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
