Then(/^I enter "([^"]*)"$/) do |risk_category|
  step 'I enter "' + risk_category + '" into "s2id_autogen1" field'
  find(:id, 's2id_autogen1').native.send_keys("\n")
end