<h2 id="selfcommunity-api-dynamic-preference">Dynamic Preference</h2>

### Get All Dyanamic Preferences

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

<h4>Available sections</h4>

<h5>loyalty</h5>
This section contains all preferences for calibration of loyalty flow.

* **points_make_discussion**: Points earned for a new discussion.
* **points_make_post**: Points earned for a new post.
* **points_make_comment**: Points earned for a comment.
* **points_receive_vote**: Points earned for an upvote.
* **points_connection_or_follower**: Points earned for a new connection (if connections enabled) or for a new follower (if follow enabled).
* **points_social_share**: Points earned when starting a social share of a post or a discussion.
* **points_app_used**: Points earned for the first usage of the app (if available).
* **points_daily_visit**: Points earned for a daily visit.

<h5>score</h5>
This section contains all preferences for calibration of score flow.

* **rep_variation_for_make_discussion**: Positive score variation for a new discussion.
* **rep_variation_for_make_post**: Positive score variation for a new post.
* **rep_variation_for_make_a_first_level_comment**: Positive score variation for a first level comment.
* **rep_variation_for_make_a_second_level_comment**: Positive score variation for a second level comment.  
* **rep_variation_for_upvote_a_discussion**: Positive score variation for an upvote to a discussion.
* **rep_variation_for_upvote_a_post**: Positive score variation for an upvote to a post.
* **rep_variation_for_upvote_on_first_level_comment**: Positive score variation for an upvote to a first level comment.
* **rep_variation_for_upvote_on_second_level_comment**: Positive score variation for an upvote to a second level comment.
* **rep_variation_for_contribute_deletion_by_moderation**: Negative score variation for a contribution deleted by moderators.
* **rep_variation_for_connection_or_follower**: Positive score variation for a new connection (if connections enabled) or for a new follower (if follow enabled).
* **rep_variation_for_app_used**: Positive score variation for the first usage of the app (if available).
* **rep_variation_for_daily_visit**: Positive score variation for a daily visit.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/dynamic_preference/`

<h4 id="listglobalpreferencemodels-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|section|query|string|false|Filter all preferences in a section|
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
      "section": "loyalty",
      "name": "points_make_post",
      "value": "2"
    }
  ]
}
```

<h4 id="listglobalpreferencemodels-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listglobalpreferencemodels-responseschema">Response Schema</h4>

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

### Get a Specific Dynamic Preference

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

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/dynamic_preference/{id}/`

<h4 id="retrieveglobalpreferencemodel-parameters">Parameters</h4>

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

<h4 id="retrieveglobalpreferencemodel-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DynamicPreference](#schemadynamicpreference)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>

### Patch a Specific Dynamic Preference

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

<h5 id="http-request">HTTP Request</h5>

`PATCH /api/v2/dynamic_preference/{id}/`


> Body parameter

```json
{
  "value": "string"
}
```

<h4 id="partialupdateglobalpreferencemodel-parameters">Parameters</h4>

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

<h4 id="partialupdateglobalpreferencemodel-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[DynamicPreference](#schemadynamicpreference)|

<aside class="notice">
This operation requires authentication and admin role.
</aside>
