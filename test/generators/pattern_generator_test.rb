require 'test_helper'
require 'generators/pattern/pattern_generator'

class PatternGeneratorTest < Rails::Generators::TestCase
  tests PatternGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  test 'generator runs without errors' do
    assert_nothing_raised do
      run_generator ['MyCustomDecorator']
      assert_file 'app/decorators/my_custom_decorator.rb'
      assert_file 'test/decorators/my_custom_decorator_test.rb'
    end
  end

  test 'generator runs with compound name pattern' do
    assert_nothing_raised do
      run_generator ['MyCustomViewObject']
      assert_file 'app/view_objects/my_custom_view_object.rb'
      assert_file 'test/view_objects/my_custom_view_object_test.rb'
    end
  end
end
