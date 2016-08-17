Download this template.
Unzip and rename the template directory.
Empty README.md and fill with your own content.
Move into the new project and git init.
Install dependencies with bundle install.
Rename your app module in config/application.rb (change RailsApiTemplate).
Rename your project database in config/database.yml (change 'rails-api-template').
Create a .env for sensitive settings (touch .env).
Generate new development and test secrets (bundle exec rake secret).
Store them in .env with keys SECRET_KEY_BASE_ respectively.
In order to make requests from your deployed client application, you will need to set CLIENT_ORIGIN in the environment of the production API (e.g. https://<github-username>.github.io).
Setup your database with bin/rake db:nuke_pave or bundle exec rake db:nuke_pave.
Run the API server with bin/rails server or bundle exec rails server.
