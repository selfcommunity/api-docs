<h1 id="selfcommunity-api-comment">Comment</h1>

## Get All Comments

<a id="opIdlistComments"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: 'Bearer {access_token}'
};

fetch('/api/v2/comment/',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```
This endpoint retrieves all comments. 
If the object parameter is specified the endpoint retrieve all comments of a specific object (discussion, post).
If the object and parent parameters are specified the endpoint retrieve all comments of a specific object (discussion, post) that has the passed parent (nested comments).

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/comment/`

<h3 id="listcomments-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|object|query|string|false|The discussion or post id|
|parent|query|string|false|The parent id of the comments (used for retrieve nested comments)|
|ordering|query|string|false|The field for sorting use - for order desc. Default to added_at|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "object": 0,
      "author": {
        "id": 0,
        "username": "string",
        "real_name": "string",
        "date_joined": "2019-08-24T14:15:22Z",
        "bio": "string",
        "location": "string",
        "birthday": "string",
        "description": "string",
        "gender": "Male",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": true,
      "parent": 0,
      "in_reply_to": 0,
      "vote_count": 0,
      "flag_count": 0,
      "comment_count": 0,
      "latest_comments": []
    }
  ]
}
```

<h3 id="listcomments-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listcomments-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[Comment](#schemacomment)]|false|none|none|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Create a Comment

<a id="opIdcreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "object": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: 'Bearer {access_token}'
};

fetch('/api/v2/comment/',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint creates a comment.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/comment/`

> Body parameter

```json
{
  "object": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}
```

<h3 id="createcomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» object|body|integer¦null|true|Id of the object (discussion or post)|
|» author|body|integer|true|Id of the user that creates the comment|
|» parent|body|integer¦null|false|Id of a comment, used for creating nested comments|
|» in_reply_to|body|integer¦null|false|Id of a comment, used for reply in nested comments|
|» text|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "object": 0,
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "vote_count": 0,
  "flag_count": 0,
  "comment_count": 0,
  "latest_comments": []
}
```

<h3 id="createcomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Comment](#schemacomment)|

<aside class="notice">
This operation require authentication
</aside>

## Get a specific Comment

<a id="opIdretrieveComment"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint retrieves a specific comment using ID.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/comment/{id}/`

<h3 id="retrievecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "object": 0,
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "vote_count": 0,
  "flag_count": 0,
  "comment_count": 0,
  "latest_comments": []
}
```

<h3 id="retrievecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Comment](#schemacomment)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Update a specific Comment

<a id="opIdupdateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/comment/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "object": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint update a specific comment.

<h3 id="http-request">HTTP Request</h3>

`PUT /api/v2/comment/{id}/`

> Body parameter

```json
{
  "object": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}
```

<h3 id="updatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|» object|body|integer¦null|true|Id of the object (discussion or post)|
|» author|body|integer|true|Id of the user that creates the comment|
|» parent|body|integer¦null|false|Id of a comment, used for creating nested comments|
|» in_reply_to|body|integer¦null|false|Id of a comment, used for reply in nested comments|
|» text|body|string|true|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "object": 0,
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "vote_count": 0,
  "flag_count": 0,
  "comment_count": 0,
  "latest_comments": []
}
```

<h3 id="updatecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Comment](#schemacomment)|

<aside class="notice">
This operation require authentication. The logged user must be the comment creator
</aside>

## Delete a Comment

<a id="opIddestroyComment"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/comment/{id}/ \
     -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/comment/{id}/',
{
  method: 'DELETE',
  headers: {
    'Authorization': 'Bearer {access_token}'
  }

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```
This Endpoint delete a Comment.

<h3 id="http-request">HTTP Request</h3>

`DELETE /api/v2/comment/{id}/`

<h3 id="destroycomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h3 id="destroycomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the comment creator
</aside>

## Get List of Votes for a Specific Comment

<a id="opIdvoteComment"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/{id}/vote/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/vote/',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint retrieves all votes for a specific comment.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/comment/{id}/vote/`

List votes for this comment

<h3 id="votecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string",
  "previous": "string",
  "results": [
      {
        "user": "string",
        "voted_at": "2019-08-24T14:15:22Z"
        }
  ]
}
```

<h3 id="votecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Vote](#schemavote)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Upvote for a Specific Comment

<a id="opIdvoteCreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/vote/',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This Endpoint upvotes a specific comment.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/comment/{id}/vote/`

<h3 id="votecreatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

<h3 id="votecreatecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

## Remove an Upvote for a Specific Comment

<a id="opIdvoteRemoveComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/vote/',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This Endpoint removes an upvote for a specific comment.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/comment/{id}/vote/`

<h3 id="voteremovecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

<h3 id="voteremovecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>