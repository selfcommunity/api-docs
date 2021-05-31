<h2 id="selfcommunity-api-score">Score</h2>

### Get All Scores

<a id="opIdlistScores"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/score/ \
  -H 'Accept: application/json'\
  -H 'Authorization: Bearer {access_token}'
  
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/score/',
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
This endpoint retrieves all users scores.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/score/`

<h4 id="listscores-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|user_id|query|string|false|The id of a specific user|
|ordering|query|string|false|Which field to use when ordering the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "user": {
        "id": 0,
        "username": "string",
        "real_name": "string",
        "email": "user@example.com",
        "description": "string",
        "avatar": "string",
        "reputation": 0
      },
      "score": "string",
      "reputation_type": 1,
      "reputation_type_description": "string",
      "comment": "string"
    }
  ]
}
```

<h4 id="listscores-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listscores-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[Score](#schemascore)]|false|none|none|

<aside class="notice">
This operation require admin or moderation role.
</aside>

### Search a Score

<a id="opIdsearchScore"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/score/search/ \
  -H 'Accept: application/json'\
  -H 'Authorization: Bearer {access_token}'
  
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/score/search/',
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
This endpoint performs search to user Scores.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/score/search/`

<h4 id="searchscore-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|user_id|query|string|false|The id of a specific user|
|ordering|query|string|false|Which field to use when ordering the results.|

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "http://api.example.org/accounts/?offset=400&limit=100",
  "previous": "http://api.example.org/accounts/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "user": {
        "id": 0,
        "username": "string",
        "real_name": "string",
        "email": "user@example.com",
        "description": "string",
        "avatar": "string",
        "reputation": 0
      },
      "score": "string",
      "reputation_type": 1,
      "reputation_type_description": "string",
      "comment": "string"
    }
  ]
}
```

<h4 id="searchscore-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="searchscore-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[Score](#schemascore)]|false|none|none|

<aside class="notice">
This operation require admin or moderation role.
</aside>

### Add/Remove Score to a User

<a id="opIdcreateScore"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/score/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "comment": "Comment",
    "user": "1",
    "score": "20"
  }'
```

```javascript
const inputBody = '{
  "user": "integer",
  "score": "integer",
  "comment": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/score/',
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
This endpoint adds/removes score to a user.

<h5 id="http-request">HTTP Request</h5>

`POST /api/v2/score/`

> Body parameter

```json
{
  "comment": "string",
  "user": "integer",
  "score": "integer"
}
```

<h4 id="createscore-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|user|body|integer|true|A unique integer value identifying the user.|
|score|body|integer|true|Positive or negative integer value.|
|comment|body|string|false|A comment about this operation (only for internal usage).|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "description": "string",
    "avatar": "string",
    "reputation": 0
  },
  "score": "string",
  "reputation_type": 1,
  "reputation_type_description": "string",
  "comment": "string"
}
```

<h4 id="createscore-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Score](#schemascore)|

<aside class="notice">
This operation require admin or moderation role.
</aside>
