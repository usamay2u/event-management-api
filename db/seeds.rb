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
spk9 = Speaker.where(email: 'khalid@gmail.com').first_or_create!(first_name: 'Eng, Khalid', last_name: 'Al-Salem', email: 'khalid@gmail.com', company_name: 'MODON', designation: 'Director General at Saudi Authority for Industrial Cities and Technology Zones', qr_code: 'B1016')
spk10 = Speaker.where(email: 'ibrahim@gmail.com').first_or_create!(first_name: 'Dr. Ibrahim', last_name: 'Almojel', email: 'ibrahim@gmail.com', company_name: 'SIDF', designation: 'CEO', qr_code: 'B1017')
spk11 = Speaker.where(email: 'ahmed@gmail.com').first_or_create!(first_name: 'Dr. Ahmed Hamdan', last_name: 'Altheneyan', email: 'ahmed@gmail.com', company_name: 'Ministry of Communications and Information Technology', designation: 'Deputy Minister for Technology Development and Digital Capacities', qr_code: 'B1018')
spk12 = Speaker.where(email: 'hamza@gmail.com').first_or_create!(first_name: 'Hamza', last_name: 'Naqshbandi', email: 'hamza@gmail.com', company_name: 'IDC Saudi Arabia & Bahrain', designation: 'Country Manager', qr_code: 'B1019')
spk13 = Speaker.where(email: 'michael@gmail.com').first_or_create!(first_name: 'Michael', last_name: 'Newman', email: 'michael@gmail.com', company_name: 'Siemens Ltd, Saudi Arabia', designation: 'Executive Vice President', qr_code: 'B1020')
spk14 = Speaker.where(email: 'muthanna@gmail.com').first_or_create!(first_name: 'Muthanna Abdulaziz', last_name: 'Al Raqtan', email: 'muthanna@gmail.com', company_name: 'Raqtan', designation: 'CEO', qr_code: 'B1021')
spk15 = Speaker.where(email: 'joe@gmail.com').first_or_create!(first_name: 'Joe', last_name: 'Gerstl', email: 'joe@gmail.com', company_name: 'GE Digital', designation: 'Senior Director', qr_code: 'B1022')
spk16 = Speaker.where(email: 'rajesh@gmail.com').first_or_create!(first_name: 'Rajesh', last_name: 'Ramachandran', email: 'rajesh@gmail.com', company_name: 'Industrial Automation Global, ABB', designation: 'Chief Digital Officer', qr_code: 'B1023')
spk17 = Speaker.where(email: 'kelly@gmail.com').first_or_create!(first_name: 'Kelly', last_name: 'Ireland', email: 'kelly@gmail.com', company_name: 'CB Technologies', designation: 'Founder & CEO', qr_code: 'B1024')
spk18 = Speaker.where(email: 'abdul@gmail.com').first_or_create!(first_name: 'Abdul', last_name: 'Hakeem', email: 'abdul@gmail.com', company_name: 'Middle East and North Africa, SAP', designation: 'Head of Digital Supply Chain & Manufacturing', qr_code: 'B1025')
spk19 = Speaker.where(email: 'ahmed@gmail.com').first_or_create!(first_name: 'Dr. Ahmed', last_name: 'A. Sindi', email: 'ahmed@gmail.com', company_name: 'Dawiyat', designation: 'CEO', qr_code: 'B1026')
spk20 = Speaker.where(email: 'samer@gmail.com').first_or_create!(first_name: 'Samer', last_name: 'M. Abdallah, PhD', email: 'samer@gmail.com', company_name: 'KPMG Al Fozan & Partners', designation: 'Head of KPMG Academy', qr_code: 'B1027')
spk21 = Speaker.where(email: 'heinz@gmail.com').first_or_create!(first_name: 'Dr. Heinz', last_name: 'Pley', email: 'heinz@gmail.com', company_name: 'Boston Consulting Group Middle East Office', designation: 'Managing Director and Partner', qr_code: 'B1028')


e1 = Event.where(code: 'evn1').first_or_create!(name: 'first event', code: 'env1', description: 'event 1 description', venue: 'NY Plaza', start_date: Date.today + 1, end_date: Date.today + 2)
e2 = Event.where(code: 'evn2').first_or_create!(name: 'first event', code: 'env2', description: 'event 2 description', venue: 'NY Plaza', start_date: Date.today + 2, end_date: Date.today + 2)
e3 = Event.where(code: 'evnFactSh0').first_or_create!(name: 'Future Factory Show', description: 'Future Technology', venue: 'Prince Sultan Grand Hall, Al Faisaliah Hotel, Riyadh - KSA', start_date: Date.today + 2, end_date: Date.today + 2)

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
c10 = Conference.where(name: 'Panel Discussion', description: 'Realizing the Industrial Vision: The Initiatives, Opportunities, and Challenges', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:55', end_time: '10:30', event_id: e3.id).first_or_create!
c11 = Conference.where(name: 'Keynote', description: 'Building the Future Factory Powered by Data', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '10:30', end_time: '10:55', event_id: e3.id).first_or_create!
c12 = Conference.where(name: 'MODON - GE Digital Case Study Launch', description: 'IDC has written a case study on MODON’s National Productivity Program executed by GE Digital. ', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '10:55', end_time: '11:00', event_id: e3.id).first_or_create!
c13 = Conference.where(name: 'Keynote', description: 'A World of Sensors: Industrial IoT in Future Factories', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '11:00', end_time: '11:20', event_id: e3.id).first_or_create!
c14 = Conference.where(name: 'Coffee Break / Prayer', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '11:20', end_time: '11:50', event_id: e3.id).first_or_create!
c15 = Conference.where(name: 'User Case Study Presentation', description: 'Digital Evolution of Miran Manufacturing', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '11:50', end_time: '12:10', event_id: e3.id).first_or_create!
c16 = Conference.where(name: 'Keynote', description: 'Man with Machine: The Evolving Industrial Automation Landscape', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '12:10', end_time: '12:30', event_id: e3.id).first_or_create!
c17 = Conference.where(name: 'User Case Study presentation', description: 'Implementing Industry 4.0 for the Refinery of the future – Texmark Chemicals', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '12:30', end_time: '12:50', event_id: e3.id).first_or_create!
c18 = Conference.where(name: 'Keynote', description: 'Digital Supply Chain for Industry 4.0 – Connect Digitally to Perfect Reality', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '12:50', end_time: '13:10', event_id: e3.id).first_or_create!
c19 = Conference.where(name: 'Panel Discussion', description: 'Automation, Skills, & Infrastructure: Implications of Industry 4.0 on Manufacturers', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '13:10', end_time: '13:45', event_id: e3.id).first_or_create!
c20 = Conference.where(name: 'Lunch Break / Prayer', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '13:45', end_time: '14:40', event_id: e3.id).first_or_create!
# c21 = Conference.where(name: '', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:10', end_time: '9:55', event_id: e3.id).first_or_create!
# c22 = Conference.where(name: '', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:10', end_time: '9:55', event_id: e3.id).first_or_create!
# c23 = Conference.where(name: '', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:10', end_time: '9:55', event_id: e3.id).first_or_create!
# c24 = Conference.where(name: '', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:10', end_time: '9:55', event_id: e3.id).first_or_create!
# c25 = Conference.where(name: '', description: '', venue: 'Prince Sultan Grand Hall', date: e3.start_date, start_time: '9:10', end_time: '9:55', event_id: e3.id).first_or_create!

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

ConferenceUser.where(conference_id: c6.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c6.id, user_id: a5.id).first_or_create!

ConferenceUser.where(conference_id: c7.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c7.id, user_id: spk8.id).first_or_create!

ConferenceUser.where(conference_id: c8.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c8.id, user_id: a5.id).first_or_create!

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

ConferenceUser.where(conference_id: c10.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: spk9.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: spk10.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: spk11.id).first_or_create!
ConferenceUser.where(conference_id: c10.id, user_id: spk12.id).first_or_create!

ConferenceUser.where(conference_id: c11.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c11.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c11.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c11.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c11.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c11.id, user_id: spk13.id).first_or_create!

ConferenceUser.where(conference_id: c13.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c13.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c13.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c13.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c13.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c13.id, user_id: spk15.id).first_or_create!

ConferenceUser.where(conference_id: c15.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c15.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c15.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c15.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c15.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c15.id, user_id: spk14.id).first_or_create!

ConferenceUser.where(conference_id: c16.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c16.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c16.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c16.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c16.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c16.id, user_id: spk16.id).first_or_create!

ConferenceUser.where(conference_id: c17.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c17.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c17.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c17.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c17.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c17.id, user_id: spk17.id).first_or_create!

ConferenceUser.where(conference_id: c18.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c18.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c18.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c18.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c18.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c18.id, user_id: spk18.id).first_or_create!

ConferenceUser.where(conference_id: c19.id, user_id: a1.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: a2.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: a3.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: a4.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: a5.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: spk16.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: spk19.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: spk20.id).first_or_create!
ConferenceUser.where(conference_id: c19.id, user_id: spk21.id).first_or_create!
