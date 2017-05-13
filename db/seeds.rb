# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Add data to posts 
users = User.create([{FirstName: 'Eric', LastName: 'Waight', ScreenName: 'ewaight12', Password: '99Hooble', Email: 'ewaight12@gmail.com', DateOfBirth: '01/25/1985', ProfilePicUrl: 'https://workhardpgh.com/wp-content/uploads/2017/04/less-saturated-eric.jpg'}, {id: 2, FirstName: 'Eric2', LastName: 'Waight2', ScreenName: 'ewaight123', Password: '99Hooble', Email: 'ewaight12@gmail.com', DateOfBirth: '01/25/1985', ProfilePicUrl: 'https://workhardpgh.com/wp-content/uploads/2017/04/less-saturated-eric.jpg'}])
posts = Post.create([{UserID: 1, Type: 1, Caption: 'test', Content: 'test', Counter: 1}, {id: 2, UserID: 2, Type: 1, Caption: 'test', Content: 'test', Counter: 1}, {id: 3, UserID: 1, Type: 1, Caption: 'test', Content: 'test', Counter: 1}, {id: 4, UserID: 2, Type: 1, Caption: 'test', Content: 'test', Counter: 1}, {id: 5, UserID: 1, Type: 1, Caption: 'test', Content: 'test', Counter: 1}, {id: 6, UserID: 2, Type: 1, Caption: 'test', Content: 'test', Counter: 1}])
post_accesses = PostAccess.create(UserID: 1, PostID: 1, FriendID: 2, Viewed: 'false')
user_friends = UserFriend.create(UserID: 1, FriendID: 2,)