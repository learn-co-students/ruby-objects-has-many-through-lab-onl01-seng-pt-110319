class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(name,doctor)
    appointment = Appointment.new(name, doctor, self)
  end