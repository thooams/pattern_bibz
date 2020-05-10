require 'test_helper'
require 'value_objects/pattern_value_object'

class PatternValueObjectTest < ActiveSupport::TestCase
  test 'fetch a simple pattern name' do
    pattern_value_object = PatternValueObject.new('custom_decorator')

    assert_equal 'decorator', pattern_value_object.pattern_name
  end

  test 'fetch a known compound name' do
    pattern_value_object = PatternValueObject.new('custom_view_object')

    assert_equal 'view_object', pattern_value_object.pattern_name
  end

  test 'pattern klass name' do
    pattern_value_object = PatternValueObject.new('custom_view_object')

    assert_equal 'ViewObject', pattern_value_object.pattern_klass_name
  end

  test 'pattern pattern klass name' do
    pattern_value_object = PatternValueObject.new('custom_view_object')

    assert_equal 'CustomViewObject', pattern_value_object.klass_name
  end

  test 'pattern directory name' do
    pattern_value_object = PatternValueObject.new('custom_view_object')

    assert_equal 'view_objects', pattern_value_object.directory_name
  end

  test 'pattern file name' do
    pattern_value_object = PatternValueObject.new('custom_view_object')

    assert_equal 'custom_view_object', pattern_value_object.file_name
  end
end
