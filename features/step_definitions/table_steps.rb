Given(/^Table 'Paradise Park' with location 'N(\d+) (\d+)PF'  has been added$/) do |arg1, arg2|
  @table = Table.create(name: 'Paradise Park', postcode: 'N7 8PF')
end

When(/^I go to the tables page$/) do
  visit '/tables'
end

Then(/^I should see 'Paradise Park'$/) do
  expect(page).to have_content 'Paradise Park'
end

Then(/^I should see 'N(\d+) (\d+)PF'$/) do |arg1, arg2|
  expect(page).to have_content 'N7 8PF'
end
