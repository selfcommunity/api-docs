<h1 id="selfcommunity-api-captcha">captcha</h1>

## listCaptchaRefreshs

<a id="opIdlistCaptchaRefreshs"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/captcha/refresh \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/captcha/refresh', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/captcha/refresh',
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

`GET /api/v2/captcha/refresh`

Refresh the captcha

<h3 id="listcaptcharefreshs-parameters">Parameters</h3>

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
      "key": "string",
      "image_url": "http://example.com",
      "audio_url": "http://example.com"
    }
  ]
}
```

<h3 id="listcaptcharefreshs-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listcaptcharefreshs-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[CaptchaRefresh](#schemacaptcharefresh)]|false|none|none|
|»» key|string|true|none|none|
|»» image_url|string(uri)|true|none|none|
|»» audio_url|string(uri)|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-locality">locality</h1>

## listLocalitys

<a id="opIdlistLocalitys"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/locality/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/locality/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/locality/',
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

`GET /api/v2/locality/`

A viewset that provides CRUD actions for the locality

<h3 id="listlocalitys-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
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
      "full_address": "string",
      "postal_code": "string",
      "town": "string",
      "province": "string",
      "province_short": "string",
      "region": "string",
      "country": "string",
      "lat": 0,
      "lng": 0
    }
  ]
}
```

<h3 id="listlocalitys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listlocalitys-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Locality](#schemalocality)]|false|none|none|
|»» full_address|string|false|read-only|none|
|»» postal_code|string|false|read-only|none|
|»» town|string|false|read-only|none|
|»» province|string|false|read-only|none|
|»» province_short|string|false|read-only|none|
|»» region|string|false|read-only|none|
|»» country|string|false|read-only|none|
|»» lat|number|false|read-only|none|
|»» lng|number|false|read-only|none|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-post">post</h1>

## listPosts

<a id="opIdlistPosts"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/post/`

List the posts for homepage

<h3 id="listposts-parameters">Parameters</h3>

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
      "title": "string",
      "slug": "string",
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ],
      "seen_by_id": [
        null
      ],
      "has_boost": true,
      "latest_activities": "string"
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
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[ListPost](#schemalistpost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|
|»» seen_by_id|[any]|false|none|none|
|»» has_boost|boolean|false|none|none|
|»» latest_activities|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## createPost

<a id="opIdcreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "title": "string",
  "text": "string",
  "tags": [
    0
  ],
  "medias": [
    0
  ],
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
    ],
    "votes": [
      {}
    ]
  },
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "user_tags": [
    {}
  ],
  "addressing": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/post/`

A viewset that provides CRUD actions for the post

> Body parameter

```json
{
  "title": "string",
  "text": "string",
  "tags": [
    0
  ],
  "medias": [
    0
  ],
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
    ],
    "votes": [
      {}
    ]
  },
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "user_tags": [
    {}
  ],
  "addressing": [
    0
  ]
}
```

```yaml
title: string
text: string
tags:
  - 0
medias:
  - 0
location:
  location: string
  lat: 0
  lng: 0
poll:
  title: string
  multiple_choices: true
  closed: true
  expiration_at: 2019-08-24T14:15:22Z
  choices:
    - choice: string
  votes:
    - {}
captcha:
  hashkey: string
  response: string
user_tags:
  - {}
addressing:
  - 0

```

<h3 id="createpost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[WritablePost](#schemawritablepost)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
  ],
  "media_type": "images",
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="createpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[WritablePost](#schemawritablepost)|

<aside class="success">
This operation does not require authentication
</aside>

## listExplorePost

<a id="opIdlistExplorePost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/explore/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/explore/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/post/explore/',
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

`GET /api/v2/post/explore/`

List posts for explore

<h3 id="listexplorepost-parameters">Parameters</h3>

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
      "title": "string",
      "slug": "string",
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ]
    }
  ]
}
```

<h3 id="listexplorepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listexplorepost-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Post](#schemapost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## listExploreWidgetPost

<a id="opIdlistExploreWidgetPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/explore/widget/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/explore/widget/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/post/explore/widget/',
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

`GET /api/v2/post/explore/widget/`

List tools for explore

<h3 id="listexplorewidgetpost-parameters">Parameters</h3>

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
      "name": "string",
      "position": "string",
      "column": "string",
      "index": 0,
      "page": 0,
      "page_index": 0,
      "visible": true
    }
  ]
}
```

<h3 id="listexplorewidgetpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listexplorewidgetpost-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Widget](#schemawidget)]|false|none|none|
|»» name|string|false|read-only|none|
|»» position|string|true|none|none|
|»» column|string|true|none|none|
|»» index|integer|true|none|none|
|»» page|integer|true|none|none|
|»» page_index|integer|true|none|none|
|»» visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## listUncommentedPost

<a id="opIdlistUncommentedPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/uncommented/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/uncommented/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/post/uncommented/',
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

`GET /api/v2/post/uncommented/`

List uncommented posts

<h3 id="listuncommentedpost-parameters">Parameters</h3>

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
      "title": "string",
      "slug": "string",
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ]
    }
  ]
}
```

<h3 id="listuncommentedpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listuncommentedpost-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Post](#schemapost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## listUncommentedWidgetPost

<a id="opIdlistUncommentedWidgetPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/uncommented/widget/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/uncommented/widget/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/post/uncommented/widget/',
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

`GET /api/v2/post/uncommented/widget/`

List tools for uncommented

<h3 id="listuncommentedwidgetpost-parameters">Parameters</h3>

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
      "name": "string",
      "position": "string",
      "column": "string",
      "index": 0,
      "page": 0,
      "page_index": 0,
      "visible": true
    }
  ]
}
```

<h3 id="listuncommentedwidgetpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listuncommentedwidgetpost-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Widget](#schemawidget)]|false|none|none|
|»» name|string|false|read-only|none|
|»» position|string|true|none|none|
|»» column|string|true|none|none|
|»» index|integer|true|none|none|
|»» page|integer|true|none|none|
|»» page_index|integer|true|none|none|
|»» visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## listWidgetPost

<a id="opIdlistWidgetPost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/widget/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/widget/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/post/widget/',
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

`GET /api/v2/post/widget/`

List tools for homepage

<h3 id="listwidgetpost-parameters">Parameters</h3>

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
      "name": "string",
      "position": "string",
      "column": "string",
      "index": 0,
      "page": 0,
      "page_index": 0,
      "visible": true
    }
  ]
}
```

<h3 id="listwidgetpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listwidgetpost-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Widget](#schemawidget)]|false|none|none|
|»» name|string|false|read-only|none|
|»» position|string|true|none|none|
|»» column|string|true|none|none|
|»» index|integer|true|none|none|
|»» page|integer|true|none|none|
|»» page_index|integer|true|none|none|
|»» visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## retrievePost

<a id="opIdretrievePost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/{id}/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/post/{id}/`

A viewset that provides CRUD actions for the post

<h3 id="retrievepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="retrievepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Post](#schemapost)|

<aside class="success">
This operation does not require authentication
</aside>

## updatePost

<a id="opIdupdatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/post/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/post/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "title": "string",
  "text": "string",
  "tags": [
    0
  ],
  "medias": [
    0
  ],
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
    ],
    "votes": [
      {}
    ]
  },
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "user_tags": [
    {}
  ],
  "addressing": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`PUT /api/v2/post/{id}/`

A viewset that provides CRUD actions for the post

> Body parameter

```json
{
  "title": "string",
  "text": "string",
  "tags": [
    0
  ],
  "medias": [
    0
  ],
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
    ],
    "votes": [
      {}
    ]
  },
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "user_tags": [
    {}
  ],
  "addressing": [
    0
  ]
}
```

```yaml
title: string
text: string
tags:
  - 0
medias:
  - 0
location:
  location: string
  lat: 0
  lng: 0
poll:
  title: string
  multiple_choices: true
  closed: true
  expiration_at: 2019-08-24T14:15:22Z
  choices:
    - choice: string
  votes:
    - {}
captcha:
  hashkey: string
  response: string
user_tags:
  - {}
addressing:
  - 0

```

<h3 id="updatepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|body|body|[WritablePost](#schemawritablepost)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
  ],
  "media_type": "images",
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="updatepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[WritablePost](#schemawritablepost)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdatePost

<a id="opIdpartialUpdatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/post/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/post/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/{id}/',
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

`PATCH /api/v2/post/{id}/`

A viewset that provides CRUD actions for the post

> Body parameter

```json
{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}
```

```yaml
location:
  location: string
  lat: 0
  lng: 0
poll:
  title: string
  multiple_choices: true
  closed: true
  expiration_at: 2019-08-24T14:15:22Z
  choices:
    - choice: string
  votes:
    - {}
media_objects:
  - source: scrape
    url: http://example.com
    image: string
    order: 0
user_tags:
  - {}

```

<h3 id="partialupdatepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|body|body|[Post](#schemapost)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="partialupdatepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Post](#schemapost)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyPost

<a id="opIddestroyPost"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/post/{id}/

```

```python
import requests

r = requests.delete('/api/v2/post/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/post/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/post/{id}/`

A viewset that provides CRUD actions for the post

<h3 id="destroypost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|

<h3 id="destroypost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## votePost

<a id="opIdvotePost"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/post/{id}/vote/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/post/{id}/vote/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/post/{id}/vote/`

List votes for this contribute

<h3 id="votepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|

> Example responses

> 200 Response

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="votepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Vote](#schemavote)|

<aside class="success">
This operation does not require authentication
</aside>

## voteCreatePost

<a id="opIdvoteCreatePost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/{id}/vote/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/{id}/vote/',
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

`POST /api/v2/post/{id}/vote/`

Execute vote for this contribute

> Body parameter

```json
{}
```

```yaml
{}

```

<h3 id="votecreatepost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|body|body|[Vote](#schemavote)|false|none|

> Example responses

> 201 Response

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="votecreatepost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Vote](#schemavote)|

<aside class="success">
This operation does not require authentication
</aside>

## createMediaChunk

<a id="opIdcreateMediaChunk"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/media/upload/chunk/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/media/upload/chunk/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/media/upload/chunk/',
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

`POST /api/v2/post/media/upload/chunk/`

Handle POST requests.

> Body parameter

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}
```

```yaml
upload_id: string
offset: string
expires: string

```

<h3 id="createmediachunk-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ChunkMedia](#schemachunkmedia)|false|none|

> Example responses

> 201 Response

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}
```

<h3 id="createmediachunk-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ChunkMedia](#schemachunkmedia)|

<aside class="success">
This operation does not require authentication
</aside>

## createMediaChunkComplete

<a id="opIdcreateMediaChunkComplete"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/media/upload/complete/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/media/upload/complete/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "source": "scrape",
  "url": "http://example.com",
  "image": "string",
  "order": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/media/upload/complete/',
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

`POST /api/v2/post/media/upload/complete/`

Handle POST requests.

> Body parameter

```json
{
  "source": "scrape",
  "url": "http://example.com",
  "image": "string",
  "order": 0
}
```

```yaml
source: scrape
url: http://example.com
image: string
order: 0

```

<h3 id="createmediachunkcomplete-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Media](#schemamedia)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "source": "scrape",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "photo",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ]
}
```

<h3 id="createmediachunkcomplete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Media](#schemamedia)|

<aside class="success">
This operation does not require authentication
</aside>

## createMediaObject

<a id="opIdcreateMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/media/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/media/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "url": "http://example.com",
  "service": "default",
  "selected_image_url": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/media/',
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

`POST /api/v2/post/media/`

Viewset for media objects

> Body parameter

```json
{
  "url": "http://example.com",
  "service": "default",
  "selected_image_url": "http://example.com"
}
```

```yaml
url: http://example.com
service: default
selected_image_url: http://example.com

```

<h3 id="createmediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[WritableMedia](#schemawritablemedia)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "source": "scrape",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "photo",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ]
}
```

<h3 id="createmediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[WritableMedia](#schemawritablemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## flagPost

<a id="opIdflagPost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/flag/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/flag/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/flag/',
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

`POST /api/v2/post/flag/`

Execute flag for this post

> Body parameter

```json
{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}
```

```yaml
location:
  location: string
  lat: 0
  lng: 0
poll:
  title: string
  multiple_choices: true
  closed: true
  expiration_at: 2019-08-24T14:15:22Z
  choices:
    - choice: string
  votes:
    - {}
media_objects:
  - source: scrape
    url: http://example.com
    image: string
    order: 0
user_tags:
  - {}

```

<h3 id="flagpost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Post](#schemapost)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="flagpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Post](#schemapost)|

<aside class="success">
This operation does not require authentication
</aside>

## followPost

<a id="opIdfollowPost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/follow/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/follow/',
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

`POST /api/v2/post/follow/`

Execute follow of post

> Body parameter

```json
{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}
```

```yaml
location:
  location: string
  lat: 0
  lng: 0
poll:
  title: string
  multiple_choices: true
  closed: true
  expiration_at: 2019-08-24T14:15:22Z
  choices:
    - choice: string
  votes:
    - {}
media_objects:
  - source: scrape
    url: http://example.com
    image: string
    order: 0
user_tags:
  - {}

```

<h3 id="followpost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Post](#schemapost)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="followpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Post](#schemapost)|

<aside class="success">
This operation does not require authentication
</aside>

## likeThisPost

<a id="opIdlikeThisPost"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/post/likethis/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/post/likethis/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/likethis/',
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

`POST /api/v2/post/likethis/`

Execute like this for the list of retrieved threads

> Body parameter

```json
{
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
    ],
    "votes": [
      {}
    ]
  },
  "media_objects": [
    {
      "source": "scrape",
      "url": "http://example.com",
      "image": "string",
      "order": 0
    }
  ],
  "user_tags": [
    {}
  ]
}
```

```yaml
location:
  location: string
  lat: 0
  lng: 0
poll:
  title: string
  multiple_choices: true
  closed: true
  expiration_at: 2019-08-24T14:15:22Z
  choices:
    - choice: string
  votes:
    - {}
media_objects:
  - source: scrape
    url: http://example.com
    image: string
    order: 0
user_tags:
  - {}

```

<h3 id="likethispost-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Post](#schemapost)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}
```

<h3 id="likethispost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Post](#schemapost)|

<aside class="success">
This operation does not require authentication
</aside>

## updateMediaObject

<a id="opIdupdateMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/post/media/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/post/media/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "url": "http://example.com",
  "service": "default",
  "selected_image_url": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/media/{id}/',
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

`PUT /api/v2/post/media/{id}/`

Viewset for media objects

> Body parameter

```json
{
  "url": "http://example.com",
  "service": "default",
  "selected_image_url": "http://example.com"
}
```

```yaml
url: http://example.com
service: default
selected_image_url: http://example.com

```

<h3 id="updatemediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|body|body|[WritableMedia](#schemawritablemedia)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "source": "scrape",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "photo",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ]
}
```

<h3 id="updatemediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[WritableMedia](#schemawritablemedia)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateMediaObject

<a id="opIdpartialUpdateMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/post/media/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/post/media/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "source": "scrape",
  "url": "http://example.com",
  "image": "string",
  "order": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/post/media/{id}/',
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

`PATCH /api/v2/post/media/{id}/`

Viewset for media objects

> Body parameter

```json
{
  "source": "scrape",
  "url": "http://example.com",
  "image": "string",
  "order": 0
}
```

```yaml
source: scrape
url: http://example.com
image: string
order: 0

```

<h3 id="partialupdatemediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|
|body|body|[Media](#schemamedia)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "source": "scrape",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "photo",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ]
}
```

<h3 id="partialupdatemediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Media](#schemamedia)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyMediaObject

<a id="opIddestroyMediaObject"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/post/media/{id}/

```

```python
import requests

r = requests.delete('/api/v2/post/media/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/post/media/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/post/media/{id}/`

Viewset for media objects

<h3 id="destroymediaobject-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this media object.|

<h3 id="destroymediaobject-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-comment">comment</h1>

## listComments

<a id="opIdlistComments"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/comment/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/comment/',
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

`GET /api/v2/comment/`

A viewset that provides CRUD actions for the comment

<h3 id="listcomments-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|post|query|string|false|The filter term.|
|parent|query|string|false|The filter term.|
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
      "post": 0,
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": true,
      "parent": 0,
      "in_reply_to": 0,
      "score": "string",
      "latest_comments": "string"
    }
  ]
}
```

<h3 id="listcomments-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listcomments-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Comment](#schemacomment)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» post|integer¦null|false|none|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|boolean|false|read-only|none|
|»» parent|integer¦null|false|none|none|
|»» in_reply_to|integer¦null|false|none|none|
|»» score|string|false|read-only|none|
|»» latest_comments|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<aside class="success">
This operation does not require authentication
</aside>

## createComment

<a id="opIdcreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/comment/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "post": 0,
  "text": "string",
  "parent": 0,
  "in_reply_to": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/comment/',
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

`POST /api/v2/comment/`

A viewset that provides CRUD actions for the comment

> Body parameter

```json
{
  "post": 0,
  "text": "string",
  "parent": 0,
  "in_reply_to": 0
}
```

```yaml
post: 0
text: string
parent: 0
in_reply_to: 0

```

<h3 id="createcomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[WritableComment](#schemawritablecomment)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string"
}
```

<h3 id="createcomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[WritableComment](#schemawritablecomment)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveComment

<a id="opIdretrieveComment"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/{id}/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/comment/{id}/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/comment/{id}/',
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

`GET /api/v2/comment/{id}/`

A viewset that provides CRUD actions for the comment

<h3 id="retrievecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|ordering|query|string|false|Which field to use when ordering the results.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string",
  "latest_comments": "string"
}
```

<h3 id="retrievecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Comment](#schemacomment)|

<aside class="success">
This operation does not require authentication
</aside>

## updateComment

<a id="opIdupdateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/comment/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/comment/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "post": 0,
  "text": "string",
  "parent": 0,
  "in_reply_to": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/comment/{id}/',
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

`PUT /api/v2/comment/{id}/`

A viewset that provides CRUD actions for the comment

> Body parameter

```json
{
  "post": 0,
  "text": "string",
  "parent": 0,
  "in_reply_to": 0
}
```

```yaml
post: 0
text: string
parent: 0
in_reply_to: 0

```

<h3 id="updatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|ordering|query|string|false|Which field to use when ordering the results.|
|body|body|[WritableComment](#schemawritablecomment)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string"
}
```

<h3 id="updatecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[WritableComment](#schemawritablecomment)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateComment

<a id="opIdpartialUpdateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/comment/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/comment/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "post": 0,
  "parent": 0,
  "in_reply_to": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/comment/{id}/',
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

`PATCH /api/v2/comment/{id}/`

A viewset that provides CRUD actions for the comment

> Body parameter

```json
{
  "post": 0,
  "parent": 0,
  "in_reply_to": 0
}
```

```yaml
post: 0
parent: 0
in_reply_to: 0

```

<h3 id="partialupdatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|ordering|query|string|false|Which field to use when ordering the results.|
|body|body|[Comment](#schemacomment)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string",
  "latest_comments": "string"
}
```

<h3 id="partialupdatecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Comment](#schemacomment)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyComment

<a id="opIddestroyComment"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/comment/{id}/

```

```python
import requests

r = requests.delete('/api/v2/comment/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/comment/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/comment/{id}/`

A viewset that provides CRUD actions for the comment

<h3 id="destroycomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|ordering|query|string|false|Which field to use when ordering the results.|

<h3 id="destroycomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## voteComment

<a id="opIdvoteComment"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/comment/{id}/vote/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/comment/{id}/vote/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/comment/{id}/vote/',
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

`GET /api/v2/comment/{id}/vote/`

List votes for this contribute

<h3 id="votecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|

> Example responses

> 200 Response

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="votecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Vote](#schemavote)|

<aside class="success">
This operation does not require authentication
</aside>

## voteCreateComment

<a id="opIdvoteCreateComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/comment/{id}/vote/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/comment/{id}/vote/',
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

`POST /api/v2/comment/{id}/vote/`

Execute vote for this contribute

> Body parameter

```json
{}
```

```yaml
{}

```

<h3 id="votecreatecomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this post.|
|body|body|[Vote](#schemavote)|false|none|

> Example responses

> 201 Response

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="votecreatecomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Vote](#schemavote)|

<aside class="success">
This operation does not require authentication
</aside>

## flagComment

<a id="opIdflagComment"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/comment/flag/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/comment/flag/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "post": 0,
  "parent": 0,
  "in_reply_to": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/comment/flag/',
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

`POST /api/v2/comment/flag/`

Execute flag fot this contribute

> Body parameter

```json
{
  "post": 0,
  "parent": 0,
  "in_reply_to": 0
}
```

```yaml
post: 0
parent: 0
in_reply_to: 0

```

<h3 id="flagcomment-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Comment](#schemacomment)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string",
  "latest_comments": "string"
}
```

<h3 id="flagcomment-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Comment](#schemacomment)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-category">category</h1>

## listCategorys

<a id="opIdlistCategorys"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/',
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

`GET /api/v2/category/`

A viewset that provides CRUD actions for the pod

<h3 id="listcategorys-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
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
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
  ]
}
```

<h3 id="listcategorys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listcategorys-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Category](#schemacategory)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» name|string|true|none|none|
|»» slug|string|true|none|none|
|»» html_info|string¦null|false|none|none|
|»» image_original|string(binary)¦null|false|none|none|
|»» image_bigger|string(binary)|false|read-only|none|
|»» image_big|string(binary)|false|read-only|none|
|»» image_medium|string(binary)|false|read-only|none|
|»» image_small|string(binary)|false|read-only|none|
|»» emotional_image_original|string(binary)¦null|false|none|none|
|»» emotional_image_position|integer|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## createCategory

<a id="opIdcreateCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/category/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/category/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/category/',
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

`POST /api/v2/category/`

A viewset that provides CRUD actions for the pod

> Body parameter

```json
{
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

```yaml
name: string
slug: string
html_info: string
image_original: string
emotional_image_original: string
emotional_image_position: -2147483648

```

<h3 id="createcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Category](#schemacategory)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

<h3 id="createcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Category](#schemacategory)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveCategory

<a id="opIdretrieveCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/',
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

`GET /api/v2/category/{id}/`

A viewset that provides CRUD actions for the pod

<h3 id="retrievecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
|search|query|string|false|A search term.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

<h3 id="retrievecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="success">
This operation does not require authentication
</aside>

## updateCategory

<a id="opIdupdateCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/category/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/category/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/',
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

`PUT /api/v2/category/{id}/`

A viewset that provides CRUD actions for the pod

> Body parameter

```json
{
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

```yaml
name: string
slug: string
html_info: string
image_original: string
emotional_image_original: string
emotional_image_position: -2147483648

```

<h3 id="updatecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
|search|query|string|false|A search term.|
|body|body|[Category](#schemacategory)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

<h3 id="updatecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateCategory

<a id="opIdpartialUpdateCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/category/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/category/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/',
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

`PATCH /api/v2/category/{id}/`

A viewset that provides CRUD actions for the pod

> Body parameter

```json
{
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

```yaml
name: string
slug: string
html_info: string
image_original: string
emotional_image_original: string
emotional_image_position: -2147483648

```

<h3 id="partialupdatecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
|search|query|string|false|A search term.|
|body|body|[Category](#schemacategory)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

<h3 id="partialupdatecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyCategory

<a id="opIddestroyCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/category/{id}/

```

```python
import requests

r = requests.delete('/api/v2/category/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/category/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/category/{id}/`

A viewset that provides CRUD actions for the pod

<h3 id="destroycategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
|search|query|string|false|A search term.|

<h3 id="destroycategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## audienceCategory

<a id="opIdaudienceCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/audience/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/audience/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/audience/',
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

`GET /api/v2/category/{id}/audience/`

Audience of a category/hub

<h3 id="audiencecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}
```

<h3 id="audiencecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="success">
This operation does not require authentication
</aside>

## followersCategory

<a id="opIdfollowersCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/followers/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/followers/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/followers/',
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

`GET /api/v2/category/{id}/followers/`

Followers of a category/hub

<h3 id="followerscategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="followerscategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## followersConnectionsCategory

<a id="opIdfollowersConnectionsCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/followers/connections/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/followers/connections/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/followers/connections/',
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

`GET /api/v2/category/{id}/followers/connections/`

Followers connection with me of a category/hub

<h3 id="followersconnectionscategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="followersconnectionscategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## listPostCategory

<a id="opIdlistPostCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/post/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/post/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/post/',
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

`GET /api/v2/category/{id}/post/`

List posts for category

<h3 id="listpostcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
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
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ]
    }
  ]
}
```

<h3 id="listpostcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listpostcategory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Post](#schemapost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## listPostWidgetCategory

<a id="opIdlistPostWidgetCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/post/widget/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/post/widget/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/post/widget/',
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

`GET /api/v2/category/{id}/post/widget/`

List tools for category

<h3 id="listpostwidgetcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
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
      "name": "string",
      "position": "string",
      "column": "string",
      "index": 0,
      "page": 0,
      "page_index": 0,
      "visible": true
    }
  ]
}
```

<h3 id="listpostwidgetcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listpostwidgetcategory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Widget](#schemawidget)]|false|none|none|
|»» name|string|false|read-only|none|
|»» position|string|true|none|none|
|»» column|string|true|none|none|
|»» index|integer|true|none|none|
|»» page|integer|true|none|none|
|»» page_index|integer|true|none|none|
|»» visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## listTrendingPostCategory

<a id="opIdlistTrendingPostCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/post/trending/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/post/trending/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/post/trending/',
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

`GET /api/v2/category/{id}/post/trending/`

List trending posts for category

<h3 id="listtrendingpostcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
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
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ]
    }
  ]
}
```

<h3 id="listtrendingpostcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listtrendingpostcategory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Post](#schemapost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## listTrendingPostWidgetCategory

<a id="opIdlistTrendingPostWidgetCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/post/trending/widget/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/category/{id}/post/trending/widget/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/post/trending/widget/',
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

`GET /api/v2/category/{id}/post/trending/widget/`

List tools for trending posts of category

<h3 id="listtrendingpostwidgetcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
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
      "name": "string",
      "position": "string",
      "column": "string",
      "index": 0,
      "page": 0,
      "page_index": 0,
      "visible": true
    }
  ]
}
```

<h3 id="listtrendingpostwidgetcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listtrendingpostwidgetcategory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Widget](#schemawidget)]|false|none|none|
|»» name|string|false|read-only|none|
|»» position|string|true|none|none|
|»» column|string|true|none|none|
|»» index|integer|true|none|none|
|»» page|integer|true|none|none|
|»» page_index|integer|true|none|none|
|»» visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## followCategory

<a id="opIdfollowCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/category/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/category/{id}/follow/', headers = headers)

print(r.json())

```

```javascript
const inputBody = 'null';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/follow/',
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

`POST /api/v2/category/{id}/follow/`

User follow a category/hub

> Body parameter

```json
null
```

```yaml
null

```

<h3 id="followcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
|body|body|any|false|none|

> Example responses

> 201 Response

```json
null
```

<h3 id="followcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|Inline|

<h3 id="followcategory-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## unfollowCategory

<a id="opIdunfollowCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/category/{id}/unfollow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/category/{id}/unfollow/', headers = headers)

print(r.json())

```

```javascript
const inputBody = 'null';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/category/{id}/unfollow/',
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

`POST /api/v2/category/{id}/unfollow/`

User unfollow a category/hub

> Body parameter

```json
null
```

```yaml
null

```

<h3 id="unfollowcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Interest.|
|body|body|any|false|none|

> Example responses

> 201 Response

```json
null
```

<h3 id="unfollowcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|Inline|

<h3 id="unfollowcategory-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-user">user</h1>

## listUsers

<a id="opIdlistUsers"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/',
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

`GET /api/v2/user/`

A viewset that provides CRUD actions for the pod.

<h3 id="listusers-parameters">Parameters</h3>

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
      "avatar_url": "string",
      "cover": "string"
    }
  ]
}
```

<h3 id="listusers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listusers-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[User](#schemauser)]|false|none|none|
|»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|string|false|none|none|
|»» email|string(email)|false|read-only|none|
|»» email_isvalid|boolean|false|read-only|none|
|»» date_joined|string(date-time)|false|read-only|none|
|»» bio|string|false|none|none|
|»» location|string|false|none|none|
|»» birthday|string|false|none|none|
|»» description|string|false|none|none|
|»» gender|string|false|none|none|
|»» status|string|false|read-only|none|
|»» website|string(uri)|false|none|none|
|»» avatar_url|string|false|read-only|none|
|»» cover|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<aside class="success">
This operation does not require authentication
</aside>

## connectionRequestsUser

<a id="opIdconnectionRequestsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/connection_requests/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/me/connection_requests/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection_requests/',
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

`GET /api/v2/user/me/connection_requests/`

List of connection requests received for user

> Example responses

> 200 Response

```json
{
  "id": 0,
  "from_user": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "to_user": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "created": "2019-08-24T14:15:22Z",
  "rejected": "2019-08-24T14:15:22Z",
  "viewed": "2019-08-24T14:15:22Z"
}
```

<h3 id="connectionrequestsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRequest](#schemaconnectionrequest)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionRequestsSentUser

<a id="opIdconnectionRequestsSentUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/connection_requests_sent/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/me/connection_requests_sent/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection_requests_sent/',
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

`GET /api/v2/user/me/connection_requests_sent/`

List of connection requests sent for user

> Example responses

> 200 Response

```json
{
  "id": 0,
  "from_user": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "to_user": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "created": "2019-08-24T14:15:22Z",
  "rejected": "2019-08-24T14:15:22Z",
  "viewed": "2019-08-24T14:15:22Z"
}
```

<h3 id="connectionrequestssentuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ConnectionRequest](#schemaconnectionrequest)|

<aside class="success">
This operation does not require authentication
</aside>

## meUser

<a id="opIdmeUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/me/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/',
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

`GET /api/v2/user/me/`

A viewset that provides CRUD actions for the pod.

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="meuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## notificationsUser

<a id="opIdnotificationsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/notifications/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/me/notifications/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/notifications/',
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

`GET /api/v2/user/me/notifications/`

List of notification for user

> Example responses

> 200 Response

```json
{
  "next_id": 0,
  "prev_id": 0,
  "is_new": true,
  "collapsed": "string"
}
```

<h3 id="notificationsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Notification](#schemanotification)|

<aside class="success">
This operation does not require authentication
</aside>

## unseenUser

<a id="opIdunseenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/me/unseen/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/me/unseen/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/me/unseen/',
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

`GET /api/v2/user/me/unseen/`

List unseen counter for the user

> Example responses

> 200 Response

```json
{
  "unseen": [
    null
  ],
  "total": 0
}
```

<h3 id="unseenuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UserUnseen](#schemauserunseen)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveUser

<a id="opIdretrieveUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{username}/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/{username}/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{username}/',
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

`GET /api/v2/user/{username}/`

A viewset that provides CRUD actions for the pod.

<h3 id="retrieveuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|username|path|string|true|Required. 255 characters or fewer. Letters, numbers and -/_ characters|

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="retrieveuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## updateUser

<a id="opIdupdateUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/user/{username}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/user/{username}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/{username}/',
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

`PUT /api/v2/user/{username}/`

A viewset that provides CRUD actions for the pod.

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="updateuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|username|path|string|true|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|body|body|[User](#schemauser)|false|none|

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="updateuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateUser

<a id="opIdpartialUpdateUser"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/user/{username}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/user/{username}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/{username}/',
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

`PATCH /api/v2/user/{username}/`

A viewset that provides CRUD actions for the pod.

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="partialupdateuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|username|path|string|true|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|body|body|[User](#schemauser)|false|none|

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="partialupdateuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionsUser

<a id="opIdconnectionsUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{username}/connections/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/{username}/connections/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{username}/connections/',
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

`GET /api/v2/user/{username}/connections/`

List of connections for user

<h3 id="connectionsuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|username|path|string|true|Required. 255 characters or fewer. Letters, numbers and -/_ characters|

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="connectionsuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## listPostUser

<a id="opIdlistPostUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{username}/post/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/{username}/post/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{username}/post/',
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

`GET /api/v2/user/{username}/post/`

List posts for user

<h3 id="listpostuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|username|path|string|true|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
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
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ]
    }
  ]
}
```

<h3 id="listpostuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listpostuser-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Post](#schemapost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## listPostWidgetUser

<a id="opIdlistPostWidgetUser"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/user/{username}/post/widget/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/user/{username}/post/widget/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/user/{username}/post/widget/',
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

`GET /api/v2/user/{username}/post/widget/`

List widget for user

<h3 id="listpostwidgetuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|username|path|string|true|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
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
      "name": "string",
      "position": "string",
      "column": "string",
      "index": 0,
      "page": 0,
      "page_index": 0,
      "visible": true
    }
  ]
}
```

<h3 id="listpostwidgetuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listpostwidgetuser-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Widget](#schemawidget)]|false|none|none|
|»» name|string|false|read-only|none|
|»» position|string|true|none|none|
|»» column|string|true|none|none|
|»» index|integer|true|none|none|
|»» page|integer|true|none|none|
|»» page_index|integer|true|none|none|
|»» visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## connectionAcceptUser

<a id="opIdconnectionAcceptUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/accept/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection/accept/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/accept/',
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

`POST /api/v2/user/me/connection/accept/`

Accept connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionacceptuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionacceptuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionCancelRejectUser

<a id="opIdconnectionCancelRejectUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/cancel_reject/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection/cancel_reject/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/cancel_reject/',
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

`POST /api/v2/user/me/connection/cancel_reject/`

Cancel Reject connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectioncancelrejectuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectioncancelrejectuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionCancelRequestUser

<a id="opIdconnectionCancelRequestUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/cancel_request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection/cancel_request/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/cancel_request/',
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

`POST /api/v2/user/me/connection/cancel_request/`

Cancel a request connection for a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectioncancelrequestuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectioncancelrequestuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionRejectUser

<a id="opIdconnectionRejectUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/reject/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection/reject/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/reject/',
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

`POST /api/v2/user/me/connection/reject/`

Reject connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionrejectuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionrejectuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionRemoveUser

<a id="opIdconnectionRemoveUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/remove/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection/remove/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/remove/',
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

`POST /api/v2/user/me/connection/remove/`

Remove a connection for a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionremoveuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionremoveuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionRequestUser

<a id="opIdconnectionRequestUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection/request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection/request/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection/request/',
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

`POST /api/v2/user/me/connection/request/`

Request connection to a user

> Body parameter

```json
{
  "username": "string"
}
```

```yaml
username: string

```

<h3 id="connectionrequestuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ManageConnection](#schemamanageconnection)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string"
}
```

<h3 id="connectionrequestuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[ManageConnection](#schemamanageconnection)|

<aside class="success">
This operation does not require authentication
</aside>

## connectionRequestsMarkSeenUser

<a id="opIdconnectionRequestsMarkSeenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/connection_requests/mark_seen/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/connection_requests/mark_seen/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/connection_requests/mark_seen/',
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

`POST /api/v2/user/me/connection_requests/mark_seen/`

Mark seee connection request

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="connectionrequestsmarkseenuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[User](#schemauser)|false|none|

> Example responses

> 201 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="connectionrequestsmarkseenuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## markSeenUser

<a id="opIdmarkSeenUser"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/user/me/markseen/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/user/me/markseen/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/user/me/markseen/',
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

`POST /api/v2/user/me/markseen/`

Mark as seen posts for user

> Body parameter

```json
{
  "real_name": "string",
  "bio": "string",
  "location": "string",
  "birthday": "string",
  "description": "string",
  "gender": "Male",
  "website": "http://example.com"
}
```

```yaml
real_name: string
bio: string
location: string
birthday: string
description: string
gender: Male
website: http://example.com

```

<h3 id="markseenuser-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[User](#schemauser)|false|none|

> Example responses

> 201 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="markseenuser-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-zapier">zapier</h1>

## checkZapier

<a id="opIdcheckZapier"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/zapier/check/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/zapier/check/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/zapier/check/',
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

`GET /api/v2/zapier/check/`

Check the authentication flow

> Example responses

> 200 Response

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}
```

<h3 id="checkzapier-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="success">
This operation does not require authentication
</aside>

## listNewPostTriggerZapier

<a id="opIdlistNewPostTriggerZapier"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/zapier/trigger/newpost/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/zapier/trigger/newpost/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/zapier/trigger/newpost/',
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

`GET /api/v2/zapier/trigger/newpost/`

Polling trigger for new posts

<h3 id="listnewposttriggerzapier-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|page|query|integer|false|A page number within the paginated result set.|

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
      "category_tags": [
        {
          "id": 0,
          "name": "string",
          "slug": "string",
          "html_info": "string",
          "image_original": "string",
          "image_bigger": "string",
          "image_big": "string",
          "image_medium": "string",
          "image_small": "string",
          "emotional_image_original": "string",
          "emotional_image_position": -2147483648
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
      "media_type": "images",
      "author": {
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "media_objects": [
        {
          "id": 0,
          "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
          "added_at": "2019-08-24T14:15:22Z",
          "source": "scrape",
          "title": "string",
          "description": "string",
          "url": "http://example.com",
          "keywords": "string",
          "entities": "string",
          "image": "string",
          "image_width": 0,
          "image_height": 0,
          "oembed_type": "photo",
          "oembed_url": "http://example.com",
          "oembed_width": 0,
          "oembed_height": 0,
          "oembed_duration": 0,
          "oembed_html": "string",
          "oembed_preview_ready": true,
          "oembed_available": true,
          "order": 0,
          "choice_images": [
            null
          ]
        }
      ],
      "user_tags": [
        {
          "id": "string",
          "name": "string",
          "color": "string",
          "visible": "string",
          "active": "string"
        }
      ]
    }
  ]
}
```

<h3 id="listnewposttriggerzapier-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listnewposttriggerzapier-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[Post](#schemapost)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string|false|read-only|none|
|»» slug|string|false|read-only|none|
|»» category_tags|[object]|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» name|string|true|none|none|
|»»» slug|string|true|none|none|
|»»» html_info|string¦null|false|none|none|
|»»» image_original|string(binary)¦null|false|none|none|
|»»» image_bigger|string(binary)|false|read-only|none|
|»»» image_big|string(binary)|false|read-only|none|
|»»» image_medium|string(binary)|false|read-only|none|
|»»» image_small|string(binary)|false|read-only|none|
|»»» emotional_image_original|string(binary)¦null|false|none|none|
|»»» emotional_image_position|integer|false|none|none|
|»» location|object¦null|false|none|none|
|»»» location|string¦null|true|none|none|
|»»» lat|number¦null|true|none|none|
|»»» lng|number¦null|true|none|none|
|»» poll|object¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» title|string|true|none|none|
|»»» multiple_choices|boolean|false|none|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» modified_at|string(date-time)|false|read-only|none|
|»»» closed|boolean|false|none|none|
|»»» expiration_at|string(date-time)|true|none|none|
|»»» hidden|string|false|read-only|none|
|»»» choices|[object]|true|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|true|none|none|
|»»»» order|integer|false|read-only|none|
|»»»» added_at|string(date-time)|false|read-only|none|
|»»»» deleted|string|false|read-only|none|
|»»»» count_votes|string|false|read-only|none|
|»»» votes|[object]¦null|false|none|none|
|»»»» id|integer|false|read-only|none|
|»»»» choice|string|false|read-only|none|
|»»»» user|string|false|read-only|none|
|»» last_activity_at|string(date-time)|false|read-only|none|
|»» view_count|integer|false|read-only|none|
|»» media_type|string|false|read-only|none|
|»» author|object|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» email_isvalid|boolean|false|read-only|none|
|»»» date_joined|string(date-time)|false|read-only|none|
|»»» bio|string|false|none|none|
|»»» location|string|false|none|none|
|»»» birthday|string|false|none|none|
|»»» description|string|false|none|none|
|»»» gender|string|false|none|none|
|»»» status|string|false|read-only|none|
|»»» website|string(uri)|false|none|none|
|»»» avatar_url|string|false|read-only|none|
|»»» cover|string|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» html|string|false|read-only|none|
|»» summary|string|false|read-only|none|
|»» deleted|boolean|false|read-only|none|
|»» collapsed|string|false|read-only|none|
|»» score|string|false|read-only|none|
|»» media_objects|[object]¦null|false|none|none|
|»»» id|integer|false|read-only|none|
|»»» hash_code|string(uuid)|false|read-only|none|
|»»» added_at|string(date-time)|false|read-only|none|
|»»» source|string|true|none|none|
|»»» title|string|false|read-only|none|
|»»» description|string|false|read-only|none|
|»»» url|string(uri)|true|none|none|
|»»» keywords|string|false|read-only|none|
|»»» entities|string|false|read-only|none|
|»»» image|string(binary)¦null|false|none|none|
|»»» image_width|integer|false|read-only|none|
|»»» image_height|integer|false|read-only|none|
|»»» oembed_type|string|false|read-only|none|
|»»» oembed_url|string(uri)|false|read-only|none|
|»»» oembed_width|integer|false|read-only|none|
|»»» oembed_height|integer|false|read-only|none|
|»»» oembed_duration|integer|false|read-only|none|
|»»» oembed_html|string|false|read-only|none|
|»»» oembed_preview_ready|boolean|false|read-only|none|
|»»» oembed_available|boolean|false|read-only|none|
|»»» order|integer(int64)¦null|false|none|none|
|»»» choice_images|[any]|false|read-only|none|
|»» user_tags|[object]¦null|false|none|none|
|»»» id|string|false|read-only|none|
|»»» name|string|false|read-only|none|
|»»» color|string|false|read-only|none|
|»»» visible|string|false|read-only|none|
|»»» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<aside class="success">
This operation does not require authentication
</aside>

## listNewUserTriggerZapier

<a id="opIdlistNewUserTriggerZapier"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/zapier/trigger/newuser/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/zapier/trigger/newuser/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/zapier/trigger/newuser/',
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

`GET /api/v2/zapier/trigger/newuser/`

Polling trigger for new users

<h3 id="listnewusertriggerzapier-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|page|query|integer|false|A page number within the paginated result set.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string",
  "previous": "string",
  "results": [
    {
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
      "avatar_url": "string",
      "cover": "string"
    }
  ]
}
```

<h3 id="listnewusertriggerzapier-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listnewusertriggerzapier-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[User](#schemauser)]|false|none|none|
|»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|string|false|none|none|
|»» email|string(email)|false|read-only|none|
|»» email_isvalid|boolean|false|read-only|none|
|»» date_joined|string(date-time)|false|read-only|none|
|»» bio|string|false|none|none|
|»» location|string|false|none|none|
|»» birthday|string|false|none|none|
|»» description|string|false|none|none|
|»» gender|string|false|none|none|
|»» status|string|false|read-only|none|
|»» website|string(uri)|false|none|none|
|»» avatar_url|string|false|read-only|none|
|»» cover|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="selfcommunity-api-account">account</h1>

## createSignin

<a id="opIdcreateSignin"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/account/signin \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/account/signin', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string",
  "password": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/account/signin',
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

`POST /api/v2/account/signin`

Signin the user

> Body parameter

```json
{
  "username": "string",
  "password": "string"
}
```

```yaml
username: string
password: string

```

<h3 id="createsignin-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Signin](#schemasignin)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string",
  "password": "string"
}
```

<h3 id="createsignin-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Signin](#schemasignin)|

<aside class="success">
This operation does not require authentication
</aside>

## createCreate

<a id="opIdcreateCreate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/account/create \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/account/create', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "username": "string",
  "email": "user@example.com",
  "password": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/account/create',
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

`POST /api/v2/account/create`

Create a new account

> Body parameter

```json
{
  "username": "string",
  "email": "user@example.com",
  "password": "string"
}
```

```yaml
username: string
email: user@example.com
password: string

```

<h3 id="createcreate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Create](#schemacreate)|false|none|

> Example responses

> 201 Response

```json
{
  "username": "string",
  "email": "user@example.com",
  "password": "string"
}
```

<h3 id="createcreate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Create](#schemacreate)|

<aside class="success">
This operation does not require authentication
</aside>

## createRecover

<a id="opIdcreateRecover"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/account/recover \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/account/recover', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "email": "user@example.com"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/account/recover',
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

`POST /api/v2/account/recover`

Recover the account

> Body parameter

```json
{
  "email": "user@example.com"
}
```

```yaml
email: user@example.com

```

<h3 id="createrecover-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Recover](#schemarecover)|false|none|

> Example responses

> 201 Response

```json
{
  "email": "user@example.com"
}
```

<h3 id="createrecover-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Recover](#schemarecover)|

<aside class="success">
This operation does not require authentication
</aside>

## createReset

<a id="opIdcreateReset"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/account/reset \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.post('/api/v2/account/reset', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "validation_code": "string",
  "email": "user@example.com",
  "key": "string",
  "password": "stringst"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/account/reset',
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

`POST /api/v2/account/reset`

Reset account credentials

> Body parameter

```json
{
  "validation_code": "string",
  "email": "user@example.com",
  "key": "string",
  "password": "stringst"
}
```

```yaml
validation_code: string
email: user@example.com
key: string
password: stringst

```

<h3 id="createreset-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Reset](#schemareset)|false|none|

> Example responses

> 201 Response

```json
{
  "validation_code": "string",
  "email": "user@example.com",
  "key": "string",
  "password": "stringst"
}
```

<h3 id="createreset-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Reset](#schemareset)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_CaptchaRefresh">CaptchaRefresh</h2>
<!-- backwards compatibility -->
<a id="schemacaptcharefresh"></a>
<a id="schema_CaptchaRefresh"></a>
<a id="tocScaptcharefresh"></a>
<a id="tocscaptcharefresh"></a>

```json
{
  "key": "string",
  "image_url": "http://example.com",
  "audio_url": "http://example.com"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|key|string|true|none|none|
|image_url|string(uri)|true|none|none|
|audio_url|string(uri)|true|none|none|

<h2 id="tocS_Locality">Locality</h2>
<!-- backwards compatibility -->
<a id="schemalocality"></a>
<a id="schema_Locality"></a>
<a id="tocSlocality"></a>
<a id="tocslocality"></a>

```json
{
  "full_address": "string",
  "postal_code": "string",
  "town": "string",
  "province": "string",
  "province_short": "string",
  "region": "string",
  "country": "string",
  "lat": 0,
  "lng": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|full_address|string|false|read-only|none|
|postal_code|string|false|read-only|none|
|town|string|false|read-only|none|
|province|string|false|read-only|none|
|province_short|string|false|read-only|none|
|region|string|false|read-only|none|
|country|string|false|read-only|none|
|lat|number|false|read-only|none|
|lng|number|false|read-only|none|

<h2 id="tocS_ListPost">ListPost</h2>
<!-- backwards compatibility -->
<a id="schemalistpost"></a>
<a id="schema_ListPost"></a>
<a id="tocSlistpost"></a>
<a id="tocslistpost"></a>

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ],
  "seen_by_id": [
    null
  ],
  "has_boost": true,
  "latest_activities": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string|false|read-only|none|
|slug|string|false|read-only|none|
|category_tags|[object]|false|read-only|none|
|» id|integer|false|read-only|none|
|» name|string|true|none|none|
|» slug|string|true|none|none|
|» html_info|string¦null|false|none|none|
|» image_original|string(binary)¦null|false|none|none|
|» image_bigger|string(binary)|false|read-only|none|
|» image_big|string(binary)|false|read-only|none|
|» image_medium|string(binary)|false|read-only|none|
|» image_small|string(binary)|false|read-only|none|
|» emotional_image_original|string(binary)¦null|false|none|none|
|» emotional_image_position|integer|false|none|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|poll|object¦null|false|none|none|
|» id|integer|false|read-only|none|
|» title|string|true|none|none|
|» multiple_choices|boolean|false|none|none|
|» added_at|string(date-time)|false|read-only|none|
|» modified_at|string(date-time)|false|read-only|none|
|» closed|boolean|false|none|none|
|» expiration_at|string(date-time)|true|none|none|
|» hidden|string|false|read-only|none|
|» choices|[object]|true|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|true|none|none|
|»» order|integer|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» deleted|string|false|read-only|none|
|»» count_votes|string|false|read-only|none|
|» votes|[object]¦null|false|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|false|read-only|none|
|»» user|string|false|read-only|none|
|last_activity_at|string(date-time)|false|read-only|none|
|view_count|integer|false|read-only|none|
|media_type|string|false|read-only|none|
|author|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|score|string|false|read-only|none|
|media_objects|[object]¦null|false|none|none|
|» id|integer|false|read-only|none|
|» hash_code|string(uuid)|false|read-only|none|
|» added_at|string(date-time)|false|read-only|none|
|» source|string|true|none|none|
|» title|string|false|read-only|none|
|» description|string|false|read-only|none|
|» url|string(uri)|true|none|none|
|» keywords|string|false|read-only|none|
|» entities|string|false|read-only|none|
|» image|string(binary)¦null|false|none|none|
|» image_width|integer|false|read-only|none|
|» image_height|integer|false|read-only|none|
|» oembed_type|string|false|read-only|none|
|» oembed_url|string(uri)|false|read-only|none|
|» oembed_width|integer|false|read-only|none|
|» oembed_height|integer|false|read-only|none|
|» oembed_duration|integer|false|read-only|none|
|» oembed_html|string|false|read-only|none|
|» oembed_preview_ready|boolean|false|read-only|none|
|» oembed_available|boolean|false|read-only|none|
|» order|integer(int64)¦null|false|none|none|
|» choice_images|[any]|false|read-only|none|
|user_tags|[object]¦null|false|none|none|
|» id|string|false|read-only|none|
|» name|string|false|read-only|none|
|» color|string|false|read-only|none|
|» visible|string|false|read-only|none|
|» active|string|false|read-only|none|
|seen_by_id|[any]|false|none|none|
|has_boost|boolean|false|none|none|
|latest_activities|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<h2 id="tocS_Post">Post</h2>
<!-- backwards compatibility -->
<a id="schemapost"></a>
<a id="schema_Post"></a>
<a id="tocSpost"></a>
<a id="tocspost"></a>

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
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
  "media_type": "images",
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "source": "scrape",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "photo",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ]
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string|false|read-only|none|
|slug|string|false|read-only|none|
|category_tags|[object]|false|read-only|none|
|» id|integer|false|read-only|none|
|» name|string|true|none|none|
|» slug|string|true|none|none|
|» html_info|string¦null|false|none|none|
|» image_original|string(binary)¦null|false|none|none|
|» image_bigger|string(binary)|false|read-only|none|
|» image_big|string(binary)|false|read-only|none|
|» image_medium|string(binary)|false|read-only|none|
|» image_small|string(binary)|false|read-only|none|
|» emotional_image_original|string(binary)¦null|false|none|none|
|» emotional_image_position|integer|false|none|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|poll|object¦null|false|none|none|
|» id|integer|false|read-only|none|
|» title|string|true|none|none|
|» multiple_choices|boolean|false|none|none|
|» added_at|string(date-time)|false|read-only|none|
|» modified_at|string(date-time)|false|read-only|none|
|» closed|boolean|false|none|none|
|» expiration_at|string(date-time)|true|none|none|
|» hidden|string|false|read-only|none|
|» choices|[object]|true|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|true|none|none|
|»» order|integer|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» deleted|string|false|read-only|none|
|»» count_votes|string|false|read-only|none|
|» votes|[object]¦null|false|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|false|read-only|none|
|»» user|string|false|read-only|none|
|last_activity_at|string(date-time)|false|read-only|none|
|view_count|integer|false|read-only|none|
|media_type|string|false|read-only|none|
|author|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|score|string|false|read-only|none|
|media_objects|[object]¦null|false|none|none|
|» id|integer|false|read-only|none|
|» hash_code|string(uuid)|false|read-only|none|
|» added_at|string(date-time)|false|read-only|none|
|» source|string|true|none|none|
|» title|string|false|read-only|none|
|» description|string|false|read-only|none|
|» url|string(uri)|true|none|none|
|» keywords|string|false|read-only|none|
|» entities|string|false|read-only|none|
|» image|string(binary)¦null|false|none|none|
|» image_width|integer|false|read-only|none|
|» image_height|integer|false|read-only|none|
|» oembed_type|string|false|read-only|none|
|» oembed_url|string(uri)|false|read-only|none|
|» oembed_width|integer|false|read-only|none|
|» oembed_height|integer|false|read-only|none|
|» oembed_duration|integer|false|read-only|none|
|» oembed_html|string|false|read-only|none|
|» oembed_preview_ready|boolean|false|read-only|none|
|» oembed_available|boolean|false|read-only|none|
|» order|integer(int64)¦null|false|none|none|
|» choice_images|[any]|false|read-only|none|
|user_tags|[object]¦null|false|none|none|
|» id|string|false|read-only|none|
|» name|string|false|read-only|none|
|» color|string|false|read-only|none|
|» visible|string|false|read-only|none|
|» active|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<h2 id="tocS_Widget">Widget</h2>
<!-- backwards compatibility -->
<a id="schemawidget"></a>
<a id="schema_Widget"></a>
<a id="tocSwidget"></a>
<a id="tocswidget"></a>

```json
{
  "name": "string",
  "position": "string",
  "column": "string",
  "index": 0,
  "page": 0,
  "page_index": 0,
  "visible": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|read-only|none|
|position|string|true|none|none|
|column|string|true|none|none|
|index|integer|true|none|none|
|page|integer|true|none|none|
|page_index|integer|true|none|none|
|visible|boolean|true|none|none|

<h2 id="tocS_Vote">Vote</h2>
<!-- backwards compatibility -->
<a id="schemavote"></a>
<a id="schema_Vote"></a>
<a id="tocSvote"></a>
<a id="tocsvote"></a>

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user|string|false|read-only|none|
|voted_post|string|false|read-only|none|
|voted_at|string(date-time)|false|read-only|none|

<h2 id="tocS_Comment">Comment</h2>
<!-- backwards compatibility -->
<a id="schemacomment"></a>
<a id="schema_Comment"></a>
<a id="tocScomment"></a>
<a id="tocscomment"></a>

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string",
  "latest_comments": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|post|integer¦null|false|none|none|
|author|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|boolean|false|read-only|none|
|parent|integer¦null|false|none|none|
|in_reply_to|integer¦null|false|none|none|
|score|string|false|read-only|none|
|latest_comments|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_Category">Category</h2>
<!-- backwards compatibility -->
<a id="schemacategory"></a>
<a id="schema_Category"></a>
<a id="tocScategory"></a>
<a id="tocscategory"></a>

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|name|string|true|none|none|
|slug|string|true|none|none|
|html_info|string¦null|false|none|none|
|image_original|string(binary)¦null|false|none|none|
|image_bigger|string(binary)|false|read-only|none|
|image_big|string(binary)|false|read-only|none|
|image_medium|string(binary)|false|read-only|none|
|image_small|string(binary)|false|read-only|none|
|emotional_image_original|string(binary)¦null|false|none|none|
|emotional_image_position|integer|false|none|none|

<h2 id="tocS_User">User</h2>
<!-- backwards compatibility -->
<a id="schemauser"></a>
<a id="schema_User"></a>
<a id="tocSuser"></a>
<a id="tocsuser"></a>

```json
{
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
  "avatar_url": "string",
  "cover": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|real_name|string|false|none|none|
|email|string(email)|false|read-only|none|
|email_isvalid|boolean|false|read-only|none|
|date_joined|string(date-time)|false|read-only|none|
|bio|string|false|none|none|
|location|string|false|none|none|
|birthday|string|false|none|none|
|description|string|false|none|none|
|gender|string|false|none|none|
|status|string|false|read-only|none|
|website|string(uri)|false|none|none|
|avatar_url|string|false|read-only|none|
|cover|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_ConnectionRequest">ConnectionRequest</h2>
<!-- backwards compatibility -->
<a id="schemaconnectionrequest"></a>
<a id="schema_ConnectionRequest"></a>
<a id="tocSconnectionrequest"></a>
<a id="tocsconnectionrequest"></a>

```json
{
  "id": 0,
  "from_user": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "to_user": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "created": "2019-08-24T14:15:22Z",
  "rejected": "2019-08-24T14:15:22Z",
  "viewed": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|from_user|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|to_user|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|created|string(date-time)|false|read-only|none|
|rejected|string(date-time)|false|read-only|none|
|viewed|string(date-time)|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_Notification">Notification</h2>
<!-- backwards compatibility -->
<a id="schemanotification"></a>
<a id="schema_Notification"></a>
<a id="tocSnotification"></a>
<a id="tocsnotification"></a>

```json
{
  "next_id": 0,
  "prev_id": 0,
  "is_new": true,
  "collapsed": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|next_id|integer|false|none|none|
|prev_id|integer|false|none|none|
|is_new|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|

<h2 id="tocS_UserUnseen">UserUnseen</h2>
<!-- backwards compatibility -->
<a id="schemauserunseen"></a>
<a id="schema_UserUnseen"></a>
<a id="tocSuserunseen"></a>
<a id="tocsuserunseen"></a>

```json
{
  "unseen": [
    null
  ],
  "total": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|unseen|[any]|true|none|none|
|total|integer|true|none|none|

<h2 id="tocS_Signin">Signin</h2>
<!-- backwards compatibility -->
<a id="schemasignin"></a>
<a id="schema_Signin"></a>
<a id="tocSsignin"></a>
<a id="tocssignin"></a>

```json
{
  "username": "string",
  "password": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|true|none|none|
|password|string|true|none|none|

<h2 id="tocS_Create">Create</h2>
<!-- backwards compatibility -->
<a id="schemacreate"></a>
<a id="schema_Create"></a>
<a id="tocScreate"></a>
<a id="tocscreate"></a>

```json
{
  "username": "string",
  "email": "user@example.com",
  "password": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|true|none|none|
|email|string(email)|true|none|none|
|password|string|true|none|none|

<h2 id="tocS_Recover">Recover</h2>
<!-- backwards compatibility -->
<a id="schemarecover"></a>
<a id="schema_Recover"></a>
<a id="tocSrecover"></a>
<a id="tocsrecover"></a>

```json
{
  "email": "user@example.com"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|email|string(email)|true|none|none|

<h2 id="tocS_Reset">Reset</h2>
<!-- backwards compatibility -->
<a id="schemareset"></a>
<a id="schema_Reset"></a>
<a id="tocSreset"></a>
<a id="tocsreset"></a>

```json
{
  "validation_code": "string",
  "email": "user@example.com",
  "key": "string",
  "password": "stringst"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|validation_code|string|true|none|none|
|email|string(email)|true|none|none|
|key|string|true|none|none|
|password|string|true|none|none|

<h2 id="tocS_ChunkMedia">ChunkMedia</h2>
<!-- backwards compatibility -->
<a id="schemachunkmedia"></a>
<a id="schema_ChunkMedia"></a>
<a id="tocSchunkmedia"></a>
<a id="tocschunkmedia"></a>

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|upload_id|string|true|none|none|
|offset|string|true|none|none|
|expires|string|true|none|none|

<h2 id="tocS_Media">Media</h2>
<!-- backwards compatibility -->
<a id="schemamedia"></a>
<a id="schema_Media"></a>
<a id="tocSmedia"></a>
<a id="tocsmedia"></a>

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "source": "scrape",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "photo",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|hash_code|string(uuid)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|source|string|true|none|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|true|none|none|
|keywords|string|false|read-only|none|
|entities|string|false|read-only|none|
|image|string(binary)¦null|false|none|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|oembed_type|string|false|read-only|none|
|oembed_url|string(uri)|false|read-only|none|
|oembed_width|integer|false|read-only|none|
|oembed_height|integer|false|read-only|none|
|oembed_duration|integer|false|read-only|none|
|oembed_html|string|false|read-only|none|
|oembed_preview_ready|boolean|false|read-only|none|
|oembed_available|boolean|false|read-only|none|
|order|integer(int64)¦null|false|none|none|
|choice_images|[any]|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|

<h2 id="tocS_WritableMedia">WritableMedia</h2>
<!-- backwards compatibility -->
<a id="schemawritablemedia"></a>
<a id="schema_WritableMedia"></a>
<a id="tocSwritablemedia"></a>
<a id="tocswritablemedia"></a>

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "source": "scrape",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "photo",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "service": "default",
  "selected_image_url": "http://example.com"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|hash_code|string(uuid)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|source|string|false|read-only|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|true|none|none|
|keywords|string|false|read-only|none|
|entities|string|false|read-only|none|
|image|string(binary)|false|read-only|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|oembed_type|string|false|read-only|none|
|oembed_url|string(uri)|false|read-only|none|
|oembed_width|integer|false|read-only|none|
|oembed_height|integer|false|read-only|none|
|oembed_duration|integer|false|read-only|none|
|oembed_html|string|false|read-only|none|
|oembed_preview_ready|boolean|false|read-only|none|
|oembed_available|boolean|false|read-only|none|
|order|integer|false|read-only|none|
|choice_images|[any]|false|read-only|none|
|service|string|true|write-only|none|
|selected_image_url|string(uri)¦null|false|write-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|source|scrape|
|source|image|
|source|eimage|
|source|vimeo|
|source|pdf|
|oembed_type|photo|
|oembed_type|video|
|oembed_type|rich|
|oembed_type|link|
|service|default|
|service|vimeo|

<h2 id="tocS_WritablePost">WritablePost</h2>
<!-- backwards compatibility -->
<a id="schemawritablepost"></a>
<a id="schema_WritablePost"></a>
<a id="tocSwritablepost"></a>
<a id="tocswritablepost"></a>

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "text": "string",
  "tags": [
    0
  ],
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ],
  "addressing": [
    0
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string|true|none|none|
|slug|string|false|read-only|none|
|text|string|true|write-only|none|
|tags|[integer]|true|write-only|none|
|category_tags|[object]|false|read-only|none|
|» id|integer|false|read-only|none|
|» name|string|true|none|none|
|» slug|string|true|none|none|
|» html_info|string¦null|false|none|none|
|» image_original|string(binary)¦null|false|none|none|
|» image_bigger|string(binary)|false|read-only|none|
|» image_big|string(binary)|false|read-only|none|
|» image_medium|string(binary)|false|read-only|none|
|» image_small|string(binary)|false|read-only|none|
|» emotional_image_original|string(binary)¦null|false|none|none|
|» emotional_image_position|integer|false|none|none|
|media_type|string|false|read-only|none|
|medias|[integer]|false|write-only|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|poll|object¦null|false|none|none|
|» id|integer|false|read-only|none|
|» title|string|true|none|none|
|» multiple_choices|boolean|false|none|none|
|» added_at|string(date-time)|false|read-only|none|
|» modified_at|string(date-time)|false|read-only|none|
|» closed|boolean|false|none|none|
|» expiration_at|string(date-time)|true|none|none|
|» hidden|string|false|read-only|none|
|» choices|[object]|true|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|true|none|none|
|»» order|integer|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» deleted|string|false|read-only|none|
|»» count_votes|string|false|read-only|none|
|» votes|[object]¦null|false|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|false|read-only|none|
|»» user|string|false|read-only|none|
|last_activity_at|string(date-time)|false|read-only|none|
|view_count|integer|false|read-only|none|
|author|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|score|string|false|read-only|none|
|captcha|object|false|write-only|none|
|» hashkey|string|true|none|none|
|» response|string|true|none|none|
|user_tags|[object]¦null|false|none|none|
|» id|string|false|read-only|none|
|» name|string|false|read-only|none|
|» color|string|false|read-only|none|
|» visible|string|false|read-only|none|
|» active|string|false|read-only|none|
|addressing|[integer]|false|write-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_WritableComment">WritableComment</h2>
<!-- backwards compatibility -->
<a id="schemawritablecomment"></a>
<a id="schema_WritableComment"></a>
<a id="tocSwritablecomment"></a>
<a id="tocswritablecomment"></a>

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "text": "string",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|post|integer¦null|false|none|none|
|author|object|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|text|string|true|write-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|boolean|false|read-only|none|
|parent|integer¦null|false|none|none|
|in_reply_to|integer¦null|false|none|none|
|score|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_ManageConnection">ManageConnection</h2>
<!-- backwards compatibility -->
<a id="schemamanageconnection"></a>
<a id="schema_ManageConnection"></a>
<a id="tocSmanageconnection"></a>
<a id="tocsmanageconnection"></a>

```json
{
  "username": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|true|none|none|

