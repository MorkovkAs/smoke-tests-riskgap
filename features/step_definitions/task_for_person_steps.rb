Then(/^I choose person №(\d+) to assign$/) do |number|
  find(:xpath, '//*[@id="s2id_task_assignee_id"]/a', :visible => true).click

  find(:xpath, '//*[@id="select2-drop"]/ul/li[' + number + ']/div').click
end

Given(/^I \("([^"]*)", "([^"]*)"\) have logged in and created a risk "([^"]*)" with category "([^"]*)" and task "([^"]*)" for "([^"]*)"$/) do |email, password, risk_name, category_for_task, task_name, prj_name|
  step 'I ("' + email + '", "' + password + '") have logged in and created a risk "' + risk_name + '" with category "' + category_for_task + '" for "' + prj_name + '"'
  step 'I click the link "' + risk_name + '"'
  step 'I click on Задачи'
  step 'I enter "' + task_name + '" into "task_title" field'
  step 'I click the button "Добавить"'
  step 'I should see "' + task_name + '"'
end