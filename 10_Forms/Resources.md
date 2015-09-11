![BEWD_Logo](../assets/BEWD_Logo.png)

## Resources: Forms & Validation

###Cheat Sheet

####Reload Code in Console

*	Reloads freshest code in the console

``` ruby
reload!
```

####Validations

__Validate Presence__

*	Validates that title, description and year_released, rating are not empty.
*	
``` ruby
validates :name, :description, presence:true
```

__Validate Length__

*	Validates that all descriptions are a minimum of 10 characters.

``` ruby
validates :description, length: { minimum: 10 } 
```

__Numericality__

``` ruby
validates :year_released, numericality: { only_integer: true }                   
validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true }
```

__Checks if a record is valid__

``` ruby
movie.valid?
```

__Show current errors in an object__

*	Shows all of the current errors on an object

``` ruby
movie.errors
```


####Strong Parameters

``` ruby
def create                                                                       
  shirt_params = params.require(:shirt).permit(:name, :description, :image)   
  shirt = Shirt.create(shirt_params)                                             
  redirect_to shirt                                                              
end                  
```


#### Private methods

*	Not routable, or callable from the outside world

```ruby 
class MyClass 
	def call_me 
		puts "Called" 
	end 
	private 
	def maybe 
		puts "Forever Alone" 
	end 
end 
```


###Still Feel Lost? 

This course focus was on forms. You should have a general understanding of form builders and what happens when using a search form. Next lesson you will continue to practice Forms, Models, Views, Controller and Routes. 

####Catch Up With These Resources

*	[Form Tags](http://edgeguides.rubyonrails.org/form_helpers.html) about the different tags here and [here](http://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html)

*	[Form Helpers](http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html)	

*	Active Record Querying[Documentation](http://guides.rubyonrails.org/active_record_querying.html) - This is an advance topics that talks about querying your database.


