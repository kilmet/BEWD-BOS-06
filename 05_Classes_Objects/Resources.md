![BEWD_Logo](../assets/BEWD_Logo.png)
#BEWD Resources - Classes & Objects

###Cheat Sheet

####Classes & Objects

__Create A Class__

```ruby
	class class_name
  		#variables and method for this class.
	end
```

__Creating Objects__

```ruby
	class GA_course
		def initialize (course_name)
			@course_name = course_name
		end

		def announce_course
			puts "GA has a course on #{@course_name}"
		end
	end
 
	my_course = GA_course.new("BEWD")
	other_course = GA_course.new("UXD")

	my_course.announce_course
	other_course.announce_course
```
>GA has a course on BEWD

>GA has a course on UXD


__Variable Scope__


| Scope |Example| Explanation|
| ------------- |:-------------|:-------------------|
| Local      | @name | Available in the same method|
| Instance   | name | Unique value for each instance of a class available from any method in that class.|
| Class   | @@name  | Same shared value for all instances of a class, available from any method of that class.|
| Global   | $name  | Same shared value for all code running within a single Ruby program.|

	
###Still Feel Lost?
####Catch Up With These Resources

-	What is Object Oriented Programming [video](http://www.youtube.com/watch?feature=endscreen&v=SS-9y0H3Si8&NR=1)
-	What is Object Oriented Programming [Book Chapter](http://ruby.bastardsbook.com/chapters/oops/)
-	Introduction to Objects [Ruby Monk](http://rubymonk.com/learning/books/1-ruby-primer/chapters/6-objects/lessons/35-introduction-to-objects)
-	Building your Own class [Ruby Monk](http://rubymonk.com/learning/books/1-ruby-primer/chapters/7-classes/lessons/40-building-your-own-class)

