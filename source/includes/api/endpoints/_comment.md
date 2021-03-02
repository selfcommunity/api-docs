<h2 id="selfcommunity-api-comment">Comment</h2>

### Get All Comments

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

If the `discussion` parameter is specified the endpoint retrieve all comments of a specific [Comment](#schemadiscussion).

If the `post` parameter is specified the endpoint retrieve all comments of a specific [Post](#schemapost)).

The `discussion` and `post` parameter cannot be used together.

If the `parent` parameter is specified the endpoint retrieve all comments of a specific [Comment](#schemadiscussion) or [Post](#schemapost) that has the passed parent (nested comments).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/comment/`

<h4 id="listcomments-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|discussion|query|string|false|Id of the [Comment](#schemadiscussion)|
|post|query|string|false|Id of the [Post](#schemapost)|
|parent|query|string|false|Id of the parent [Comment](#schemacomment), used for retrieve nested comments|
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
      "discussion": 0,
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
      "comment_count": 1,
      "latest_comments": [
        {
          "id": 1,
          "object": 1,
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
          "comments_count": 0,
          "vote_count": 0,
          "flag_count": 0,
          "comment_count": 0
        }
      ]
    }
  ]
}
```

<h4 id="listcomments-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listcomments-responseschema">Response Schema</h4>

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

### Create a Comment

<a id="opIdcreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --raw-data '{
    "discussion": 0,
    "parent": 0,
    "in_reply_to": 0,
    "text": "string"
  }'
```

```javascript
const inputBody = '{
  "discussion": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}';
const headers = {
  'Content-Type':'application/json',
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

One of `discussion` or `post` parameter is required in every request (first-level or nested comment creation).

The `parent` parameter is required only for nested comments.

The `in_reply_to` parameter is required only for create a reference in the nested comments (simulation of three levels of nesting).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/comment/`

> Body parameter

```json
{
  "discussion": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}
```

<h4 id="createcomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» discussion|body|integer|true|Id of the [Comment](#schemadiscussion)|
|» post|body|integer|true|Id of the [Post](#schemapost)|
|» parent|body|integer¦null|false|Id of a [Comment](#schemacomment), used for creating nested comments|
|» in_reply_to|body|integer¦null|false|Id of a [Comment](#schemacomment), used for reply in nested comments|
|» text|body|string|true|text for the [Comment](#schemacomment), html format|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "discussion": 0,
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
  "comment_count": 1,
  "latest_comments": [
    {
      "id": 1,
      "object": 1,
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
      "comments_count": 0,
      "vote_count": 0,
      "flag_count": 0,
      "comment_count": 0
    }
  ]
}
```

<h4 id="createcomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Comment](#schemacomment)|

<aside class="notice">
This operation require authentication
</aside>

### Get a specific Comment

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/comment/{id}/`

<h4 id="retrievecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "discussion": 0,
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
  "comment_count": 1,
  "latest_comments": [
    {
      "id": 1,
      "object": 1,
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
      "comments_count": 0,
      "vote_count": 0,
      "flag_count": 0,
      "comment_count": 0
    }
  ]
}
```

<h4 id="retrievecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Comment](#schemacomment)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Update a specific Comment

<a id="opIdupdateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/comment/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "discussion": 0,
    "parent": 0,
    "in_reply_to": 0,
    "text": "string"
  }'
```

```javascript
const inputBody = '{
  "discussion": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}';
const headers = {
  'Content-Type':'application/json',
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

<h4 id="http-request">HTTP Request</h4>

`PUT /api/v2/comment/{id}/`

> Body parameter

```json
{
  "discussion": 0,
  "parent": 0,
  "in_reply_to": 0,
  "text": "string"
}
```

<h4 id="updatecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|» text|body|string|true|text for the [Comment](#schemacomment), html format|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "discussion": 0,
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
  "comment_count": 1,
  "latest_comments": [
    {
      "id": 1,
      "object": 1,
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
      "comments_count": 0,
      "vote_count": 0,
      "flag_count": 0,
      "comment_count": 0
    }
  ]
}
```

<h4 id="updatecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Comment](#schemacomment)|

<aside class="notice">
This operation require authentication. The logged user must be the comment creator
</aside>

### Delete a Comment

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
This endpoint delete a Comment.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/comment/{id}/`

<h4 id="destroycomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h4 id="destroycomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the comment creator
</aside>

### Restore a Comment

<a id="opIdrestoreComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/restore/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/comment/{id}/restore/',
{
  method: 'POST',
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

This endpoint restore a Comment.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/comment/{id}/restore/`

<h4 id="restorecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

<h4 id="restorecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the comment creator
</aside>

### Get List of Votes for a Specific Comment

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/comment/{id}/vote/`

List votes for this comment

<h4 id="votecomment-parameters">Parameters</h4>

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

<h4 id="votecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Vote](#schemavote)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Upvote for a Specific Comment

<a id="opIdvoteCreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/vote/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
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

This endpoint upvotes a specific comment.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/comment/{id}/vote/`

<h4 id="votecreatecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

<h4 id="votecreatecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Remove an Upvote for a Specific Comment

<a id="opIdvoteRemoveComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/vote/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
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

This endpoint removes an upvote for a specific comment.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/comment/{id}/vote/`

<h4 id="voteremovecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

<h4 id="voteremovecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get List of Flags for a Specific Comment

<a id="opIdflagComment"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/{id}/flag/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/flag/',
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

This endpoint retrieves a List of Flags for a Specific Comment.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/comment/{id}/flag/`

<h4 id="flagcomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this comment.|

> Example responses

> 200 Response

```json
{
    "count": 1,
    "next": null,
    "previous": null,
    "results": [
        {
          "user": {
            "id": 0,
            "username": "string",
            "real_name": "string",
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-08-24",
            "description": "string",
            "gender": "Male",
            "website": "http://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [
              {
                "id": 0,
                "active": true,
                "type": "user",
                "name": "string",
                "description": "string",
                "color": "string",
                "visible": true,
                "deleted": true,
                "created_at": "2019-08-24T14:15:22Z"
              }
            ]
          },
          "added_at": "2019-08-24T14:15:22Z",
          "flag_type": 0,
          "flag_type_description": "string"
        }
    ]
}
```

<h4 id="flagcomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require moderation role.
</aside>

### Flag a Specific Comment

<a id="opIdflagCreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/flag/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --raw-data '{
    "flag_type": 0
  }'
```

```javascript
const inputBody = '{
  "flag_type": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/flag/',
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

This endpoint flag a specific comment.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/comment/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="flagcreatecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
flag_type|body|integer|true|A integer from 0 to 4|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|

<h4 id="flagcreatecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Unflag a Specific Comment

<a id="opIdunflagCreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/flag/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --raw-data '{
    "flag_type": 0
  }'
```

```javascript
const inputBody = '{
  "flag_type": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/comment/{id}/flag/',
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

This endpoint removes a flag for a specific comment.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/comment/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="unflagcreatecomment-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
flag_type|body|integer|true|A integer from 0 to 4|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|

<h4 id="unflagcreatecomment-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>
