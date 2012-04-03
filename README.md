# About
This is a barebone application that shows how to separate admin area from users in Rails. It uses HTTP Digest Authentication to provide secure access to the admin area.

The main idea is to use separate namespace, `Admin`, to contain controllers for admin actions. Read `config/routes.rb` file to see how the routes are implemented (nothing special, really). `app/controllers` and `app/views` folders have separate folders for admin-related content. **The only gotcha** is to use `[:admin, @post]` in routes for admin-related paths (see `admin/posts_controller.rb` and view files in `app/views/admin/posts`).

There is duplication in admin and user versions of `PostsController`, but usually as an application grows they need to be quite different.

