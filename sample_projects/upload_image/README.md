== README

=== Part 1: Working with Carrierwave on Localhost
* initialize project
 ```
 rails new upload_image
 ```

 * Add gem bootstrap

 ```
 gem "twitter-bootstrap-rails"
 ```

* Generate resouces

```
rails g image file:string name:string gallery:references
rails g scaffold image file:string name:string gallery:references
```

* Run migrations

```
rake db:migrate
```

* Install Bootstrap gem

```
rails generate bootstrap:install static

rails g bootstrap:layout application

rails g bootstrap:themed galleries

rails g bootstrap:themed images

```

* Add gem carrierwave
```
gem 'carrierwave'
```

* Create uploader
```
rails generate uploader File
```

* Adding version

We need to install minimagick first

```
gem "mini_magick"
```

```
class MyUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fill: [200,200]
  end

end
```

* Testing in Console

```
u = User.new
u.avatar = params[:file] # Assign a file like this, or

# like this
File.open('somewhere') do |f|
  u.avatar = f
end

u.save!
u.avatar.url # => '/url/to/file.png'
u.avatar_identifier # => 'file.png'

# or
Image.create(file: File.open('path/to/images/camera-bg.jpg'), name: 'Test Image')

```

* Working with view

```
<%= form_for @user, html: { multipart: true } do |f| %>
  <p>
    <label>My Avatar</label>
    <%= image_tag(@user.avatar_url) if @user.avatar? %>
    <%= f.file_field :avatar %>
    <%= f.text_field :remote_avatar_url %>
  </p>

  <p>
    <label>
      <%= f.check_box :remove_avatar %>
      Remove avatar
    </label>
  </p>
<% end %>
```

=== Part 2: Store Image on cloud using Cloudinary
