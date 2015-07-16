Then(/^I choose person №(\d+) to assign$/) do |number|
  find(:xpath, '//*[@id="s2id_task_assignee_id"]/a', :visible => true).click

  find(:xpath, '//*[@id="select2-drop"]/ul/li[' + number + ']/div').click
end