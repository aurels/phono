# About

Simple Ruby client for the Phono API.

# Usage

      phono = Phono::Client.new('424242424242424242424242')

## Getting all instances of an entity

      phono.all('products')

Results are paginated.  You can play with `page` and `per_page` parameters.

### Sorting

      phono.all('products', {
      	'sort' => 'price.asc'
      })

### Filtering

      phono.all('products', {
      	'filters' => {
      	  'price' => {
      	  	'$lt' => 10.0
      	  },

      	  'category' => '1234567890ezrzerzrzer'
      	}
      })

## Getting a given instance of an entity

      phono.find('products', '2323...')

## Creating an instance of an entity

      phono.create('products', {
      	'name'  => 'San Pellegrino',
      	'price' => 42.5
      })

## Updating an instance of an entity

      phono.update('products', '2323...', {
      	'name'  => 'San Pellegrino',
      	'price' => 42.5
      })

## Destroying an instance of an entity

      phono.destroy('products', '2323...')

## Displaying pictures

Get the original's URL :

      instance['picture']

Get a resized version :

      "#{instance['picture']}?size=300x200"

Get a resized and cropped version :

      "#{instance['picture']}?size=300x200&crop=true"

You can also force the resize (with deformation) :

      "#{instance['picture']}?size=300x200&force=true"

## Cache control

All JSON responses are cached (5 minutes by default).  You can override this timeout by passing the value you want as a 2nd parameter to the client's constructor :

      Phono::Client.new('424242424242424242424242', 3600) # responses will be cached for 1 hour
