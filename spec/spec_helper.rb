require 'coveralls'
Coveralls.wear!

require 'active_model'
require 'immutable_validator'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
end

class TestModel
  include ActiveModel::Validations

  def self.name
    'TestModel'
  end

  def initialize(attributes = {})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end
