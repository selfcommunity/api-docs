<h1 id="selfcommunity-api-category">Category</h1>

## Get All Categories

<a id="opIdlistCategories"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint retrieves all categories.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/`

<h3 id="listcategories-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|active|query|string|false|Filter using field active.|
|deleted|query|string|false|Filter using field deleted.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
      "id": 0,
      "order": 123,
      "name": "string",
      "name_synonyms": "string",
      "slug": "string",
      "slogan": "string",
      "html_info": "string",
      "seo_title": "string",
      "seo_description": "string",
      "auto_follow": "none",
      "active": true,
      "deleted": true,
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": 123,
      "lastmod_datetime": "2019-08-24T14:15:22Z",
      "stream_order_by": "recent"
    }
  ]
}
```

<h3 id="listcategories-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listcategories-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[Category](#schemacategory)]|false|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false.
</aside>

## Create a Category

<a id="opIdcreateCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/category/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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
This endpoint creates a category.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/category/`

> Body parameter

```json
{
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
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
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
```

<h3 id="createcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Category](#schemacategory)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

## Get a Specific Category

<a id="opIdretrieveCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint retrieves a specific category.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/{id}/`

<h3 id="retrievecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this category.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
```

<h3 id="retrievecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false.
</aside>

## Update a Specific Category

<a id="opIdupdateCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/category/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint updates a specific category.

<h3 id="http-request">HTTP Request</h3>

`PUT /api/v2/category/{id}/`

> Body parameter

```json
{
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
```

<h3 id="updatecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|
|body|body|[Category](#schemacategory)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
```

<h3 id="updatecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>


## Patch a Specific Category

<a id="opIdpatchCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/category/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint patch a specific category.
 
**NOTE:**
You can use this endpoint to edit a single field passing only the id and the needed field (without mandatory fields).

For example to change `active` or `deleted` flags in an admin list/table interface.

<h3 id="http-request">HTTP Request</h3>

`PATCH /api/v2/category/{id}/`

> Body parameter

```json
{
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
```

<h3 id="patchcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|
|body|body|[Category](#schemacategory)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "order": 123,
  "name": "string",
  "name_synonyms": "string",
  "slug": "string",
  "slogan": "string",
  "html_info": "string",
  "seo_title": "string",
  "seo_description": "string",
  "auto_follow": "none",
  "active": true,
  "deleted": true,
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": 123,
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "stream_order_by": "recent"
}
```

<h3 id="patchcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>


## Get Category's Audience

<a id="opIdaudienceCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/audience/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint returns the audience of a specific category.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/{id}/audience/`

<h3 id="audiencecategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|

> Example responses

> 200 Response

```json
{
  "category_audience": 123,
  "connections_audience": 123
}
```

<h3 id="audiencecategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Category](#schemacategory)|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false.
</aside>

## Get Category's Followers

<a id="opIdfollowersCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/followers/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint returns all followers of a specific category.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/{id}/followers/`

<h3 id="followerscategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
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
      "avatar": "string",
      "cover": "string"
    }
  ]
}
```

<h3 id="followerscategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[User](#schemauser)|

<aside class="notice">
This operation requires authentication
</aside>

## Get Category's Feed

<a id="opIdFeedCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/feed/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/category/{id}/feed/',
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

This endpoint retrieves the category feed.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/{id}/feed/`

<h3 id="feedcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
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
      "score": "string",
      "addressing": [
        0
      ],
      "followers": "string"
    }
  ]
}
```

<h3 id="feedcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="feedcategory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[Discussion](#schemadiscussion)]|false|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false.
</aside>

## Get Category's Trending Feed

<a id="opIdTrendingPostCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/{id}/feed/trending/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/category/{id}/feed/trending/',
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

This endpoint retrieves the category trending feed.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/{id}/feed/trending/`

<h3 id="trendingpostcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
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
      "score": "string",
      "addressing": [
        0
      ],
      "followers": "string"
    }
  ]
}
```

<h3 id="trendingpostcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="trendingpostcategory-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[Discussion](#schemadiscussion)]|false|none|List of results|

<aside class="notice">
This operation require authentication only if `content_availability` community option is false.
</aside>

## Follow a Category

<a id="opIdfollowCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/category/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const inputBody = 'null';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint follow a category.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/category/{id}/follow/`

<h3 id="followcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|

<h3 id="followcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

## Unfollow a Category

<a id="opIdunfollowCategory"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/category/{id}/follow/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const inputBody = 'null';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
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

This endpoint unfollow a category.

<h3 id="http-request">HTTP Request</h3>

`POST /api/v2/category/{id}/follow/`

<h3 id="unfollowcategory-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Category.|

<h3 id="unfollowcategory-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation requires authentication
</aside>

## Get Followed Categories

<a id="opIdfollowedCategories"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/category/followed/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/category/followed/',
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

This endpoint retrieves all followed categories by the user.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/category/followed/`

<h3 id="listfollowedcategories-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|active|query|string|false|Filter using field active.|
|deleted|query|string|false|Filter using field deleted.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
      "id": 0,
      "order": 123,
      "name": "string",
      "name_synonyms": "string",
      "slug": "string",
      "slogan": "string",
      "html_info": "string",
      "seo_title": "string",
      "seo_description": "string",
      "auto_follow": "none",
      "active": true,
      "deleted": true,
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": 123,
      "lastmod_datetime": "2019-08-24T14:15:22Z",
      "stream_order_by": "recent"
    }
  ]
}
```

<h3 id="listfollowedcategories-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listfollowedcategories-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[Category](#schemacategory)]|false|none|List of results|

<aside class="notice">
This operation require authentication
</aside>
