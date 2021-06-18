<h2 id="selfcommunity-api-post">Post</h2>

### Get All Posts

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/`

<h4 id="listposts-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|Which field to use when ordering the results. For sorting desc use - in front of the field name. Default to -added_at. Available values are added_at, last_activity_at|

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
        "tags": [],
        "reputation": 111,
        "followings_counter": 0,
        "followers_counter": 0,
        "posts_counter": 0,
        "discussions_counter": 0,
        "statuses_counter": 0,
        "polls_counter": 0
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": false,
      "comment_count": 0,
      "vote_count": 0,
      "voted": false,
      "flag_count": 0,
      "share_count": 0,
      "addressing": []
    }
  ]
}
```

<h4 id="listposts-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listposts-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Post](#schemapost))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Create a Post

<a id="opIdcreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
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
  }'
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
  'Content-Type':'application/json',
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

<h4 id="http-request">HTTP Request</h4>

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

<h4 id="createpost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» text|body|string|false|The content of the post in html format|
|» categories|body|list(integer)|true|List of id of [Category](#schemacategory)|
|» medias|body|list(integer)|false|List of id of [Media](#schemamedia)|
|» location|body|object¦null|false|The Location object to associate at the post|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the post|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|false|none|
|»» choices|body|list(object)|true|none|
|»»» choice|body|string|true|none|
|» addressing|body|list(integer)|false|List of id of [Tag](#schematag)|

> Example responses

> 201 Response

```json
{
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
    "tags": [],
    "reputation": 111,
    "followings_counter": 0,
    "followers_counter": 0,
    "posts_counter": 0,
    "discussions_counter": 0,
    "statuses_counter": 0,
    "polls_counter": 0
  },
  "added_at": "2019-08-24T14:15:22Z",
  "summary": "string",
  "deleted": true,
  "collapsed": false,
  "comment_count": 0,
  "vote_count": 0,
  "voted": false,
  "flag_count": 0,
  "share_count": 0,
  "addressing": []
}
```

<h4 id="createpost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Post](#schemapost)|

<aside class="notice">
This operation require authentication
</aside>

### Search a Post

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

This endpoint perform search operation to posts.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/search/`

<h4 id="searchpost-parameters">Parameters</h4>

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
            "tags": [],
            "reputation": 111,
            "followings_counter": 0,
            "followers_counter": 0,
            "posts_counter": 0,
            "discussions_counter": 0,
            "statuses_counter": 0,
            "polls_counter": 0
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 0,
        "vote_count": 0,
        "voted": false,
        "flag_count": 0,
        "share_count": 0,
        "addressing": [],
        "matches": [
          {
            "object": {
                "id": 238,
                "type": "comment",
                "added_at": "2020-10-19T16:05:34.974676+00:00",
                "html": "string"
            },
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
              "tags": [],
              "reputation": 111,
              "followings_counter": 0,
              "followers_counter": 0,
              "posts_counter": 0,
              "discussions_counter": 0,
              "statuses_counter": 0,
              "polls_counter": 0
            }
          }
        ]
      }
    ]
}
```

<h4 id="searchpost-responses">Responses</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([SearchPost](#schemasearchpost))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Get a specific Post

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/{id}/`

<h4 id="retrievepost-parameters">Parameters</h4>

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
    "tags": [],
    "reputation": 111,
    "followings_counter": 0,
    "followers_counter": 0,
    "posts_counter": 0,
    "discussions_counter": 0,
    "statuses_counter": 0,
    "polls_counter": 0
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": false,
  "comment_count": 0,
  "vote_count": 0,
  "voted": false,
  "flag_count": 0,
  "share_count": 0,
  "addressing": []
}
```

<h4 id="retrievepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Post](#schemapost)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Update a specific Post

<a id="opIdupdatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/post/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
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
  }'
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
  'Content-Type':'application/json',
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

<h4 id="http-request">HTTP Request</h4>

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

<h4 id="updatepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» text|body|string|false|The content of the post in html format|
|» categories|body|list(integer)|true|List of id of [Category](#schemacategory)|
|» medias|body|list(integer)|false|List of id of [Media](#schemamedia)|
|» location|body|object¦null|false|The Location object to associate at the post|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the post|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|false|none|
|»» choices|body|list(object)|true|none|
|»»» choice|body|string|true|none|
|» addressing|body|list(integer)|false|List of id of [Tag](#schematag)|

> Example responses

> 200 Response

```json
{
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
    "tags": [],
    "reputation": 111,
    "followings_counter": 0,
    "followers_counter": 0,
    "posts_counter": 0,
    "discussions_counter": 0,
    "statuses_counter": 0,
    "polls_counter": 0
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": false,
  "comment_count": 0,
  "vote_count": 0,
  "voted": false,
  "flag_count": 0,
  "share_count": 0,
  "addressing": []
}
```

<h4 id="updatepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdatePost](#schemaupdatepost)|

<aside class="notice">
This operation require authentication. The logged user must be the post creator
</aside>

### Delete a Post

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

This endpoint delete a Post.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/post/{id}/`

<h4 id="destroypost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h4 id="destroypost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the post creator
</aside>

### Restore a Post

<a id="opIdrestorePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/restore/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/post/{id}/restore/',
{
  method: 'POST',
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

This endpoint restore a Post.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/restore/`

<h4 id="restorepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h4 id="restorepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the post creator
</aside>

### Get List of Votes for a Specific Post

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/{id}/vote/`

<h4 id="votepost-parameters">Parameters</h4>

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
        "user": {
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
          "reputation":111,
          "followings_counter": 0,
          "followers_counter": 0,
          "posts_counter": 0,
          "discussions_counter": 0,
          "statuses_counter": 0,
          "polls_counter": 0
        },
        "voted_at": "2019-08-24T14:15:22Z"
        }
  ]
}
```

<h4 id="votepost-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Vote](#schemavote))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Upvote for a Specific Post

<a id="opIdvoteCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/vote/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/json',
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

This endpoint upvotes a specific post.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/vote/`

<h4 id="votecreatepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h4 id="votecreatepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Remove an Upvote for a Specific Post

<a id="opIdvoteCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/vote/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript
const headers = {
  'Content-Type':'application/json',
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

This endpoint removes an upvote for a specific post.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/vote/`

<h4 id="votecreatepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

<h4 id="voteremovepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get List of Poll Votes for a Specific Post

<a id="opIdpollvotePost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/poll/vote/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/poll/vote/',
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
This endpoint retrieves all poll votes for a specific post.
The `choice` parameter is used to filter the votes by a given poll choice of the poll.
If the post has no poll associated the response status code is [404](https://tools.ietf.org/html/rfc7231#section-6.5.4).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/{id}/poll/vote/`

<h4 id="pollvotepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|choice|query|integer|false|The `choice` id of the poll. If is specified the endpoint retrieves the votes of only that choice|

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
        "choice": "string",
        "user": {
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
          "reputation":111,
          "followings_counter": 0,
          "followers_counter": 0,
          "posts_counter": 0,
          "discussions_counter": 0,
          "statuses_counter": 0,
          "polls_counter": 0
        },
      }
  ]
}
```

<h4 id="pollvotepost-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([PollVote](#schemapollvote))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Upvote for a Specific Poll Choice

<a id="opIdpollvoteCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/poll/vote/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
  --data-raw '{
    "choice": 0
  }'
```

```javascript
const inputBody = {
  "choice": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/poll/vote/',
{
  method: 'POST',
  headers: headers,
  body: inputBody
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint upvotes a specific poll choice in a post.
If the post has no poll associated the response status code is [404](https://tools.ietf.org/html/rfc7231#section-6.5.4).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/poll/vote/`

<h4 id="pollvotecreatepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|choice|body|integer|true|A unique integer value identifying the choice to be upvoted.|

<h4 id="pollvotecreatepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Remove an Upvote for a Specific Poll Choice

<a id="opIdpollvoteRemovePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/poll/vote/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
  --data-raw '{
    "choice": 0
  }'
```

```javascript
const inputBody = {
  "choice": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/poll/vote/',
{
  method: 'POST',
  headers: headers,
  body: inputBody
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint remove an upvote from a specific poll choice in a post.
If the post has no poll associated the response status code is [404](https://tools.ietf.org/html/rfc7231#section-6.5.4).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/poll/vote/`

<h4 id="pollvoteremovepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|choice|body|integer|true|A unique integer value identifying the choice to be upvoted.|

<h4 id="pollvoteremovepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get List of Flags for a Specific Post

<a id="opIdflagPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/flag/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/flag/',
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

This endpoint retrieves a List of Flags for a Specific Post.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/{id}/flag/`

<h4 id="flagpost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

> Example responses

> 200 Response

```json
{
    "count": 1,
    "next": null,
    "previous": null,
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
            ],
            "reputation":111,
            "followings_counter": 0,
            "followers_counter": 0,
            "posts_counter": 0,
            "discussions_counter": 0,
            "statuses_counter": 0,
            "polls_counter": 0
          },
          "added_at": "2019-08-24T14:15:22Z",
          "flag_type": 0,
          "flag_type_description": "string"
        }
    ]
}
```

<h4 id="flagpost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require moderation role.
</aside>

### Flag a Specific Post

<a id="opIdflagCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/flag/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "flag_type": 0
  }'
```

```javascript
const inputBody = '{
  "flag_type": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/flag/',
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

This endpoint flag a specific post.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="flagcreatepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
flag_type|body|integer|true|A integer from 0 to 4|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|

<h4 id="flagcreatepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Unflag a Specific Post

<a id="opIdunflagCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/flag/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "flag_type": 0
  }'
```

```javascript
const inputBody = '{
  "flag_type": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/flag/',
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

This endpoint removes a flag for a specific post.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="unflagcreatepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
flag_type|body|integer|true|A integer from 0 to 4|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|

<h4 id="unflagcreatepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get Flag Status for a Specific Post

<a id="opIdflagStatusPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/flag/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/flag/status/',
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

Retrieve if exists a flag for this contribute created by the user logged

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/{id}/flag/status/`

<h4 id="flagstatuspost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

> Example responses

> 200 Response

```json
{
  "added_at": "2019-08-24T14:15:22Z",
  "flag_type": 0,
  "flag_type_description": "string"
}
```

<h4 id="flagstatuspost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require authentication
</aside>


### Hide a Specific Post

<a id="opIdhidePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/hide/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/hide/',
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

This Endpoint hide the [Post](#schemapost) for the logged user. The post must be in show state.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/post/{id}/hide/`

<h4 id="hidepost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|


<h4 id="hidepost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Show a Specific Post

<a id="opIdshowPost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/hide/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/hide/',
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

This Endpoint show the [Post](#schemapost) for the logged user. The post must be in hidden state.

<h4 id="http-request">HTTP Request</h4>

`POST/api/v2/post/{id}/hide/`

<h4 id="showpost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|


<h4 id="showpost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get Hide Status for a Specific Post

<a id="opIdhideStatusPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/hide/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/post/{id}/hide/status/',
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

This Endpoint retrieve if the logged user has hidden the [Post](#schemapost).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/post/{id}/hide/status/`

<h4 id="hidestatuspost-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

> Example responses

> 200 Response

```json
{
  "hidden": false
}
```

<h4 id="hidestatuspost-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require authentication
</aside>

