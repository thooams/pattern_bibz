require 'value_objects/pattern_value_object'

# Generate template files and tests  with a patten name
class PatternGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_application_pattern_file
    @pattern_value_object = PatternValueObject.new(file_name)
    application_file_name = "app/#{@pattern_value_object.directory_name}/application_#{@pattern_value_object.pattern_name}.rb"

    return if File.exist?(application_file_name)

    create_file application_file_name, <<~FILE
      # frozen_string_literal: true

      class Application#{@pattern_value_object.pattern_klass_name}
      end
    FILE
  end

  def create_app_pattern_file
    create_file "app/#{@pattern_value_object.directory_name}/#{@pattern_value_object.file_name}.rb", <<~FILE
      # frozen_string_literal: true

      class #{@pattern_value_object.klass_name} < Application#{@pattern_value_object.pattern_klass_name}
      end
    FILE
  end

  def create_test_application_pattern_file
    application_file_name = "test/#{@pattern_value_object.directory_name}/application_#{@pattern_value_object.pattern_name}_test.rb"

    return if File.exist?(application_file_name)

    create_file application_file_name, <<~FILE
      # frozen_string_literal: true

      require 'test_helper'

      class Application#{@pattern_value_object.pattern_klass_name}Test < ActiveSupport::TestCase
      end
    FILE
  end

  def create_test_pattern_file
    create_file "test/#{@pattern_value_object.directory_name}/#{@pattern_value_object.file_name}_test.rb", <<~FILE
      # frozen_string_literal: true

      require 'test_helper'

      class #{@pattern_value_object.klass_name}Test < ActiveSupport::TestCase
      end
    FILE
  end
end
