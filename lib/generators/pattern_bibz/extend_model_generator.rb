# frozen_string_literal: true

require 'rails/generators'
module PatternBibz
  module Generators
    # Extend the Rails model generator
    class ExtendModelGenerator < ::Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
      desc 'Extend Rails Model generator'

      def copy_initializer
        directory File.join(File.dirname(__dir__), 'pattern_bibz/templates'),
                  Rails.root.join('lib/templates/active_record/model'), mode: :preserve

        puts 'Install complete in lib/templates/active_record/model.rb'
      end
    end
  end
end
