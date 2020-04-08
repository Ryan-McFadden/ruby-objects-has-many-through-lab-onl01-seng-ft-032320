class Doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    new_app = Appointment.new(date, patient, self)
  end
  
  def self.all 
    @@all 
  end
  
end