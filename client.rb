class Client

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_appointment(appointment)
    @appointments << appointment
    #belongs to client
    self.appointment = appointment
  end

  def appointments
    @appointments
  end

  def trainers
    Appointment.all.collect do |appointment|
      appointment.trainer
    end
  end

end
