<h1 id="selfcommunity-api-moderation">Moderation</h1>

## Get All Users for Moderation

<a id="opIdlistModerationUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/moderation/user/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/user/',
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

This endpoint retrieves all users for moderation purpose.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/moderation/user/`

<h3 id="listmoderationusers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search|query|string|false|A search term.|
|status|query|string|false|Valid values are: a, b, d, u|
|low_visibility|query|integer|false|Valid values are 0, 1|
|days_blocked|query|string|false|Number of days of block or the special value "forever"|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|order_by|query|string|false|Default ordering is: -date_joined. Other valid fields are: expire_at, blocked_at|

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
      "date_of_birth": "2019-08-24",
      "description": "string",
      "gender": "Male",
      "status": "a",
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
      ],
      "blocked_at": "2019-08-24T14:15:22Z",
      "days_blocked": "string",
      "expire_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h3 id="listmoderationusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listmoderationusers-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[ModerationUser](#schemamoderationuser)]|false|none|none|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|status|a|active|
|status|b|blocked|
|status|d|deleted|
|status|u|unregistered (hard deleted user)|

<aside class="notice">
This operation require moderation role.
</aside>


## Moderate a Specific User

<a id="opIdpartialUpdateModerationUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/moderation/user/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const inputBody = '{  
  "status": "a"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/user/{id}/',
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
This endpoint perform moderation for users; at least one parameter between "status" and "low_visibility" is required.

<h3 id="http-request">HTTP Request</h3>

`PATCH /api/v2/moderation/user/{id}/`

> Body parameter example

```json
{
  "status": 'a'
}
```

<h3 id="partialupdatemoderationuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|low_visibility|body|integer|false|Valid values are 0, 1|
|status|body|string|false|Valid values are: a, b, d, u|
|days_blocked|body|string|false|Number of days of block. If not passed the block will be forever (status must be "b")|
|hard|body|integer|false|If the value is 1 and status is "d" it will perform an hard deletion (equivalent to status "u")|

<h3 id="unfollowcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>

## Get All Flagged Contributions

<a id="opIdlistModerationContributions"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/moderation/contribution/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribution/',
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

This endpoint retrieves all flagged contributions.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/moderation/contribution/`

<h3 id="listmoderationcontributions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|min_flags|query|integer|false|Minimum number of flags received by a contribute to display it in this list.|
|author|query|string|false|Username (or part of it) of the contributes' author|
|flagged_by|query|string|false|Username (or part of it) of the contributes' flagger|
|content|query|string|false|Content text (or part of it) of the contributes|
|moderation_status|query|string|false|Moderation status of the contributes flagged|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|order_by|query|string|false|Default ordering is: -last_flagged_at. Other valid fields are: flag_count, last_moderated_at|

#### Enumerated Values

|Property|Value|
|---|---|
|moderation_status|ignored|
|moderation_status|deleted|
|moderation_status|hidden|
|moderation_status|open|
|order_by|flag_count|
|order_by|-flag_count|
|order_by|last_moderated_at|
|order_by|-last_moderated_at"|
|order_by|last_flagged_at|
|order_by|-last_flagged_at|


> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
      "contribute_type": "string",
      "contribute": {
        "id": 0,
        "author": {
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
        "title": "string",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": true,
        "parent": "string",
        "in_reply_to": "string",
        "comment_count": 0,
        "vote_count": "string",
        "flag_count": "string"
      },
      "last_flagged_at": "2019-08-24T14:15:22Z",
      "moderation_status": "string"
    }
  ]
}
```

<h3 id="listmoderationcontributions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listmoderationcontributions-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[FlaggedContribution](#schemaflaggedcontribution)]|false|none|none|

<aside class="notice">
This operation require moderation role.
</aside>

## Get All Flags for a Specific Contribution

<a id="opIdflagModerationContribution"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/moderation/contribution/{id}/flag/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribution/{id}/flag/',
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

This endpoint retrieves all flags for a specific contribution.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/moderation/contribution/{id}/flag/`

<h3 id="flagmoderationcontribution-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribution.|
|contribution_type|body|string|true|Valid values are: post, discussion, comment|


> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
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

<h3 id="flagmoderationcontribution-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require moderation role.
</aside>



## Moderate a Specific Contribution

<a id="opIdpartialUpdateModerationContribution"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/moderation/contribution/{id}/ \
  -H 'Authorization: Bearer {access_token}' \
  --form 'contribution_type="post"' \
  --form 'action="scold_author"' \
  --form 'moderation_type="1"'
```

```javascript
const inputBody = '{
  "contribution_type": "string",
  "action": "string",
  "moderation_type": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribution/{id}/',
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

This endpoint provides actions for flagged contributions moderation

<h3 id="http-request">HTTP Request</h3>

`PATCH /api/v2/moderation/contribution/{id}/`

<h3 id="partialupdatemoderationuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|contribution_type|body|string|true|Valid values are: post, discussion, comment|
|action|body|string|true|Valid values are: scold_author, scold_flagger, ignore, hide, delete|
|user|body|integer|true|The user id of the contribution flagger to scold (use only with action=scold_flagger)|
|moderation_type|body|integer|true|An integer value to describe the moderation activity if action=hide or delete|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|moderation_type|0|spam|
|moderation_type|1|aggressive|
|moderation_type|2|vulgar|
|moderation_type|3|poor|
|moderation_type|4|offtopic|

#### Actions 
The following actions can be performed using this endpoint:

* *scold_author*: scold the author of the post, a kindly notification will be sent to the author of the post with moderation_type as the cause
* *scold_flagger*: scold a flagger of the post, a kindly notification will be sent to the author of the flag
* *ignore*: ignore the contribute into the moderation flow (for moderators)
* *hide*: hide the contribution for all community users except for the author with moderation_type as the cause
* *delete*: delete the contribution for all community users with moderation_type as the cause

The following types of actions are "toggle actions" (calling the endpoint twice with the same action will cancel it): ignore, hide and delete.

<h3 id="unfollowcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>
