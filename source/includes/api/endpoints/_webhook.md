<h2 id="selfcommunity-api-webhook">Webhook</h2>

### Get All Webhook Endpoints

<a id="opIdlistWebhookEndpoints"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/webhook/endpoint/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/',
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

This Endpoint retrieve all webhook endpoints.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/webhook/endpoint/`

<h4 id="listwebhookendpoints-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|integer|false|Number of results to return per page.|
|offset|query|integer|false|The initial index from which to return the results.|
|ordering|query|string|false|Which field to use when ordering the results. For sorting desc use - in front of the field name. Default to -created_at. Available values are created_at, is_active, updated_at|

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
      "created_at": "2019-08-24T14:15:22Z",
      "updated_at": "2019-08-24T14:15:22Z",
      "is_active": true,
      "target": "http://example.com",
      "description": "string",
      "events": [
        {
          "type": "comment.created",
          "added_at": "2019-08-24T14:15:22Z"
        }
      ]
    }
  ]
}
```

<h4 id="listwebhookendpoints-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h4 id="listwebhookendpoints-responseschema">Response Schema</h4>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|none|
|» next|string(uri)¦null|false|none|none|
|» previous|string(uri)¦null|false|none|none|
|» results|[[Endpoint](#schemaendpoint)]|false|none|List of results|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Get All Webhook Events

<a id="opIdeventWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/webhook/endpoint/event/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/event/',
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

This Endpoint retrieve [webhook events](#list-of-events) that can be enabled in the endpoint.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/webhook/endpoint/event/`

> Example responses

> 200 Response

```json
[
    "comment.created",
    "comment.updated",
    "comment.deleted",
    "comment.restored",
    "category.follow",
    "category.unfollow",
    "connection_request.created",
    "connection_request.rejected",
    "connection_request.restored",
    "connection_request.cancelled",
    "connection.created",
    "connection.deleted",
    "connection.follow",
    "connection.unfollow",
    "discussion.created",
    "discussion.updated",
    "discussion.deleted",
    "discussion.follow",
    "discussion.unfollow",
    "discussion.restored",
    "poll_vote.created",
    "poll_vote.deleted",
    "post.created",
    "post.updated",
    "post.deleted",
    "post.restored",
    "user.created",
    "user.updated",
    "user.deleted",
    "user.settings_updated",
    "vote.created",
    "vote.deleted",
    "user.score_updated",
    "user.loyalty_points_updated",
    "loyalty.prize.created",
    "loyalty.prize.updated",
    "loyalty.prize_request.created",
    "loyalty.prize_request.updated"
]
```

<h4 id="eventwebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Endpoint](#schemaendpoint)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Create a Webhook Endpoint

<a id="opIdcreateWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/webhook/endpoint/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "is_active": true,
    "target": "http://example.com",
    "description": "string",
    "events": [
      {
        "type": "comment.created"
      }
    ]
  }'
```

```javascript
const inputBody = '{
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/',
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

This endpoint create a Webhook Endpoint and connect it to the given [webhook events](#list-of-events).

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/webhook/endpoint/`

> Body parameter

```json
{
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created"
    }
  ]
}
```

<h4 id="createwebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|» is_active|body|boolean|false|none|
|» target|body|string(uri)|true|none|
|» description|body|string|false|none|
|» events|body|list|true|none|
|»» type|body|string|true|The [webhook event type](#list-of-events)|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z",
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created",
      "added_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="createwebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Endpoint](#schemaendpoint)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Get a specific Webhook Endpoint

<a id="opIdretrieveWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/webhook/endpoint/{id}/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/{id}/',
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

This endpoint retrieves a specific webhook endpoint using ID.

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/webhook/endpoint/{id}/`


<h4 id="retrievewebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z",
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created",
      "added_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="retrievewebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Endpoint](#schemaendpoint)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Update a Specific Webhook Endpoint

<a id="opIdupdateWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/webhook/endpoint/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "is_active": true,
    "target": "http://example.com",
    "description": "string",
    "events": [
      {
        "type": "comment.created"
      }
    ]
  }'
```

```javascript
const inputBody = '{
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/{id}/',
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

This endpoint update a specific webhook endpoint.

<h4 id="http-request">HTTP Request</h4>

`PUT /api/v2/webhook/endpoint/{id}/`


> Body parameter

```json
{
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created"
    }
  ]
}
```

<h4 id="updatewebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint|
|» is_active|body|boolean|false|none|
|» target|body|string(uri)|true|none|
|» description|body|string|false|none|
|» events|body|list|true|none|
|»» type|body|string|true|The [webhook event type](#list-of-events)|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z",
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created",
      "added_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="updatewebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Endpoint](#schemaendpoint)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Update a single field of a Specific Webhook Endpoint

<a id="opIdpartialUpdateWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/webhook/endpoint/{id}/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "is_active": true,
    "target": "http://example.com",
    "description": "string",
    "events": [
      {
        "type": "comment.created"
      }
    ]
  }'
```

```javascript
const inputBody = '{
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/{id}/',
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

This endpoint update a specific field of a specific webhook endpoint.

<h4 id="http-request">HTTP Request</h4>

`PATCH /api/v2/webhook/endpoint/{id}/`

> Body parameter

```json
{
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created"
    }
  ]
}
```

<h4 id="partialupdatewebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint.|
|» is_active|body|boolean|false|none|
|» target|body|string(uri)|true|none|
|» description|body|string|false|none|
|» events|body|[object]|true|none|
|»» type|body|string|true|The [webhook event type](#list-of-events)|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z",
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created",
      "added_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="partialupdatewebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Endpoint](#schemaendpoint)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Delete a Webhook Endpoint

<a id="opIddestroyWebhookEndpoint"></a>

> Code samples

```shell
curl -X DELETE /api/v2/webhook/endpoint/{id}/ \
  -H 'Authorization: Bearer {access_token}'
```

```javascript
const headers = {
  'Authorization: Bearer <access_token>'
};
fetch('/api/v2/webhook/endpoint/{id}/',
{
  method: 'DELETE',
  headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint delete a Webhook Endpoint.

<h4 id="http-request">HTTP Request</h4>

`DELETE /api/v2/webhook/endpoint/{id}/`


<h4 id="destroywebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint.|

<h4 id="destroywebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Get All Webhook Endpoint Attempts

<a id="opIdattemptWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/webhook/endpoint/{id}/attempt/ \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}'
```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/{id}/attempt/',
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

This Endpoint retrieve attempts related to this endpoint

<h4 id="http-request">HTTP Request</h4>

`GET /api/v2/webhook/endpoint/{id}/attempt/`


<h4 id="attemptwebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint.|
|ordering|query|string|false|Which field to use when ordering the results. For sorting desc use - in front of the field name. Default to -created_at. Available values are created_at, sent_at|

> Example responses

> 200 Response

```json
{
    "count": 1,
    "next": null,
    "previous": null,
    "results": [
        {
            "id": 1,
            "created_at": "2021-03-25T15:21:46.575398+01:00",
            "event": {
                "type": "vote.created",
                "added_at": "2021-03-25T15:21:01.594964+01:00"
            },
            "sent_at": "2021-03-25T15:21:46.574763+01:00",
            "http_request_body": "{\"type\": \"vote.created\", \"created\": 1616682106.481539, \"data\": {\"user\": {\"id\": 8, \"username\": \"stefano\", \"real_name\": \"Stefano Rossi\", \"email\": \"fake8@example.org\", \"email_isvalid\": true, \"date_joined\": \"2021-03-23T12:34:01.637442+01:00\", \"bio\": \"Direttore ricerca e sviluppo nella mia azienda\", \"location\": \"Milano (MI) - Italia\", \"location_lat_lng\": \"45.4612,9.1878\", \"position_lat_lng\": null, \"date_of_birth\": \"1964-09-09\", \"description\": \"Imprenditore\", \"gender\": \"Male\", \"status\": \"a\", \"website\": \"http://www.yahoo.com\", \"avatar\": \"http://127.0.0.1:8000/upfiles/avatars/stefano/resized/53/8.jpg\", \"cover\": null, \"ext_id\": null, \"tags\": [], \"reputation\": 62}, \"voted_at\": \"2021-03-25T15:21:46.468720+01:00\", \"object_type\": \"discussion\", \"discussion\": {\"id\": 2, \"categories\": [{\"id\": 4, \"tags\": [], \"order\": 4, \"name\": \"animali\", \"name_synonyms\": \"animali\", \"slug\": \"animali\", \"slogan\": \"Per tutti gli amanti del fantastico mondo degli animali, per parlare della loro storia, evoluzione e dei loro comportamenti.\", \"html_info\": null, \"seo_title\": null, \"seo_description\": null, \"auto_follow\": \"None\", \"active\": true, \"deleted\": false, \"image_original\": \"http://127.0.0.1:8000/upfiles/categories/original/animali_5473.png\", \"image_bigger\": \"http://127.0.0.1:8000/upfiles/categories/bigger/animali_8125.png\", \"image_big\": \"http://127.0.0.1:8000/upfiles/categories/big/animali_3945.png\", \"image_medium\": \"http://127.0.0.1:8000/upfiles/categories/medium/animali_9527.png\", \"image_small\": \"http://127.0.0.1:8000/upfiles/categories/small/animali_3322.png\", \"emotional_image_original\": \"http://127.0.0.1:8000/upfiles/categories/e_original/animali_3880.jpg\", \"emotional_image_position\": 50, \"lastmod_datetime\": \"2021-03-23T12:33:33.078971+01:00\", \"stream_order_by\": \"recent\"}], \"medias\": [], \"location\": null, \"poll\": null, \"last_activity_at\": \"2021-03-23T12:35:03.313074+01:00\", \"author\": {\"id\": 1, \"username\": \"admin\", \"real_name\": \"\", \"date_joined\": \"2021-03-23T12:33:53.388318+01:00\", \"bio\": \"\", \"location\": \"\", \"location_lat_lng\": null, \"position_lat_lng\": null, \"date_of_birth\": null, \"description\": \"\", \"gender\": \"Unspecified\", \"website\": \"\", \"avatar\": \"http://127.0.0.1:8000/upfiles/avatars/admin/resized/53/1.jpg\", \"cover\": null, \"ext_id\": null, \"tags\": [], \"reputation\": 35}, \"added_at\": \"2021-03-23T12:35:00.575063+01:00\", \"html\": \"The Nicotines Of The City of Detroit - Tiny (CD, Self, 2004) \\n \\n Rock. New wave. Deflagrazioni pop. \\n Album d'esordio per questo gruppo che gravita intorno al corno inglese di Mike Patton. \\n Tiny mescola fanciullescamente new wave, no wave, new wave, trombe arsty, e dark wave, perfetto per sogni on the road again. \\n Ogni riferimento ai Faust e' puramente casuale. \\n Bombe e colore lottano annunciando dei fraseggi distaccati e lucidi. \\n Miglior album del 2004. \\n \\n (6) per il disco, (8) perche' si'.\", \"summary\": \"The Nicotines Of The City of Detroit - Tiny (CD, Self, 2004) Rock. New wave. Deflagrazioni pop. Album d&#39;esordio per questo gruppo che gravita intorno al corno inglese di Mike Patto ...\", \"deleted\": false, \"collapsed\": false, \"comment_count\": 11, \"vote_count\": 0, \"flag_count\": 0, \"addressing\": [], \"title\": \"Indiana Jones - S/t (CD, Greenwide, 2004)     Hip-hop. Rinascimentale.   Nuovo lavoro per i Indiana Jones, gruppo nato dall'incontro tra Jacob Kirkegaard e Greg Davis.   S/t crea il suono adatto a regalare tinte intimistiche, perfetto per viaggi dell\", \"slug\": \"indiana-jones---st-cd-greenwide-2004-hip-hop-rinascimentale-nuovo-lavoro-per-i-indiana-jones-gruppo-nato-dallincontro-tra-jacob-kirkegaard-e-greg\", \"view_count\": 0, \"follower_count\": 0}}}",
            "http_response_code": 200,
            "http_response_body": "b'{\"success\":true}'",
            "next_retry": null
        }
    ]
}
```

<h4 id="attemptwebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Attempt](#schemaattempt)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Expire a specific Webhook Endpoint signing secret

<a id="opIdsecretExpireWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/webhook/endpoint/{id}/secret/expire/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "password": "string"
  }'
```

```javascript
const inputBody = '{
  "password": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/{id}/secret/expire/',
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

This Endpoint expire the secret associated with this endpoint and return a new one

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/webhook/endpoint/{id}/secret/expire/`

> Body parameter

```json
{
  "password": "string"
}
```

<h4 id="secretexpirewebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint.|
|password|body|string|false|Logged user password. It is used for security check.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z",
  "is_active": true,
  "target": "http://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created",
      "added_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h4 id="secretexpirewebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Reveal a specific Webhook Endpoint signing secret

<a id="opIdsecretRevealWebhookEndpoint"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/webhook/endpoint/{id}/secret/reveal/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "password": "string"
  }'
```

```javascript
const inputBody = '{
  "password": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/{id}/secret/reveal/',
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

This Endpoint reveal the secret associated with this endpoint

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/webhook/endpoint/{id}/secret/reveal/`

> Body parameter

```json
{
  "password": "string"
}
```

<h4 id="secretexpirewebhookendpoint-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this endpoint.|
|password|body|string|false|Logged user password. It is used for security check.|


> Example responses

> 201 Response

```json
{
  "signing_secret": "string"
}
```

<h4 id="secretrevealwebhookendpoint-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[EndpointSecret](#schemaendpointsecret)|

<aside class="notice">
This operation require authentication and admin role.
</aside>

### Resend a specific Webhook Endpoint Attempt

<a id="opIdresendWebhookAttempt"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/webhook/endpoint/attempt/{id}/resend/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}' \
  --data-raw '{
    "password": "string"
  }'
```

```javascript
const inputBody = '{
  "password": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/webhook/endpoint/attempt/{id}/resend/',
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

This Endpoint resend the attempt specifyed by the id parameter.

<h4 id="http-request">HTTP Request</h4>

`POST /api/v2/webhook/endpoint/attempt/{id}/resend/`

> Body parameter

```json
{
  "password": "string"
}
```

<h4 id="resendwebhookattempt-parameters">Parameters</h4>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this attempt.|
|password|body|string|false|Logged user password. It is used for security check.|

<h4 id="resendwebhookattempt-responses">Responses</h4>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="notice">
This operation require authentication and admin role.
</aside>
