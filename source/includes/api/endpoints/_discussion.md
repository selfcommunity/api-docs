<h2 id="selfcommunity-api-discussion">Discussion</h2>

### Get All Discussions

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/`

<h4 id="listdiscussions-parameters">Parameters</h4>

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
      "view_count": 0,
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
        "reputation": 111
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": false,
      "comment_count": 0,
      "share_count": 0,
      "vote_count": 0,
      "voted": false,
      "flag_count": 0,
      "addressing": [
        0
      ],
      "follower_count": "string"
    }
  ]
}
```

<h4 id="listdiscussions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listdiscussions-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Discussion](#schemadiscussion))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Get All Uncommented Discussions

<a id="opIdlistUncommentedDiscussions"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/uncommented/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/uncommented/',
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

This endpoint retrieves all uncommented discussions.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/uncommented/`

<h4 id="listuncommenteddiscussions-parameters">Parameters</h4>

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
    {
      "id": 0,
      "categories": [
        {
          "id": 0,
          "tags": [],
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
        "reputation": 111
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
      "addressing": [0],
      "title": "string",
      "slug": "string",
      "view_count": 0,
      "follower_count": 0
    }
  ]
}
```

<h4 id="listuncommenteddiscussions-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listuncommenteddiscussions-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Discussion](#schemadiscussion))|true|none|List of results|

<aside class="notice">
This operation require authentication
</aside>

### Search a Discussion

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

This endpoint perform search operation to discussions.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/search/`

<h4 id="searchdiscussion-parameters">Parameters</h4>

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
        "view_count": 0,
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
            "reputation": 111
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 0,
        "share_count": 0,
        "vote_count": 0,
        "voted": false,
        "flag_count": 0,
        "addressing": [],
        "follower_count": "string",
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
              "reputation": 111
            }
          }
        ]
      }
    ]
}
```

<h4 id="searchdiscussion-responses">Responses</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([SearchDiscussion](#schemasearchdiscussion))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>


### Create a Discussion

<a id="opIdcreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
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
  }'
```

```javascript
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
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

<h4 id="http-request">HTTP Request</h4>

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
  "addressing": []
}
```

<h4 id="creatediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» title|body|string¦null|true|The title of the discussion|
|» text|body|string|false|The content of the discussion in html format, it can contain some [mentions](#selfcommunity-api-mention)|
|» categories|body|list(integer)|true|List of id of [Category](#schemacategory)|
|» medias|body|list(integer)|false|List of id of [Media](#schemamedia)|
|» location|body|object¦null|false|The Location object to associate at the discussion|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the discussion|
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
  "view_count": 0,
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
    "reputation": 111
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": false,
  "comment_count": 0,
  "share_count": 0,
  "vote_count": 0,
  "voted": false,
  "flag_count": 0,
  "addressing": [],
  "follower_count": "string"
}
```

<h4 id="creatediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Discussion](#schemadiscussion)|

<aside class="notice">
This operation require authentication
</aside>

### Get a specific Discussion

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/{id}/`

<h4 id="retrievediscussion-parameters">Parameters</h4>

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
  "view_count": 0,
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
    "reputation": 111
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": false,
  "comment_count": 0,
  "share_count": 0,
  "vote_count": 0,
  "voted": false,
  "flag_count": 0,
  "addressing": [],
  "follower_count": "string"
}
```

<h4 id="retrievediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Discussion](#schemadiscussion)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Update a specific Discussion

<a id="opIdupdateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/discussion/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
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
  }'
```

```javascript
const inputBody = {
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
};
const headers = {
  'Content-Type':'application/json',
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

<h4 id="http-request">HTTP Request</h4>

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

<h4 id="updatediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion|
|» title|body|string¦null|true|The title of the discussion|
|» text|body|string|false|The content of the discussion in html format, it can contain some [mentions](#selfcommunity-api-mention)|
|» categories|body|list(integer)|true|List of id of [Category](#schemacategory)|
|» medias|body|list(integer)|false|List of id of [Media](#schemamedia)|
|» location|body|object¦null|false|The Location object to associate at the discussion|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|The poll object to associate at the discussion|
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
  "view_count": 0,
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
    "reputation": 111
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": false,
  "comment_count": 0,
  "share_count": 0,
  "vote_count": 0,
  "voted": false,
  "flag_count": 0,
  "addressing": [],
  "follower_count": "string"
}
```

<h4 id="updatediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateDiscussion](#schemaupdatediscussion)|

<aside class="notice">
This operation require authentication. The logged user must be the discussion creator
</aside>

### Delete a Discussion

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

This endpoint delete a Discussion.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/discussion/{id}/`

<h4 id="destroydiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h4 id="destroydiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the discussion creator
</aside>

### Restore a Discussion

<a id="opIdrestoreDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/restore/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/discussion/{id}/restore/',
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

This endpoint restore a Discussion.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/discussion/{id}/restore/`

<h4 id="restorediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h4 id="restorediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication. The logged user must be the discussion creator
</aside>

### Get list of related Discussions

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

This endpoint retrieve related discussions

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/{id}/related/`

<h4 id="relateddiscussion-parameters">Parameters</h4>

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
        "view_count": 0,
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
            "reputation": 111
        },
        "added_at": "2019-08-24T14:15:22Z",
        "html": "string",
        "summary": "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 0,
        "share_count": 0,
        "vote_count": 0,
        "voted": false,
        "flag_count": 0,
        "addressing": [],
        "follower_count": "string"
      }
    ]
}
```

<h4 id="relateddiscussion-responses">Responses</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Discussion](#schemadiscussion))|true|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false
</aside>

### Get List of Votes for a Specific Discussion

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

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/{id}/vote/`

<h4 id="votediscussion-parameters">Parameters</h4>

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
          "reputation":111
        },
        "voted_at": "2019-08-24T14:15:22Z"
      }
  ]
}
```

<h4 id="votediscussion-responseschema">Response Schema</h4>

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

### Upvote for a Specific Discussion

<a id="opIdvoteCreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/vote/ \
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

This endpoint upvotes a specific discussion.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/vote/`

<h4 id="votecreatediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h4 id="votecreatediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Remove an Upvote for a Specific Discussion

<a id="opIdvoteRemoveDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/vote/ \
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

This endpoint removes an upvote for a specific discussion.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/vote/`

<h4 id="voteremovediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h4 id="voteremovediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get List of Poll Votes for a Specific Discussion

<a id="opIdpollvoteDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/poll/vote/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/poll/vote/',
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
This endpoint retrieves all poll votes for a specific discussion.
The `choice` parameter is used to filter the votes by a given poll choice of the poll.
If the discussion has no poll associated the response status code is [404](https://tools.ietf.org/html/rfc7231#section-6.5.4).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/{id}/poll/vote/`

<h4 id="pollvotediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|
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
          "reputation":111
        }
      }
  ]
}
```

<h4 id="pollvotediscussion-responseschema">Response Schema</h4>

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

<a id="opIdpollvoteCreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/poll/vote/ \
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

fetch('/api/v2/discussion/{id}/poll/vote/',
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

This endpoint upvotes a specific poll choice in a discussion.
If the discussion has no poll associated the response status code is [404](https://tools.ietf.org/html/rfc7231#section-6.5.4).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/poll/vote/`

<h4 id="pollvotecreatediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|
|choice|body|integer|true|A unique integer value identifying the choice to be upvoted.|

<h4 id="pollvotecreatediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Remove an Upvote for a Specific Poll Choice

<a id="opIdpollvoteRemoveDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/poll/vote/ \
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

fetch('/api/v2/discussion/{id}/poll/vote/',
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

This endpoint remove an upvote from a specific poll choice in a discussion.
If the discussion has no poll associated the response status code is [404](https://tools.ietf.org/html/rfc7231#section-6.5.4).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/poll/vote/`

<h4 id="pollvoteremovediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|
|choice|body|integer|true|A unique integer value identifying the choice to be upvoted.|

<h4 id="pollvoteremovediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Follow a Discussion

<a id="opIdfollowDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/follow/ \
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

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/follow/`

<h4 id="followdiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h4 id="followdiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Unfollow a Discussion

<a id="opIdunfollowDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/follow/ \
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

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/follow/`

<h4 id="unfollowdiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

<h4 id="unfollowdiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>


### Get List of Flags for a Specific Discussion

<a id="opIdflagDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/flag/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/flag/',
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

This endpoint retrieves a List of Flags for a Specific Discussion.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/{id}/flag/`

<h4 id="flagdiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

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
            ]
          },
          "added_at": "2019-08-24T14:15:22Z",
          "flag_type": 0,
          "flag_type_description": "string"
        }
    ]
}
```

<h4 id="flagdiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require moderation role.
</aside>

### Flag a Specific Discussion

<a id="opIdflagCreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/flag/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const inputBody = {
  "flag_type": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/flag/',
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

This endpoint flag a specific discussion.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="flagcreatediscussion-parameters">Parameters</h4>

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

<h4 id="flagcreatediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Unflag a Specific Discussion

<a id="opIdunflagCreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/flag/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const inputBody = {
  "flag_type": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/flag/',
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

This endpoint removes a flag for a specific discussion.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="unflagcreatediscussion-parameters">Parameters</h4>

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

<h4 id="unflagcreatediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get Flag Status for a Specific Discussion

<a id="opIdflagStatusDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/flag/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/flag/status/',
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

`GET /api/v2/discussion/{id}/flag/status/`

<h4 id="flagstatusdiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

> Example responses

> 200 Response

```json
{
  "added_at": "2019-08-24T14:15:22Z",
  "flag_type": 0,
  "flag_type_description": "string"
}
```

<h4 id="flagstatusdiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require authentication
</aside>

### Hide a Specific Discussion

<a id="opIdhideDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/hide/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/hide/',
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

This Endpoint hide the [Discussion](#schemadiscussion) for the logged user. The discussion must be in show state.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/hide/`

<h4 id="hidediscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|


<h4 id="hidediscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Show a Specific Discussion

<a id="opIdshowDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST/api/v2/discussion/{id}/hide/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/hide/',
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

This Endpoint show the [Discussion](#schemadiscussion) for the logged user. The discussion must be in hidden state.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/discussion/{id}/hide/`

<h4 id="showdiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|


<h4 id="showdiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication
</aside>

### Get Hide Status for a Specific Discussion

<a id="opIdhideStatusDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/hide/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/discussion/{id}/hide/status/',
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

This Endpoint retrieve if the logged user has hidden the [Discussion](#schemadiscussion).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/discussion/{id}/hide/status/`

<h4 id="hidestatusdiscussion-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this discussion.|

> Example responses

> 200 Response

```json
{
  "hidden": false
}
```

<h4 id="hidestatusdiscussion-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation require authentication
</aside>
