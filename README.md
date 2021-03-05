# README

* Ruby: 2.6.6
* No Test Suits for now
* 'deploy' branch auto deploy

CONFIGURATION & OTHER INFO, assuming you know the db create and migration process.
1. Rename the database_sample.yml file to database.yml.
2. Change username/password for your local PG.
3. Run rake db:create
4. Run rake db:migrate
5. To create an Admin User run seed, 
    rake db:seed
6. Admin Section has functionality to make more admins from existing users, through "Make Admin" link.
7. Admin can edit/delete other users Posts.
8. From Admin Dashboard, Admin can navigate to BLOG through BLOG link -> Top left corner.
9. Admin/User can create new posts from BLOG view through Create Post button.
10. Edit/Delete buttons are available at the bottom of every post.
11. General User can access and update his/her user details through ACCOUNT tab in navigation bar when logged in.

GEMS USED:

1. Devise (For User Management and Authentication)
2. Kaminari (For Pagination)

TODO: (As not asked in requirement list, but if asked can be done within couple of hours)
* Forgot Password not working as email functionality not integrated.
* Search
* AJAX based functionalities, which could have been implemented at various places.
