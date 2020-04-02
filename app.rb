class Building
    attr_accessor :name, :num_of_tennants
    attr_reader :address

    @@buildings_total=[]

    def initialize(name, address, num_of_floors, num_of_tennants)
        @name = name
        @address = address
        @num_of_floors = num_of_floors
        @num_of_tennants = num_of_tennants
        @@buildings_total << self
    end

    
    def self.buildings_total
        @@buildings_total
    end

    def average_num_of_tennants
        num_of_buildings=@@buildings_total.length
        @@buildings_total.reduce(0){|acc,building|acc+building.num_of_tennants}/num_of_buildings
    end     
    
    def placard
        building_info=[name,address]
    end

    def average_num_of_tennants_per_floor
        @num_of_tennants/@num_of_floors
    end
end