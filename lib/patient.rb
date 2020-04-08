class Patient
  attr_accessor :name
  
  @@all = []
  
  def intialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self 
    end
  end
  
  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end
  
  def self.all
    @@all 
  end
  
end