<h3 id="tocS_Comment">Comment</h3>
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
  "comment_count": 1,
  "latest_comments": [
    {
      "id": 1,
      "object": 1,
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
      "comment_count": 0
    }
  ]
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|object|integer|false|none|Id of the object ([Discussion](#schemadiscussion) or [Post](#schemapost))|
|author|[User](#schemauser)|true|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|Is this comment deleted|
|collapsed|boolean|false|read-only|Is this comment collapsed|
|parent|integer¦null|false|none|Id of the parent [Comment](#schemacomment)|
|in_reply_to|integer¦null|false|none|Id of the reply [Comment](#schemacomment), it must have the same `parent` and `object`|
|vote_count|integer|false|read-only|none|
|flag_count|integer|false|read-only|none|
|comment_count|integer|false|read-only|none|
|text|string|true|write-only|none|
|latest_comments|list([CommentSummary](#schemacommentsummary))|false|read-only|none|


<h3 id="tocS_CommentSummary">CommentSummary</h3>
<!-- backwards compatibility -->
<a id="schemacommentsummary"></a>
<a id="schema_CommentSummary"></a>
<a id="tocScommentsummary"></a>
<a id="tocscommentsummary"></a>

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
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|object|integer|false|none|Id of the object ([Discussion](#schemadiscussion) or [Post](#schemapost))|
|author|[User](#schemauser)|true|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|Is this comment deleted|
|collapsed|boolean|false|read-only|Is this comment collapsed|
|parent|integer¦null|false|none|Id of the parent [Comment](#schemacomment)|
|in_reply_to|integer¦null|false|none|Id of the reply [Comment](#schemacomment), it must have the same `parent` and `object`|
|vote_count|integer|false|read-only|none|
|flag_count|integer|false|read-only|none|
|comment_count|integer|false|read-only|none|