![BEWD_Logo](../assets/BEWD_Logo.png)

#BEWD - Collections & Loops

###Cheat Sheet

####Arrays

__Creating Arrays__

```ruby
my_array = ["Apples", "Oranges", "Pears"] 
```

> ["Apples", "Oranges", "Pears"]

```ruby
my_array = Array.new
```

> []

```ruby
Array.new(3)
```  

> [nil, nil, nil]

```ruby
Array.new(3, "BEWD") 
```

> ["BEWD", "BEWD", "BEWD"]

__Assessing Elements__

```ruby
arr = ["NYC", "LDN", "LA", "SF", "BOS", "BER"]
arr[0]
arr[100] 
arr[-3] 
```

> NYC

> nil

> SF

```ruby
arr[2, 3] #=> [3, 4, 5]
```

> ["LA", "SF", "BOS"]

```ruby
arr[1..4] 
```

> [LDN, LA, SF, BOS]

####Hashes

```ruby
	GA_Markets = { "New York City"=>"NYC", "London"=>"LDN", "Los 	Angeles"=>"LA", "San Francisco"=>"SF", "Boston"=>"BOS", 	"Berlin"=>"BER" }

	GA_Markets["London"]
```

> "LDN"

```ruby
	super_heros = { batman: "Bruce Wayne", superman: "Clark Kent", 	spiderman: "Peter Parker"}

	super_heros[:superman]
```
	
> "Clark Kent"

####Loops

__Iterator loop__

```ruby
4.times do
  puts "This will be printed 4 times"
end 
```

> This will be printed 4 times

> This will be printed 4 times

> This will be printed 4 times

> This will be printed 4 times

__Each Loop__

```ruby
		# A list of GA Courses
		courses = [ "FEWD", "BEWD", "CSF" ]

	names.each do|n|
  		puts "GA has a course on #{n}"
	end
```

> GA has a course on FEWD

> GA has a course on BEWD

> GA has a course on CSF


###Tips, Tricks & Motivation

- [The Best Way to Learn Ruby & Rails](http://astonj.com/tech/best-way-to-learn-ruby-rails/)
-  What is iteration - [article](http://www.computerhope.com/jargon/i/iteration.htm)


###Still Feel Lost? 
####Catch Up With These Resources
 
-	Teddit Hashes Answer [Video](http://vimeo.com/gatv/review/67752035/a90db9177f) by Steven Nuñez on behalf of General Assembly
	-	password=> BEWD_GA
	
-	Arrays [Ruby Docs](http://ruby-doc.org/core-2.0/Array.html)
-	Hashes [Ruby Docs](http://ruby-doc.org/core-2.0/Hash.html)
-	Hashes and Arrays [Tutorial](http://www.codecademy.com/courses/ruby-beginner-en-F3loB?curriculum_id=5059f8619189a5000201fbcb)
-	[*“Ruby-esque”* Loops](http://ruby.about.com/od/rubyfeatures/a/loops_2.htm) see page 1 for more ruby loops not covered in class.


