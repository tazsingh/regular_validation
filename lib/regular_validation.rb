require "regular_validation/version"

module RegularValidation
  class << self
    def username
      /^[a-zA-Z][\w\.]+$/
    end
  end
end
