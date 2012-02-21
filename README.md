# About

Simple Ruby client for the Phono API.

# Usage

      phono = Phono::Client.new('424242424242424242424242')
      phono.all('products')
      phono.find('products', 'id...')
