require 'spec_helper'

describe "readers/new.html.erb" do

	before :each do
		reader = mock_model("Reader").as_new_record.as_null_object
		assign(:reader, reader)
		render
	end
	it "has new_reader form"
		expect(rendered).to have_selector('form#new_reader')
	end
	it "has reader_email field" do
		expect(rendered).to have_selector('#reader_email')
	end
	it "has reader_password field"
		expect(rendered).to have_selector('#reader_password')
	end
	it "has reader_password_confirmation field"
		expect(rendered).to have_selector('#reader_password_confirmation')
	end
	it "has register button"
		expect(rendered).to have_selector('input[type="submit"]')
	end
end