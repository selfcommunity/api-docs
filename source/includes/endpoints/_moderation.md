<h1 id="selfcommunity-api-moderation">Moderation</h1>

## List All Flagged Contributes

<a id="opIdlistFlaggedContributes"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/moderation/contribute/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/',
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

This endpoint retrieves all flagged contributes.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/moderation/contribute/`

<h3 id="listflaggedcontributes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|min_flags|query|integer|false|Minimum number of flags received by a contribute to display it in this list.|
|author|query|string|false|Username (or part of it) of the contributes' author|
|flagged_by|query|string|false|Username (or part of it) of the contributes' flagger|
|contribute_id|query|integer|false|The id of the contribute.|
|content|query|string|false|Content text (or part of it) of the contributes|
|moderation_status|query|string|false|Moderation status of the contributes flagged|
|order_by|query|string|false|Order field of the contributes list. Default ordering is: -last_flagged_at|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|


#### Enumerated Values

|Property|Value|
|---|---|
|moderation_status|ignored|
|moderation_status|contribute deleted|
|moderation_status|contribute hidden|
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

<h3 id="listflaggedcontributes-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listflaggedcontributes-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[FlaggedContribute](#schemaflaggedcontribute)]|false|none|List of results|

<aside class="notice">
This operation require moderation role.
</aside>

## Get All Flags for a Contribute

<a id="opIdflagFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/moderation/contribute/{id}/flag/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/flag/',
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

This endpoint retrieves all flags for the contributes.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/moderation/contribute/{id}/flag/`

<h3 id="listflaggedcontributes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|

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

<h3 id="flagflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require moderation role.
</aside>

## Scold Author of a Flagged Contribute

<a id="opIdscoldAuthorFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/scold_author/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{
  "moderation_type": 1
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/scold_author/',
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

`POST /api/v2/moderation/contribute/{id}/scold_author/`

Send a notification to scold the flagged contribute author

> Body parameter

```json
{
  "moderation_type": 1
}
```

<h3 id="scoldauthorflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|
|moderation_type|body|integer|true|An integer value to describe the moderation activity|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|moderation_type|0|spam|
|moderation_type|1|aggressive|
|moderation_type|2|vulgar|
|moderation_type|3|poor|
|moderation_type|4|offtopic|

<h3 id="scoldauthorflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>


## Scold Flagger of a Flagged Contribute

<a id="opIdscoldFlaggerFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/scold_flagger/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{
  "user": 123
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/scold_flagger/',
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

`POST /api/v2/moderation/contribute/{id}/scold_flagger/`

Send a notification to scold the flagger of a flagged contribute.

> Body parameter

```json
{
  "user": 123
}
```

<h3 id="scoldauthorflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|
|user|body|integer|true|An integer value identifying the Flagger user.|

<h3 id="scoldauthorflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>

## Ignore a Flagged Contribute

<a id="opIdignoreFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/ignore/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/ignore/',
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

`POST /api/v2/moderation/contribute/{id}/ignore/`

Ignore a flagged contribute

<h3 id="ignoreflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|

<h3 id="ignoreflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>


## Unignore a Flagged Contribute

<a id="opIdunignoreFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/ignore/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/ignore/',
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

`POST /api/v2/moderation/contribute/{id}/ignore/`

Unignore a flagged contribute

<h3 id="unignoreflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|

<h3 id="unignoreflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>

## Hide a Flagged Contribute

<a id="opIdhideFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/hide/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{
  "moderation_type": 1
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/hide/',
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

`POST /api/v2/moderation/contribute/{id}/hide/`

Hide a flagged contribute

> Body parameter

```json
{
  "moderation_type": 1
}
```

<h3 id="hideflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|
|moderation_type|body|integer|true|An integer value to describe the moderation activity|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|moderation_type|0|spam|
|moderation_type|1|aggressive|
|moderation_type|2|vulgar|
|moderation_type|3|poor|
|moderation_type|4|offtopic|

<h3 id="hideflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>


## Unhide a Flagged Contribute

<a id="opIdunhideFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/hide/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/hide/',
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

`POST /api/v2/moderation/contribute/{id}/hide/`

Unhide (show) a flagged contribute

<h3 id="unhideflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|

<h3 id="unhideflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>


## Delete a Flagged Contribute

<a id="opIddeleteFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/delete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const inputBody = '{
  "moderation_type": 1
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/delete/',
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

`POST /api/v2/moderation/contribute/{id}/delete/`

Delete a flagged contribute

> Body parameter

```json
{
  "moderation_type": 1
}
```

<h3 id="deleteflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|
|moderation_type|body|integer|true|An integer value to describe the moderation activity|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|moderation_type|0|spam|
|moderation_type|1|aggressive|
|moderation_type|2|vulgar|
|moderation_type|3|poor|
|moderation_type|4|offtopic|

<h3 id="deleteflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>


## Undelete a Flagged Contribute

<a id="opIdundeleteFlaggedContribute"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/moderation/contribute/{id}/delete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/moderation/contribute/{id}/delete/',
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

`POST /api/v2/moderation/contribute/{id}/delete/`

Undelete (restore) a flagged contribute

<h3 id="undeleteflaggedcontribute-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Contribute.|

<h3 id="undeleteflaggedcontribute-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require moderation role.
</aside>
