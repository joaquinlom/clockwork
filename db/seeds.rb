# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 

Rol.create(name: 'Administrador', description: 'Cambios en general')
Rol.create(name: 'Miembro', description: 'Usuario del sistema')

Organization.create(name: 'Proteccion de animales', description: 'Proteger a los animasles')
Organization.create(name: 'Amigos de los animales', description: 'Asociacion distinguida por los beneficios que ofrece a los animalitos')

Membership.create(organization_id: 1, rol_id: 1, user_id: 1)

Schedule.create(job:'Director', membership_id: 1)

Schedule_detail.create(entry_time: Date.today, exit_time: Date.today+1, week_day: 'Lunes', latitude: 1, length: 2, schedule_id: 1)
Schedule_detail.create(entry_time: Date.today+1, exit_time: Date.today+2, week_day: 'Martes', latitude: 1, length: 2, schedule_id: 1)
Schedule_detail.create(entry_time: Date.today+2, exit_time: Date.today+3, week_day: 'Miercoles', latitude: 1, length: 2, schedule_id: 1)
Schedule_detail.create(entry_time: Date.today+3, exit_time: Date.today+4, week_day: 'Jueves', latitude: 1, length: 2, schedule_id: 1)
Schedule_detail.create(entry_time: Date.today+4, exit_time: Date.today+5, week_day: 'Viernes', latitude: 1, length: 2, schedule_id: 1)
Schedule_detail.create(entry_time: Date.today+5, exit_time: Date.today+6, week_day: 'Sabado', latitude: 1, length: 2, schedule_id: 1)
Schedule_detail.create(entry_time: Date.today+6, exit_time: Date.today+7, week_day: 'Domingo', latitude: 1, length: 2, schedule_id: 1)