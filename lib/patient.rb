class Patient
  
  @@all = []
  
  def intialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new()
  end
  
  def self.all
    @@all 
  end
  
end