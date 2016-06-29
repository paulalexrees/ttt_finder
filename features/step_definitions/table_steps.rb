Given(/^a user visits the website$/) do
  visit '/'
end

Then(/^they can see a sign up button$/) do
  expect(page).to have_link "Sign up"
end

When(/^they click the sign up button$/) do
  click_link "Sign up"
end

Then(/^they should be on the sign up page$/) do
  expect(current_path).to eq "/users/sign_up"
end

When(/^they enter their details correctly and click sign up$/) do
  fill_in :user_email, with: "bob@bob.com"
  fill_in :user_password, with: "password"
  fill_in :user_password_confirmation, with: "password"
  click_button("Sign up")
end

Then(/^they should be taken back to the homepage$/) do
  expect(current_path).to eq "/"
end

Then(/^they should see a sign out button$/) do
  expect(page).to have_link "Sign out"
end

Then(/^they should see 'No tables yet'$/) do
  expect(page).to have_content "No tables yet"
end

Then(/^they should see 'Add a table'$/) do
  expect(page).to have_link "Add a table"
end

When(/^they click 'Add a table'$/) do
  click_link "Add a table"
end

Then(/^they should be on the new table page$/) do
  expect(current_path).to eq "/tables/new"
end
