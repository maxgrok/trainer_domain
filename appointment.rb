class Appointment

  def initialize(client, trainer, date)
    @client = client
    @trainer = trainer
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def client
    self.client = @client
  end
  #bleongs to client

  def trainer
  #belongs to trainer
    self.trainer = @trainer
  end 
end
