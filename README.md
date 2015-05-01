rake db:drop:all && rake db:create && rake db:migrate && rails s

To reset database in Heroku
heroku pg:reset DATABASE --confirm gmunumel-portfolio
heroku run rake db:migrate
