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