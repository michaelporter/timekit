module Timekit
  class Config < Hash
    CONFIG_KEYS = [
      :credentials,
      :app
    ].freeze

    def []=(key, value)
      raise 'Invalid config key' unless CONFIG_KEYS.include?(key)
      raise 'Invalid config credentials' if key == :credentials &&
                                            !value.is_a?(Timekit::Authorization)

      super(key, value)
    end
  end
end
