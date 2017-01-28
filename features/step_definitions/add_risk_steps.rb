And(/^I enter "([^"]*)" into category$/) do |risk_category|
  step 'I enter "' + risk_category + '" into "s2id_autogen3" field'
  find(:id, 's2id_autogen3').native.send_keys("\n")
end

Then(/^I select template "([^"]*)" from list$/) do |template|
  click_button('templateChooser', :visible => true)
  click_link_or_button(template)
end

Then(/^I click the right option Добавить №(\d+)$/) do |number|
  all('.btn.btn-primary')[number.to_i + 1].click
end