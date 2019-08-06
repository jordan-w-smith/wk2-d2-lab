class Bus

  attr_reader :route, :destination, :passengers

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  # def passengers
  #   return @passengers
  # end

  def drive
    return "broom broom"
  end

  def how_many_passengers
    return @passengers.count
  end

  def add_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def drop_off_passenger(new_passenger)
    @passengers.delete(new_passenger)
  end

  def remove_all_passengers
    @passengers.clear
  end

  # def count_passengers(passengers)
  #   @passengers.push(passengers)
  #   @passengers.count
  # end

end
