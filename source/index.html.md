---
title: SelfCommunity API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell: cURL
  - python
  - javascript

toc_footers:
  - <a href='https://selfcommunity.com/free-trial/'>Sign Up for a new community</a>

includes:
  - endpoints
  - errors

search: true

code_clipboard: true
---

# Introduction

Welcome to the SelfCommunity API! You can use our API to access SelfCommunity API endpoints.

We have language bindings in Shell, Python, and JavaScript! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

> To authorize, use this code:

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
```

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require('kittn');

let api = kittn.authorize('meowmeowmeow');
```

> Make sure to replace `meowmeowmeow` with your API key.

Kittn uses API keys to allow access to the API. You can register a new Kittn API key at our [developer portal](http://example.com/developers).

Kittn expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: meowmeowmeow`

<aside class="notice">
You must replace <code>meowmeowmeow</code> with your personal API key.
</aside>



