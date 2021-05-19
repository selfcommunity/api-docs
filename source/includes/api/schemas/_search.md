<h3 id="tocS_SearchMatch">SearchMatch</h3>
<!-- backwards compatibility -->
<a id="schemasearchmatch"></a>
<a id="schema_SearchMatch"></a>
<a id="tocSsearchmatch"></a>
<a id="tocssearchmatch"></a>

```json
{
    "object": {
      "id": 238,
      "type": "comment",
      "added_at": "2020-10-19T16:05:34.974676+00:00",
      "html": "string"
    },
    "author": {
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
      "website": "https://example.com",
      "avatar": "string",
      "cover": "string"
    }
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|object|object|false|none|General reference for [Discussion](#schemadiscussion), [Post](#schemapost) or [Comment](#schemacomment)|
|» id|integer|false|read-only|Object id|
|» type|string|false|read-only|Type of the object|
|» added_at|string(date-time)|false|read-only|none|
|» html|string|false|read-only|The content of the object in html format, it contains the match of the search wrapped into `<b>` tag|
|author|[User](#schemauser)|false|read-only|none|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|type|discussion|Identify a [Discussion](#schemadiscussion) object|
|type|post|Identify a [Post](#schemapost) object|
|type|comment|Identify a [Comment](#schemacomment) object|
