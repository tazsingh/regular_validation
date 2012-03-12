require "regular_validation/version"

module RegularValidation
  class << self
    def username
      /\A[a-zA-Z][\w\.]+\z/
    end

    def email
      /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    end
  end
end
