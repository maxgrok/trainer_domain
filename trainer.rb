class Trainer
  attr_accessor :name, :appointments

  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
  end

  def self.all
    @@all
  end

  def add_appointment(appointment)
    @appointments << appointment
    #belongs to trainer
    appointment.trainer = self
  end


  #has many clients through appointments
  def clients
    Appointments.all.collect do |appointment|
      appointment.client
    end
  end

end
