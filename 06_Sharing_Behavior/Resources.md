![BEWD_Logo](../assets/BEWD_Logo.png)

##Resources: Sharing Behavior

Good code should be reused!

###Cheat Sheet

####load vs. require vs. include

Why do they all sound the same??!!!!

*	load: inserts a file's contents
	*	File can be loaded more than once.

		```load 'config.rb'```

*	require inserts parsed contents: We use it to require a class in another .rb file.
	*	File is only required once.

		```require 'config'```

*	include 'mixes in' modules. Use to include modules and mixins.
		
		```include 'my_module'``` 

####Inheritance
*	One class can inherit the capabilities of another using ```<``` *	Sub-class inherits from super-class (child class inherits from parent class)

*	If defined in different physical files, a child must require its parent-- lib/person.rb ---```ruby
	class Person	end

```--- lib/worker.rb ---```ruby
		require 'lib/person'	class Worker < Person	end
```
Heres a lengthy example: 

*	Don't repeat yourself (DRY)*	Don't do this!

```ruby
	class ScienceSubteddit
  		@@name = "Science"
  		@@description = "Where we blow stuff up for fun"
  		def self.welcome
    		puts "Welcome to the #{@@name} Subteddit!"
    		puts @@description
  		end
	end

	class MoviesSubteddit
  		@@name = "Movies"
  		@@description = "Because the Matrix was awesome"
  		def self.welcome
    		puts "Welcome to the #{@@name} Subteddit!"
    		puts @@description
  		end
	end

	class SportsSubteddit
  		@@name = "Sports"
  		@@description = "We have big muscles and we run fast"
  		def self.welcome
    		puts "Welcome to the #{@@name} Subteddit!"
    		puts @@description
  		end
	end

	class RubySubteddit
  		@@name = "Ruby"
  		@@description = "Because Python Sucks"
  		def self.welcome
    		puts "Welcome to the #{@@name} Subteddit!"
    		puts @@description
  		end
	end
```


*	This is a better approach and demonstrates the benefit of using Object Oriented programming. 
	*	News sections inherit from Subteddit.


```ruby
	class Subteddit
  		@@name = ""
  		@@description = ""
  		def self.welcome
    		puts "Welcome to the #{@@name} Subteddit!"
    		puts @@description
  		end
	end

	class ScienceSubteddit < Subteddit
  		@@name = "Science"
  		@@description = "Where we blow stuff up for fun"
	end

	class MoviesSubteddit < Subteddit
  		@@name = "Movies"
  		@@description = "Because the Matrix was awesome"
	end

	class SportsSubteddit < Subteddit
  		@@name = "Sports"
  		@@description = "We have big muscles and we run fast"
	end

	class RubySubteddit < Subteddit
  		@@name = "Ruby"
  		@@description = "Because Python Sucks"
	end
```

####Mixins

*	Include a module in a class to access the module's methods. This also keeps code DRY.```ruby
	module MyModule  		def module_method(parameters)    		return parameter  		end	end
```

```ruby
	class MyClass
		include MyModule	end	my_object = MyClass.new
	my_object.module_method```
####Modules

Ruby exposes much core functionality through modulesA commonly used built in module is MathThe :: operator is used to refer to a constant set in a module```ruby
	puts Math.sqrt(9)
```
>3.0```ruby
	puts Math::PI
```
>3.1415926


*	A module is like a class, except 
	*	You cannot create a new instance of a module	*	You cannot extend a module to create a child module*	Modules are a way to add namespaces

Ruby docs have a full list of available modules.

__Method Scope__

```ruby
	class GA_course
		def initialize (course_name)
			@course_name = course_name
		end

		def announce_course
			puts "GA has a course on #{@course_name}"
		end
		
		def self.announce_courses
			puts "GA has a course on BEWD"
			puts "GA has a course on FEWD"
			puts "GA has a course on CSF"
			puts "GA has a course on DAT"
			puts "GA has a course on UXD"
			puts "GA has a course on PDM"
		end
	end
	
	my_course = GA_course.new("BEWD")
	my_course.announce_course #
	GA_Course.announce_courses 
```
	
>GA has a course on BEWD

>GA has a course on BEWD
>GA has a course on FEWD
>GA has a course on CSF
>GA has a course on DAT
>GA has a course on UXD
>GA has a course on PDM


###Still Feel Lost? 

Its ok, we will see these terms again in Rails, but you can also,

####Catch Up With These Resources

*	Working with Enumerables [Video](http://vimeo.com/gatv/review/67752032/67e8f877bb)
	*	password => BEWD_GA	
*	[Modules](http://marakana.com/bookshelf/ruby_tutorial/modules.html
)
*	[Mixins](http://samwho.co.uk/blog/2011/09/12/ruby-mixins/)












