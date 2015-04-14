# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(email: "user@email.com", password: "password", role: "student", full_name: "filippo", dob: "24/11/1992", gender: "m")

cohort1 = Cohort.create!(name: "WDI12", start_date: "12/12/2012", end_date: "12/12/2013")

type1 = CourseType.create!(name: "WDI", details: "We are ninjas", duration: "12", cohort_id: cohort1.id)

contract1 = Contract.create!(user_id: u1.id, cohort_id: cohort1.id, acceptance_date: "16")