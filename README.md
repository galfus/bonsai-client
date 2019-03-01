[![Gem Version](https://badge.fury.io/rb/bonsai_client.svg)](https://badge.fury.io/rb/bonsai_client)
[![Build Status](https://travis-ci.org/galfus/bonsai-client.svg?branch=master)](https://travis-ci.org/galfus/bonsai-client)

# Bonsai Client

### NOTE

This gem is at an early stage of development. Please do not use it already.


## Install

```bash
gem install bonsai_client
```

## Usage in shell

```bash
bonsai_client upload --url="http://bonsai-server.com" --path="/path/to/file"
```

## Usage in ruby code

```ruby
# Require Bonsai Client gem.
require 'bonsai-client'

# Creata a new instance of Bonsai client:
bonsai = BonsaiClient.new(url: 'http://bonsai-server.com')

# Upload a file to a Bonsai server:
result = bonsai.upload(path: '/path/to/file')

# URL for a specific file in Bonsai sever:
src1 = bonsai.thumbnail_url(checksum: 'AF1...') # http://bonsai-server.com/thumbnails/AF1...
src2 = bonsai.thumbnail_url(name: 'myfile') # http://bonsai-server.com/...
src3 = bonsai.thumbnail_url(checksum: 'AF1...', size: :medium) # http://bonsai-server.com/thumbnails/AF1.../size/medium
```

## Development

Test

```bash
bundle exec rake test
```

## License

The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
