<h1 id="selfcommunity-api-post">Post</h1>

## Get All Posts

<a id="opIdlistPosts"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/',
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

This endpoint retrieves all posts.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/post/`

<h3 id="listposts-parameters">Parameters</h3>

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
      ]
    }
  ]
}
```

<h3 id="listposts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listposts-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[Post](#schemapost)]|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Create a Post

<a id="opIdcreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
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

fetch('/api/v2/post/',
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

This endpoint creates a post.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/post/`

> Body parameter

```json
{
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

<h3 id="createpost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» text|body|string|false|The content of the post in html format|
|» categories|body|[integer]|true|List of id of [Category](#schemacategory)|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|The Location object to associate at the post|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the post|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» choices|body|[object]|true|none|
|»»» choice|body|string|true|none|
|» addressing|body|[integer]|false|List of id of [Tag](#schematag)|

> Example responses

> 201 Response

```json
{
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
  "addressing": []
}
```

<h3 id="createpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Post](#schemapost)|

<aside class="notice">
This operation require authentication
</aside>

## Search a Post

<a id="opIdsearchPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/search/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/search/',
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

This Endpoint perform search operation to posts.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/post/search/`

<h3 id="searchpost-parameters">Parameters</h3>

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
        "seen_by_id": [
            null
        ],
        "has_boost": true,
        "actions": [
          null
        ]
        }
    ]
}
```

<h3 id="searchpost-responses">Responses</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[ListPost](#schemalistpost)]|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Get a specific Post

<a id="opIdretrievePost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/',
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

This endpoint retrieves a specific post using ID.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/post/{id}/`

<h3 id="retrievepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

> Example responses

> 200 Response

```json
{
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
  "addressing": []
}
```

<h3 id="retrievepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Post](#schemapost)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

## Update a specific Post

<a id="opIdupdatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/post/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
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

fetch('/api/v2/post/{id}/',
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

This endpoint update a specific post.

<h3 id="http-request">HTTP Request</h3>

`PUT /api/v2/post/{id}/`

> Body parameter

```json
{
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

<h3 id="updatepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» text|body|string|false|The content of the post in html format|
|» categories|body|[integer]|true|List of id of [Category](#schemacategory)|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|The Location object to associate at the post|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the post|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» choices|body|[object]|true|none|
|»»» choice|body|string|true|none|
|» addressing|body|[integer]|false|List of id of [Tag](#schematag)|

> Example responses

> 200 Response

```json
{
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
  "addressing": []
}
```

<h3 id="updatepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdatePost](#schemaupdatepost)|

<aside class="notice">
This operation require authentication. The logged user must be the post creator
</aside>

## Delete a Post

<a id="opIddestroyPost"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/post/{id}/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/post/{id}/',
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

This Endpoint delete a Post.

<h3 id="http-request">HTTP Request</h3>

`DELETE /api/v2/post/{id}/`

<h3 id="destroypost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h3 id="destroypost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the post creator
</aside>

## Get List of Votes for a Specific Post

<a id="opIdvotePost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/vote/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/vote/',
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
This endpoint retrieves all votes for a specific post.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/post/{id}/vote/`

<h3 id="votepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
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

<h3 id="votepost-responseschema">Response Schema</h3>

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

## Upvote for a Specific Post

<a id="opIdvoteCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/vote/ \
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

fetch('/api/v2/post/{id}/vote/',
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

This Endpoint upvotes a specific post.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/post/{id}/vote/`

<h3 id="votecreatepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h3 id="votecreatepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

## Remove an Upvote for a Specific Post

<a id="opIdvoteCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/vote/ \
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

fetch('/api/v2/post/{id}/vote/',
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

This Endpoint removes an upvote for a specific post.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/post/{id}/vote/`

<h3 id="votecreatepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h3 id="voteremovepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>
