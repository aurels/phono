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
