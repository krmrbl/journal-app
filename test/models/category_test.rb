require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should not save Category without name" do 
    category = Category.new
    category.name = ''
    category.body = ''
    assert_not category.save, "Saved the Category without a name"
  end

  test "should not save duplicate Category" do 
    category1 = Category.new
    category1.name = 'Category'
    category1.save
    category2 = Category.new
    category2.name = 'category'
    assert_not category2.save, "Saved the Category with an existing name"
  end
end
