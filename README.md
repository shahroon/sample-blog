# README

* Ruby: 2.6.6
* No Test Suits for now
* 'deploy' branch auto deploy

CONFIGURATION & OTHER INFO, assuming you know the db create and migration process.
1. To create an Admin User run seed, 
    rake db:seed
2. Admin Section has functionality to make more admins from existing users, through "Make Admin" link.
3. Admin can edit/delete other users Posts.
4. From Admin Dashboard, Admin can navigate to BLOG through BLOG link -> Top left corner.
5. Admin/User can create new posts from BLOG view through Create Post button.
6. Edit/Delete buttons are available at the bottom of every post.
7. General User can access and update his/her user details through ACCOUNT tab in navigation bar when logged in.

GEMS USED:

1. Devise (For User Management and Authentication)
2. Kaminari (For Pagination)

TODO: (As not asked in requirement list, but if asked can be done within couple of hours)
* Forgot Password not working as email functionality not integrated.
* Search
* AJAX based functionalities, which could have been implemented at various places.
