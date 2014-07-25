# Rails Bug 06

## Setup

* `bundle`
* `rake db:create db:migrate db:seed`
* `rails s`

You can run specs with:

* `rspec`

Note: email/password combinations for existing users populated by `rake db:seed` can be found in the db/seeds.rb file.

## Stories

### Seriously!!

It's like playing whack-a-mole with these bugs.  I mean, really?

<img src="http://upload.wikimedia.org/wikipedia/commons/e/e7/Dave_Silverman.png" />

**The edit page always shows the __same__ task**

```
As a user, when I login, I can edit the first task that is there.
If I add a new task, it works fine.
If I try to edit the new task I created, the site thinks it's editing the *first* task
But I want to be able to edit any task
```
