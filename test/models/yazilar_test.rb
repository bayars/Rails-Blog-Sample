require 'test_helper'

class YazilarTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Yazilar.new
    assert article.save
  end
  # test "the truth" do
  #   assert true
  # end
end
