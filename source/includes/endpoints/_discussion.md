<h1 id="selfcommunity-api-discussion">discussion</h1>

## listDiscussions

<a id="opIdlistDiscussions"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/discussion/`

List the posts for homepage

<h3 id="listdiscussions-parameters">Parameters</h3>

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
      "title": "string",
      "slug": "string",
      "tags": [
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
        "avatar_url": "string",
        "cover": "string"
      },
      "added_at": "2019-08-24T14:15:22Z",
      "html": "string",
      "summary": "string",
      "deleted": true,
      "collapsed": "string",
      "score": "string",
      "addressing": [
        0
      ],
      "followers": "string",
      "seen_by_id": [
        null
      ],
      "has_boost": true,
      "actions": "string"
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
|» count|integer|false|none|none|
|» next|string¦null|false|none|none|
|» previous|string¦null|false|none|none|
|» results|[[ListDiscussion](#schemalistdiscussion)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» title|string¦null|false|none|none|
|»» slug|string|false|read-only|none|
|»» text|string|true|write-only|none|
|»» tags|[integer]|true|none|none|
|»» media_type|string|false|read-only|none|
|»» medias|[integer]|false|none|none|
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
|»» author|object|false|read-only|none|
|»»» id|integer|false|read-only|none|
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
|»» captcha|object|false|write-only|none|
|»»» hashkey|string|true|none|none|
|»»» response|string|true|none|none|
|»» addressing|[integer]|false|none|none|
|»» followers|string|false|read-only|none|
|»» seen_by_id|[any]|false|none|none|
|»» has_boost|boolean|false|none|none|
|»» actions|string|false|read-only|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## createDiscussion

<a id="opIdcreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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
  "addressing": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/discussion/`

A viewset that provides CRUD actions for the discussion

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
addressing:
  - 0

```

<h3 id="creatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Discussion](#schemadiscussion)|false|none|
|» id|body|integer|false|none|
|» title|body|string¦null|false|none|
|» slug|body|string|false|none|
|» text|body|string|true|none|
|» tags|body|[integer]|true|none|
|» media_type|body|string|false|none|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|none|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|none|
|»» id|body|integer|false|none|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» added_at|body|string(date-time)|false|none|
|»» modified_at|body|string(date-time)|false|none|
|»» closed|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» hidden|body|string|false|none|
|»» choices|body|[object]|true|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|true|none|
|»»» order|body|integer|false|none|
|»»» added_at|body|string(date-time)|false|none|
|»»» deleted|body|string|false|none|
|»»» count_votes|body|string|false|none|
|»» votes|body|[object]¦null|false|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|false|none|
|»»» user|body|string|false|none|
|» last_activity_at|body|string(date-time)|false|none|
|» view_count|body|integer|false|none|
|» author|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» email_isvalid|body|boolean|false|none|
|»» date_joined|body|string(date-time)|false|none|
|»» bio|body|string|false|none|
|»» location|body|string|false|none|
|»» birthday|body|string|false|none|
|»» description|body|string|false|none|
|»» gender|body|string|false|none|
|»» status|body|string|false|none|
|»» website|body|string(uri)|false|none|
|»» avatar_url|body|string|false|none|
|»» cover|body|string|false|none|
|» added_at|body|string(date-time)|false|none|
|» html|body|string|false|none|
|» summary|body|string|false|none|
|» deleted|body|boolean|false|none|
|» collapsed|body|string|false|none|
|» score|body|string|false|none|
|» captcha|body|object|false|none|
|»» hashkey|body|string|true|none|
|»» response|body|string|true|none|
|» addressing|body|[integer]|false|none|
|» followers|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» media_type|images|
|» media_type|video|
|» media_type|documents|
|» media_type|link|
|»» gender|Male|
|»» gender|Female|
|»» gender|Unspecified|
|»» status|a|
|»» status|b|
|»» status|u|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "tags": [
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "addressing": [
    0
  ],
  "followers": "string"
}
```

<h3 id="creatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Discussion](#schemadiscussion)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveDiscussion

<a id="opIdretrieveDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/discussion/{id}/`

A viewset that provides CRUD actions for the discussion

<h3 id="retrievediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|search|query|string|false|A search term.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "tags": [
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "addressing": [
    0
  ],
  "followers": "string"
}
```

<h3 id="retrievediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Discussion](#schemadiscussion)|

<aside class="success">
This operation does not require authentication
</aside>

## updateDiscussion

<a id="opIdupdateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/discussion/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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
  "addressing": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`PUT /api/v2/discussion/{id}/`

A viewset that provides CRUD actions for the discussion

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
addressing:
  - 0

```

<h3 id="updatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|search|query|string|false|A search term.|
|body|body|[UpdateDiscussion](#schemaupdatediscussion)|false|none|
|» id|body|integer|false|none|
|» title|body|string¦null|false|none|
|» slug|body|string|false|none|
|» text|body|string|true|none|
|» tags|body|[integer]|true|none|
|» media_type|body|string|false|none|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|none|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|none|
|»» id|body|integer|false|none|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» added_at|body|string(date-time)|false|none|
|»» modified_at|body|string(date-time)|false|none|
|»» closed|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» hidden|body|string|false|none|
|»» choices|body|[object]|true|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|true|none|
|»»» order|body|integer|false|none|
|»»» added_at|body|string(date-time)|false|none|
|»»» deleted|body|string|false|none|
|»»» count_votes|body|string|false|none|
|»» votes|body|[object]¦null|false|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|false|none|
|»»» user|body|string|false|none|
|» last_activity_at|body|string(date-time)|false|none|
|» view_count|body|integer|false|none|
|» author|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» email_isvalid|body|boolean|false|none|
|»» date_joined|body|string(date-time)|false|none|
|»» bio|body|string|false|none|
|»» location|body|string|false|none|
|»» birthday|body|string|false|none|
|»» description|body|string|false|none|
|»» gender|body|string|false|none|
|»» status|body|string|false|none|
|»» website|body|string(uri)|false|none|
|»» avatar_url|body|string|false|none|
|»» cover|body|string|false|none|
|» added_at|body|string(date-time)|false|none|
|» html|body|string|false|none|
|» summary|body|string|false|none|
|» deleted|body|boolean|false|none|
|» collapsed|body|string|false|none|
|» score|body|string|false|none|
|» addressing|body|[integer]|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» media_type|images|
|» media_type|video|
|» media_type|documents|
|» media_type|link|
|»» gender|Male|
|»» gender|Female|
|»» gender|Unspecified|
|»» status|a|
|»» status|b|
|»» status|u|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "tags": [
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "addressing": [
    0
  ]
}
```

<h3 id="updatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateDiscussion](#schemaupdatediscussion)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateDiscussion

<a id="opIdpartialUpdateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/discussion/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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
  "addressing": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/discussion/{id}/',
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

`PATCH /api/v2/discussion/{id}/`

A viewset that provides CRUD actions for the discussion

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
addressing:
  - 0

```

<h3 id="partialupdatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|search|query|string|false|A search term.|
|body|body|[UpdateDiscussion](#schemaupdatediscussion)|false|none|
|» id|body|integer|false|none|
|» title|body|string¦null|false|none|
|» slug|body|string|false|none|
|» text|body|string|true|none|
|» tags|body|[integer]|true|none|
|» media_type|body|string|false|none|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|none|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|none|
|»» id|body|integer|false|none|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» added_at|body|string(date-time)|false|none|
|»» modified_at|body|string(date-time)|false|none|
|»» closed|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» hidden|body|string|false|none|
|»» choices|body|[object]|true|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|true|none|
|»»» order|body|integer|false|none|
|»»» added_at|body|string(date-time)|false|none|
|»»» deleted|body|string|false|none|
|»»» count_votes|body|string|false|none|
|»» votes|body|[object]¦null|false|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|false|none|
|»»» user|body|string|false|none|
|» last_activity_at|body|string(date-time)|false|none|
|» view_count|body|integer|false|none|
|» author|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» email_isvalid|body|boolean|false|none|
|»» date_joined|body|string(date-time)|false|none|
|»» bio|body|string|false|none|
|»» location|body|string|false|none|
|»» birthday|body|string|false|none|
|»» description|body|string|false|none|
|»» gender|body|string|false|none|
|»» status|body|string|false|none|
|»» website|body|string(uri)|false|none|
|»» avatar_url|body|string|false|none|
|»» cover|body|string|false|none|
|» added_at|body|string(date-time)|false|none|
|» html|body|string|false|none|
|» summary|body|string|false|none|
|» deleted|body|boolean|false|none|
|» collapsed|body|string|false|none|
|» score|body|string|false|none|
|» addressing|body|[integer]|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» media_type|images|
|» media_type|video|
|» media_type|documents|
|» media_type|link|
|»» gender|Male|
|»» gender|Female|
|»» gender|Unspecified|
|»» status|a|
|»» status|b|
|»» status|u|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "tags": [
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "addressing": [
    0
  ]
}
```

<h3 id="partialupdatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[UpdateDiscussion](#schemaupdatediscussion)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyDiscussion

<a id="opIddestroyDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/discussion/{id}/

```

```javascript

fetch('/api/v2/discussion/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/discussion/{id}/`

A viewset that provides CRUD actions for the discussion

<h3 id="destroydiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|search|query|string|false|A search term.|

<h3 id="destroydiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## relatedDiscussion

<a id="opIdrelatedDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/related/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/discussion/{id}/related/`

This Endpoint retrieve related post/discussions

<h3 id="relateddiscussion-parameters">Parameters</h3>

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
  "tags": [
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "addressing": [
    0
  ],
  "followers": "string",
  "seen_by_id": [
    null
  ],
  "has_boost": true,
  "actions": "string"
}
```

<h3 id="relateddiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[ListDiscussion](#schemalistdiscussion)|

<aside class="success">
This operation does not require authentication
</aside>

## voteDiscussion

<a id="opIdvoteDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/discussion/{id}/vote/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/discussion/{id}/vote/`

List votes for this contribute

<h3 id="votediscussion-parameters">Parameters</h3>

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

<h3 id="votediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Vote](#schemavote)|

<aside class="success">
This operation does not require authentication
</aside>

## voteCreateDiscussion

<a id="opIdvoteCreateDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/vote/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/discussion/{id}/vote/',
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

`POST /api/v2/discussion/{id}/vote/`

Execute vote for this contribute

> Body parameter

```json
{}
```

```yaml
{}

```

<h3 id="votecreatediscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|body|body|[Vote](#schemavote)|false|none|
|» user|body|string|false|none|
|» voted_post|body|string|false|none|
|» voted_at|body|string(date-time)|false|none|

> Example responses

> 201 Response

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="votecreatediscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Vote](#schemavote)|

<aside class="success">
This operation does not require authentication
</aside>

## flagDiscussion

<a id="opIdflagDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/flag/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

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
  "addressing": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/discussion/{id}/flag/`

Execute flag for this post

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
addressing:
  - 0

```

<h3 id="flagdiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|body|body|[Discussion](#schemadiscussion)|false|none|
|» id|body|integer|false|none|
|» title|body|string¦null|false|none|
|» slug|body|string|false|none|
|» text|body|string|true|none|
|» tags|body|[integer]|true|none|
|» media_type|body|string|false|none|
|» medias|body|[integer]|false|none|
|» location|body|object¦null|false|none|
|»» location|body|string¦null|true|none|
|»» lat|body|number¦null|true|none|
|»» lng|body|number¦null|true|none|
|» poll|body|object¦null|false|none|
|»» id|body|integer|false|none|
|»» title|body|string|true|none|
|»» multiple_choices|body|boolean|false|none|
|»» added_at|body|string(date-time)|false|none|
|»» modified_at|body|string(date-time)|false|none|
|»» closed|body|boolean|false|none|
|»» expiration_at|body|string(date-time)|true|none|
|»» hidden|body|string|false|none|
|»» choices|body|[object]|true|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|true|none|
|»»» order|body|integer|false|none|
|»»» added_at|body|string(date-time)|false|none|
|»»» deleted|body|string|false|none|
|»»» count_votes|body|string|false|none|
|»» votes|body|[object]¦null|false|none|
|»»» id|body|integer|false|none|
|»»» choice|body|string|false|none|
|»»» user|body|string|false|none|
|» last_activity_at|body|string(date-time)|false|none|
|» view_count|body|integer|false|none|
|» author|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» email_isvalid|body|boolean|false|none|
|»» date_joined|body|string(date-time)|false|none|
|»» bio|body|string|false|none|
|»» location|body|string|false|none|
|»» birthday|body|string|false|none|
|»» description|body|string|false|none|
|»» gender|body|string|false|none|
|»» status|body|string|false|none|
|»» website|body|string(uri)|false|none|
|»» avatar_url|body|string|false|none|
|»» cover|body|string|false|none|
|» added_at|body|string(date-time)|false|none|
|» html|body|string|false|none|
|» summary|body|string|false|none|
|» deleted|body|boolean|false|none|
|» collapsed|body|string|false|none|
|» score|body|string|false|none|
|» captcha|body|object|false|none|
|»» hashkey|body|string|true|none|
|»» response|body|string|true|none|
|» addressing|body|[integer]|false|none|
|» followers|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» media_type|images|
|» media_type|video|
|» media_type|documents|
|» media_type|link|
|»» gender|Male|
|»» gender|Female|
|»» gender|Unspecified|
|»» status|a|
|»» status|b|
|»» status|u|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "tags": [
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
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "score": "string",
  "addressing": [
    0
  ],
  "followers": "string"
}
```

<h3 id="flagdiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Discussion](#schemadiscussion)|

<aside class="success">
This operation does not require authentication
</aside>

## followDiscussion

<a id="opIdfollowDiscussion"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/discussion/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/discussion/{id}/follow/',
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

`POST /api/v2/discussion/{id}/follow/`

This endpoint toggle follow of the discussion from the user

> Body parameter

```json
{}
```

```yaml
{}

```

<h3 id="followdiscussion-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this thread.|
|body|body|[Follow](#schemafollow)|false|none|
|» user|body|string|false|none|
|» thread|body|string|false|none|
|» added_at|body|string(date-time)|false|none|

> Example responses

> 201 Response

```json
{
  "user": "string",
  "thread": "string",
  "added_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="followdiscussion-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Follow](#schemafollow)|

<aside class="success">
This operation does not require authentication
</aside>