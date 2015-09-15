# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  { email: 'jean.valjean@yopmail.com', username: 'jean_valjean',    password: '123456' },
  { email: 'napoleon@yopmail.com',     username: 'napoleon',        password: '123456' },
  { email: 'steve.jobs@yopmail.com',   username: 'real_steve_jobs', password: '123456' },
  { email: 'morgana@yopmail.com',      username: 'morgana',         password: '123456' },
  { email: 'arthur@yopmail.com',       username: 'arthur',          password: '123456' }
])

followers = Follower.create([
  { follower: users[0], following: users[1] },
  { follower: users[0], following: users[2] },
  { follower: users[0], following: users[3] },
  { follower: users[0], following: users[4] },
  { follower: users[1], following: users[2] },
  { follower: users[1], following: users[3] },
  { follower: users[1], following: users[4] },
  { follower: users[2], following: users[3] },
  { follower: users[2], following: users[4] },
  { follower: users[3], following: users[4] }
])

tweets = Tweet.create([
  {
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed metus magna, volutpat a gravida a, ullamcorper vel tellus.',
    author: users[0]
  },
  {
    content: 'Phasellus metus purus, hendrerit ac pretium nec, mollis a felis.',
    author: users[0]
  },
  {
    content: 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque lacus elit, finibus id sem non, suscipit molestie turpis.',
    author: users[0]
  },
  {
    content: 'Nullam tincidunt, enim et viverra ultrices, lorem risus laoreet neque, sed hendrerit magna nisi sed quam.',
    author: users[1]
  },
  {
    content: 'Phasellus leo erat, sollicitudin quis pellentesque sit amet, laoreet a nisl. Morbi accumsan enim in augue pretium, nec ornare dolor.',
    author: users[1]
  },
  {
    content: 'Quisque consectetur tristique augue, in scelerisque leo consectetur nec.',
    author: users[2]
  },
  {
    content: 'Ut arcu augue, varius ut elementum quis, eleifend quis lectus.',
    author: users[2]
  },
  {
    content: 'Aenean quam tellus, elementum efficitur libero a, sodales imperdiet lacus.',
    author: users[2]
  },
  {
    content: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
    author: users[2]
  },
  {
    content: 'Curabitur iaculis et lorem id semper. Aenean quam risus, molestie eget congue eget, volutpat et nisl.',
    author: users[3]
  },
  {
    content: 'Etiam orci nunc, laoreet ac dui eget, molestie congue neque. Pellentesque tincidunt nisi non ante tristique egestas.',
    author: users[3]
  },
  {
    content: 'Cras tincidunt, nunc eu ullamcorper mollis, sem urna vestibulum libero, in commodo mi risus eget lacus.',
    author: users[4]
  },
  {
    content: 'Quisque vitae euismod ante.',
    author: users[4]
  },
  {
    content: 'Nam ornare, lacus tempor ornare varius, metus ligula rhoncus turpis, eget porttitor erat sem eu tortor. Donec auctor massa et.',
    author: users[4]
  },
  {
    content: 'Integer iaculis dignissim mi a fringilla.',
     author: users[4]
   }
])
