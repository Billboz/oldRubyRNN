Player.create!([
  {first_name: "Patrick", last_name: "Vecchione", player_name: "Vasago", email: "me@home.com", level: 5, exp: 500, influence: 2},
  {first_name: "Bill", last_name: "Bozarth", player_name: "BillyBoy", email: "him@home.com", level: 8, exp: 800, influence: 3}
])
Rating.create!([
  {name: "Thanks", rating_def: "It's a thank you, self-explanatory.", value: 10, player_id: 1, thought_id: nil},
  {name: "Thanks", rating_def: "Thank you very much!", value: 10, player_id: 2, thought_id: nil},
  {name: "Like", rating_def: "Awesome! I like that!", value: 20, player_id: 1, thought_id: nil},
  {name: "Like", rating_def: "That's cool.", value: 20, player_id: 2, thought_id: nil},
  {name: "Dislike", rating_def: "That's so uncool.", value: 20, player_id: 2, thought_id: nil}
])
Thought.create!([
  {title: "Cats Drool!", thought_href: "http://www.yahoo.com", citation: nil, player_id: 1},
  {title: "Vote for Bill Murray in 2016", thought_href: "http://www.google.com", citation: nil, player_id: 2},
  {title: "Dogs rule!", thought_href: "http://www.yahoo.com", citation: nil, player_id: 1}
])
