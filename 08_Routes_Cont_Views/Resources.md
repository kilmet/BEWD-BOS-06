![BEWD_Logo](../assets/BEWD_Logo.png)

## Resources: Routes Controllers & Views

###Cheat Sheet

####Creating a new Controller and View

```bash
$ rails generate controller game index show
```
*	Creates game_controller.rb with action index and show*	Adds entries to the routes.rb*	Creates the view 
	*	```app/views/games/index.html.erb```  
	*	```app/views/games/show.html.erb``

####Adding Ruby To A View

 ```erb
 	<%  These are ruby tags %>
 ```

###Still Feel Lost? 

At the end of this lesson you should be able to describe the flow of control in a Rails app.

####Catch Up With These Resources

*	[MVC Pattern Explained Through Cooking](http://www.rubybacon.com/mvc-pattern-explained/)
*	[Using Render](http://edgeguides.rubyonrails.org/layouts_and_rendering.html#using-render)
*	[Rails Guides to Routes](http://edgeguides.rubyonrails.org/routing.html)
*	[Routes to Controller Tutorial](http://darynholmes.wordpress.com/2008/03/15/beginners-tutorial-routing-in-rails-20-with-rest-part-1-of-n/)
*	[More Routes Resources](http://everydayrails.com/2010/07/18/understanding-rest-and-routes.html)
