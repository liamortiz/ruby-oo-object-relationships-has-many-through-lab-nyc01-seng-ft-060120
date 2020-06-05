class Appointment
  attr_reader :date, :doctor
  attr_accessor :patient
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  def self.all
    @@all
  end
end