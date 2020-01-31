require('pry')
require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

# Ticket.delete_all()
# Film.delete_all()
Customer.delete_all()

customer1 = Customer.new({
  "name" => "Alan",
  "funds" => 50
  })
customer1.save()

customer2 = Customer.new({
  "name" => "Amanda",
  "funds" => 60
  })
customer2.save()

customer3 = Customer.new({
  "name" => "Julie",
  "funds" => 100
  })
customer3.save()

binding.pry
nil
