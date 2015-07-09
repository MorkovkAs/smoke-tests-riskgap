And(/^I enter "([^"]*)" into category$/) do |risk_category|
  step 'I enter "' + risk_category + '" into "s2id_autogen2" field'
  find(:id, 's2id_autogen2').native.send_keys("\n")
end