require 'pry'
class Appointment
  attr_reader :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    
    if patient.class != String
      binding.pry
    end
    
    @@all << self
  end
  def self.all
    @@all
  end
end