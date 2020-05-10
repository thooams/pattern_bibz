# Fetch values from a pattern name
class PatternValueObject
  COMPOUND_NAMES = %w[view_object value_object].freeze

  def initialize(name)
    @name = name
  end

  def pattern_name
    @pattern_name ||= fetch_pattern_name
  end

  def pattern_klass_name
    pattern_name.classify.delete(' ')
  end

  def directory_name
    pattern_name.pluralize
  end

  def file_name
    @name
  end

  def klass_name
    @name.classify.delete(' ')
  end

  private

  def fetch_pattern_name
    if compound_name?
      COMPOUND_NAMES.find { |a| @name.match?(a) }
    else
      @name.split('_').last
    end
  end

  def compound_name?
    COMPOUND_NAMES.any? { |w| @name.match?(w) }
  end
end
