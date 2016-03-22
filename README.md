## README

### DESCRIPTION
(Todo)

### INSTALLATION
(Todo)

#### Auto complete search

- Install Elastichsearch by downloading zip file, unzip, cd to elasticsearch directory and run ```bin/elasticsearch -d```

- Add gem searchkick, which is used to powerful searching in Rails

- Add routes for ```books#search``` and ```books#autocomplete```

- Add ``` searchkick autocomplete: ['name'] ``` to ``` Book ```  model

- You should reindex your search model in Elasticsearch by this command

```
 rake searchkick:reindex CLASS=Book
```

- For search and autocomplete function

```
  # Search - using searchkick, a gem based on elasticsearch
  # http://blog.ragnarson.com/2013/10/10/adding-search-and-autocomplete-to-a-rails-app-with-elasticsearch.html
  def search
    @books = Book.search(params[:query])
    respond_to do |format|
      format.html { render :index }
    end
  end

  def autocomplete
    render json: Book.search(params[:query], autocomplete: true, limit: 10).map(&:name)
  end
```

- Add typehead js, a library from Twitter for browser side. Remember to add it to ```application.js``` file

- Create form for search function

```
<%= form_tag books_search_path do %>
    <div class="col-md-8">
      <input type="text" placeholder="Enter Your Title" name="query" id="book_search">
    </div>

    <div class="col-md-2">
      <button type="submit">Search</button>
    </div>
<% end %>
```

- Add js code for search text field for autocomplete search

```
  $('#book_search').typeahead
    name: "book",
    hint: null,
    highlight: null,
    remote: "/books/autocomplete?query=%QUERY"
```

#### Send mail SUBSCRIBE

- Cài đặt mailcatcher để test ở môi trường development (xem hướng dẫn chi tiết ```http://mailcatcher.me/```)
1 - gem install mailcatcher
2 - mailcatcher
3 - Go to http://localhost:1080/
4 - Send mail through smtp://localhost:1025

- Thêm model Subscriber
tạo bảng ```subscribers```
 ```
 class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.timestamps null: false
    end
  end
end
```
validate email in Subscriber 
 ```
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
```

Tạo đối tượng Notifier kế thừa từ ActionMailer::Base trong thư mục ```mailers```
```
class Notifier < ActionMailer::Base
  default from: '<colin@bookstore.co>'
  default to: '<colin@bookstore.co>'
end
```
thêm 1 hàm subscribe để gửi mail tới ```subscriber```
 ```
 def subscribe(subscriber)
    mail to: subscriber.email
  end
 ```
 Thêm ```subscribes_controller``` để xử lý ```subscriber```, thêm action create để tạo mới ```subscriber```
 ```
 class SubscribesController < ApplicationController
  def create
    subscriber = Subscriber.new(email: params[:email])

    if subscriber.valid? && subscriber.save
      Notifier.subscribe(subscriber).deliver
      render :json => { :result => "success" }
    else
      render :json => { :result => "not-success", :massage => subscriber.errors.full_messages }
    end
  end

 end
 ```
 code xử lý ở view trên file ```_new_letter.html.erb```
 ```
   <!--SECTION CONTENT END-->
    <div class="input-container subscriber_notice">
      <span class="subscriber_notice"></spam>
    </div>
    <div class="input-container subscriber_form">
      <input type="email" id="subscriber_email" placeholder="Subscribe us" >
      <button class="subcribe">Subcribe</button>
    </div>
    <div class="input-container subscriber_success">
      <p class="form-success">Thanks for subscribing</p>
    </div>
 ```
 xử lý ajax
 ```
 $(document).on("click",".subcribe",function(){
    var email = $("#subscriber_email").val();
    var url = "<%= subscribe_path %>";
    $.ajax({
      url: url,
      type: "post",
      dataType: "json",
      data: 'email=' + email,
      asycn: true,
      success: function(data) {
        if (data.result == "success"){
          $('.subscriber_form').hide();
          $('.subscriber_notice').hide();
          $('.subscriber_success').show();
        }else{
          $('.subscriber_notice').html(data.massage);
          $('.subscriber_notice').show();
        }
      },
      error: function(err){
      }
    });
 ```
