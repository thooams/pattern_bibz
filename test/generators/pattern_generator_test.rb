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
end
