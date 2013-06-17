require 'spec_helper'

describe Reader do

  let(:reader) { Reader.new }

  describe "validations" do
    before :each do
      @params = {
        email: "test@test.com",
        password: "password",
        password_confirmation: "password"
      }
    end

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    #it { should validate_uniqueness_of(:email) }
    it { should validate_confirmation_of(:password) }

    ## eliminating because added shoulda matchers above
    # it "is invalid when email is empty" do
    #   @params[:email] = nil
    #   reader = Reader.new(@params)
    #   expect(reader.valid?).to be_false
    # end
    # it "is invalid when password is empty" do
    #   @params[:password] = nil
    #   reader = Reader.new(@params)
    #   expect(reader.valid?).to be_false
    # end
    it "is invalid when email is invalid" do
      @params[:email] = "test"
      reader = Reader.new(@params)
      expect(reader.valid?).to be_false
    end
    # it "is invalid when email is not unique" do
    #   Reader.create(@params)
    #   reader = Reader.new(@params)
    #   expect(reader.valid?).to be_false
    # end
    # it "is invalid when password and password_confirmation do not match" do
    #   @params[:password] = "p"
    #   reader = Reader.new(@params)
    #   expect(reader.valid?).to be_false
    # end
  end

  it "is an ActiveRecord model" do
    expect(Reader.superclass).to eq(ActiveRecord::Base)
  end
  it "has email" do
    reader.email = "test@test.com"
    expect(reader.email).to eq("test@test.com")
  end
  it "responds to password" do
    reader.password = "password"
    expect(reader.password).to eq("password")
  end
  it "responds to password_confirmation" do
    reader.password_confirmation = "password"
    expect(reader.password_confirmation).to eq("password")
  end
end