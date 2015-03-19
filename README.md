#Notes to Chris from Robbi:

#You need mysql up and running with a connected socket.

#rake db:drop
#rake db:create
#rake db:migrate
#rake db:populate
#rails s
#localhost:3000
#You will see my rails-y one-page view containing pre-populated dummy data. For fun you can refresh the screen and see that those riff posts will change to reflect different randomly collected riffs.

#STARTER FILE FOR YOU: I have you set up in app/views/home/index_Chris.html.erb. This points up to app/assets/javascripts. When you are ready to really test drive - - just change app/views/home/index to /index_Robbi and change index_Chris to /index

#YOUR OTHER AWESOME CODE: You can put things in app/assets/javascripts and also in app/assets/stylesheets but leave these alone:
- app/assets/javascripts/application.js
- app/assets/stylesheets/application.js

#You can also put things in app/assets/images

#Be aware that other style folders outside  and libraries (including scss) etc may be closely tied in with Devise and changing them could break Devise.

#I recommend calling the main ng-app riffApp because rails doesn't always like you to name things after the actual app name.  I already tried to name some things "riff" and hit some bumps.

#ROUTES - endpoints:
        Prefix Verb   URI Pattern                    Controller#Action
               riffblobs GET    /riffblobs(.:format)           riffblobs#index
                         POST   /riffblobs(.:format)           riffblobs#create
            new_riffblob GET    /riffblobs/new(.:format)       riffblobs#new
           edit_riffblob GET    /riffblobs/:id/edit(.:format)  riffblobs#edit
                riffblob GET    /riffblobs/:id(.:format)       riffblobs#show
                         PATCH  /riffblobs/:id(.:format)       riffblobs#update
                         PUT    /riffblobs/:id(.:format)       riffblobs#update
                         DELETE /riffblobs/:id(.:format)       riffblobs#destroy

#VARIABLES for your use:
- Riffblob: user_id (this is NOT yet connected with user but we will make that happen in the way that fits the UX - - for now I put in some random numbers 1 - 6 associated with riffblobs)
- Riffblob: image (THIS IS REALLY AUDIO URL - - I need to update this....this variable is the actual link that we get from the user -> Dropbox -> mysql)
- Riffblob: shoutout

#When you are ready I can connect users to riffblobs and I can connect riffblobs to other riffblobs - - just give me a holler.

#BECAUSE RAILS: If your libraries do not work normally that is probably because I need to jump in and take out extraneous assets that live in various other folders and/or call in your assets in a certain order within app/assets/javascripts/application.js

#Jesse and I are gonna stand by and help configure style assets!

#Riff on!
