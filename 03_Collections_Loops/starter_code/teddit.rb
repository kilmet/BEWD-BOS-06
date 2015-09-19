# We're going to add a remote data source to pull in stories, Digg and Mashable.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

mashable_response = JSON.load(RestClient.get('http://mashable.com/stories.json'))

digg_response = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))

reddit_response = JSON.load(RestClient.get('http://www.reddit.com/.json'))

