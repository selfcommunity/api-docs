<h1 id="selfcommunity-api-loyalty">loyalty</h1>

## listLoyaltyPrizes

<a id="opIdlistLoyaltyPrizes"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/prize/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/loyalty/prize/`

A viewset that provides CRUD actions for the loyalty prize

<h3 id="listloyaltyprizes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|search|query|string|false|A search term.|
|active|query|string|false|active|
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
      "link": "http://example.com",
      "image": "string",
      "created_at": "2019-08-24T14:15:22Z",
      "lastmod_datetime": "2019-08-24T14:15:22Z",
      "created_by": "string"
    }
  ]
}
```

<h3 id="listloyaltyprizes-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listloyaltyprizes-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[LoyaltyPrize](#schemaloyaltyprize)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» active|boolean|false|none|none|
|»» title|string|true|none|none|
|»» description|string¦null|false|none|none|
|»» points|integer(int64)|true|none|none|
|»» link|string(uri)¦null|false|none|none|
|»» image|string(binary)|true|none|none|
|»» created_at|string(date-time)|false|read-only|none|
|»» lastmod_datetime|string(date-time)|false|read-only|none|
|»» created_by|string|false|read-only|none|

<aside class="success">
This operation does not require authentication
</aside>

## createLoyaltyPrize

<a id="opIdcreateLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/loyalty/prize/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/loyalty/prize/`

A viewset that provides CRUD actions for the loyalty prize

> Body parameter

```json
{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string"
}
```

```yaml
active: true
title: string
description: string
points: 0
link: http://example.com
image: string

```

<h3 id="createloyaltyprize-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[LoyaltyPrize](#schemaloyaltyprize)|false|none|
|» id|body|integer|false|none|
|» active|body|boolean|false|none|
|» title|body|string|true|none|
|» description|body|string¦null|false|none|
|» points|body|integer(int64)|true|none|
|» link|body|string(uri)¦null|false|none|
|» image|body|string(binary)|true|none|
|» created_at|body|string(date-time)|false|none|
|» lastmod_datetime|body|string(date-time)|false|none|
|» created_by|body|string|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h3 id="createloyaltyprize-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveLoyaltyPrize

<a id="opIdretrieveLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/prize/{id}/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/loyalty/prize/{id}/`

A viewset that provides CRUD actions for the loyalty prize

<h3 id="retrieveloyaltyprize-parameters">Parameters</h3>

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
  "link": "http://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h3 id="retrieveloyaltyprize-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="success">
This operation does not require authentication
</aside>

## updateLoyaltyPrize

<a id="opIdupdateLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/loyalty/prize/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`PUT /api/v2/loyalty/prize/{id}/`

A viewset that provides CRUD actions for the loyalty prize

> Body parameter

```json
{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string"
}
```

```yaml
active: true
title: string
description: string
points: 0
link: http://example.com
image: string

```

<h3 id="updateloyaltyprize-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize.|
|body|body|[LoyaltyPrize](#schemaloyaltyprize)|false|none|
|» id|body|integer|false|none|
|» active|body|boolean|false|none|
|» title|body|string|true|none|
|» description|body|string¦null|false|none|
|» points|body|integer(int64)|true|none|
|» link|body|string(uri)¦null|false|none|
|» image|body|string(binary)|true|none|
|» created_at|body|string(date-time)|false|none|
|» lastmod_datetime|body|string(date-time)|false|none|
|» created_by|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h3 id="updateloyaltyprize-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateLoyaltyPrize

<a id="opIdpartialUpdateLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/loyalty/prize/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string"
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`PATCH /api/v2/loyalty/prize/{id}/`

A viewset that provides CRUD actions for the loyalty prize

> Body parameter

```json
{
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string"
}
```

```yaml
active: true
title: string
description: string
points: 0
link: http://example.com
image: string

```

<h3 id="partialupdateloyaltyprize-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize.|
|body|body|[LoyaltyPrize](#schemaloyaltyprize)|false|none|
|» id|body|integer|false|none|
|» active|body|boolean|false|none|
|» title|body|string|true|none|
|» description|body|string¦null|false|none|
|» points|body|integer(int64)|true|none|
|» link|body|string(uri)¦null|false|none|
|» image|body|string(binary)|true|none|
|» created_at|body|string(date-time)|false|none|
|» lastmod_datetime|body|string(date-time)|false|none|
|» created_by|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "active": true,
  "title": "string",
  "description": "string",
  "points": 0,
  "link": "http://example.com",
  "image": "string",
  "created_at": "2019-08-24T14:15:22Z",
  "lastmod_datetime": "2019-08-24T14:15:22Z",
  "created_by": "string"
}
```

<h3 id="partialupdateloyaltyprize-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrize](#schemaloyaltyprize)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyLoyaltyPrize

<a id="opIddestroyLoyaltyPrize"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/loyalty/prize/{id}/

```

```javascript

fetch('/api/v2/loyalty/prize/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/loyalty/prize/{id}/`

A viewset that provides CRUD actions for the loyalty prize

<h3 id="destroyloyaltyprize-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize.|

<h3 id="destroyloyaltyprize-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## listLoyaltyRequests

<a id="opIdlistLoyaltyRequests"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/request/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/loyalty/request/`

A viewset that provides CRUD actions for requesting a loyalty prize

<h3 id="listloyaltyrequests-parameters">Parameters</h3>

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

|Parameter|Value|
|---|---|
|status|0|
|status|1|
|status|2|

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
        "link": "http://example.com",
        "image": "string"
      },
      "prize_points": 0,
      "status": 0,
      "status_description": "string"
    }
  ]
}
```

<h3 id="listloyaltyrequests-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listloyaltyrequests-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[LoyaltyPrizeUser](#schemaloyaltyprizeuser)]|false|none|none|
|»» id|integer|false|read-only|none|
|»» user|object|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»»» real_name|string|false|none|none|
|»»» email|string(email)|false|read-only|none|
|»»» description|string|false|none|none|
|»»» avatar|string|false|read-only|none|
|»» pending_at|string(date-time)|false|read-only|none|
|»» prize|object|false|read-only|none|
|»»» id|integer|false|read-only|none|
|»»» active|boolean|false|none|none|
|»»» title|string|true|none|none|
|»»» description|string¦null|false|none|none|
|»»» points|integer(int64)|true|none|none|
|»»» link|string(uri)¦null|false|none|none|
|»»» image|string(binary)|true|none|none|
|»» prize_points|integer|false|read-only|none|
|»» status|integer|false|none|none|
|»» status_description|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|0|
|status|1|
|status|2|

<aside class="success">
This operation does not require authentication
</aside>

## createLoyaltyRequest

<a id="opIdcreateLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/loyalty/request/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "status": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`POST /api/v2/loyalty/request/`

A viewset that provides CRUD actions for requesting a loyalty prize

> Body parameter

```json
{
  "status": 0
}
```

```yaml
status: 0

```

<h3 id="createloyaltyrequest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|false|none|
|» id|body|integer|false|none|
|» user|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» description|body|string|false|none|
|»» avatar|body|string|false|none|
|» pending_at|body|string(date-time)|false|none|
|» prize|body|object|false|none|
|»» id|body|integer|false|none|
|»» active|body|boolean|false|none|
|»» title|body|string|true|none|
|»» description|body|string¦null|false|none|
|»» points|body|integer(int64)|true|none|
|»» link|body|string(uri)¦null|false|none|
|»» image|body|string(binary)|true|none|
|» prize_points|body|integer|false|none|
|» status|body|integer|false|none|
|» status_description|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» status|0|
|» status|1|
|» status|2|

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
    "link": "http://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h3 id="createloyaltyrequest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveLoyaltyRequest

<a id="opIdretrieveLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/loyalty/request/{id}/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
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

`GET /api/v2/loyalty/request/{id}/`

A viewset that provides CRUD actions for requesting a loyalty prize

<h3 id="retrieveloyaltyrequest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize user.|

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
    "link": "http://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h3 id="retrieveloyaltyrequest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="success">
This operation does not require authentication
</aside>

## updateLoyaltyRequest

<a id="opIdupdateLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/loyalty/request/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "status": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/loyalty/request/{id}/',
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

`PUT /api/v2/loyalty/request/{id}/`

A viewset that provides CRUD actions for requesting a loyalty prize

> Body parameter

```json
{
  "status": 0
}
```

```yaml
status: 0

```

<h3 id="updateloyaltyrequest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize user.|
|body|body|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|false|none|
|» id|body|integer|false|none|
|» user|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» description|body|string|false|none|
|»» avatar|body|string|false|none|
|» pending_at|body|string(date-time)|false|none|
|» prize|body|object|false|none|
|»» id|body|integer|false|none|
|»» active|body|boolean|false|none|
|»» title|body|string|true|none|
|»» description|body|string¦null|false|none|
|»» points|body|integer(int64)|true|none|
|»» link|body|string(uri)¦null|false|none|
|»» image|body|string(binary)|true|none|
|» prize_points|body|integer|false|none|
|» status|body|integer|false|none|
|» status_description|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» status|0|
|» status|1|
|» status|2|

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
    "link": "http://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h3 id="updateloyaltyrequest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateLoyaltyRequest

<a id="opIdpartialUpdateLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/loyalty/request/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "status": 0
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
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

`PATCH /api/v2/loyalty/request/{id}/`

A viewset that provides CRUD actions for requesting a loyalty prize

> Body parameter

```json
{
  "status": 0
}
```

```yaml
status: 0

```

<h3 id="partialupdateloyaltyrequest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize user.|
|body|body|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|false|none|
|» id|body|integer|false|none|
|» user|body|object|false|none|
|»» id|body|integer|false|none|
|»» username|body|string|false|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|»» real_name|body|string|false|none|
|»» email|body|string(email)|false|none|
|»» description|body|string|false|none|
|»» avatar|body|string|false|none|
|» pending_at|body|string(date-time)|false|none|
|» prize|body|object|false|none|
|»» id|body|integer|false|none|
|»» active|body|boolean|false|none|
|»» title|body|string|true|none|
|»» description|body|string¦null|false|none|
|»» points|body|integer(int64)|true|none|
|»» link|body|string(uri)¦null|false|none|
|»» image|body|string(binary)|true|none|
|» prize_points|body|integer|false|none|
|» status|body|integer|false|none|
|» status_description|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» status|0|
|» status|1|
|» status|2|

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
    "link": "http://example.com",
    "image": "string"
  },
  "prize_points": 0,
  "status": 0,
  "status_description": "string"
}
```

<h3 id="partialupdateloyaltyrequest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[LoyaltyPrizeUser](#schemaloyaltyprizeuser)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyLoyaltyRequest

<a id="opIddestroyLoyaltyRequest"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/loyalty/request/{id}/

```

```javascript

fetch('/api/v2/loyalty/request/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/loyalty/request/{id}/`

A viewset that provides CRUD actions for requesting a loyalty prize

<h3 id="destroyloyaltyrequest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this loyalty prize user.|

<h3 id="destroyloyaltyrequest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>
