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
  # expect(Reader.find_by_email("test@test.com")).not_to be_nil
  expect(Reader.find_by_email("test@test.com")).to have_email("test@test.com")
end

When(/^I fill in the registration form with invalid data$/) do
  visit('/register')
  fill_in "reader_email", with: "test"
  fill_in "reader_password", with: "password"
  fill_in "reader_password_confirmation", with: "password"
  click_button "Register"
end

Then(/^I should see the registration form again$/) do
  expect(page).to have_selector('form#new_reader')
end

Then(/^I should not be registered in the app$/) do
  expect(Reader.find_by_email('test')).to be_nil
end

Then /^I should be logged in$/ do
  expect(page).to have_content("Welcome, test@test.com")
end

When(/^I go to home page$/) do
  visit root_url
end

Then(/^I should see guest menu$/) do
  expect(page).to have_selector('#top-menu')
  expect(page).to have_link('Register', href: register_path)
end