<h2 id="selfcommunity-api-feed">Feed</h2>

### Get Main Feed

<a id="opIdlistFeeds"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/feed/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/feed/',
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

This endpoint retrieves the main (home) feed

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/feed/`


<h4 id="listfeeds-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|The ordering of the feed. Default to `home_stream_order_by` community option|

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
              "vote_count": "string"
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
        "collapsed": false,
        "comment_count": 0,
        "share_count": 0,
        "vote_count": 0,
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
      "activities": [
        {
          "type": "string",
          "object": {},
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
          "active_at": "2019-08-24T14:15:22Z",
          "seen_by_id": [
            null
          ]
        }
      ]
    }
  ]
}
```

<h4 id="listfeeds-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listfeeds-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Feed](#schemafeed))|false|none|none|

<aside class="notice">
This operation require authentication
</aside>

### Get Explore Feed

<a id="opIdlistExploreFeed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/feed/explore/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/feed/explore/',
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

This endpoint retrieves the explore feed. This endpoint can be disabled by setting `explore_stream_enabled` community option to false

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/feed/explore/`

<h4 id="listexplorefeed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|The ordering of the feed. Default to `explore_stream_order_by` community option|

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
              "vote_count": "string"
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
        "collapsed": false,
        "comment_count": 0,
        "share_count": 0,
        "vote_count": 0,
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

<h4 id="listexplorefeed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listexplorefeed-responseschema">Response Schema</h4>

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

### Get Main Feed Unseen Count

<a id="opIdsummaryFeed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/feed/unseen/count/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/feed/unseen/count/',
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

This endpoint retrieves Main Feed unseen count

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/feed/unseen/count/`

> Example responses

> 200 Response

```json
{
  {
    "count_by_category": [
        {
            "id": 1,
            "count": 67
        }
    ],
    "total": 67
}
```

<h4 id="summaryfeed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[FeedUnseenCount](#schemafeedunseencount)|

<aside class="notice">
This operation require authentication
</aside>

### Mark a Specific Feed Object as Read

<a id="opIdmarkReadFeed"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/feed/read/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
      "object": [0]
  }'
```

```javascript
const inputBody = {
  object: [0]
};
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/feed/read/',
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
This endpoint marks as read a list of objects in the feed. Usually it is called when a [Feed](#schemafeed) object enter the viewport of the user.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/feed/read/`

> Body parameter

```json
{
  "object": [0]
}
```

<h4 id="markreadfeed-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» object|body|list|false|List of [Feed](#schemafeed)'s object id|

<h4 id="markreadfeed-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Like These feed objects

<a id="opIdlikeThisFeed"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/feed/likethis/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "object": [0]
  }'

```

```javascript
const inputBody = {
    "object": [0]
};
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/feed/likethis/',
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
This endpoint retrieve a list of [Feed](#schemafeed) objects similar to the id of passed objects

`POST /api/v2/feed/likethis/`


> Body parameter

```json
{
    "object": [0]
}
```

<h4 id="listfeeds-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|object|body|list|true|List of [Feed](#schemafeed)'s object id|

> Example responses

> 201 Response

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
              "vote_count": "string"
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
        "collapsed": false,
        "comment_count": 0,
        "share_count": 0,
        "vote_count": 0,
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
      "has_boost": false
    }
  ]
}
```

<h4 id="likethisfeed-responses">Responses</h4>

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|list([Feed](#schemafeed))|false|none|none|

<aside class="notice">
This operation require authentication
</aside>