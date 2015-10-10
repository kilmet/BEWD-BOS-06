![BEWD_Logo](../assets/BEWD_Logo.png)


<div id="resources">

## Resources: Models & Active Record

###Cheat Sheet

####Create Models

```bash
	rails g model ModelName attribute_name:migration_type attribute_2:migration_type
```
*	Use spaces to separate attributes. If you don't list a migration_type (text, integer, float, etc.) the default will be string.

####Migrations

__Migrations__

*	Forgot an attribute / field in your model? Create a migration
	*	Code below adds a field called ratings to the Movies model.

```
	rails g migration AddRatingToMovies rating:integer
```

__Seed Files__

*	Populating an entire database with the console would take a while. Use the seeds.rb file.

```
rake db:seed
```

__Drop The Database__

*	_You will loose your data if you do this._

```
	rake db:drop
```

__Drop database, run migrations, run seeds__

```
	rake db:reset
```

####Active Record

__Create__

	```
		Movie.create(title: "Jaws")
	```

__Read__

	```
		Movie.find_by title: "Jaws"
	```

	```
		# Returns all movie objects in an array.
		Movie.all
	```

__Update__

	```
		jaws = Movie.find_by title: "Jaws"
		jaws.update description: "Big Shark, bites people"
	```

__Delete__

	```
		jaws.destroy
	```


###Still Feel Lost?

At the end of this course you should have an understanding of what databases are and the general structure of a database table (rows and colums). In addition you should be familiar with how to create, update and delete records using active record in the Rails console.

####Catch Up With These Resources

[Introduction to Databases w/ Geekgirls](http://geekgirls.com/2011/09/databases-from-scratch-i-introduction/)

[Introduction to Database Youtube Video](http://www.youtube.com/watch?v=KgiCxe-ZW8o
)

[Rails Guides Active Record Query](http://edgeguides.rubyonrails.org/active_record_querying.html)

[Rails Guides Validations](http://edgeguides.rubyonrails.org/active_record_validations.html)


__Rake__
Rake is Rails software task management tool, often used to automate moving, compiling, and deleting Ruby files

Rake executes tasks defined in rake files which describe tasks to be completed using Ruby anonymous function blocks

[Introduction to using rake](http://guides.rubyonrails.org/command_line.html#rake
)

[User guide to rake](http://docs.rubyrake.org/user_guide/index.html
)