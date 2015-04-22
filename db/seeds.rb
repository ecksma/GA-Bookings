# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(email: "filippo@email.com", password: "password", role: "admin", full_name: "Filippo Matoso", dob: "24/11/1992", gender: "m", image: Rails.root.join("/Users/filippomatoso1/Desktop/Cresta/Run.jpg").open)

u2 = User.create!(email: "rane@email.com", password: "password", role: "student", full_name: "Rane Gowan", dob: "07/11/1993", gender: "m")

u3 = User.create!(email: "alex@email.com", password: "password", role: "teacher", full_name: "Alex Chin", dob: "10/10/1987", gender: "m")

type1 = CourseType.create!(name: "Web Development Immersive", details: "We are ninjas and we love it!", duration: "12")

cohort1 = Cohort.create!(name: "WDI12", start_date: "12/12/2012", end_date: "12/12/2013", course_type_id: type1.id)

contract1 = Contract.create!(user_id: u1.id, cohort_id: cohort1.id, acceptance_date: "16")
contract2 = Contract.create!(user_id: u2.id, cohort_id: cohort1.id, acceptance_date: "16")
contract3 = Contract.create!(user_id: u3.id, cohort_id: cohort1.id, acceptance_date: "16")

class1 = Classroom.create! name: "Second Home - C1"

b1 = Booking.create! start_time: Time.now + 1.hour, length: 5, classroom_id: class1.id, cohort_id: cohort1.id




# Time must be > 15 mins from present
# Length is in hours
# cl.bookings.create!(start_time: Time.now + 1.hour, length: 1.hour)