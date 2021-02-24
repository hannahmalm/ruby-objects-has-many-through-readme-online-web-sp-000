class Meal
  def meals
    Meal.all.select do |meal|
      meal.customer == self
  end     
end 
end