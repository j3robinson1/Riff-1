namespace :db do
  desc "add data to riffblobs table"
  task :populate => :environment do
    N = 50
    require 'faker'
    N.times do
      u = Riffblob.new(

        shoutout: [

          "crazy",
          "Manhattan",
          "Portland",
          "smooth",
          "sturdy",
          "dirty",
          "pickled",
          "careful",
          "funky",
          "sexy",
          "sunlit",
          "fuzzy",
          "cabin",
          "nappy",
          "lone",
          "bashful",
          "banana",
          "perky",
          "weeping",
          "thoughtful",
          "daily",
          "murky",
          "sundance",
          "extreme",
          "restful",
          "stovetop",
          "tiny",
          "juicy",
          "carpe",
          "tricky",
          "elastic",
          "simple",
          "organic",
          "crafty",
          "steady",
          "blue",
          "peachy keen"

          ].sample,

        user_id: [

          "1",
          "2",
          "3",
          "4",
          "5",
          "6"

          ].sample,

        pointer: [

          "1",
          "2",
          "3",
          "4",
          "5",
          "6"

          ].sample

        # image: [

        #   "https://dl-web.dropbox.com/get/Apps/riffApp/blues_mikey_drum_test.mp3?_subject_uid=2413438&w=AAAUZRDv3Vl6QGFxdGhbTVFOHws0JONpLuDBhsUaGcVc4A"

        #   ].sample

          )

      u.save
    end
  end
  puts "50 Fake riffblob records have been created and stored in riff db"
end