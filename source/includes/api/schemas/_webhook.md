<h3 id="tocS_Endpoint">Endpoint</h3>
<!-- backwards compatibility -->
<a id="schemaendpoint"></a>
<a id="schema_Endpoint"></a>
<a id="tocSendpoint"></a>
<a id="tocsendpoint"></a>

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "updated_at": "2019-08-24T14:15:22Z",
  "is_active": true,
  "target": "https://example.com",
  "description": "string",
  "events": [
    {
      "type": "comment.created",
      "added_at": "2019-08-24T14:15:22Z"
    }
  ]
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|created_at|string(date-time)|false|read-only|none|
|updated_at|string(date-time)|false|read-only|none|
|is_active|boolean|false|none|none|
|target|string(uri)|true|none|none|
|description|string|false|none|none|
|events|list|true|none|none|
|» type|string|true|none|none|
|» added_at|string(date-time)|false|read-only|none|

<h3 id="tocS_Attempt">Attempt</h3>
<!-- backwards compatibility -->
<a id="schemaattempt"></a>
<a id="schema_Attempt"></a>
<a id="tocSattempt"></a>
<a id="tocsattempt"></a>

```json
{
  "id": 0,
  "created_at": "2019-08-24T14:15:22Z",
  "event": {
    "type": "comment.created",
    "added_at": "2019-08-24T14:15:22Z"
  },
  "sent_at": "2019-08-24T14:15:22Z",
  "http_request_body": "string",
  "http_response_code": 0,
  "http_response_body": "string",
  "next_retry": "2019-08-24T14:15:22Z"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|created_at|string(date-time)|false|read-only|none|
|event|list|true|none|none|
|» type|string|true|none|none|
|» added_at|string(date-time)|false|read-only|none|
|sent_at|string(date-time)|false|read-only|none|
|http_request_body|string|false|read-only|none|
|http_response_code|integer|false|read-only|none|
|http_response_body|string|false|read-only|none|
|next_retry|string(date-time)|false|read-only|none|

<h3 id="tocS_EndpointSecret">EndpointSecret</h3>
<!-- backwards compatibility -->
<a id="schemaendpointsecret"></a>
<a id="schema_EndpointSecret"></a>
<a id="tocSendpointsecret"></a>
<a id="tocsendpointsecret"></a>

```json
{
  "signing_secret": "string"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|signing_secret|string|false|read-only|none|
