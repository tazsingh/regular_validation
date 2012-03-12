require "helper"

describe RegularValidation do
  describe "Username" do
    it "must have a username regexp" do
      RegularValidation.must_respond_to :username
      RegularValidation.username.must_be_kind_of Regexp
    end

    it "must properly validate a username" do
      %W[#{Faker::Internet.user_name} alloneword underscore_man numbe12man123 period.man].each do |username|
        username.must_match RegularValidation.username
      end
    end

    it "wont match improper usernames" do
      ["1", "_", ".", "  ", ""].each do |username|
        username.wont_match RegularValidation.username
      end
    end
  end

  describe "E-mail" do
    it "must have an e-mail regex" do
      RegularValidation.must_respond_to :email
      RegularValidation.email.must_be_kind_of Regexp
    end

    it "must properly validate an e-mail" do
      %W[#{Faker::Internet.email} some.person@somewhere.com].each do |email|
        email.must_match RegularValidation.email
      end
    end

    it "wont match invalid e-mails" do
      ["", "clearly not an email"].each do |email|
        email.wont_match RegularValidation.email
      end
    end
  end
end