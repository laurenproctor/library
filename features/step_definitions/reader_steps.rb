Given(/^I am a guest$/) do
end

When(/^I fill in the registration form with valid data$/) do
  visit('/register')
  fill_in "reader_email", with: "test@test.com"
  fill_in "reader_password", with: "password"
  fill_in "reader_password_confirmation", with: "password"
  click_button "Register"
end

Then(/^I should be registered in the application$/) do
  expect(Reader.find_by_email("test@test.com")).not_to be_nil
end

Then(/^I should be logged in$/) do
  
end