require 'test_helper'

class ListTest < ActiveSupport::TestCase

  def setup
    @list = List.new(name: "First List", description: "Market")
  end

  test "valid list" do
    assert @list.valid?
  end

  test 'invalid without description' do
    @list.description = nil
    refute @list.valid?, 'list is valid without a name'
    assert_not_nil @list.errors[:name], 'no validation error for name present'
  end

  test 'invalid without name' do
    @list.name = nil
    refute @list.valid?, 'list is valid without a description'
    assert_not_nil @list.errors[:description], 'no validation error for description present'
  end

  test '#tasks' do
    @first_task = @list.task.new
    @second_first = List.new(name: "First List", description: "Market")
    assert_equal 2, @list.tasks.size
  end
end
