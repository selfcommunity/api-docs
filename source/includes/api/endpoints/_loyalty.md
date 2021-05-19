<h2 id="selfcommunity-api-loyalty">Loyalty</h2>

### Get All Prizes

<a id="opIdlistLoyaltyPrizes"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/prize/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/prize/',
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

This endpoint retrieves all prizes.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/loyalty/prize/`

<h4 id="listloyaltyprizes-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|active|query|string|false|Filter by active only for editor or admin users|
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
      "active": true,
      "title": "string",
      "description": "string",
      "points": 0,
      "link": "https://example.com",
      "image": "string",
      "created_at": "2019-08-24T14:15:22Z",
      "lastmod_datetime": "2019-08-24T14:15:22Z",
      "created_by": "string"
    }
  ]
}
```

<h4 id="listloyaltyprizes-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listloyaltyprizes-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[LoyaltyPrize](#schemaloyaltyprize)]|false|none|none|

<aside class="notice">
This operation require authentication and admin or editor role to filter active prizes.
</aside>

### Create a Prize

<a id="opIdcreateLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/loyalty/prize/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/prize/',
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
This endpoint creates a prize.

<h5 id="http-request">HTTP Request</h5>

`POST /api/v2/loyalty/prize/`

> Body parameter

```json
{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string"
}
```

<h4 id="createloyaltyprize-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[LoyaltyPrize](#schemaloyaltyprize)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h4 id="createloyaltyprize-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="notice">
This operation require authentication and admin or editor role.
</aside>

### Get a Specific Prize

<a id="opIdretrieveLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/prize/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/prize/{id}/',
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
This endpoint retrieves a specific prize.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/loyalty/prize/{id}/`

<h4 id="retrieveloyaltyprize-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h4 id="retrieveloyaltyprize-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="notice">
This operation require authentication and admin or editor role to get a not active prize.
</aside>

### Update a Specific Prize

<a id="opIdupdateLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/loyalty/prize/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/prize/{id}/',
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

This endpoint updates a specific prize.

<h5 id="http-request">HTTP Request</h5>

`PUT /api/v2/loyalty/prize/{id}/`

> Body parameter

```json
{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string"
}
```

<h4 id="updateloyaltyprize-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize.|
|body|body|[LoyaltyPrize](#schemaloyaltyprize)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h4 id="updateloyaltyprize-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="notice">
This operation requires authentication and admin or editor role.
</aside>

### Patch a Specific Prize

<a id="opIdpartialUpdateLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/loyalty/prize/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/prize/{id}/',
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
This endpoint patch a specific prize.
 
**NOTE:**
You can use this endpoint to edit a single field passing only the id and the needed field (without mandatory fields).

For example to change `active` flag in an admin list/table interface.

<h5 id="http-request">HTTP Request</h5>

`PATCH /api/v2/loyalty/prize/{id}/`

> Body parameter

```json
{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string"
}
```

<h4 id="partialupdateloyaltyprize-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize.|
|body|body|[LoyaltyPrize](#schemaloyaltyprize)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "https://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h4 id="partialupdateloyaltyprize-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="notice">
This operation requires authentication and admin or editor role.
</aside>

### Get All Prizes Requests

<a id="opIdlistLoyaltyRequests"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/request/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/request/',
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

This endpoint retrieves all requests of loyalty prizes.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/loyalty/request/`

<h4 id="listloyaltyrequests-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|status|query|string|false|status|
|user_id|query|string|false|user_id|
|prize_id|query|string|false|prize_id|
|ordering|query|string|false|Which field to use when ordering the results.|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|status|0|pending|
|status|1|refused|
|status|2|sent|

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
        "avatar": "string"
      },
      "pending_at": "2019-08-24T14:15:22Z",
      "prize": {
        "id": 0,
        "active": true,
        "title": "string",
        "description": "string",
        "points": 0,
        "link": "https://example.com",
        "image": "string"
      },
      "prize_points": 0,
      "status": 0,
      "status_description": "string"
    }
  ]
}
```

<h4 id="listloyaltyrequests-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listloyaltyrequests-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[LoyaltyPrizeUser](#schemaloyaltyprizeuser)]|false|none|none|

<aside class="notice">
This operation require authentication to see own requests and admin or editor to see all requests.
</aside>

### Create a Prize Request

<a id="opIdcreateLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/loyalty/request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'
```

```javascript
const inputBody = '{
  "prize": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/request/',
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
This endpoint creates a request for a loyalty prize.

<h5 id="http-request">HTTP Request</h5>

`POST /api/v2/loyalty/request/`

> Body parameter

```json
{
  "prize": 0
}
```

<h4 id="createloyaltyrequest-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|false|none|

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
    "avatar": "string"
  },
  "pending_at": "2019-08-24T14:15:22Z",
  "prize": {
    "id": 0,
    "active": true,
    "title": "string",
    "description": "string",
    "points": 0,
    "link": "https://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h4 id="createloyaltyrequest-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="notice">
This operation require authentication
</aside>

### Get a Specific Prize Request

<a id="opIdretrieveLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/request/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/request/{id}/',
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
This endpoint retrieves a specific request for a loyalty prize.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/loyalty/request/{id}/`

<h4 id="retrieveloyaltyrequest-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this request.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "description": "string",
    "avatar": "string"
  },
  "pending_at": "2019-08-24T14:15:22Z",
  "prize": {
    "id": 0,
    "active": true,
    "title": "string",
    "description": "string",
    "points": 0,
    "link": "https://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h4 id="retrieveloyaltyrequest-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="notice">
This operation require authentication to see own request and admin or editor to see all requests.
</aside>

### Patch a Specific Prize Request

<a id="opIdpartialUpdateLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/loyalty/request/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --DATA '{body}'

```

```javascript
const inputBody = '{
  "status": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/loyalty/request/{id}/',
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
This endpoint patch a specific request for a loyalty prize.

**NOTE:**
You can use this endpoint to to change `status` in an admin list/table interface.

<h5 id="http-request">HTTP Request</h5>

`PATCH /api/v2/loyalty/request/{id}/`


> Body parameter

```json
{
  "status": 0
}
```

<h4 id="partialupdateloyaltyrequest-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize user.|
|body|body|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|false|none|

#### Enumerated Values

|Parameter|Value|Description|
|---|---|---|
|status|0|pending|
|status|1|refused|
|status|2|sent|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "user": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "email": "user@example.com",
    "description": "string",
    "avatar": "string"
  },
  "pending_at": "2019-08-24T14:15:22Z",
  "prize": {
    "id": 0,
    "active": true,
    "title": "string",
    "description": "string",
    "points": 0,
    "link": "https://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h4 id="partialupdateloyaltyrequest-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="notice">
This operation require authentication and admin or editor role.
</aside>
