<h2 id="selfcommunity-api-user">User</h2>

### Get All Users

<a id="opIdlistUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
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

This endpoint retrieve the list of all users. 

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/`

<h4 id="listusers-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|username|query|string|false|Filter using field username.|
|gender|query|string|false|Filter using field gender type.|
|real_name|query|string|false|Filter using field real_name.|
|location|query|string|false|Filter using field location.|
|description|query|string|false|Filter using field description.|
|ordering|query|string|false|Ordering fields (eg: `?ordering=username`). Minus char is used for descending ordering, eg. `-username`|


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
      "location_lat_lng": "string",
      "position_lat_lng": "string",
      "date_of_birth": "2019-09-23",
      "description": "string",
      "gender": "Male",
      "status": "a",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": 3,
      "tags": [],
      "reputation": 39,
      "connection_status": "string"
    }
  ]
}
```

<h4 id="listusers-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listusers-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|list([User](#schemauser))|false|none|List of results|

<aside class="notice">
This operation requires authentication
</aside>

### Search Users

<a id="opIdSearchUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/search/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/search/',
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

This endpoint perform search users. 

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/search/`

<h4 id="searchusers-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|username|query|string|false|Filter using field username.|
|gender|query|string|false|Filter using field gender type. Possible values: Male, Female, Unspecified.|
|real_name|query|string|false|Filter using field real_name.|
|location|query|string|false|Filter using field location.|
|age|query|string|false|Filter using age ranges. Possible values: -30, 30-45, 45+. The value 45+ must be encoded in the request url: 45%2B.|
|lat_lng|query|string|false|Filter using coordinates lat,lng.|
|user_position|query|boolean|false|Use the coordinates (position_lat_lng or location_lat_lng) of the authenticated user.|
|description|query|string|false|Filter using field description.|
|is_staff|query|boolean|false|Filter the users that belong to the staff.|
|tag|query|integer|false|Filter using tag ID.|
|category|query|integer|false|Filter using category ID.|
|ordering|query|string|false|Ordering fields (eg: `?ordering=username`). Minus char is used for descending ordering, eg. `-username`. Possible values: username, location, real_name, distance.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": null,
  "previous": null,
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
      "location_lat_lng": "string",
      "position_lat_lng": "string",
      "date_of_birth": "2019-09-23",
      "description": "string",
      "gender": "Male",
      "status": "a",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": 3,
      "tags": [],
      "reputation": 39,
      "connection_status": "string"
    }
  ]
}
```

<h4 id="listusers-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listusers-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|list([User](#schemauser))|false|none|List of results|

<aside class="notice">
This operation requires authentication
</aside>

### Get a Specific User

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

This endpoint retrieve a specific user's profile identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/`

<h4 id="retrieveuser-parameters">Parameters</h4>

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
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "2019-09-23",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": 3,
  "tags": [],
  "reputation": 39,
  "connection_status": "string"
}
```

<h4 id="retrieveuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="notice">
This operation does not require authentication
</aside>

### Update a Specific User

<a id="opIdupdateUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/user/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
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

This endpoint update the profile of a user identified by {id}. A user can only update their personal data.   

<h4 id="http-request">HTTP Request</h4>

`PUT /api/v2/user/{id}/`

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
location_lat_lng: string,
position_lat_lng: string,
date_of_birth: string
description: string
gender: Male
website: http://example.com
```

<h4 id="updateuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|body|body|[User](#schemauser)|false|none|

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
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": 3,
  "tags": [],
  "reputation": 39,
  "connection_status": "string"
}
```

<h4 id="updateuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="notice">
This operation require authentication
</aside>

### Patch a Specific User

<a id="opIdpartialUpdateUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/user/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = {
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
};
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
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


This endpoint patch a specific user identified by {id}. A user can only update their personal data.

**NOTE**: You can use this endpoint to edit a single field passing only the id and the needed field (without mandatory fields).

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/user/{id}/`

<h4 id="partialupdateuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|body|body|[User](#schemauser)|false|none|

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
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": 3,
  "tags": [],
  "reputation": 39,
  "connection_status": "string"
}
```

<h4 id="partialupdateuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="notice">
This operation require authentication
</aside>

### Delete a Specific User

<a id="opIddestroyUser"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/user/{id}/
  -H "Authorization: Bearer <token>"

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};
fetch('/api/v2/user/{id}/',
{
  method: 'DELETE',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

Delete a specific user identified by {id}. Only the user identified by the {id} and the administrators can delete the user. 
There are two ways of deleting a user: **soft** and **hard**.

Soft: the user is marked as deleted, it will not appear in the user lists, the user's posts will remain and it will not be possible to create a user with the same username and ext_id (status of the user will be set to deleted: 'd').

Hard: all user's content (profile, post, votes, etc...) will be removed (status of the user will be set to unregistered: 'u').

In particular:

* If the delete is soft and the user is already soft deleted you will get a 400 response (The user has already been soft deleted)
* If the delete is soft and the user is already hard deleted you will get a 404 response (User not found)
* If the delete is hard and the user is already soft deleted perform hard delete
* If the delete is hard and the user is already hard deleted you will get a 404 response (User not found)

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/user/{id}/`

<h4 id="destroyuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|hard|query|bool|false|If the value is set to 1, perform hard delete else execute a soft delete.|

<h4 id="destroyuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>


### Change User's Email

<a id="opIdchangeEmailUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/user/{id}/change_email/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = '{
  "new_email": "user@example.com",
  "confirm": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/change_email/',
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

Change the email of the authenticated user.

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/user/{id}/change_email/`

> Body parameter

```json
{
  "new_email": "user@example.com",
  "confirm": 0
}
```

<h4 id="changeemailuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|new_email|body|string(email)|true|none|
|confirm|body|boolean|false|If confirm=1 (or true), the email is not changed directly but a validation code is generated to be used in the [confirm](opIdconfirmEmailUser) call to validate the email. |


> Example responses (confirm=1)

> 201 Response

```json
{
  "validation_code": "string"
}
```

> Example responses (confirm=0)

> 204 Response

<h4 id="followuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|If confirm=1, the response body contains the validation code.|None|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|If confirm=0, there is no body response.|None|

<aside class="notice">
This operation require authentication
</aside>

### Confirm User's Change Email

<a id="opIdconfirmEmailUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/confirm_email/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = '{
  "new_email": "user@example.com",
  "confirm": false,
  "validation_code": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/confirm_email/',
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

Confirm email

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/confirm_email/`

> Body parameter

```json
{
  "new_email": "user@example.com",
  "validation_code": "string"
}
```

<h4 id="confirmemailuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|new_email|body|string(email)|true|New email to confirm|
|validation_code|body|boolean|false|Validation code obtained with [Change User's Email](#opIdchangeEmailUser)|


> Example responses

> 204 Response

<h4 id="followuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation does not require authentication
</aside>


### Change User's Password

<a id="opIdchangePasswordUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/user/{id}/change_password/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = '{
  "password": "string",
  "new_password": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/change_password/',
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

Change the password of the authenticated user.

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/user/{id}/change_password/`

> Body parameter

```json
{
  "password": "string",
  "new_password": "string"
}
```

<h4 id="changepassworduser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|password|string|true|none|none|
|new_password|string|true|none|none|

> Example responses

> 204 Response

<h4 id="followuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>


### Get User's Settings

<a id="opIdmanageSettingsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/settings/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/settings/',
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

Retrive all current user's settings for the authenticated user.
See [UserSettings](#schemausersettings) for the list of possible user settings.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/settings/`

<h4 id="managesettingsuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying the current user id.|

> Example responses

> 200 Response

```json
{
  "qa_frequency": -1,
  "email_notification_not_qa": 1,
  "interests_frequency": -1,
  "engagement_frequency": 1,
  "mobile_notifications_scmty": 1,
  "toast_notifications_emit_sound": 1,
  "show_toast_notifications": 1
}
```

<h4 id="meuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UserSettings](#schemausersettings)|


<aside class="notice">
This operation require authentication
</aside>

### Change User's Settings

<a id="opIdmanageSettingsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/user/{id}/settings/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = '{
  "interests_frequency": -1,
  "engagement_frequency": 1
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/settings/',
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

Change the user settings for the authenticated user.
See [UserSettings](#schemausersettings) for the list of possible user settings.

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/user/{id}/settings/`

> Example responses

> 200 Response

```json
{
  "interests_frequency": -1,
  "engagement_frequency": 1
}
```

<h4 id="managesettingsuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying the current user id.|
|body|body|[UserSettings](#schemausersettings)|false|none|

<h4 id="meuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UserSettings](#schemausersettings)|


<aside class="notice">
This operation does not require authentication
</aside>

### Me

<a id="opIdmeUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
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

Return the user identified by the authentication token.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/me/`

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
  "location_lat_lng": "string",
  "position_lat_lng": "string",
  "date_of_birth": "string",
  "description": "string",
  "gender": "Male",
  "status": "a",
  "website": "http://example.com",
  "avatar": "string",
  "cover": "string",
  "ext_id": 3,
  "tags": [],
  "reputation": 39,
  "permission": {
    "upload_video": false,
    "create_contribute": true,
    "create_poll": true,
    "locate_post": false,
    "create_post": true,
    "create_post_with_category": true,
    "follow_user": true,
    "request_connection": true,
    "accept_connection": true
  }
}
```

<h4 id="meuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="notice">
This operation requires authentication
</aside>

### Permission

<a id="opIdmePermissionUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/permission/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/me/permission/',
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

Return a list of permissions for the user identified by the authentication token.

Some of the permissions in the list depend on global community settings.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/me/permission/`

> Example responses

> 200 Response

```json
{
    "upload_video": false,
    "create_contribute": true,
    "create_poll": true,
    "locate_post": false,
    "create_post": true,
    "create_post_with_category": true,
    "follow_user": true,
    "request_connection": true,
    "accept_connection": true
}
```

<h4 id="meuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UserPermission](#schemauserpermission)|

<aside class="notice">
This operation requires authentication
</aside>


### Get User's Feed

<a id="opIdlistFeedUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/feed/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
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

This endpoint retrive the list of user's post of the user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/feed/`

<h4 id="listfeeduser-parameters">Parameters</h4>

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
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
      "type": "discussion",
      "discussion": {
        "id": 0,
        "categories": [
            {
                "id": 0,
                "order": 1,
                "name": "name",
                "name_synonyms": "synonyms",
                "slug": "name",
                "slogan": "Slogan",
                "html_info": null,
                "seo_title": null,
                "seo_description": null,
                "auto_follow": "None",
                "active": true,
                "deleted": false,
                "image_original": "string",
                "image_bigger": "string",
                "image_big": "string",
                "image_medium": "string",
                "image_small": "string",
                "emotional_image_original": "string",
                "emotional_image_position": 50,
                "lastmod_datetime": "2020-09-30T15:22:07.123058+02:00",
                "stream_order_by": "recent"
            }
        ],
        "media_type": "images",
        "medias": [
            {
                "id": 0,
                "added_at": "2019-08-24T14:15:22Z",
                "type": "url",
                "title": "string",
                "description": "string",
                "url": "http://example.com",
                "image": "string",
                "image_width": 0,
                "image_height": 0,
                "order": 0,
                "embed": {
                    "id": 0,
                    "embed_type": "string",
                    "embed_id": "string",
                    "url": "string",
                    "metadata": {}
            }
          }
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
        "author": {
          "id": 0,
          "username": "string",
          "real_name": "string",
          "date_joined": "2019-08-24T14:15:22Z",
          "bio": "string",
          "location": "string",
          "position": "string",
          "birthday": "string",
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
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": "string",
        "comment_count": 0,
        "vote_count": "string",
        "flag_count": 0,
        "addressing": [
          0
        ],
        "title": "string",
        "slug": "string",
        "view_count": 0,
        "follower_count": "string"
      },
      "seen_by_id": [
        0
      ],
      "has_boost": false,
    }
  ]
}
```

<h4 id="listfeeduser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listfeeduser-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Feed](#schemafeed))|false|none|none|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Get User's Followers

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

This endpoint retrieve the list of followers of a specific user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/followers/`

<h4 id="followersuser-parameters">Parameters</h4>

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
  "next": "string(uri)",
  "previous": "string(uri)",
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
      "location_lat_lng": "string",
      "position_lat_lng": "string",
      "date_of_birth": "string",
      "description": "string",
      "gender": "Male",
      "status": "a",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": 3,
      "tags": [],
      "reputation": 39
    }
  ]
}
```

<h4 id="followersuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<h4 id="listfeeduser-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([User](#schemauser))|false|none|none|

<aside class="notice">
This operation does not require authentication
</aside>

### Get User's Following

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

This endpoint retrieve the list of following of a specific user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/followings/`

<h4 id="followingsuser-parameters">Parameters</h4>

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
  "next": "string(uri)",
  "previous": "string(uri)",
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
      "location_lat_lng": "string",
      "position_lat_lng": "string",
      "date_of_birth": "string",
      "description": "string",
      "gender": "Male",
      "status": "a",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": 3,
      "tags": [],
      "reputation": 39
    }
  ]
}
```

<h4 id="followingsuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<h4 id="listfeeduser-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([User](#schemauser))|false|none|none|

<aside class="notice">
This operation does not require authentication
</aside>

### Follow User

<a id="opIdfollowUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/follow/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint allows a user to follow another user identified by {id}. 

**Note:** If a user already follows the user, it will be unfollowed.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/follow/`

<h4 id="followuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 204 Response

<h4 id="followuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires the community to be set to follow mode 
</aside>

<aside class="notice">
This operation requires authentication
</aside>

### Check User Followed

<a id="opIdisFollowedUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/is_followed/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/is_followed/',
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

Return is_followed=true if the user (identified in path) is followed by me.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/is_followed/`

<h4 id="isfolloweduser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
    "is_followed": true
}
```

<h4 id="isfolloweduser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation requires the community to be set to follow mode 
</aside>

<aside class="notice">
This operation require authentication
</aside>

### Check User Follower

<a id="opIdisFollowerUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/is_follower/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/is_follower/',
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

Return is_follower=true if the user (identified in path) follow me.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/is_follower/`

<h4 id="isfolloweruser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
    "is_follower": false
}
```

<h4 id="isfolloweruser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation requires the community to be set to follow mode 
</aside>

<aside class="notice">
This operation require authentication
</aside>


### Get User's Connections

<a id="opIdconnectionsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/connections/ \
  -H 'Accept: application/json'
```

```javascript

const headers = {
  'Accept':'application/json',
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

This endpoint retrieve the list of connections of a specific user identified by id.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/connections/`

<h4 id="connectionsuser-parameters">Parameters</h4>

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
  "next": "string(uri)",
  "previous": "string(uri)",
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
      "location_lat_lng": "string",
      "position_lat_lng": "string",
      "date_of_birth": "string",
      "description": "string",
      "gender": "Male",
      "status": "a",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": 3,
      "tags": [],
      "reputation": 39
    }
  ]
}
```

<h4 id="connectionsuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<h4 id="listfeeduser-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([User](#schemauser))|false|none|none|

<aside class="notice">
This operation does not require authentication
</aside>

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

### Check User Connection

<a id="opIdisConnectionUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/is_connection/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/is_connection/',
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

Return is_connection=true if the user (identified in path) is connected with me.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/is_connection/`

<h4 id="isconnectionuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
    "is_connection": false
}
```

<h4 id="isconnectionuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation require authentication
</aside>

### Get User's Connection Requests

<a id="opIdconnectionRequestsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/connection_requests/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {token}'
};

fetch('/api/v2/user/{id}/connection_requests/',
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

This endpoint retrieve the list of connection requests received of a specific user identified by id.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/connection/requests/`

<h4 id="connectionsuser-parameters">Parameters</h4>

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
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
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
        "location_lat_lng": "string",
        "position_lat_lng": "string",
        "date_of_birth": "string",
        "description": "string",
        "gender": "Male",
        "status": "a",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": 1,
        "tags": [],
        "reputation": 39
      },
      "to_user": {
        "id": 3,
        "username": "string",
        "real_name": "string",
        "email": "user@example.com",
        "email_isvalid": true,
        "date_joined": "2019-08-24T14:15:22Z",
        "bio": "string",
        "location": "string",
        "location_lat_lng": "string",
        "position_lat_lng": "string",
        "date_of_birth": "string",
        "description": "string",
        "gender": "Male",
        "status": "a",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": 3,
        "tags": [],
        "reputation": 39
      },
      "created": "2019-08-24T14:15:22Z",
      "rejected": "2019-08-24T14:15:22Z",
      "viewed": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="connectionrequestsuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRequest](#schemaconnectionrequest)|

<h4 id="listfeeduser-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[ConnectionRequest](#schemaconnectionrequest)]|false|none|none|

<aside class="notice">
This operation requires authentication 
</aside>

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

### Get User's Connection Requests sent

<a id="opIdconnectionRequestsSentUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/connection/requests_sent/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/requests_sent/',
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

This endpoint retrieve a specific user's list of connection requests sent by user.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/connection/requests_sent/`

<h4 id="connectionsuser-parameters">Parameters</h4>

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
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
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
        "location_lat_lng": "string",
        "position_lat_lng": "string",
        "date_of_birth": "string",
        "description": "string",
        "gender": "Male",
        "status": "a",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": 1,
        "tags": [],
        "reputation": 39
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
        "location_lat_lng": "string",
        "position_lat_lng": "string",
        "date_of_birth": "string",
        "description": "string",
        "gender": "Male",
        "status": "a",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": 3,
        "tags": [],
        "reputation": 39
      },
      "created": "2019-08-24T14:15:22Z",
      "rejected": "2019-08-24T14:15:22Z",
      "viewed": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="connectionrequestssentuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRequest](#schemaconnectionrequest)|

<h4 id="listfeeduser-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[ConnectionRequest](#schemaconnectionrequest)]|false|none|none|

<aside class="notice">
This operation requires authentication 
</aside>

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

### Accept a User Connection

<a id="opIdconnectionAcceptUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection/accept/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/accept/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint accept a request connection of the user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection/accept/`

<h4 id="connectionacceptuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 204 Response

<h4 id="connectionacceptuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>


### Request Connection

<a id="opIdconnectionRequestUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection/request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/request/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint request connection to the user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection/request/`

<h4 id="connectionrequestuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 204 Response

<h4 id="connectionrequestuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="notice">
This operation require authentication
</aside>

### Remove a Connection

<a id="opIdconnectionRemoveUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection/remove/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```


```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/remove/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint remove connection with the user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection/remove/`

<h4 id="connectionremoveuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 204 Response

<h4 id="connectionremoveuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="notice">
This operation requires authentication
</aside>

### Cancel a Rejected Connection

<a id="opIdconnectionCancelRejectUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection/cancel_reject/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/cancel_reject/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint cancel reject connection to a user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection/cancel_reject/`

<h4 id="connectioncancelrejectuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|


> Example responses

> 204 Response

<h4 id="connectioncancelrejectuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

### Cancel a Request Connection

<a id="opIdconnectionCancelRequestUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection/cancel_request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/cancel_request/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint cancel a request connection for a user.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection/cancel_request/`

<h4 id="connectioncancelrequestuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|


> Example responses

> 204 Response

<h4 id="connectioncancelrequestuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="notice">
This operation require authentication
</aside>


### Reject a Connection Request

<a id="opIdconnectionRejectUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection/reject/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```


```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection/reject/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint reject a connection request sent from user identified by {id}.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection/reject/`

<h4 id="connectionrejectuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 204 Response

<h4 id="connectionrejectuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires the community to be set to friendship mode 
</aside>

<aside class="notice">
This operation requires authentication
</aside>

### Mark Seen a Connection Request

<a id="opIdconnectionRequestsMarkSeenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/connection_requests/mark_seen/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```


```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/connection_requests/mark_seen/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint mark seen a connection request of user identified by {id} for the user authenticated.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/connection_requests/mark_seen/`

<h4 id="connectionrequestsmarkseenuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|


> Example responses

> 204 Response

<h4 id="connectionrequestsmarkseenuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

### Show/Hide User

<a id="opIdhideUserUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/{id}/hide/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```


```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/hide/',
{
  method: 'POST',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint show/hide a user (user and user's post) identified by {id} for the authenticated user.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/user/{id}/hide/` 

<h4 id="hideuseruser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 204 Response

<h4 id="hideuseruser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|


### Check User Hidden

<a id="opIdisHiddenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/is_hidden/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/is_hidden/',
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

Return true if the user (identified in path) is hidden by me

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/is_hidden/`

<h4 id="ishiddenuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
    "is_hidden": true
}
```

<h4 id="ishiddenuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation require authentication
</aside>


### Check User Hidden By

<a id="opIdisHiddenUserBy"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/is_hidden_by/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/user/{id}/is_hidden_by/',
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

Return true if the user (identified in path) has hidden me

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/is_hidden_by/`

<h4 id="ishiddenuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
    "is_hidden_by": true
}
```

<h4 id="ishiddenbyuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation require authentication
</aside>


### Get User's Loyalty Points

<a id="opIdloyaltyPointsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{id}/loyalty/points/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer <token>'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer <token>'
};

fetch('/api/v2/user/{id}/loyalty/points/',
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

Return loyalty points of the user

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/user/{id}/loyalty/points/`

<h4 id="ishiddenuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|

> Example responses

> 200 Response

```json
{
  "points": 0
}
```

<h4 id="loyaltypointsuser-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="notice">
This operation require authentication
</aside>
