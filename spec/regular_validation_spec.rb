require "helper"

describe RegularValidation do
  describe "Username" do
    it "must have a username regexp" do
      RegularValidation.must_respond_to :username
    end

    it "must properly validate a username" do
      assert Faker::Internet.user_name =~ RegularValidation.username, "username regex matches Faker's user_name"
      assert "alloneword" =~ RegularValidation.username, "username regex matches alloneword"
      assert "underscore_man" =~ RegularValidation.username, "username regex accepts underscores"
      assert "numbe12man123" =~ RegularValidation.username, "username regex accepts numbers"
      assert "period.man" =~ RegularValidation.username, "username regex accepts periods"
    end

    it "wont match improper usernames" do
      refute "1" =~ RegularValidation.username, "does not allow starting with numbers"
      refute "_" =~ RegularValidation.username, "does not allow starting with underscores"
      refute "." =~ RegularValidation.username, "does not allow starting with periods"
      refute "  " =~ RegularValidation.username, "does not allow spaces"
    end
  end
end