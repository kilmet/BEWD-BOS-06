![BEWD_Logo](../assets/BEWD_Logo.png)

#BEWD - Collections, Loops & APIs

###Cheat Sheet

####Array of Hashes

```ruby
	super_heros =[{ hero: 'Batman', secret_identity: 'Bruce Wayne'}, 
	{hero: 'Superman', secret_identity: 'Clark Kent'}, 
	{hero: 'Spiderman', secret_identity: 'Peter Parker'}]
```


####.each & .map

```ruby
	super_heros.map do |super_hero| 
		puts "#{super_hero[:hero]} is #{super_hero[:secret_identity]}"
	end
```
	
```ruby
	super_heros.each do |super_hero| 
		puts "#{super_hero[:hero]} is #{super_hero[:secret_identity]}"
	end
```

*	.each returns the original array. 
*	Map returns a new array with the results you added. 


###Tips, Tricks & Motivation


*	[Writing A REST Client in Ruby](http://www.alphadevx.com/a/88-Writing-a-REST-Client-in-Ruby)

*	[Use RestClient for HTTP requests in Ruby](https://coderwall.com/p/bmgapg)

*	[Understand Rest Client (Advanced)](http://www.ibm.com/developerworks/library/os-understand-rest-ruby/)

*	[JSON What It Is, How It Works and How To Use It](http://www.copterlabs.com/blog/json-what-it-is-how-it-works-how-to-use-it/)
	*	The code in this article is JavaScript. Read the article to get a better understanding of what is JSON don't worry about the code.	

__Map versus do__

*	[Difference Between Map And Each](http://stackoverflow.com/questions/9586989/difference-between-map-and-each)

*	[Video about Difference Between Map and Each](http://www.youtube.com/watch?v=jJHzwgPl5lA)


###Still Feel Lost?
####Catch Up With These Resources

-	Fizz Buzz Answer [Video](https://vimeo.com/67752034)
-	Rest Client [Video](http://vimeo.com/67132957) by Steven Nuñez on behalf of General Assembly
-	
	-	password=> testBEWD	
