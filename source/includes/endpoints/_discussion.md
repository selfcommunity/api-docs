<h1 id="selfcommunity-api-discussion">Discussion</h1>

## Get All Discussions

<a id="opIdlistDiscussions"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/',
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

This endpoint retrieves all discussions.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/discussion/`

<h3 id="listdiscussions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|Which field to use when ordering the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string",
  "previous": "string",
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
        "avatar": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "comment_count": "string",
      "vote_count": 0,
      "flag_count": "string",
      "addressing": [
        0
      ],
      "follower_count": "string"
    }
  ]
}
```

<h3 id="listdiscussions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listdiscussions-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[Discussion](#schemadiscussion)]|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Create a Discussion

<a id="opIdcreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "title": "string",
  "text": "string",
  "categories": [0],
  "medias": [0],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "poll": {
    "title": "string",
    "multiple_choices": true,
    "closed": true,
    "expiration_at": "2019-08-24T14:15:22Z",
    "choices": [
      {
        "choice": "string"
      }
    ]
  },
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "addressing": []
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/',
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

This endpoint creates a discussion.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/discussion/`

> Body parameter

```json
{
  "title": "string",
  "text": "string",
  "categories": [0],
  "medias": [0],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "poll": {
    "title": "string",
    "multiple_choices": true,
    "closed": true,
    "expiration_at": "2019-08-24T14:15:22Z",
    "choices": [
      {
        "choice": "string"
      }
    ]
  },
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "addressing": []
}
```

<h3 id="creatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» title|body|string¦null|true|The title of the discussion|
|» text|body|string|false|The content of the discussion in html format|
|» categories|body|[integer]|true|List of id of [Category](#schemacategory)|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|The Location object to associate at the discussion|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the discussion|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» choices|body|[object]|true|none|
|»»» choice|body|string|true|none|
|» captcha|body|object|false|Required only when daily discussion limit is passed|
|»» hashkey|body|string|true|none|
|»» response|body|string|true|none|
|» addressing|body|[integer]|false|List of id of [Tag](#schematag)|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
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
            "hash_code": "af335630-a8db-4fe4-a49a-dd81ce5c2a80",
            "added_at": "2020-10-08T16:15:59.122041+02:00",
            "type": "url",
            "title": "Title",
            "description": "Description",
            "url": "https://www.example.com",
            "keywords": "[]",
            "entities": "[]",
            "image": "string",
            "image_width": 1500,
            "image_height": 1500,
            "oembed_type": null,
            "oembed_url": null,
            "oembed_width": null,
            "oembed_height": null,
            "oembed_duration": null,
            "oembed_html": null,
            "oembed_preview_ready": true,
            "oembed_available": true,
            "order": 0,
            "embed_type": null,
            "embed_id": null
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
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "comment_count": "string",
  "vote_count": 0,
  "flag_count": "string",
  "addressing": [],
  "follower_count": "string"
}
```

<h3 id="creatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Discussion](#schemadiscussion)|

<aside class="notice">
This operation require authentication
</aside>

## Search a Discussion

<a id="opIdsearchDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/search/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/search/',
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

This Endpoint perform search operation to discussions.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/discussion/search/`

<h3 id="searchdiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search|query|string|false|A search term.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string",
  "previous": "string",
  "results": [
      {
        "id": 0,
        "title": "string",
        "slug": "string",
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
                    "hash_code": "af335630-a8db-4fe4-a49a-dd81ce5c2a80",
                    "added_at": "2020-10-08T16:15:59.122041+02:00",
                    "type": "url",
                    "title": "Title",
                    "description": "Description",
                    "url": "https://www.example.com",
                    "keywords": "[]",
                    "entities": "[]",
                    "image": "string",
                    "image_width": 1500,
                    "image_height": 1500,
                    "oembed_type": null,
                    "oembed_url": null,
                    "oembed_width": null,
                    "oembed_height": null,
                    "oembed_duration": null,
                    "oembed_html": null,
                    "oembed_preview_ready": true,
                    "oembed_available": true,
                    "order": 0,
                    "embed_type": null,
                    "embed_id": null
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
            "avatar": "string",
            "cover": "string"
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": "string",
        "comment_count": "string",
        "vote_count": 0,
        "flag_count": "string",
        "addressing": [],
        "follower_count": "string",
        "seen_by_id": [
            null
        ],
        "has_boost": true,
        "actions": "string"
        }
    ]
}
```

<h3 id="searchdiscussion-responses">Responses</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[ListDiscussion](#schemalistdiscussion)]|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Get a specific Discussion

<a id="opIdretrieveDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/',
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

This endpoint retrieves a specific discussion using ID.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/discussion/{id}/`

<h3 id="retrievediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
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
            "hash_code": "af335630-a8db-4fe4-a49a-dd81ce5c2a80",
            "added_at": "2020-10-08T16:15:59.122041+02:00",
            "type": "url",
            "title": "Title",
            "description": "Description",
            "url": "https://www.example.com",
            "keywords": "[]",
            "entities": "[]",
            "image": "string",
            "image_width": 1500,
            "image_height": 1500,
            "oembed_type": null,
            "oembed_url": null,
            "oembed_width": null,
            "oembed_height": null,
            "oembed_duration": null,
            "oembed_html": null,
            "oembed_preview_ready": true,
            "oembed_available": true,
            "order": 0,
            "embed_type": null,
            "embed_id": null
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
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "comment_count": "string",
  "vote_count": 0,
  "flag_count": "string",
  "addressing": [],
  "follower_count": "string"
}
```

<h3 id="retrievediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Discussion](#schemadiscussion)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Update a specific Discussion

<a id="opIdupdateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/discussion/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "title": "string",
  "text": "string",
  "categories": [0],
  "medias": [0],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "poll": {
    "title": "string",
    "multiple_choices": true,
    "closed": true,
    "expiration_at": "2019-08-24T14:15:22Z",
    "choices": [
      {
        "choice": "string"
      }
    ]
  },
  "addressing": []
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/',
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

This endpoint update a specific discussion.

<h3 id="http-request">HTTP Request</h3>

`PUT /api/v2/discussion/{id}/`

> Body parameter

```json
{
  "title": "string",
  "text": "string",
  "categories": [0],
  "medias": [0],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "poll": {
    "title": "string",
    "multiple_choices": true,
    "closed": true,
    "expiration_at": "2019-08-24T14:15:22Z",
    "choices": [
      {
        "choice": "string"
      }
    ]
  },
  "addressing": []
}
```

<h3 id="updatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» title|body|string¦null|true|The title of the discussion|
|» text|body|string|false|The content of the discussion in html format|
|» categories|body|[integer]|true|List of id of [Category](#schemacategory)|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|The Location object to associate at the discussion|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the discussion|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» choices|body|[object]|true|none|
|»»» choice|body|string|true|none|
|» captcha|body|object|false|Required only when daily discussion limit is passed|
|»» hashkey|body|string|true|none|
|»» response|body|string|true|none|
|» addressing|body|[integer]|false|List of id of [Tag](#schematag)|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
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
            "hash_code": "af335630-a8db-4fe4-a49a-dd81ce5c2a80",
            "added_at": "2020-10-08T16:15:59.122041+02:00",
            "type": "url",
            "title": "Title",
            "description": "Description",
            "url": "https://www.example.com",
            "keywords": "[]",
            "entities": "[]",
            "image": "string",
            "image_width": 1500,
            "image_height": 1500,
            "oembed_type": null,
            "oembed_url": null,
            "oembed_width": null,
            "oembed_height": null,
            "oembed_duration": null,
            "oembed_html": null,
            "oembed_preview_ready": true,
            "oembed_available": true,
            "order": 0,
            "embed_type": null,
            "embed_id": null
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
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "comment_count": "string",
  "vote_count": 0,
  "flag_count": "string",
  "addressing": [],
  "follower_count": "string"
}
```

<h3 id="updatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateDiscussion](#schemaupdatediscussion)|

<aside class="notice">
This operation require authentication. The logged user must be the discussion creator
</aside>

## Delete a Discussion

<a id="opIddestroyDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/discussion/{id}/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/discussion/{id}/',
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

This Endpoint delete a Discussion.

<h3 id="http-request">HTTP Request</h3>

`DELETE /api/v2/discussion/{id}/`

<h3 id="destroydiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h3 id="destroydiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the discussion creator
</aside>

## Get list of related Discussions

<a id="opIdrelatedDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/related/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/related/',
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

This Endpoint retrieve related discussions

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/discussion/{id}/related/`

<h3 id="relateddiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|
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
        "id": 0,
        "title": "string",
        "slug": "string",
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
                    "hash_code": "af335630-a8db-4fe4-a49a-dd81ce5c2a80",
                    "added_at": "2020-10-08T16:15:59.122041+02:00",
                    "type": "url",
                    "title": "Title",
                    "description": "Description",
                    "url": "https://www.example.com",
                    "keywords": "[]",
                    "entities": "[]",
                    "image": "string",
                    "image_width": 1500,
                    "image_height": 1500,
                    "oembed_type": null,
                    "oembed_url": null,
                    "oembed_width": null,
                    "oembed_height": null,
                    "oembed_duration": null,
                    "oembed_html": null,
                    "oembed_preview_ready": true,
                    "oembed_available": true,
                    "order": 0,
                    "embed_type": null,
                    "embed_id": null
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
            "avatar": "string",
            "cover": "string"
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": "string",
        "comment_count": "string",
        "vote_count": 0,
        "flag_count": "string",
        "addressing": [],
        "follower_count": "string",
        "seen_by_id": [
            null
        ],
        "has_boost": true,
        "actions": "string"
        }
    ]
}
```

<h3 id="relateddiscussion-responses">Responses</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[Discussion](#schemadiscussion)]|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Get List of Votes for a Specific Discussion

<a id="opIdvoteDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/vote/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/vote/',
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
This endpoint retrieves all votes for a specific discussion.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/discussion/{id}/vote/`

<h3 id="votediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|
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

<h3 id="votediscussion-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[Vote](#schemavote)]|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Upvote for a Specific Discussion

<a id="opIdvoteCreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/vote/',
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

This Endpoint upvotes a specific discussion.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/discussion/{id}/vote/`

<h3 id="votecreatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h3 id="votecreatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

## Remove an Upvote for a Specific Discussion

<a id="opIdvoteRemoveDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/vote/',
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

This Endpoint removes an upvote for a specific discussion.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/discussion/{id}/vote/`

<h3 id="voteremovediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h3 id="voteremovediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

## Follow a Discussion

<a id="opIdfollowDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/follow/',
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

This endpoint follows a discussion.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/discussion/{id}/follow/`

<h3 id="followdiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h3 id="followdiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

## Unfollow a Discussion

<a id="opIdunfollowDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/follow/',
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

This endpoint unfollows a discussion.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/discussion/{id}/follow/`

<h3 id="unfollowdiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h3 id="unfollowdiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>
