require 'spec_helper'

describe Reader do
  let(:reader) { Reader.new }
  it "is an ActiveRecord model" do
    expect(Reader.superclass).to eq(ActiveRecord::Base)
  end
  it "has email" do
    reader.email = "test@test.com"
    expect(reader.email).to eq("test@test.com")
  end
  it "responds to password" do
    reader.password = "pass"
    expect(reader.password).to eq("pass")
  end
  it "responds to password_confirmation" do
    reader.password_confirmation = "pass"
    expect(reader.password_confirmation).to eq("pass")
  end
end