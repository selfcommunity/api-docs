<h1 id="selfcommunity-api-notification">Notification</h1>

## List User's Notification

<a id="opIdlistNotifications"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/',
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

List all user notifications (in aggregate form) related to the community. 

Notification types:

Type | Description | Audience
-------------- | -------------- | --------------
*answer* | Comment of first level | Participants of the discussion/post, including those who follow the post
*comment* | Comment of second level | The author of the top-level comment (unless the user has hidden it) and the authors of the siblings comments, 
*mention* | user mention | Who is mentioned in the contribute
*vote_up* | vote up a post/discussion/comment | Who received the voteup
*favorite* | favorite/like post/discussion | The author of the contribute (discussion/post)
*private_message* | private message | The recipient of the message
*deleted_for_advertising* | deleted by moderator with motivation the content is advertising | The author of the contribute
*deleted_for_aggressive* | deleted by moderators with motivation the content is aggressive | The author of the contribute
*deleted_for_vulgar* | deleted by moderators with motivation the content is vulgar | The author of the contribute
*deleted_for_generic* | deleted by moderators with a generic motivation | The author of the contribute
*deleted_for_poor* | deleted by moderators with motivation the content is poor | The author of the contribute
*deleted_for_offtopic* | deleted by moderators with motivation the content is offtopic | The author of the contribute
*undeleted_for* | the post has been rehabilitated by the moderators | The author of the contribute
*collapsed_for_advertising* | colapsed by moderator with motivation the content is advertising | The author of the contribute
*collapsed_for_aggressive* | colapsed by moderator with motivation the content is aggressive | The author of the contribute
*collapsed_for_vulgar* | colapsed by moderator with motivation the content is vulgar | The author of the contribute
*collapsed_for_poor* | colapsed by moderator with motivation the content is poor | The author of the contribute
*collapsed_for_offtopic* | colapsed by moderator with motivation the content is offtopic | The author of the contribute
*collapsed_for_generic* | colapsed by moderator with generic motivation | The author of the contribute
*connection_request* | connect request | The user who receives the request
*connection_accept* | connection accept | Who had requested friendship
*user_follow* | follow user | The user followed
*kindly_notice_advertising* | content notified as advertising | The author of the contribute
*kindly_notice_aggressive* | content notified as aggressive | The author of the contribute
*kindly_notice_vulgar* | content notified as vulgar | The author of the contribute
*kindly_notice_poor* | content notified as poor | The author of the contribute
*kindly_notice_offtopic* | content notified as offtopic | The author of the contribute
*kindly_notice_generic* | generic content notified | The author of the contribute
*kindly_notice_flag* | content flagged | The author of the contribute
*blocked_user* | user blocked | The blocked user
*unblocked_user* | user unblocked |  The unblocked user
*incubator_approved* | incubator approved | The user who proposed the incubator and those who voted for it 
*custom_notification* | custom notification | User followers/connections

> Example responses

> 200 Response

```json
{
  "next": "string",
  "previous": "string",
  "results": [
    {
        "is_new": false,
        "sid": "1605259249000",
        "post": {...},
        "aggregated": [
            {
                "is_new": false,
                "sid": 16052592493610000000054990,
                "notification_type": "answer",
                "post": {},
                "answer": {}
                
            },
            {
                "is_new": false,
                "sid": 16052592493610000000054990,
                "notification_type": "answer",
                "post": {},
                "answer": {}
            }
        ]  
    },
    {
       "is_new": false,
       "sid": "1605259249000",
       "aggregated": [
            {
              "notification_type": "connection_accept",
              "accept_user": {}
            }
       ]
    }
  ]
}
```

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/`

<h3 id="listnotifications-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|next_id|query|string|false|Next page id|
|previous_id|query|string|false|Previous page id|

<h3 id="listnotifications-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listnotifications-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([[Notification](#schemanotification)])|false|none|List of notification results|

<aside class="notice">
This operation require authentication
</aside>

## Mark Read Notifications

<a id="opIdreadNotificationsNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/read/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"
```

```javascript
const inputBody = '{
  "sids": [
    "16051998593220000000052990", "16031945321500000000007190", ...
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/read/',
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

Mark read a list of notifications identified by serialization_ids (sids).

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/notification/read/`

> Body parameter

```json
{
  "sids": [
    "string"
  ]
}
```

<h3 id="readnotificationsnotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sids|body|List of sid (serialization id)|true|none|

> Example responses

> 204 Response

<h3 id="followuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

## Get Unseen Notifications

<a id="opIdunseenNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/unseen/count/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/unseen/count/',
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

Retrieve the number of unseen/unread notifications.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/unseen/count/`

> Example responses

> 200 Response

```json
{"count":  3}
```

<h3 id="unseennotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation require authentication
</aside>

## Create Custom notification

<a id="opIdnotifyNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/notify/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript
const inputBody = '{
  "type": "string",
  "embed": {
    "embed_type": "string",
    "embed_id": "string",
    "url": "http://example.com",
    "metadata": "{}"
  },
  "title": "string",
  "description": "string",
  "user": 3
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/notify/',
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

Generate a custom notification on behalf of a user (identified by the body param "user") and notifies it to all his connections/followers.

Es. <user> added an item to the wishlist

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/notification/notify/`

> Body parameter

```json
{
  "type": "string",
  "embed": {
    "embed_type": "string",
    "embed_id": "string",
    "url": "http://example.com",
    "metadata": "{}"
  },
  "title": "string",
  "description": "string",
  "user": 0
}
```

<h3 id="notifynotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|type|body|string|true|A string that identifies a type of notification|
|embed|body|object|false|[Embed](#schemaembed)|
|title|body|string¦null|false|A title for the notification|
|description|body|string¦null|false|A description for the notification|
|user|body|integer|true|The user who issues the notification|

> Example responses

> 204 Response

<h3 id="followuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication and admin role.
</aside>


## List User's Banner

<a id="opIdbannerNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/banner/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/banner/',
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


List of all top notification banners.
Notification banners are notifications that have a high priority and for this reason they are placed at the top of the list in the notification page. 

They belong to their own list. For some reasons they behave differently from the notification. 
They are initially shown and can be removed.


<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/banner/`

<h3 id="listnotifications-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

> Example responses

> 200 Response

```json
{
  "count": 1,
  "next": null,
  "previous": null,
  "results": [
    {
      "id": 0,
      "banner": {
        "html": "<div>Hello!</div>",
        "type_banner": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "disposed_at": "2019-08-24T14:15:22Z",
      "viewed_at": "2019-08-24T14:15:22Z"
    }
  ]
```

<h3 id="bannernotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[TargetedBannerVisibility](#schematargetedbannervisibility)|

<h3 id="listusers-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|list([TargetedBannerVisibility](#schematargetedbannervisibility))|false|none|List of results|

<aside class="notice">
This operation require authentication
</aside>

## User's Banner Unseen Count

<a id="opIdbannerUnseenNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/banner/unseen/count/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/banner/unseen/count/',
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

Retrieve the total number of notiifcation banners not yet seen by the user.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/banner/unseen/count/`

> Example responses

> 200 Response

```json
{
  "count": 3
}
```

<h3 id="bannerunseennotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation require authentication
</aside>


## User's Banner Undisposed Count

<a id="opIdbannerUndisposedNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/banner/undisposed/count/ \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/banner/undisposed/count/',
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

Retrieve the total number of notiifcation banners not yet disposed by the user.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/banner/undisposed/count/`

> Example responses

> 200 Response

```json
{
  "count": 3
}
```

<h3 id="bannerundisposednotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|none|

<aside class="notice">
This operation require authentication
</aside>


## Mark Read User's Banner

<a id="opIdreadBannerNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/banner/read/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript
const inputBody = '{
  "banner_ids": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/notification/banner/read/',
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

Mark viewed/read a notiifcation banner for a user.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/notification/banner/read/`

> Body parameter

```json
{
  "banner_ids": [
    0
  ]
}
```

<h3 id="readbannernotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|banner_ids|list([integer])|true|none|none|

> Example responses

> 201 Response

```json
{
  "banner_ids": [
    0
  ]
}
```

> Example responses

> 204 Response

<h3 id="followuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation does not require authentication
</aside>

## Dispose User's Banner 

<a id="opIddisposeBannerNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/banner/dispose/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H "Authorization: Bearer <token>"

```

```javascript
const inputBody = '{
  "banner_ids": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization: Bearer <token>'
};

fetch('/api/v2/notification/banner/dispose/',
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

Dispose notiifcation banner for a user.

The banner will disappear and will no longer appear in the notification banner list, see [List User's Banner](#opIdbannerNotification).

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/notification/banner/dispose/`

> Body parameter

```json
{
  "banner_ids": [
    0
  ]
}
```

<h3 id="disposebannernotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|banner_ids|list([integer])|true|none|none|

> Example responses

> 204 Response

<h3 id="followuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

