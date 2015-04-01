brooklyn_heights = Neighbourhood.create(name: "Brooklyn Heights")
soho = Neighbourhood.create(name: "SOHO")

kiran = User.create(email:"kiran@gmail.com",
            password:"123",
            first_name: "Oshi",
            last_name:"C",
            url: File.join('img', 'oshi.jpg'),
            handle: "oshi",
            bio: "Loves long walks, barking at cats and chasing squirrels.",
            neighbourhood_id: brooklyn_heights.id)

max = User.create(email:"max@gmail.com",
            password:"123",
            first_name: "astrid",
            last_name:"R",
            url: File.join('img', 'astrid.jpg'),
            handle: "astrid",
            bio: "Loves her daddy, runs the house like a boss.",
            neighbourhood_id: soho.id)

comment1 = Comment.create(title:"Kiran, Lets set up a pup play Date", content:"Hey Kiran, I love your Dog, We should def get together and setup a play date for our pups.", user_to_id: kiran.id, user_from_id: max.id)
comment2 = Comment.create(title:"Kiran, Are You busy Monday", content:"Hey Kiran, I love your Dog, We should def get together and setup a play date for our pups.", user_to_id: kiran.id, user_from_id: max.id)
comment3 = Comment.create(title:"Kiran, Are You busy Tuesday", content:"Hey Kiran, I love your Dog, We should def get together and setup a play date for our pups.", user_to_id: kiran.id, user_from_id: max.id)
comment4 = Comment.create(title:"Kiran, Are You busy Wednesday", content:"Hey Kiran, I love your Dog, We should def get together and setup a play date for our pups.", user_to_id: kiran.id, user_from_id: max.id)
comment5 = Comment.create(title:"Kiran, Are You busy Thursday", content:"Hey Kiran, I love your Dog, We should def get together and setup a play date for our pups.", user_to_id: kiran.id, user_from_id: max.id)
comment6 = Comment.create(title:"Kiran, Are You busy Friday", content:"Hey Kiran, I love your Dog, We should def get together and setup a play date for our pups.", user_to_id: kiran.id, user_from_id: max.id)
comment7 = Comment.create(title:"Max, I am down!", content:"Hey Max, I love your Dog too! Yes, I am down, lets let out pups hangout and we can watch them play, and get couple beers.", user_to_id: max.id, user_from_id: kiran.id)