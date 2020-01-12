class Doctor
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(name, patient)
    appointment = Appointment.new(name,self,patient)
  end 
  
  def appointments 
    Appointment.all.select{|a| a.doctor == self }
  end 
end