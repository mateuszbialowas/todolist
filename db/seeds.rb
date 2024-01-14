user = User.find_or_create_by!(email: 'test@example.com') do |user|
  user.password = 'password'
  user.password_confirmation = 'password'
end

20.times do |i|
  user.items.find_or_create_by!(name: "Item #{i}")
end
