<h2 id="tocS_Comment">Comment</h2>
<!-- backwards compatibility -->
<a id="schemacomment"></a>
<a id="schema_Comment"></a>
<a id="tocScomment"></a>
<a id="tocscomment"></a>

```json
{
  "id": 0,
  "object": 0,
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "comments_count": 0,
  "vote_count": 0,
  "flag_count": 0,
  "comment_count": 0,
  "text": "string",
  "latest_comments": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|object|integer¦null|false|none|none|
|author|object|false|read-only|[User](#schemauser)|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|boolean|false|read-only|none|
|parent|integer¦null|false|none|none|
|in_reply_to|integer¦null|false|none|none|
|vote_count|integer|false|read-only|none|
|flag_count|integer|false|read-only|none|
|comment_count|integer|false|read-only|none|
|text|string|true|write-only|none|
|latest_comments|string|false|read-only|none|