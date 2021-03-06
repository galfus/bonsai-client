[![Gem Version](https://badge.fury.io/rb/bonsai_client.svg)](https://badge.fury.io/rb/bonsai_client)
[![Build Status](https://travis-ci.org/galfus/bonsai-client.svg?branch=master)](https://travis-ci.org/galfus/bonsai-client)

# Bonsai Client

![Logo of Bonsai](bonsai.png)

Client for Bonsai server.

### NOTE

This gem is at an early stage of development. Please do not use it already.


## Install

```bash
gem install bonsai_client
```

Note: If you're using `rbenv` and there is no bonsai_client command after installing the gem try:

```
rm /Users/user-name/.rbenv/shims/.rbenv-shim
rbenv rehash
```

## Usage in shell

Upload a file:

```bash
bonsai_client upload --url="http://bonsai-server-instance.com" --path=/path/to/file --client-id=xxx --client-secret=yyy
```

## Usage in ruby code

```ruby
# Require Bonsai Client gem.
require 'bonsai-client'

# Create a new instance of Bonsai client:
bonsai = BonsaiClient.new(url: 'http://bonsai-server-instance.com', client_id: 'xxx', client_secret: 'yyy')

# Upload a file to a Bonsai server:
response = bonsai.upload(path: '/path/to/my-file')

# URL for a specific file in Bonsai sever:
src1 = bonsai.thumbnail_url(checksum: response[:data][:file_checksum]) 
src2 = bonsai.thumbnail_url(name: 'my-file')
src3 = bonsai.thumbnail_url(checksum: response[:data][:file_checksum]), size: :medium) 
```

## Development

### Test

```bash
BONSAI_SERVER_URL=https://bonsai-server-instance.com BONSAI_CLIENT_ID=xxx BONSAI_CLIENT_SECRET=yyy rake test
BONSAI_SERVER_URL=https://bonsai-server-instance.com BONSAI_CLIENT_ID=xxx BONSAI_CLIENT_SECRET=yyy rake test TEST=test/upload_file_test.rb
```

### Rake tasks

Create a new version:

```bash
rake release
```

Push commits to git repositories (GitLab and GitHub):

```bash
rake push
```

Build gem file into pkg folder:

```bash
rake build
```

Publish the current gem version to Rubygems:

```bash
rake push
```

Show current gem version:

```bash
rake version
```

### Documentation

Create documentation:

```bash
yardoc
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
