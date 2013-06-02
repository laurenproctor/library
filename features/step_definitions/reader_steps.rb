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
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be logged in$/) do
  pending # express the regexp above with the code you wish you had
end