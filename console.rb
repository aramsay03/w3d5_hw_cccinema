require('pry')
require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

Ticket.delete_all()
Film.delete_all()
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

film1 = Film.new({
  "title" => "Top Gun",
  "price" => 8
  })
film1.save()

film2 = Film.new({
  "title" => "Gone In 60 Seconds",
  "price" => 10
  })
film2.save()

ticket1 = Ticket.new({
  "customer_id" => customer2.id,
  "film_id" => film1.id
  })
ticket1.save()

ticket2 = Ticket.new({
  "customer_id" => customer2.id,
  "film_id" => film2.id
  })
ticket2.save()

ticket3 = Ticket.new({
  "customer_id" => customer1.id,
  "film_id" => film2.id
  })
ticket3.save()

ticket4 = Ticket.new({
  "customer_id" => customer3.id,
  "film_id" => film1.id
  })
ticket4.save()

binding.pry
nil
