user = User.find_or_create_by!(email: 'test@example.com') do |user|
  user.password = 'password'
  user.password_confirmation = 'password'
end

Item.find_or_create_by!(user: user, name: 'Item 1')
Item.find_or_create_by!(user: user, name: 'Item 2')
Item.find_or_create_by!(user: user, name: 'Item 3')
Item.find_or_create_by!(user: user, name: 'Item 4')
Item.find_or_create_by!(user: user, name: 'Item 5')
Item.find_or_create_by!(user: user, name: 'Item 6')
Item.find_or_create_by!(user: user, name: 'Item 7')
Item.find_or_create_by!(user: user, name: 'Item 8')
Item.find_or_create_by!(user: user, name: 'Item 9')
Item.find_or_create_by!(user: user, name: 'Item 10')
