<h1 id="selfcommunity-api-suggestion">Suggestion</h1>

## Get Category Suggestion

<a id="opIdcategorySuggestion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/suggestion/category/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/suggestion/category/',
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

`GET /api/v2/suggestion/category/`

This endpoint retrieves a list of categories suggested to the current user.

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
      "deleted": false,
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
This operation requires authentication.
</aside>

## Get User Suggestion

<a id="opIduserSuggestion"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/suggestion/user/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/suggestion/user/',
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

`GET /api/v2/suggestion/user/`

This endpoint retrieves a list of users suggested to the current user.

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
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
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
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[User](#schemauser)]|false|none|List of results|

<aside class="notice">
This operation requires authentication
</aside>
