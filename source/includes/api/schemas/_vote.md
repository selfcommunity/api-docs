<h3 id="tocS_Vote">Vote</h3>
<!-- backwards compatibility -->
<a id="schemavote"></a>
<a id="schema_Vote"></a>
<a id="tocSvote"></a>
<a id="tocsvote"></a>

```json
{
  "user": {
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
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string"
  },
  "voted_at": "2019-08-24T14:15:22Z"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user|[User](#schemauser)|false|read-only|none|
|voted_at|string(date-time)|false|read-only|none|


<h3 id="tocS_PollVote">PollVote</h3>
<!-- backwards compatibility -->
<a id="schemapollvote"></a>
<a id="schema_PollVote"></a>
<a id="tocSpollvote"></a>
<a id="tocspollvote"></a>

```json
{
  "id": 0,
  "choice": "string",
  "user": {
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
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string"
  }
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|choice|integer|false|read-only|Poll Choice unique id|
|user|[User](#schemauser)|false|read-only|none|