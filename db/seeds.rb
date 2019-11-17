# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.where(email: 'admin@eventmanagement.com').first_or_create!(password: 'aDm1n@managment', password_confirmation: 'aDm1n@managment')

a1 = Attendee.where(email: 'attendee1@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A1', email: 'attendee1@gmail.com', company_name: 'Company abc', designation: 'Manager', qr_code: 'B1001')
a2 = Attendee.where(email: 'attendee2@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A2', email: 'attendee2@gmail.com', company_name: 'Company xyz', designation: 'Assistant', qr_code: 'B1002')
a3 = Attendee.where(email: 'attendee3@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A3', email: 'attendee3@gmail.com', company_name: 'Company 123 ', designation: 'Engineer', qr_code: 'B1003')
a4 = Attendee.where(email: 'attendee4@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A4', email: 'attendee4@gmail.com', company_name: 'Company 456', designation: 'QA', qr_code: 'B1004')
a5 = Attendee.where(email: 'attendee5@gmail.com').first_or_create!(first_name: 'Attendee', last_name: 'A5', email: 'attendee5@gmail.com', company_name: 'Company pak', designation: 'Tester', qr_code: 'B1005')

spo1 = Sponsor.where(email: 'sponsor1@gmail.com').first_or_create!(first_name: 'Sponsor', last_name: 'spo1', email: 'sponsor1@gmail.com', company_name: 'Company usa', designation: 'Accountant', qr_code: 'B1006')
spo2 = Sponsor.where(email: 'sponsor2@gmail.com').first_or_create!(first_name: 'Sponsor', last_name: 'spo2', email: 'sponsor2@gmail.com', company_name: 'Company uk', designation: 'OB', qr_code: 'B1007')

spk1 = Speaker.where(email: 'speaker1@gmail.com').first_or_create!(first_name: 'Speaker', last_name: 'spk1', email: 'speaker1@gmail.com', company_name: 'Company turk', designation: 'Dg 1', qr_code: 'B1008')
spk2 = Speaker.where(email: 'speaker2@gmail.com').first_or_create!(first_name: 'Speaker', last_name: 'spk2', email: 'speaker2@gmail.com', company_name: 'Company ca', designation: 'Dg 2', qr_code: 'B1009')

spk3 = Speaker.where(email: 'uwe@gmail.com').first_or_create!(first_name: 'Uwe', last_name: 'Troeger', email: 'uwe@gmail.com', company_name: 'Siemens Middle East', designation: 'Senior Executive Vice President, Head of Digital Industries', qr_code: 'B1010')
spk4 = Speaker.where(email: 'joe@gmail.com').first_or_create!(first_name: 'Joe', last_name: 'Gerstl', email: 'joe@gmail.com', company_name: 'GE Digital', designation: 'Senior Director', qr_code: 'B1011')
spk5 = Speaker.where(email: 'qtan@gmail.com').first_or_create!(first_name: 'Muthanna', last_name: 'Abdulaziz Al Raqtan', email: 'qtan@gmail.com', company_name: 'Raqtan', designation: 'CEO', qr_code: 'B1012')
spk6 = Speaker.where(email: 'abdullah@gmail.com').first_or_create!(first_name: 'Eng. Abdallah', last_name: 'Obeikan', email: 'abdullah@gmail.com', company_name: 'Obeikan Investment Group', designation: 'CEO', qr_code: 'B1013')
spk7 = Speaker.where(email: 'jyoti@gmail.com').first_or_create!(first_name: 'Jyoti', last_name: 'Lalchandani', email: 'jyoti@gmail.com', company_name: 'IDC', designation: 'Group Vice President & Regional Managing Director', qr_code: 'B1014')
spk8 = Speaker.where(email: 'bandar@gmail.com').first_or_create!(first_name: 'Minister', last_name: 'Al-Khorayef', email: 'bandar@gmail.com', company_name: 'Industry & Mineral Resources', designation: 'Minister', qr_code: 'B1015')


e1 = Event.where(code: 'evn1').first_or_create!(name: 'first event', code: 'env1', description: 'event 1 description', venue: 'NY Plaza', start_date: Date.today + 1, end_date: Date.today + 2)
e2 = Event.where(code: 'evn2').first_or_create!(name: 'first event', code: 'env2', description: 'event 2 description', venue: 'NY Plaza', start_date: Date.today + 2, end_date: Date.today + 2)
e3 = Event.where(code: 'evnFactSh0').first_or_create!(name: 'Future Factory Show', code: 'evnFactSh0' description: 'Future Technology', venue: 'Prince Sultan Grand Hall, Al Faisaliah Hotel, Riyadh - KSA', start_date: Date.today + 2, end_date: Date.today + 2)

spo9 = Sponsor.where(email: 'sponsor9@gmail.com').first_or_create!(first_name: 'ABB', last_name: '', email: 'sponsor9@gmail.com', company_name: 'Platinum Sponsor', designation: 'Business', qr_code: 'B100112', profile_avatar: '../assets/img/ABB-page-001.jpg')
spo10 = Sponsor.where(email: 'sponsor10@gmail.com').first_or_create!(first_name: 'Sponsor', last_name: 'spo2', email: 'sponsor10@gmail.com', company_name: 'Company uk', designation: 'OB', qr_code: 'B100d112')
EventUser.where(verification_code: 'spk10toe10').first_or_create!(verification_code: 'spk10toe10', verified: 'true', user_id: spk2.id, event_id: 5)
# assign some attendees, sponsors and speakers to events.
EventUser.where(verification_code: 'spk3toe3').first_or_create!(verification_code: 'spk3toe3', verified: 'true', user_id: spk3.id, event_id: e3.id)
EventUser.where(verification_code: 'spk4toe3').first_or_create!(verification_code: 'spk4toe3', verified: 'true', user_id: spk4.id, event_id: e3.id)
EventUser.where(verification_code: 'spk5toe3').first_or_create!(verification_code: 'spk5toe3', verified: 'true', user_id: spk5.id, event_id: e3.id)
EventUser.where(verification_code: 'spk6toe3').first_or_create!(verification_code: 'spk6toe3', verified: 'true', user_id: spk6.id, event_id: e3.id)
EventUser.where(verification_code: 'spk7toe3').first_or_create!(verification_code: 'spk7toe3', verified: 'true', user_id: spk7.id, event_id: e3.id)
EventUser.where(verification_code: 'spk8toe3').first_or_create!(verification_code: 'spk8toe3', verified: 'true', user_id: spk8.id, event_id: e3.id)
EventUser.where(verification_code: 'a1toe3').first_or_create!(verification_code: 'a1toe3', verified: 'true', user_id: a1.id, event_id: e3.id)
EventUser.where(verification_code: 'a2toe3').first_or_create!(verification_code: 'a2toe3', verified: 'true', user_id: a2.id, event_id: e3.id)
EventUser.where(verification_code: 'a3toe3').first_or_create!(verification_code: 'a3toe3', verified: 'true', user_id: a3.id, event_id: e3.id)
EventUser.where(verification_code: 'a4toe3').first_or_create!(verification_code: 'a4toe3', verified: 'true', user_id: a4.id, event_id: e3.id)
EventUser.where(verification_code: 'a5toe3').first_or_create!(verification_code: 'a5toe3', verified: 'true', user_id: a5.id, event_id: e3.id)

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

c3 = Conference.where(name: 'aws', venue: 'B1 Block', date: e1.start_date, start_time: "11:30", end_time: "13:30", event_id: e2.id).first_or_create!
c4 = Conference.where(name: 'cloud', venue: 'B2 Block', date: e1.end_date, start_time: "15:00", end_time: "18:00", event_id: e2.id).first_or_create!

c5 = Conference.where(name: 'Welcome & Registration', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '8:00', end_time: '8:30', event_id: e3.id).first_or_create!
c6 = Conference.where(name: 'Ministerial Event Tour', description: 'The minister takes a tour of the venue, explores the exhibitions, and interacts with the participants.', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '8:30', end_time: '9:00', event_id: e3.id).first_or_create!
c7 = Conference.where(name: 'Opening Speech', description: 'The Journey to become a Global Industrial Powerhouse: Government Initiatives in Industry 4.0', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:00', end_time: '9:05', event_id: e3.id).first_or_create!
c8 = Conference.where(name: 'Video', description: 'Factory Digitization in Saudi Arabia: The National Productivity Program', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:05', end_time: '9:10', event_id: e3.id).first_or_create!
c9 = Conference.where(name: 'Panel Discussion', description: 'Building the Future Factory: Harnessing the Opportunities and Tackling the Challenges', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:10', end_time: '9:55', event_id: e3.id).first_or_create!

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

ConferenceUser.where(conference_id: c5.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: spk3.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: spk4.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: spk5.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: spk6.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: spk7.id).first_or_create!
ConferenceUser.where(conference_id: c5.id, user_id: spk8.id).first_or_create!

ConferenceUser.where(conference_id: c6.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: spk3.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: spk4.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: spk5.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: spk6.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: spk7.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: spk8.id).first_or_create!

ConferenceUser.where(conference_id: c7.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk3.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk4.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk5.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk6.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk7.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk8.id).first_or_create!

ConferenceUser.where(conference_id: c8.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: spk3.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: spk4.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: spk5.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: spk6.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: spk7.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: spk8.id).first_or_create!

ConferenceUser.where(conference_id: c9.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spk3.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spk4.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spk5.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spk6.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spk7.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spk8.id).first_or_create!
ConferenceUser.where(conference_id: c9.id, user_id: spo10.id).first_or_create!
