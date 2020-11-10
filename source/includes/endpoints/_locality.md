<h1 id="selfcommunity-api-locality">Locality</h1>

## Get Localities

<a id="opIdlistLocalitys"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/locality/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/locality/',
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

This endpoint retrieve the list of available localities for [Discussion](#selfcommunity-api-discussion) and/or [Post](#selfcommunity-api-post) geolocalization.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/locality/`

<h3 id="listlocalitys-parameters">Parameters</h3>

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
      "full_address": "string",
      "postal_code": "string",
      "town": "string",
      "province": "string",
      "province_short": "string",
      "region": "string",
      "country": "string",
      "lat": 0,
      "lng": 0
    }
  ]
}
```

<h3 id="listlocalitys-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|Inline|

<h3 id="listlocalitys-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» count|integer|false|none|Total number of results|
|» next|string¦null|false|none|Next page url|
|» previous|string¦null|false|none|Previous page url|
|» results|[[Locality](#schemalocality)]|false|none|List of results|
|»» full_address|string|false|read-only|none|
|»» postal_code|string|false|read-only|none|
|»» town|string|false|read-only|none|
|»» province|string|false|read-only|none|
|»» province_short|string|false|read-only|none|
|»» region|string|false|read-only|none|
|»» country|string|false|read-only|none|
|»» lat|number|false|read-only|none|
|»» lng|number|false|read-only|none|

<aside class="notice">
This operation does not require authentication
</aside>
