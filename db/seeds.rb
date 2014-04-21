# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

u = User.create(email: "email@example.com")
o = Owner.create(first_name: "Olivier", last_name: "Lacan", email: "email@example.com", phone: "06 60 60 60 60")
b = Building.create(address: "55 rue de Montmartre, 75040 Paris")
f = Floor.create(level: 0, building: b)
b.owners << o
l = Lot.create(owner: o, floor: f)

c = Contact.create(first_name: "Sarah", last_name: "Legrand", email: "email@example.com", phone: "01 99 99 99 99", fax: "01 99 99 99 66")
s = Syndic.create(name: "BAP", address: "55 rue de Montmartre, 75040 Paris", contact: c, building: b)

co = Council.create(building: b)
co.representatives.create(owner: o, role: "Secretary")
