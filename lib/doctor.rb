require 'pry'
class Doctor
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    Appointment.all.map{|app| app.patient}
  end
  
  def appointments
    Appointment.all.select{|app| app.doctor == self}
  end
  def patients
    Appointment.all.map do |app|
      binding.pry
    end
  end
end