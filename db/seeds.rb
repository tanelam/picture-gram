# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
##-----USER------##

tania = User.create(username:"tania", email: "tania@example.com", password: "test123")
kodi = User.create(username:"kodi", email: "kodi@example.com", password: "test123")
luca = User.create(username:"luca", email: "luca@example.com", password: "test123")
luke = User.create(username:"luke", email: "luke@example.com", password: "test123")
han = User.create(username:"han", email: "han@example.com", password: "test123")

##-----TAG-------##

nature = Tag.create(name: "nature")
china = Tag.create(name: "china")
art = Tag.create(name: "art")
balloons = Tag.create(name: "balloons")
wild_life = Tag.create(name: "wild life")

##-----PICTURES-------##

url1 = "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg"

dolphin = Picture.create(image_url: url1, title: "Saw a dolphin!", user_id: 1)

url2 = "https://www.thomsonreuters.com/content/dam/ewp-m/images/thomsonreuters/en/photography/204214-476126533.jpg/203990_6568507.jpeg.transform/rect-768/q90/image.jpg"

balloon = Picture.create(image_url: url2, title: "Air balloon", user_id: 2)

url3 = "http://img04.mini.abroad.imgcdc.com/english/news/china/54/20180127/1191347_434347.jpg.680x330.jpg"

china = Picture.create(image_url: url3, title: "China", user_id: 3)

url4 = "https://upload.wikimedia.org/wikipedia/commons/a/a9/African_Bush_Elephants.jpg"

elephant = Picture.create(image_url: url4, title: "Elephants", user_id: 4)

url5 = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/757px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg"

starry_night.create(image_url: url1, title: "Starry Night", user_id: 5)

##-------PICTURE TAGS-------##

pic_tag1 = PictureTag.create(picture_id: 1, tag_id: 1)
pic_tag2 = PictureTag.create(picture_id: 2, tag_id: 2)
pic_tag3 = PictureTag.create(picture_id: 3, tag_id: 3)
pic_tag4 = PictureTag.create(picture_id: 4, tag_id: 4)
pic_tag5 = PictureTag.create(picture_id: 5, tag_id: 5)

##-------COMMENTS-------##
comm1 = Comment.create(content: "beautiful", user_id: 1, picture_id: 1)
comm2 = Comment.create(content: "cool", user_id: 2, picture_id: 2)
comm3 = Comment.create(content: "amazing", user_id: 3, picture_id: 3)
comm4 = Comment.create(content: "nice", user_id: 4, picture_id: 4)
comm5 = Comment.create(content: "cute", user_id: 5, picture_id: 5)
