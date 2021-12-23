macbeth = Role.create(character_name: "MacBeth")
#role.all in IRB after db:seed should show r1

donna = Audition.create(role_id: macbeth.id, actor: "Donna", location: "SF, CA", phone: "999-999-9999" )

puts donna.role.character_name
#should be connected with r1 because fo role_id: r1.id
