# Code generated by jtd-codegen for Ruby v0.1.0

require 'json'
require 'time'

module JTDCodegenE2E

  # A description for discriminator
  class RootDiscriminatorWithDescription
    attr_accessor :foo

    def self.from_json_data(data)
      {
        "bar" => RootDiscriminatorWithDescriptionBar,
      }[data["foo"]].from_json_data(data)
    end
  end

  # A description for discriminator variant
  class RootDiscriminatorWithDescriptionBar < RootDiscriminatorWithDescription

    def self.from_json_data(data)
      out = RootDiscriminatorWithDescriptionBar.new
      out.foo = "bar"
      out
    end

    def to_json_data
      data = { "foo" => "bar" }
      data
    end
  end

  # A description for enum
  class RootEnumWithDescription
    attr_accessor :value

    def initialize(value)
      self.value = value
    end

    private_class_method :new

    # A description for X
    X = new("X")

    # A description for Y
    Y = new("Y")

    # A description for Z
    Z = new("Z")

    def self.from_json_data(data)
      {
        "X" => X,
        "Y" => Y,
        "Z" => Z,
      }[data]
    end

    def to_json_data
      value
    end
  end

  # A description for properties
  class RootPropertiesWithDescription

    def self.from_json_data(data)
      out = RootPropertiesWithDescription.new
      out
    end

    def to_json_data
      data = {}
      data
    end
  end

  class Root
    # A description for discriminator
    attr_accessor :discriminator_with_description

    # A description for enum
    attr_accessor :enum_with_description

    # Whereas disregard and contempt for human rights have resulted in barbarous
    # acts which have outraged the conscience of mankind, and the advent of a
    # world in which human beings shall enjoy freedom of speech and belief and
    # freedom from fear and want has been proclaimed as the highest aspiration
    # of the common people,
    attr_accessor :long_description

    # A description for properties
    attr_accessor :properties_with_description

    # A description for ref
    attr_accessor :ref_with_description

    # A description for string
    attr_accessor :string_with_description

    def self.from_json_data(data)
      out = Root.new
      out.discriminator_with_description = JTDCodegenE2E::from_json_data(RootDiscriminatorWithDescription, data["discriminator_with_description"])
      out.enum_with_description = JTDCodegenE2E::from_json_data(RootEnumWithDescription, data["enum_with_description"])
      out.long_description = JTDCodegenE2E::from_json_data(String, data["long_description"])
      out.properties_with_description = JTDCodegenE2E::from_json_data(RootPropertiesWithDescription, data["properties_with_description"])
      out.ref_with_description = JTDCodegenE2E::from_json_data(Baz, data["ref_with_description"])
      out.string_with_description = JTDCodegenE2E::from_json_data(String, data["string_with_description"])
      out
    end

    def to_json_data
      data = {}
      data["discriminator_with_description"] = JTDCodegenE2E::to_json_data(discriminator_with_description)
      data["enum_with_description"] = JTDCodegenE2E::to_json_data(enum_with_description)
      data["long_description"] = JTDCodegenE2E::to_json_data(long_description)
      data["properties_with_description"] = JTDCodegenE2E::to_json_data(properties_with_description)
      data["ref_with_description"] = JTDCodegenE2E::to_json_data(ref_with_description)
      data["string_with_description"] = JTDCodegenE2E::to_json_data(string_with_description)
      data
    end
  end

  # A description for a definition
  class Baz
    attr_accessor :value

    def self.from_json_data(data)
      out = Baz.new
      out.value = JTDCodegenE2E.from_json_data(String, data)
      out
    end

    def to_json_data
      JTDCodegenE2E.to_json_data(value)
    end
  end

  private

  def self.from_json_data(type, data)
    if data.nil? || [Object, TrueClass, Integer, Float, String].include?(type)
      data
    elsif type == DateTime
      DateTime.rfc3339(data)
    elsif type.is_a?(Array)
      data.map { |elem| from_json_data(type.first, elem) }
    elsif type.is_a?(Hash)
      data.transform_values { |elem| from_json_data(type.values.first, elem) }
    else
      type.from_json_data(data)
    end
  end

  def self.to_json_data(data)
    if data.nil? || [TrueClass, FalseClass, Integer, Float, String].include?(data.class)
      data
    elsif data.is_a?(DateTime)
      data.rfc3339
    elsif data.is_a?(Array)
      data.map { |elem| to_json_data(elem) }
    elsif data.is_a?(Hash)
      data.transform_values { |elem| to_json_data(elem) }
    else
      data.to_json_data
    end
  end
end
