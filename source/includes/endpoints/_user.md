<h1 id="selfcommunity-api-user">User</h1>

## List Users

<a id="opIdlistUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/',
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

`GET /api/v2/user/`

This Endpoint retrieve the list of users. 

<h3 id="listusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

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
      "username": "string",
      "real_name": "string",
      "email": "user@example.com",
      "email_isvalid": true,
      "date_joined": "2019-08-24T14:15:22Z",
      "bio": "string",
      "location": "string",
      "birthday": "string",
      "description": "string",
      "gender": "Male",
      "status": "a",
      "website": "http://example.com",
      "avatar_url": "string",
      "cover": "string"
    }
  ]
}
```

<h3 id="listusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listusers-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[User](#schemauser)]|false|none|List of results|

## List of connection requests

<a id="opIdconnectionRequestsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/connection_requests/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/user/me/connection_requests/',
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

`GET /api/v2/user/me/connection_requests/`

List of connection requests received for user

> Example responses

> 200 Response

```json
{
  "id": 0,
  "from_user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "email_isvalid": true,
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "status": "a",
    "website": "http://example.com",
    "avatar_url": "string",
    "cover": "string"
  },
  "to_user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "email_isvalid": true,
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "status": "a",
    "website": "http://example.com",
    "avatar_url": "string",
    "cover": "string"
  },
  "created": "2019-08-24T14:15:22Z",
  "rejected": "2019-08-24T14:15:22Z",
  "viewed": "2019-08-24T14:15:22Z"
}
```

<h3 id="connectionrequestsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRequest](#schemaconnectionrequest)|


## List of connection requests sent

<a id="opIdconnectionRequestsSentUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/connection_requests_sent/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection_requests_sent/',
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

`GET /api/v2/user/me/connection_requests_sent/`

List of connection requests sent for user

> Example responses

> 200 Response

```json
{
  "id": 0,
  "from_user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "email_isvalid": true,
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "status": "a",
    "website": "http://example.com",
    "avatar_url": "string",
    "cover": "string"
  },
  "to_user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "email_isvalid": true,
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "status": "a",
    "website": "http://example.com",
    "avatar_url": "string",
    "cover": "string"
  },
  "created": "2019-08-24T14:15:22Z",
  "rejected": "2019-08-24T14:15:22Z",
  "viewed": "2019-08-24T14:15:22Z"
}
```

<h3 id="connectionrequestssentuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRequest](#schemaconnectionrequest)|

## Me

<a id="opIdmeUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/',
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

`GET /api/v2/user/me/`

Return profile fields of the user identified by the Bearer token

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="meuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|


## User notifications

<a id="opIdnotificationsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/notifications/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/notifications/',
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

`GET /api/v2/user/me/notifications/`

List of user notifications

> Example responses

> 200 Response

```json
{
  "next_id": 0,
  "prev_id": 0,
  "is_new": true,
  "collapsed": "string"
}
```

<h3 id="notificationsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Notification](#schemanotification)|

## Unseen User notification

<a id="opIdunseenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/unseen/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/unseen/',
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

`GET /api/v2/user/me/notifications/unseen/`

List unseen notification counter for the user

> Example responses

> 200 Response

```json
{
  "unseen": [
    null
  ],
  "total": 0
}
```

<h3 id="unseenuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UserUnseen](#schemauserunseen)|

## User profile

<a id="opIdretrieveUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/',
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

`GET /api/v2/user/{id}/`

This endpoint retrieve the profile of a user

<h3 id="retrieveuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="retrieveuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## Update user profile

<a id="opIdupdateUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/user/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/',
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

`PUT /api/v2/user/{id}/`

This endpoint update the profile of a user.

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="updateuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|body|body|[User](#schemauser)|false|none|
|» id|body|integer|false|none|
|» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|body|string|false|none|
|» email|body|string(email)|false|none|
|» email_isvalid|body|boolean|false|none|
|» date_joined|body|string(date-time)|false|none|
|» bio|body|string|false|none|
|» location|body|string|false|none|
|» birthday|body|string|false|none|
|» description|body|string|false|none|
|» gender|body|string|false|none|
|» status|body|string|false|none|
|» website|body|string(uri)|false|none|
|» avatar_url|body|string|false|none|
|» cover|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» gender|Male|
|» gender|Female|
|» gender|Unspecified|
|» status|a|
|» status|b|
|» status|u|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="updateuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## Partial update user profile  

<a id="opIdpartialUpdateUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/user/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /api/v2/user/{id}/`

A viewset that provides CRUD actions for the pod.

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="partialupdateuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|body|body|[User](#schemauser)|false|none|
|» id|body|integer|false|none|
|» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|body|string|false|none|
|» email|body|string(email)|false|none|
|» email_isvalid|body|boolean|false|none|
|» date_joined|body|string(date-time)|false|none|
|» bio|body|string|false|none|
|» location|body|string|false|none|
|» birthday|body|string|false|none|
|» description|body|string|false|none|
|» gender|body|string|false|none|
|» status|body|string|false|none|
|» website|body|string(uri)|false|none|
|» avatar_url|body|string|false|none|
|» cover|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» gender|Male|
|» gender|Female|
|» gender|Unspecified|
|» status|a|
|» status|b|
|» status|u|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="partialupdateuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

## User connections

<a id="opIdconnectionsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/connections/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/connections/',
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

`GET /api/v2/user/{id}/connections/`

List of connections for user

<h3 id="connectionsuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="connectionsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## User followers

<a id="opIdfollowersUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/followers/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/followers/',
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

`GET /api/v2/user/{id}/followers/`

List of followers for user

<h3 id="followersuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="followersuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## User followings

<a id="opIdfollowingsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/followings/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/followings/',
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

`GET /api/v2/user/{id}/followings/`

List of user followings

<h3 id="followingsuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="followingsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## User Feed

<a id="opIdlistFeedUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/feed/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/feed/',
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

`GET /api/v2/user/{id}/feed/`

List of user's post

<h3 id="listfeeduser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

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
      "title": "string",
      "slug": "string",
      "categories": [
        0
      ],
      "media_type": "images",
      "medias": [
        0
      ],
      "location": {
        "location": "string",
        "lat": 0,
        "lng": 0
      },
      "poll": {
        "id": 0,
        "title": "string",
        "multiple_choices": true,
        "added_at": "2019-08-24T14:15:22Z",
        "modified_at": "2019-08-24T14:15:22Z",
        "closed": true,
        "expiration_at": "2019-08-24T14:15:22Z",
        "hidden": "string",
        "choices": [
          {
            "id": 0,
            "choice": "string",
            "order": 0,
            "added_at": "2019-08-24T14:15:22Z",
            "deleted": "string",
            "count_votes": "string"
          }
        ],
        "votes": [
          {
            "id": 0,
            "choice": "string",
            "user": "string"
          }
        ]
      },
      "last_activity_at": "2019-08-24T14:15:22Z",
      "view_count": 0,
      "author": {
        "id": 0,
        "username": "string",
        "real_name": "string",
        "email": "user@example.com",
        "email_isvalid": true,
        "date_joined": "2019-08-24T14:15:22Z",
        "bio": "string",
        "location": "string",
        "birthday": "string",
        "description": "string",
        "gender": "Male",
        "status": "a",
        "website": "http://example.com",
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "addressing": [
        0
      ],
      "followers": "string"
    }
  ]
}
```

<h3 id="listfeeduser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listfeeduser-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[Discussion](#schemadiscussion)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string¦null|false|none|none|
|»» slug|string|false|read-only|none|
|»» text|string|true|write-only|none|
|»» categories|[integer]|true|none|none|
|»» media_type|string|false|read-only|none|
|»» medias|[integer]|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» captcha|object|false|write-only|none|
|»»» hashkey|string|true|none|none|
|»»» response|string|true|none|none|
|»» addressing|[integer]|false|none|none|
|»» followers|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<aside class="success">
This operation does not require authentication
</aside>

## Connection Accept User

<a id="opIdconnectionAcceptUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/accept/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/accept/',
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

`POST /api/v2/user/me/connection/accept/`

Accept connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionacceptuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|
|» username|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionacceptuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

<aside class="success">
This operation requires the community to be set to friendship mode 
</aside>

## Cancel Connection Reject

<a id="opIdconnectionCancelRejectUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/cancel_reject/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/cancel_reject/',
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

`POST /api/v2/user/me/connection/cancel_reject/`

Cancel Reject connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectioncancelrejectuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|
|» username|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectioncancelrejectuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

<aside class="success">
This operation requires the community to be set to friendship mode 
</aside>

## Cancel Connection Request

<a id="opIdconnectionCancelRequestUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/cancel_request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```


```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/cancel_request/',
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

`POST /api/v2/user/me/connection/cancel_request/`

Cancel a request connection for a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectioncancelrequestuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|
|» username|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectioncancelrequestuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="success">
This operation does not require authentication
</aside>


## Reject Connection

<a id="opIdconnectionRejectUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/reject/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```


```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/reject/',
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

`POST /api/v2/user/me/connection/reject/`

Reject connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionrejectuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|
|» username|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionrejectuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="success">
This operation does not require authentication
</aside>

## Remove connection

<a id="opIdconnectionRemoveUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/remove/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```


```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/remove/',
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

`POST /api/v2/user/me/connection/remove/`

Remove a connection for a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionremoveuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|
|» username|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionremoveuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="success">
This operation does not require authentication
</aside>

## Request connection

<a id="opIdconnectionRequestUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/request/',
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

`POST /api/v2/user/me/connection/request/`

Request connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionrequestuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|
|» username|body|string|true|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionrequestuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="success">
This operation does not require authentication
</aside>

## Mark seen connection request

<a id="opIdconnectionRequestsMarkSeenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection_requests/mark_seen/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```


```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection_requests/mark_seen/',
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

`POST /api/v2/user/me/connection_requests/mark_seen/`

Mark seee connection request

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="connectionrequestsmarkseenuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[User](#schemauser)|false|none|
|» id|body|integer|false|none|
|» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|body|string|false|none|
|» email|body|string(email)|false|none|
|» email_isvalid|body|boolean|false|none|
|» date_joined|body|string(date-time)|false|none|
|» bio|body|string|false|none|
|» location|body|string|false|none|
|» birthday|body|string|false|none|
|» description|body|string|false|none|
|» gender|body|string|false|none|
|» status|body|string|false|none|
|» website|body|string(uri)|false|none|
|» avatar_url|body|string|false|none|
|» cover|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» gender|Male|
|» gender|Female|
|» gender|Unspecified|
|» status|a|
|» status|b|
|» status|u|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="connectionrequestsmarkseenuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## Mark seen user

<a id="opIdmarkSeenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/markseen/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/markseen/',
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

`POST /api/v2/user/me/markseen/`

Mark as seen posts for user

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="markseenuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[User](#schemauser)|false|none|
|» id|body|integer|false|none|
|» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|body|string|false|none|
|» email|body|string(email)|false|none|
|» email_isvalid|body|boolean|false|none|
|» date_joined|body|string(date-time)|false|none|
|» bio|body|string|false|none|
|» location|body|string|false|none|
|» birthday|body|string|false|none|
|» description|body|string|false|none|
|» gender|body|string|false|none|
|» status|body|string|false|none|
|» website|body|string(uri)|false|none|
|» avatar_url|body|string|false|none|
|» cover|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» gender|Male|
|» gender|Female|
|» gender|Unspecified|
|» status|a|
|» status|b|
|» status|u|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="markseenuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## Follow user

<a id="opIdfollowUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/follow/',
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

`POST /api/v2/user/{id}/follow/`

Follow user

> Body parameter

```json
{}
```

```yaml
{}

```

<h3 id="followuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|body|body|[ManageFollow](#schemamanagefollow)|false|none|

> Example responses

> 201 Response

```json
{}
```

<h3 id="followuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageFollow](#schemamanagefollow)|

<aside class="success">
This operation requires the community to be set to follow mode 
</aside>

<aside class="success">
This operation does not require authentication
</aside>

## Show/Hide user

<a id="opIdhideUserUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/hide/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```


```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/{id}/hide/',
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

`POST /api/v2/user/{id}/hide/`

Show/Hide a user (post and user)

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="hideuseruser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|body|body|[User](#schemauser)|false|none|
|» id|body|integer|false|none|
|» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|body|string|false|none|
|» email|body|string(email)|false|none|
|» email_isvalid|body|boolean|false|none|
|» date_joined|body|string(date-time)|false|none|
|» bio|body|string|false|none|
|» location|body|string|false|none|
|» birthday|body|string|false|none|
|» description|body|string|false|none|
|» gender|body|string|false|none|
|» status|body|string|false|none|
|» website|body|string(uri)|false|none|
|» avatar_url|body|string|false|none|
|» cover|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» gender|Male|
|» gender|Female|
|» gender|Unspecified|
|» status|a|
|» status|b|
|» status|u|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "username": "string",
  "real_name": "string",
  "email": "user@example.com",
  "email_isvalid": true,
  "date_joined": "2019-08-24T14:15:22Z",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="hideuseruser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[User](#schemauser)|
