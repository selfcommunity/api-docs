<h2 id="selfcommunity-api-moderation">Moderation</h2>

### Get All Users for Moderation

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/moderation/user/`

<h4 id="listmoderationusers-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search|query|string|false|A search term.|
|status|query|string|false|Valid values are: a, b, d, u|
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
      "website": "https://example.com",
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
      "reputation": 25,
      "followings_counter": 3,
      "followers_counter": 3,
      "posts_counter": 2,
      "polls_counter": 1,                                                                       
      "blocked_at": "2019-08-24T14:15:22Z",
      "days_blocked": "string",
      "expire_at": "2019-08-24T14:15:22Z",
      "last_seen": "2021-06-10T17:31:33.014024+02:00",
      "flags_given": 0,
      "flags_received": 0,
      "last_score_variation": {
          "score": 10,
          "comment": "string",
          "reputed_at": "2021-07-06T12:06:57.168320+02:00",
          "created_by": {
              "id": 1,
              "username": "admin",
              "avatar": "url"
          }
      }      
    }
  ]
}
```

<h4 id="listmoderationusers-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listmoderationusers-responseschema">Response Schema</h4>

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


### Moderate a Specific User

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
This endpoint perform moderation for users.

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/moderation/user/{id}/`

> Body parameter example

```json
{
  "status": 'a'
}
```

<h4 id="partialupdatemoderationuser-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user.|
|status|body|string|true|Valid values are: a, b, d, u|
|days_blocked|body|string|false|Number of days of block. If not passed the block will be forever (status must be "b")|
|hard|body|integer|false|If the value is 1 and status is "d" it will perform an hard deletion (equivalent to status "u")|

<h4 id="unfollowcategory-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>

### Get All Flagged Contributions

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/moderation/contribution/`

<h4 id="listmoderationcontributions-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|min_flags|query|integer|false|Minimum number of flags received by a contribute to display it in this list.|
|contribution_type|query|string|false|Valid values are: post, discussion, status, comment|
|contribution_id|query|string|false|A unique integer value identifying this Contribution.|
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
          "website": "https://example.com",
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
        "categories": [
            {
                "id": 0,
                "name": "string"
            }
        ],
        "title": "string",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": true,
        "parent": "string",
        "in_reply_to": "string",
        "comment_count": 0,
        "vote_count": 0,
        "flag_count": 6,
        "flag_count_detail": {
            "0": 1,
            "2": 5
        },
        "media_count_detail": {},
        "has_poll": false
      },
      "last_flagged_at": "2019-08-24T14:15:22Z",
      "moderation_status": "string",
      "moderation_type": "0",
      "moderation_by": {
          "id": 0,
          "username": "string",
          "real_name": "",
          "avatar": "url",
          "ext_id": null,
          "tags": []
      },
      "moderation_at": "2021-07-07T12:20:12.472485+02:00"
    }
  ]
}
```

<h4 id="listmoderationcontributions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listmoderationcontributions-responseschema">Response Schema</h4>

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

### Get All Flags for a Specific Contribution

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/moderation/contribution/{id}/flag/`

<h4 id="flagmoderationcontribution-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribution.|
|contribution_type|body|string|true|Valid values are: post, discussion, status, comment|
|flag_type|body|integer|false|Filter results by flag_type|

#### Enumerated Values

| Parameter | Value | Description |
|-----------|-------|-------------|
| flag_type | 0     | spam        |
| flag_type | 1     | aggressive  |
| flag_type | 2     | vulgar      |
| flag_type | 3     | poor        |
| flag_type | 4     | offtopic    |

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
        "website": "https://example.com",
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

<h4 id="flagmoderationcontribution-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require moderation role.
</aside>



### Moderate a Specific Contribution

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

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/moderation/contribution/{id}/`

<h4 id="partialupdatemoderationuser-parameters">Parameters</h4>

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

* *scold_author*: scold the author of the post, a kindly notification will be sent to the author of the contribution with moderation_type as the cause
* *scold_flagger*: scold a flagger of the post, a kindly notification will be sent to the author of the flag
* *ignore*: ignore the contribute into the moderation flow (for moderators)
* *hide*: hide the contribution for all community users except for the author with moderation_type as the cause
* *delete*: delete the contribution for all community users with moderation_type as the cause

The following types of actions are "toggle actions" (calling the endpoint twice with the same action will cancel it): ignore, hide and delete.

<h4 id="unfollowcategory-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>
