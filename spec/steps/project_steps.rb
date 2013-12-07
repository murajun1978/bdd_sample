step "サイトにアクセスする" do
  visit projects_path
end

step ":titleを表示する" do |title|
  expect(page).to have_title(title)
end

step ":buttonをクリックする" do |button|
  page.click_on(button)
end

step ":fieldに:valueを入力する" do |field, value|
  fill_in field, with: value
end

step "ページのキャプチャをとる" do
  save_screenshot("#{Rails.root}/screen.png", full: true)
end
