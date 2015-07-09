And(/^I choose "([^"]*)"$/) do |project_id|
  choose(project_id)
end

Then(/^I click the button Добавить в команду$/) do
  first('.btn-success.btn-sm').click
end