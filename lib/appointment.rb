require 'pry'
class Appointment
  attr_reader :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient.name
    @doctor = doctor.name
    @@all << self
  end
  def self.all
    @@all
  end
end