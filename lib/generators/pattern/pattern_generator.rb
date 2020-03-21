# Generate template files and tests  with a patten name
class PatternGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_application_pattern_file
    @pattern_name = file_name.split('_').last
    application_file_name = "app/#{@pattern_name.pluralize}/application_#{@pattern_name}.rb"

    return if File.exist?(application_file_name)

    create_file application_file_name, <<~FILE
      class Application#{@pattern_name.titleize}
      end
    FILE
  end

  def create_app_pattern_file
    create_file "app/#{@pattern_name.pluralize}/#{file_name}.rb", <<~FILE
      class #{class_name} < Application#{@pattern_name.titleize}
      end
    FILE
  end

  def create_test_application_pattern_file
    application_file_name = "test/#{@pattern_name.pluralize}/application_#{@pattern_name}_test.rb"

    return if File.exist?(application_file_name)

    create_file application_file_name, <<~FILE
      require 'test_helper'

      class Application#{@pattern_name.titleize}Test < ActiveSupport::TestCase
      end
    FILE
  end

  def create_test_pattern_file
    create_file "test/#{@pattern_name.pluralize}/#{file_name}_test.rb", <<~FILE
      require 'test_helper'

      class #{class_name}Test < ActiveSupport::TestCase
      end
    FILE
  end
end
