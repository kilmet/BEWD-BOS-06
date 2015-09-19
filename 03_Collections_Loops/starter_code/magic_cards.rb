require 'json'
require 'rest-client'

data = JSON.load(RestClient.get('https://raw.githubusercontent.com/sbackus/MTGFlavorCraver/master/origins.json'))

cards = data["cards"]
