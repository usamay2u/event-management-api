# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.where(email: 'admin@eventmanagement.com').first_or_create!(password: 'aDm1n@managment', password_confirmation: 'aDm1n@managment')

a1 = Attendee.where(email: 'attendee1@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A1', email: 'attendee1@gmail.com', company_name: 'Company abc', designation: 'Manager')
a2 = Attendee.where(email: 'attendee2@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A2', email: 'attendee2@gmail.com', company_name: 'Company xyz', designation: 'Assistant')
a3 = Attendee.where(email: 'attendee3@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A3', email: 'attendee3@gmail.com', company_name: 'Company 123 ', designation: 'Engineer')
a4 = Attendee.where(email: 'attendee4@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A4', email: 'attendee4@gmail.com', company_name: 'Company 456', designation: 'QA')
a5 = Attendee.where(email: 'attendee5@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A5', email: 'attendee5@gmail.com', company_name: 'Company pak', designation: 'Tester')

spo1 = Sponsor.where(email: 'sponsor1@gmail.com').first_or_create!(first_name: 'Sponsor', last_name: 'spo1', email: 'sponsor1@gmail.com', company_name: 'Company usa', designation: 'Accountant')
spo2 = Sponsor.where(email: 'sponsor2@gmail.com').first_or_create!(first_name: 'Sponsor', last_name: 'spo2', email: 'sponsor2@gmail.com', company_name: 'Company uk', designation: 'OB')

spk1 = Speaker.where(email: 'speaker1@gmail.com').first_or_create!(first_name: 'Speaker', last_name: 'spk1', email: 'speaker1@gmail.com', company_name: 'Company turk', designation: 'Dg 1')
spk2 = Speaker.where(email: 'speaker2@gmail.com').first_or_create!(first_name: 'Speaker', last_name: 'spk2', email: 'speaker2@gmail.com', company_name: 'Company ca', designation: 'Dg 2')

e1 = Event.where(code: 'evn1').first_or_create!(name: 'first event', code: 'env1', description: 'event 1 description', venue: 'NY Plaza', start_date: Date.today + 1, end_date: Date.today + 2)
e2 = Event.where(code: 'evn2').first_or_create!(name: 'first event', code: 'env2', description: 'event 2 description', venue: 'NY Plaza', start_date: Date.today + 2, end_date: Date.today + 2)

# assign some attendees, sponsors and speakers to events.
EventUser.where(verification_code: 'a1toe1').first_or_create!(verification_code: 'a1toe1', verified: 'true', user_id: a1.id, event_id: e1.id)
EventUser.where(verification_code: 'a2toe1').first_or_create!(verification_code: 'a2toe1', verified: 'true', user_id: a2.id, event_id: e1.id)
EventUser.where(verification_code: 'a3toe1').first_or_create!(verification_code: 'a3toe1', verified: 'true', user_id: a3.id, event_id: e1.id)
EventUser.where(verification_code: 'spo1toe1').first_or_create!(verification_code: 'spo1toe1', verified: 'true', user_id: spo1.id, event_id: e1.id)
EventUser.where(verification_code: 'spk1toe1').first_or_create!(verification_code: 'spk1toe1', verified: 'true', user_id: spk1.id, event_id: e1.id)

EventUser.where(verification_code: 'a4toe2').first_or_create!(verification_code: 'a4toe2', verified: 'true', user_id: a4.id, event_id: e2.id)
EventUser.where(verification_code: 'a5toe2').first_or_create!(verification_code: 'a5toe2', verified: 'true', user_id: a5.id, event_id: e2.id)
EventUser.where(verification_code: 'a1toe2').first_or_create!(verification_code: 'a1toe2', verified: 'true', user_id: a1.id, event_id: e2.id)
EventUser.where(verification_code: 'spo2toe2').first_or_create!(verification_code: 'spo2toe2', verified: 'true', user_id: spo2.id, event_id: e2.id)
EventUser.where(verification_code: 'spk2toe2').first_or_create!(verification_code: 'spk2toe2', verified: 'true', user_id: spk2.id, event_id: e2.id)

c1 = Conference.where(name: 'aws', venue: 'A1 Block', date: e1.start_date, start_time: Time.now, end_time: Time.now + 2.hour, event_id: e1.id).first_or_create!
c2 = Conference.where(name: 'cloud', venue: 'A2 Block', date: e1.end_date, start_time: Time.now + 3.hour, end_time: Time.now + 5.hour, event_id: e1.id).first_or_create!

c3 = Conference.where(name: 'aws', venue: 'B1 Block', date: e1.start_date, start_time: "11:30AM", end_time: "1:30PM", event_id: e2.id).first_or_create!
c4 = Conference.where(name: 'cloud', venue: 'B2 Block', date: e1.end_date, start_time: "3:00PM", end_time: "6:00PM", event_id: e2.id).first_or_create!


ConferenceUser.where(conference_id: c1.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c1.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c1.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c1.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c1.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c1.id, user_id: spk1.id).first_or_create!
ConferenceUser.where(conference_id: c1.id, user_id: spk2.id).first_or_create!

ConferenceUser.where(conference_id: c2.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c2.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c2.id, user_id: spk1.id).first_or_create!

ConferenceUser.where(conference_id: c3.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c3.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c3.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c3.id, user_id: spk1.id).first_or_create!

ConferenceUser.where(conference_id: c4.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c4.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c4.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c4.id, user_id: spk2.id).first_or_create!
