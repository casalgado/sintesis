# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative 'source_data'

# Create User

User.create!(name: "Carlos Alberto", email: "casalgado86@yahoo.com", password: "123456", password_confirmation: "123456")


# Create Medias

media_types = [['journal', 'image'], ['digital', 'text'],['recording', 'audio'],['souvenir', 'image'],['pictures', 'image']]
media_types.each do |m|
	Medium.create(name: m[0], media: m[1])
end

# Create Test Sources

User.first.sources.create!(name: "notebook", codename: "S1", medium_id: 1)
User.first.sources.create!(name: "document", codename: "D1", medium_id: 2)
User.first.sources.create!(name: "phone", codename: "VC1", medium_id: 3)

# Create source covers

Source.find(1).attachments.create!(content: "https://s-media-cache-ak0.pinimg.com/originals/bd/f5/5b/bdf55b3a22669ffb3b9aa84784cfc3d6.jpg")
Source.find(2).attachments.create!(content: "http://www.billboard.com/files/styles/900_wide/public/media/Pink-Floyd-Dark-Side-of-the-Moon-album-covers-billboard-1000x1000.jpg")
Source.find(3).attachments.create!(content: "http://www.fuse.tv/image/56fe73a1e05e186b2000009b/768/512/the-boxer-rebellion-ocean-by-ocean-album-cover-full-size.jpg")


# Load Source Data

Source.load(@source_data)



# A method that creates entries based on a string with their info.
# Write a ruby.rb that reads the filenames in a given directory and produces an array
# Write a method that takes in this array and creates records
  # The name must have  - alias of source
  # 				    - date of entry
  # 					- filetype?
  # The method then creates entry records and attached files associated with it. 
  # If an entry has more than one attachment, program must be able to recognize this and 
  # place the attachments, in order, on the same entry. For example, three audiofiles named
  # V1_2015-12-02_123
  # V1_2015-12-02_124
  # V1_2015-12-02_125
  # Will belong to the same entry. One entry will be created, and three audio files all belonging to it. 
  # The url of the file is also based on the name. The path in S3 will use folders for each source. 
  # The local directory of which the ruby.rb reads the filenames mirrors the s3 directory