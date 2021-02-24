class Waiter
  attr_accessor :name, :yrs_experience
  @@all = []
  
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  #This method will allow us to create new meals as a customer and associate each new meal with the customer that created it 
  def new_meal(customer,total, tip=0)
    Meal.new(self,customer,total,tip)
  end   
end   