# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Case.destroy_all
Patient.destroy_all

10.times do |i|
  Patient.create({name: "Patient #{i}", primary_phone: "123-123-1234"})
end

patients = Patient.all

patients.each do |patient|
  patient.cases.create({last_menstrual_period_time: DateTime.new(2016,1,1)})
end
