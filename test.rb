require_relative 'app.rb'

building1 = Building.new("Skyscraper","123 Main Street",50,300)
building2 = Building.new("Apartment","123 Park Street",20,150)
building3 = Building.new("Small Building","123 Broadway",4,50)

p building1.average_num_of_tennants
p building1.placard
p building1.average_num_of_tennants_per_floor