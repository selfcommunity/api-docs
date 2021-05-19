<h2 id="selfcommunity-api-status">Status</h2>

### Get All Statuses

<a id="opIdlistStatuses"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/',
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

This endpoint retrieves all statuses.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/status/`

<h4 id="liststatus-parameters">Parameters</h4>

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
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": "string",
        "tags": [],
        "reputation": 111,
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
      ]
    }
  ]
}
```

<h4 id="liststatuses-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="liststatus-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Status](#schemastatus))|true|none|List of results|

<aside class="notice">
This operation requires authentication only if `content_availability` community option is false
</aside>

### Create a Status

<a id="opIdcreateStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/ \
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
  "addressing": []
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/',
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

This endpoint creates a status.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/`

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
  "addressing": []
}
```

<h4 id="createstatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» text|body|string|false|The content of the status in html format|
|» categories|body|list(integer)|true|List of id of [Category](#schemacategory)|
|» medias|body|list(integer)|false|List of id of [Media](#schemamedia)|
|» location|body|object¦null|false|The Location object to associate with the status|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
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
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string",
    "ext_id": "string",
    "tags": [],
    "reputation": 111,
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
  "addressing": []
}
```

<h4 id="createstatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Status](#schemastatus)|

<aside class="notice">
This operation requires authentication
</aside>

### Search a Status

<a id="opIdsearchStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/search/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/search/',
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

This endpoint performs search operation to statuses.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/status/search/`

<h4 id="searchstatus-parameters">Parameters</h4>

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
            "website": "http://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 111,
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
              "website": "http://example.com",
              "avatar": "string",
              "cover": "string",
              "ext_id": "string",
              "tags": [],
              "reputation": 111,
            }
          }
        ]
      }
    ]
}
```

<h4 id="searchstatus-responses">Responses</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([SearchStatus](#schemasearchstatus))|true|none|List of results|

<aside class="notice">
This operation requires authentication only if `content_availability` community option is false
</aside>

### Get a specific Status

<a id="opIdretrieveStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/',
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

This endpoint retrieves a specific status using ID.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/status/{id}/`

<h4 id="retrievestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

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
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string",
    "ext_id": "string",
    "tags": [],
    "reputation": 111,
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
  "addressing": []
}
```

<h4 id="retrievestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Status](#schemastatus)|

<aside class="notice">
This operation requires authentication only if `content_availability` community option is false
</aside>

### Update a specific Status

<a id="opIdupdateStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/status/{id}/ \
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
  "addressing": []
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/',
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

This endpoint update a specific status.

<h4 id="http-request">HTTP Request</h4>

`PUT /api/v2/status/{id}/`

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
  "addressing": []
}
```

<h4 id="updatestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» text|body|string|false|The content of the status in html format|
|» categories|body|list(integer)|true|List of id of [Category](#schemacategory)|
|» medias|body|list(integer)|false|List of id of [Media](#schemamedia)|
|» location|body|object¦null|false|The Location object to associate with the status|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
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
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string",
    "ext_id": "string",
    "tags": [],
    "reputation": 111,
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
  "addressing": []
}
```

<h4 id="updatestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateStatus](#schemaupdatestatus)|

<aside class="notice">
This operation requires authentication. The logged user must be the status creator
</aside>

### Delete a Status

<a id="opIddestroyStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/status/{id}/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/status/{id}/',
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

This endpoint deletes a Status.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/status/{id}/`

<h4 id="destroystatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

<h4 id="destroystatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication. The logged user must be the status creator
</aside>

### Restore a Status

<a id="opIdrestoreStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/restore/
  -H 'Authorization: Bearer {access_token}'

```

```javascript

fetch('/api/v2/status/{id}/restore/',
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

This endpoint restores a Status.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/{id}/restore/`

<h4 id="restorestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

<h4 id="restorestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication. The logged user must be the status creator
</aside>

### Get List of Votes for a Specific Status

<a id="opIdvoteStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/{id}/vote/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/vote/',
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
This endpoint retrieves all votes for a specific status.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/status/{id}/vote/`

<h4 id="votestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|
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
          ],
          "reputation":111
        },
        "voted_at": "2019-08-24T14:15:22Z"
        }
  ]
}
```

<h4 id="votestatus-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|true|none|Total results count|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|list([Vote](#schemavote))|true|none|List of results|

<aside class="notice">
This operation requires authentication only if `content_availability` community option is false
</aside>

### Upvote for a Specific Status

<a id="opIdvoteCreateStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/vote/ \
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

fetch('/api/v2/status/{id}/vote/',
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

This endpoint upvotes a specific status.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/{id}/vote/`

<h4 id="votecreatestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

<h4 id="votecreatestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

### Remove an Upvote for a Specific Status

<a id="opIdvoteCreateStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/vote/ \
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

fetch('/api/v2/status/{id}/vote/',
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

This endpoint removes an upvote for a specific status.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/{id}/vote/`

<h4 id="votecreatestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

<h4 id="voteremovestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>


### Get List of Flags for a Specific Status

<a id="opIdflagStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/{id}/flag/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/flag/',
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

This endpoint retrieves a List of Flags for a Specific Status.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/status/{id}/flag/`

<h4 id="flagstatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

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
            ],
            "reputation":111
          },
          "added_at": "2019-08-24T14:15:22Z",
          "flag_type": 0,
          "flag_type_description": "string"
        }
    ]
}
```

<h4 id="flagstatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation requires moderation role.
</aside>

### Flag a Specific Status

<a id="opIdflagCreateStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/flag/ \
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

fetch('/api/v2/status/{id}/flag/',
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

This endpoint flag a specific status.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="flagcreatestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|
flag_type|body|integer|true|A integer from 0 to 4|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|

<h4 id="flagcreatestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

### Unflag a Specific Status

<a id="opIdunflagCreateStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/flag/ \
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

fetch('/api/v2/status/{id}/flag/',
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

This endpoint removes a flag for a specific status.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/{id}/flag/`

> Body parameter

```json
{
  "flag_type": 0
}
```

<h4 id="unflagcreatestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|
flag_type|body|integer|true|A integer from 0 to 4|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|flag_type|0|spam|
|flag_type|1|aggressive|
|flag_type|2|vulgar|
|flag_type|3|poor|
|flag_type|4|offtopic|

<h4 id="unflagcreatestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

### Get Flag Status for a Specific Status

<a id="opIdflagStatusStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/{id}/flag/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/flag/status/',
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

`GET /api/v2/status/{id}/flag/status/`

<h4 id="flagstatusstatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

> Example responses

> 200 Response

```json
{
  "added_at": "2019-08-24T14:15:22Z",
  "flag_type": 0,
  "flag_type_description": "string"
}
```

<h4 id="flagstatusstatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation requires authentication
</aside>


### Hide a Specific Status

<a id="opIdhideStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/hide/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/hide/',
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

This Endpoint hide the [Status](#schemastatus) for the logged user. The status must be in show state.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/status/{id}/hide/`

<h4 id="hidestatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|


<h4 id="hidestatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

### Show a Specific Status

<a id="opIdshowStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/status/{id}/hide/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/hide/',
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

This Endpoint show the [Status](#schemastatus) for the logged user. The status must be in hidden state.

<h4 id="http-request">HTTP Request</h4>

`POST/api/v2/status/{id}/hide/`

<h4 id="showstatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|


<h4 id="showstatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

### Get Hide Status for a Specific Status

<a id="opIdhideStatusStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/status/{id}/hide/status/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/status/{id}/hide/status/',
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

This Endpoint retrieve if the logged user has hidden the [Status](#schemastatus).

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/status/{id}/hide/status/`

<h4 id="hidestatusstatus-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this status.|

> Example responses

> 200 Response

```json
{
  "hidden": false
}
```

<h4 id="hidestatusstatus-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Flag](#schemaflag)|

<aside class="notice">
This operation requires authentication
</aside>

