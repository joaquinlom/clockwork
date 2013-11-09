# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 

User.create(user_name: 'Fernando Gomez Payan')

Rol.create(name: 'Administrador', description: 'Cambios en general')
Rol.create(name: 'Miembro', description: 'Usuario del sistema')

Organization.create(name: 'Proteccion de animales', description: 'Proteger a los animasles')
Organization.create(name: 'Amigos de los animales', description: 'Asociacion distinguida por los beneficios que ofrece a los animalitos')

Membership.create(organization_id: 1, rol_id: 1, user_id: 1)
Membership.create(organization_id: 2, rol_id: 2, user_id: 1)

Schedule.create(job:'Director', membership_id: 1)
Schedule.create(job:'Gerente', membership_id: 1)
Schedule.create(job:'silvestre', membership_id: 1)

s = Schedule.find(1)

s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Lunes', latitude: 1, length: 2, schedule_id: s)
s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Martes', latitude: 1, length: 2, schedule_id: s)
s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Miercoles', latitude: 1, length: 2, schedule_id: s)
s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Jueves', latitude: 1, length: 2, schedule_id: s)
s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Viernes', latitude: 1, length: 2, schedule_id: s)
s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Sabado', latitude: 1, length: 2, schedule_id: s)
s.schedule_details.create(entry_time: 1, exit_time: 2, week_day: 'Domingo', latitude: 1, length: 2, schedule_id: s)

sc = Schedule.find(2)

sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Lunes', latitude: 1, length: 2, schedule_id: sc)
sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Martes', latitude: 1, length: 2, schedule_id: sc)
sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Miercoles', latitude: 1, length: 2, schedule_id: sc)
sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Jueves', latitude: 1, length: 2, schedule_id: sc)
sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Viernes', latitude: 1, length: 2, schedule_id: sc)
sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Sabado', latitude: 1, length: 2, schedule_id: sc)
sc.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Domingo', latitude: 1, length: 2, schedule_id: sc)

sc1 = Schedule.find(3)

sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Lunes', latitude: 1, length: 2, schedule_id: sc1)
sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Martes', latitude: 1, length: 2, schedule_id: sc1)
sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Miercoles', latitude: 1, length: 2, schedule_id: sc1)
sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Jueves', latitude: 1, length: 2, schedule_id: sc1)
sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Viernes', latitude: 1, length: 2, schedule_id: sc1)
sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Sabado', latitude: 1, length: 2, schedule_id: sc1)
sc1.schedule_details.create(entry_time: 3, exit_time: 4, week_day: 'Domingo', latitude: 1, length: 2, schedule_id: sc1)

