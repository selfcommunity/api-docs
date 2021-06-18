<h2 id="selfcommunity-api-embed">Embed</h2>

### Get All Embeds

<a id="opIdlistEmbeds"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/',
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

This endpoint retrieves all embeds.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/embed/`

<h4 id="listembeds-parameters">Parameters</h4>

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
      "embed_type": "string",
      "embed_id": "string",
      "url": "https://example.com",
      "metadata": {}
    }
  ]
}
```

<h4 id="listembeds-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listembeds-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Embed](#schemaembed))|false|none|none|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Create an Embed

<a id="opIdcreateEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/embed/ \
  --H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "embed_type": "string",
    "embed_id": "string",
    "url": "https://example.com",
    "metadata": {}
}'

```

```javascript
const inputBody = '{
  "embed_type": "string",
  "embed_id": "string",
  "url": "https://example.com",
  "metadata": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/',
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

This endpoint create an Embed.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/embed/`

> Body parameter

```json
{
  "embed_type": "string",
  "embed_id": "string",
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="createembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» id|body|integer|false|none|
|» embed_type|body|string|true|Type of the embed, can be any string except `sc_vimeo` or `sc_link` that are used for embedded objects auomatically created by the community|
|» embed_id|body|string|true|External id for the embed object|
|» url|body|string(uri)¦null|false|Url for the resource, if any|
|» metadata|body|json|false|Metadata associated to this embed. It mus be a valid json object|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="createembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Embed](#schemaembed)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Search an Embed

<a id="opIdsearchEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/search/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/search/',
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

This endpoint perform search to Embeds

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/embed/search/`

<h4 id="searchembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|embed_type|query|string|false|embed_type|
|embed_id|query|string|false|embed_id|
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
      "embed_type": "string",
      "embed_id": "string",
      "url": "https://example.com",
      "metadata": {}
    }
  ]
}
```

<h4 id="searchembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="searchembed-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Embed](#schemaembed))|false|none|none|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Get a specific Embed

<a id="opIdretrieveEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/',
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
This endpoint retrieves a specific embed using ID.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/embed/{id}/`

<h4 id="retrieveembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this embed.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="retrieveembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Embed](#schemaembed)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Update a specific Embed

<a id="opIdupdateEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/embed/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "url": "https://example.com",
    "metadata": {}
  }'

```

```javascript
const inputBody = '{
  "url": "https://example.com",
  "metadata": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/',
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

This endpoint update a specific Embed.

<h4 id="http-request">HTTP Request</h4>

`PUT /api/v2/embed/{id}/`

> Body parameter

```json
{
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="updateembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this embed.|
|» url|string(uri)¦null|false|none|Url for the resource, if any|
|» metadata|json|false|none|Metadata associated to this embed. It mus be a valid json object|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="updateembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateEmbed](#schemaupdateembed)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Patch a Specific Embed

<a id="opIdpartialUpdateEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/embed/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "url": "https://example.com"
  }'

```

```javascript
const inputBody = '{
  "url": "https://example.com",
  "metadata": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/',
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
This endpoint patch a specific endpoint.

*NOTE:* You can use this endpoint to edit a single field passing only the id and the needed field (without mandatory fields).

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/embed/{id}/`

> Body parameter

```json
{
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="partialupdateembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this embed.|
|» url|string(uri)¦null|false|none|Url for the resource, if any|
|» metadata|json|false|none|Metadata associated to this embed. It mus be a valid json object|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "embed_type": "string",
  "embed_id": "string",
  "url": "https://example.com",
  "metadata": {}
}
```

<h4 id="partialupdateembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateEmbed](#schemaupdateembed)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Get a specific Embed's Feed

<a id="opIdSpecificFeedEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/{id}/feed/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/{id}/feed/',
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

This endpoint retrieves the embed's feed witch contains [Feed](#schemafeed) that has the [Embed](#schemaembed) as associated media.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/embed/{id}/feed/`

<h4 id="feedspecificembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|The ordering of the feed. Default to 'recent'|

###### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|» ordering|recent|Order by recent creation datetime|
|» ordering|last_activity|Order by last activity in the [Feed](#schemafeed) object|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "type": "discussion",
      "discussion": {
        "id": 0,
        "categories": [
            {
                "id": 0,
                "tags": [],
                "order": 123,
                "name": "string",
                "name_synonyms": "string",
                "slug": "string",
                "slogan": "string",
                "html_info": "string",
                "seo_title": "string",
                "seo_description": "string",
                "auto_follow": "string",
                "active": true,
                "deleted": false,
                "image_original": "string",
                "image_bigger": "string",
                "image_big": "string",
                "image_medium": "string",
                "image_small": "string",
                "emotional_image_original": "string",
                "emotional_image_position": 123,
                "lastmod_datetime": "2019-08-24T14:15:22Z",
                "quality_score": 1,
                "stream_order_by": "string",
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
                "url": "https://example.com",
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
              "vote_count": 0,
              "voted": true
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
          "location_lat_lng": "string",
          "position_lat_lng": "string",
          "date_of_birth": "string",
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
          ],
        "reputation": 111,
        "followings_counter": 1,
        "followers_counter": 1,
        "posts_counter": 2,
        "discussions_counter": 5,
        "statuses_counter": 1,
        "polls_counter": 7
        
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 1,
        "vote_count": 0,
        "voted": false,
        "flag_count": 0,
        "share_count": 0,
        "addressing": [0],
        "title": "string",
        "slug": "string",
        "view_count": 0,
        "follower_count": 0
      }
    }
  ]
}
```

<h4 id="feedspecificembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="feedspecificembed-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[Feed](#schemafeed)]|false|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false.
</aside>

### Get Embed's Feed

<a id="opIdfeedEmbed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/embed/feed/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/embed/feed/',
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

This endpoint retrieves the embed's feed witch contains [Feed](#schemafeed) that has an [Embed](#schemaembed) as associated media.

If the tuple `embed_type` `embed_id` is passed as parameter retrieves a list of [Feed](#schemafeed) that has [Embed](#schemaembed) as associated media like the [Get a specific Embed's Feed API](#get-a-specific-embed-39-s-feed).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/embed/feed/`

<h4 id="feedembed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|embed_type|query|string|false|embed_type|
|embed_id|query|string|false|embed_id|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|The ordering of the feed. Default to 'recent'|

###### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|» ordering|recent|Order by recent creation datetime|
|» ordering|last_activity|Order by last activity in the [Feed](#schemafeed) object|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "type": "discussion",
      "discussion": {
        "id": 0,
        "categories": [
            {
                "id": 0,
                "tags": [],
                "order": 123,
                "name": "string",
                "name_synonyms": "string",
                "slug": "string",
                "slogan": "string",
                "html_info": "string",
                "seo_title": "string",
                "seo_description": "string",
                "auto_follow": "string",
                "active": true,
                "deleted": false,
                "image_original": "string",
                "image_bigger": "string",
                "image_big": "string",
                "image_medium": "string",
                "image_small": "string",
                "emotional_image_original": "string",
                "emotional_image_position": 123,
                "lastmod_datetime": "2019-08-24T14:15:22Z",
                "quality_score": 1,
                "stream_order_by": "string",
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
                "url": "https://example.com",
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
              "deleted": false,
              "vote_count": 0,
              "voted": true
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
          "location_lat_lng": "string",
          "position_lat_lng": "string",
          "date_of_birth": "string",
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
          ],
        "reputation": 111,
        "followings_counter": 1,
        "followers_counter": 1,
        "posts_counter": 2,
        "discussions_counter": 5,
        "statuses_counter": 1,
        "polls_counter": 7
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 1,
        "vote_count": 0,
        "voted": false,
        "flag_count": 0,
        "share_count": 0,
        "addressing": [0],
        "title": "string",
        "slug": "string",
        "view_count": 0,
        "follower_count": 0
      }
    }
  ]
}
```

<h4 id="feedembed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="feedembed-responseschema">Response Schema</h4>

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
