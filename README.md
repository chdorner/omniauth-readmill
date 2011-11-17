# OmniAuth Readmill

This is an unofficial OmniAuth strategy for authenticating to [Readmill](http://readmill.com). You will need to [register an app](http://readmill.com/you/apps/new) to get your developer keys.

# Usage

```ruby
use OmniAuth::Builder do
  provider :readmill, ENV['READMILL_KEY'], ENV['READMILL_SECRET']
end
```

# Example auth hash

```json
{
   "provider":"readmill",
   "uid":5708,
   "info":{
      "name":"Christof Dorner",
      "email":"xxx",
      "nickname":"chdorner",
      "first_name":"Christof",
      "last_name":"Dorner",
      "location":"Zürich",
      "description":"iOS/Android/Rails developer. geek.",
      "image":"http://static.readmill.com/avatars/6d4357e2e7839a27011a25835b9fabc3-medium.png?1320704267",
      "urls":{
         "Readmill":"http://readmill.com/chdorner",
         "Website":"http://chdorner.com"
      }
   },
   "credentials":{
      "token":"xxx",
      "refresh_token":"xxx",
      "expires_at":1321541661,
      "expires":true
   },
   "extra":{
      "books_interesting":5,
      "books_open":3,
      "books_finished":2,
      "books_abandoned":0,
      "followers":3,
      "followings":13
   }
}
```

# License (MIT)

Copyright (c) 2011 Christof Dorner

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.