<h1 id="selfcommunity-api-tag">Tags</h1>

## Get All Users Tags

<a id="opIdlistTags"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/tag/',
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

`GET /api/v2/tag/`

A viewset that provides CRUD actions for the user tag

<h3 id="listtags-parameters">Parameters</h3>

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
  "next": "http://api.example.org/tag/?offset=400&limit=100",
  "previous": "http://api.example.org/tag/?offset=200&limit=100",
  "results": [
    {
      "id": 0,
      "name": "string",
      "description": "string",
      "color": "string",
      "visible": true,
      "active": true,
      "created_at": "2019-08-24T14:15:22Z"
    }
  ]
}
```

<h3 id="listtags-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listtags-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Count of tags|
|» next|string(uri)¦null|false|none|Next url for pagination|
|» previous|string(uri)¦null|false|none|Previous url for pagination|
|» results|[[Tag](#schematag)]|false|none|Array of tags|


<aside class="warning">
This operation require authentication and admin role
</aside>

## Create a Tag

<a id="opIdcreateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v2/tag/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'
  -d '{"name": "string"}'

```

```javascript
const inputBody = '{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/tag/',
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

`POST /api/v2/tag/`

A viewset that provides CRUD actions for the user tag

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}
```

```yaml
name: string
description: string
color: string
visible: true
active: true

```

<h3 id="createtag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[Tag](#schematag)|false|none|
|» id|body|integer|false|none|
|» name|body|string|true|none|
|» description|body|string¦null|false|none|
|» color|body|string|false|none|
|» visible|body|boolean|false|none|
|» active|body|boolean|false|none|
|» created_at|body|string(date-time)|false|none|

> Example responses

> 201 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="createtag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|[Tag](#schematag)|

<aside class="success">
This operation does not require authentication
</aside>

## retrieveTag

<a id="opIdretrieveTag"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/tag/{id}/ \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v2/tag/{id}/', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/tag/{id}/',
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

`GET /api/v2/tag/{id}/`

A viewset that provides CRUD actions for the user tag

<h3 id="retrievetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="retrievetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="success">
This operation does not require authentication
</aside>

## updateTag

<a id="opIdupdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v2/tag/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.put('/api/v2/tag/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/tag/{id}/',
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

`PUT /api/v2/tag/{id}/`

A viewset that provides CRUD actions for the user tag

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}
```

```yaml
name: string
description: string
color: string
visible: true
active: true

```

<h3 id="updatetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|
|body|body|[Tag](#schematag)|false|none|
|» id|body|integer|false|none|
|» name|body|string|true|none|
|» description|body|string¦null|false|none|
|» color|body|string|false|none|
|» visible|body|boolean|false|none|
|» active|body|boolean|false|none|
|» created_at|body|string(date-time)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="updatetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="success">
This operation does not require authentication
</aside>

## partialUpdateTag

<a id="opIdpartialUpdateTag"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v2/tag/{id}/ \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': 'application/json'
}

r = requests.patch('/api/v2/tag/{id}/', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}';
const headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'application/json'
};

fetch('/api/v2/tag/{id}/',
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

`PATCH /api/v2/tag/{id}/`

A viewset that provides CRUD actions for the user tag

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true
}
```

```yaml
name: string
description: string
color: string
visible: true
active: true

```

<h3 id="partialupdatetag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|
|body|body|[Tag](#schematag)|false|none|
|» id|body|integer|false|none|
|» name|body|string|true|none|
|» description|body|string¦null|false|none|
|» color|body|string|false|none|
|» visible|body|boolean|false|none|
|» active|body|boolean|false|none|
|» created_at|body|string(date-time)|false|none|

> Example responses

> 200 Response

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "color": "string",
  "visible": true,
  "active": true,
  "created_at": "2019-08-24T14:15:22Z"
}
```

<h3 id="partialupdatetag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Tag](#schematag)|

<aside class="success">
This operation does not require authentication
</aside>

## destroyTag

<a id="opIddestroyTag"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v2/tag/{id}/

```

```python
import requests

r = requests.delete('/api/v2/tag/{id}/')

print(r.json())

```

```javascript

fetch('/api/v2/tag/{id}/',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /api/v2/tag/{id}/`

A viewset that provides CRUD actions for the user tag

<h3 id="destroytag-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|A unique integer value identifying this user tag.|
|search|query|string|false|A search term.|

<h3 id="destroytag-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|none|None|

<aside class="success">
This operation does not require authentication
</aside>
