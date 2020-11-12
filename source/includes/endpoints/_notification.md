<h1 id="selfcommunity-api-notification">notification</h1>

## List User's Notification

<a id="opIdlistNotifications"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

List all user notifications related to the community

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/`

<h3 id="listnotifications-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
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
    {}
  ]
}
```

<h3 id="listnotifications-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listnotifications-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Notification](#schemanotification)]|false|none|none|
|»» next_id|integer|false|write-only|none|
|»» prev_id|integer|false|write-only|none|

<aside class="notice">
This operation does not require authentication
</aside>

## bannerNotification

<a id="opIdbannerNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/banner/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

List of all top notification banners

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/banner/`

> Example responses

> 200 Response

```json
{
  "id": 0,
  "banner": "string",
  "added_at": "2019-08-24T14:15:22Z",
  "disposed_at": "2019-08-24T14:15:22Z",
  "viewed_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="bannernotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[TargetedBannerVisibility](#schematargetedbannervisibility)|

<aside class="notice">
This operation does not require authentication
</aside>

## bannerUndisposedNotification

<a id="opIdbannerUndisposedNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/banner/undisposed/count/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

Retrieve the total number of banners not yet undisposed by the user

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/banner/undisposed/count/`

> Example responses

> 200 Response

```json
{
  "banner_ids": [
    0
  ]
}
```

<h3 id="bannerundisposednotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ManageTargetedBanner](#schemamanagetargetedbanner)|

<aside class="notice">
This operation does not require authentication
</aside>

## bannerUnseenNotification

<a id="opIdbannerUnseenNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/banner/unseen/count/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

Retrieve the total number of banners not yet seen by the user

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/banner/unseen/count/`

> Example responses

> 200 Response

```json
{
  "banner_ids": [
    0
  ]
}
```

<h3 id="bannerunseennotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ManageTargetedBanner](#schemamanagetargetedbanner)|

<aside class="notice">
This operation does not require authentication
</aside>

## unseenNotification

<a id="opIdunseenNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/notification/unseen/count/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

Retrieve the number of unseen/unread notifications

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/notification/unseen/count/`

> Example responses

> 200 Response

```json
{}
```

<h3 id="unseennotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Notification](#schemanotification)|

<aside class="notice">
This operation does not require authentication
</aside>

## disposeBannerNotification

<a id="opIddisposeBannerNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/banner/dispose/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

`POST /api/v2/notification/banner/dispose/`

Mark dispose a banner for a user

> Body parameter

```json
{
  "banner_ids": [
    0
  ]
}
```

```yaml
banner_ids:
  - 0

```

<h3 id="disposebannernotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageTargetedBanner](#schemamanagetargetedbanner)|false|none|
|» banner_ids|body|[integer]|true|none|

> Example responses

> 201 Response

```json
{
  "banner_ids": [
    0
  ]
}
```

<h3 id="disposebannernotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageTargetedBanner](#schemamanagetargetedbanner)|

<aside class="notice">
This operation does not require authentication
</aside>

## notifyNotification

<a id="opIdnotifyNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/notify/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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
  "user": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/notification/notify/`

Generate a custom notification and notify it to all followers/connections of this user.
Es. <user> added an item to the wishlist

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

```yaml
type: string
embed:
  embed_type: string
  embed_id: string
  url: http://example.com
  metadata: "{}"
title: string
description: string
user: 0

```

<h3 id="notifynotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CustomNotification](#schemacustomnotification)|false|none|
|» id|body|integer|false|none|
|» type|body|string|true|none|
|» embed|body|object|false|none|
|»» id|body|integer|false|none|
|»» embed_type|body|string|true|none|
|»» embed_id|body|string|true|none|
|»» url|body|string(uri)¦null|false|none|
|»» metadata|body|object|false|none|
|» title|body|string¦null|false|none|
|» description|body|string¦null|false|none|
|» user|body|integer|true|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "type": "string",
  "embed": {
    "id": 0,
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

<h3 id="notifynotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[CustomNotification](#schemacustomnotification)|

<aside class="notice">
This operation does not require authentication
</aside>

## readBannerNotification

<a id="opIdreadBannerNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/banner/read/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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

`POST /api/v2/notification/banner/read/`

Mark viewed/read broadcast messages for a user

> Body parameter

```json
{
  "banner_ids": [
    0
  ]
}
```

```yaml
banner_ids:
  - 0

```

<h3 id="readbannernotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageTargetedBanner](#schemamanagetargetedbanner)|false|none|
|» banner_ids|body|[integer]|true|none|

> Example responses

> 201 Response

```json
{
  "banner_ids": [
    0
  ]
}
```

<h3 id="readbannernotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageTargetedBanner](#schemamanagetargetedbanner)|

<aside class="notice">
This operation does not require authentication
</aside>

## readNotificationsNotification

<a id="opIdreadNotificationsNotification"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/notification/read/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "sids": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/notification/read/`

Mark read a list of notifications identified by serialization_ids (sids)

> Body parameter

```json
{
  "sids": [
    "string"
  ]
}
```

```yaml
sids:
  - string

```

<h3 id="readnotificationsnotification-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[MarkReadNotifications](#schemamarkreadnotifications)|false|none|
|» sids|body|[string]|true|none|

> Example responses

> 201 Response

```json
{}
```

<h3 id="readnotificationsnotification-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[MarkReadNotifications](#schemamarkreadnotifications)|

<aside class="notice">
This operation does not require authentication
</aside>
