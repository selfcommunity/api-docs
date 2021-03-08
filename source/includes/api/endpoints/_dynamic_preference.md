<h1 id="selfcommunity-api-dynamic-preference">Dynamic Preference</h1>

## Get All Dyanamic Preferences

<a id="opIdlistGlobalPreferenceModels"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/dynamic_preference/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/dynamic_preference/',
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

This endpoint retrieves all available dynamic preferences.

<h3>Available sections</h3>

<h4>loyalty</h4>
This section contains all preferences for calibration of loyalty flow.

* **points_connection**: Points earned for a new connection (if connections enabled).

<h4>score</h4>
This section contains all preferences for calibration of score flow.

* **rep_variation_for_connection_or_follower**: Positive score variation for a new connection (if connections enabled) ar for a new follower (if follow enabled).
* **rep_variation_for_daily_visit**: Positive score variation for a daily visit.
* **rep_variation_for_make_discussion**: Positive score variation for a new discussion.
* **rep_variation_for_make_post**: Positive score variation for a new post.
* **rep_variation_for_make_a_first_level_comment**: Positive score variation for a first level comment.
* **rep_variation_for_make_a_second_level_comment**: Positive score variation for a second level comment.  
* **rep_variation_for_upvote_a_discussion**: Positive score variation for an upvote to a discussion.
* **rep_variation_for_upvote_a_post**: Positive score variation for an upvote to a post.
* **rep_variation_for_upvote_on_first_level_comment**: Positive score variation for an upvote to a first level comment.
* **rep_variation_for_upvote_on_second_level_comment**: Positive score variation for an upvote to a second level comment.
* **rep_variation_for_contribute_deletion_by_moderation**: Negative score variation for a contribution deleted by moderators.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/dynamic_preference/`

<h3 id="listglobalpreferencemodels-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|section|query|string|false|section|
|ordering|query|string|false|Which field to use when ordering the results.|

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
      "section": "string",
      "name": "string",
      "value": "string"
    }
  ]
}
```

<h3 id="listglobalpreferencemodels-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listglobalpreferencemodels-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total results count|
|» next|string(uri)¦null|false|none|Next page url|
|» previous|string(uri)¦null|false|none|Previous page url|
|» results|[[DynamicPreference](#schemadynamicpreference)]|false|none|List of results|


<aside class="notice">
This operation require authentication and admin role.
</aside>

## Get a Specific Dynamic Preference

<a id="opIdretrieveGlobalPreferenceModel"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/dynamic_preference/{id}/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/dynamic_preference/{id}/',
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
This endpoint retrieves a specific dynamic preference.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/dynamic_preference/{id}/`

<h3 id="retrieveglobalpreferencemodel-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this dynamic preference.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "section": "string",
  "name": "string",
  "value": "string"
}
```

<h3 id="retrieveglobalpreferencemodel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DynamicPreference](#schemadynamicpreference)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>

## Patch a Specific Dynamic Preference

<a id="opIdpartialUpdateGlobalPreferenceModel"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/dynamic_preference/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'
  --DATA '{body}'

```

```javascript
const inputBody = '{
  "value": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/dynamic_preference/{id}/',
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

This endpoint patch a specific dynamic preference.

**NOTE:**
You can use this endpoint to change the value of a single dynamic preference.

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/dynamic_preference/{id}/`


> Body parameter

```json
{
  "value": "string"
}
```

<h3 id="partialupdateglobalpreferencemodel-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this Dynamic preference.|
|body|body|[DynamicPreference](#schemadynamicpreference)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "section": "string",
  "name": "string",
  "value": "string"
}
```

<h3 id="partialupdateglobalpreferencemodel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DynamicPreference](#schemadynamicpreference)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>
