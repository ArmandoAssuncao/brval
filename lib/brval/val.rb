module Brval
  class Val

    attr_accessor :code

    def initialize(code)
      raise ArgumentError, 'The br code informed is nil' if code.nil?
      @code = code.tr('^0-9', '')
    end

    def mask
      code_mask = @code.dup
    end

    def valid?
      validate_code
    end

  end
end