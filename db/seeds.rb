# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

10.times do
  account = Account.create
  puts "account #{account.id} created"
  10.times do
    user = User.create(account_id: account.id)
    puts "user #{user.id} created for account #{account.id}"
  end
end
