README
It's a sample of multimedia store with ruby on rails.

#Run Project
#### make a copy from `database.sample.yml` and `storage.sample.yml` then remove `sample` from your copies. make change on your files. install require gems with `bundle install`, then run ` rails credentials:edit` to generate you rails secret keys. create and migrate database with `rake db:create` and `rake db:migrate`.

the project is ready: `rails s`.

## for swagger and API documentation
please get clone swagger ui inside you public folder:
`git submodule add git@github.com:wordnik/swagger-ui.git swagger`

then run this command: `rake docs:generate`

# Future Features
###[ ] **User Authentucation**
###[ ] **Add Simple Payment**
