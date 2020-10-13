<h2 id="tocS_Discussion">Discussion</h2>
<!-- backwards compatibility -->
<a id="schemadiscussion"></a>
<a id="schema_Discussion"></a>
<a id="tocSdiscussion"></a>
<a id="tocsdiscussion"></a>

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "text": "string",
  "categories": [
    0
  ],
  "media_type": "images",
  "medias": [
    0
  ],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "poll": {
    "id": 0,
    "title": "string",
    "multiple_choices": true,
    "added_at": "2019-08-24T14:15:22Z",
    "modified_at": "2019-08-24T14:15:22Z",
    "closed": true,
    "expiration_at": "2019-08-24T14:15:22Z",
    "hidden": "string",
    "choices": [
      {
        "id": 0,
        "choice": "string",
        "order": 0,
        "added_at": "2019-08-24T14:15:22Z",
        "deleted": "string",
        "count_votes": "string"
      }
    ],
    "votes": [
      {
        "id": 0,
        "choice": "string",
        "user": "string"
      }
    ]
  },
  "last_activity_at": "2019-08-24T14:15:22Z",
  "view_count": 0,
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
    "website": "http://example.com",
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "comment_count": "string",
  "vote_count": "string",
  "flag_count": "string",
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "addressing": [
    0
  ],
  "follower_count": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string¦null|false|none|none|
|slug|string|false|read-only|none|
|text|string|true|write-only|none|
|categories|[integer]|true|none|none|
|media_type|string|false|read-only|none|
|medias|[integer]|false|none|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|poll|object¦null|false|none|none|
|» id|integer|false|read-only|none|
|» title|string|true|none|none|
|» multiple_choices|boolean|false|none|none|
|» added_at|string(date-time)|false|read-only|none|
|» modified_at|string(date-time)|false|read-only|none|
|» closed|boolean|false|none|none|
|» expiration_at|string(date-time)|true|none|none|
|» hidden|string|false|read-only|none|
|» choices|[object]|true|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|true|none|none|
|»» order|integer|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» deleted|string|false|read-only|none|
|»» count_votes|string|false|read-only|none|
|» votes|[object]¦null|false|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|false|read-only|none|
|»» user|string|false|read-only|none|
|last_activity_at|string(date-time)|false|read-only|none|
|view_count|integer|false|read-only|none|
|author|object|false|read-only|none|
|» id|integer|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|comment_count|string|false|read-only|none|
|vote_count|string|false|read-only|none|
|flag_count|string|false|read-only|none|
|captcha|object|false|write-only|none|
|» hashkey|string|true|none|none|
|» response|string|true|none|none|
|addressing|[integer]|false|none|none|
|follower_count|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_ListDiscussion">ListDiscussion</h2>
<!-- backwards compatibility -->
<a id="schemalistdiscussion"></a>
<a id="schema_ListDiscussion"></a>
<a id="tocSlistdiscussion"></a>
<a id="tocslistdiscussion"></a>

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "text": "string",
  "categories": [
    0
  ],
  "media_type": "images",
  "medias": [
    0
  ],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "poll": {
    "id": 0,
    "title": "string",
    "multiple_choices": true,
    "added_at": "2019-08-24T14:15:22Z",
    "modified_at": "2019-08-24T14:15:22Z",
    "closed": true,
    "expiration_at": "2019-08-24T14:15:22Z",
    "hidden": "string",
    "choices": [
      {
        "id": 0,
        "choice": "string",
        "order": 0,
        "added_at": "2019-08-24T14:15:22Z",
        "deleted": "string",
        "count_votes": "string"
      }
    ],
    "votes": [
      {
        "id": 0,
        "choice": "string",
        "user": "string"
      }
    ]
  },
  "last_activity_at": "2019-08-24T14:15:22Z",
  "view_count": 0,
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
    "website": "http://example.com",
    "avatar_url": "string",
    "cover": "string"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": "string",
  "comment_count": "string",
  "vote_count": "string",
  "flag_count": "string",
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "addressing": [
    0
  ],
  "follower_count": "string",
  "seen_by_id": [
    null
  ],
  "has_boost": true,
  "actions": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string¦null|false|none|none|
|slug|string|false|read-only|none|
|text|string|true|write-only|none|
|categories|[integer]|true|none|none|
|media_type|string|false|read-only|none|
|medias|[integer]|false|none|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|poll|object¦null|false|none|none|
|» id|integer|false|read-only|none|
|» title|string|true|none|none|
|» multiple_choices|boolean|false|none|none|
|» added_at|string(date-time)|false|read-only|none|
|» modified_at|string(date-time)|false|read-only|none|
|» closed|boolean|false|none|none|
|» expiration_at|string(date-time)|true|none|none|
|» hidden|string|false|read-only|none|
|» choices|[object]|true|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|true|none|none|
|»» order|integer|false|read-only|none|
|»» added_at|string(date-time)|false|read-only|none|
|»» deleted|string|false|read-only|none|
|»» count_votes|string|false|read-only|none|
|» votes|[object]¦null|false|none|none|
|»» id|integer|false|read-only|none|
|»» choice|string|false|read-only|none|
|»» user|string|false|read-only|none|
|last_activity_at|string(date-time)|false|read-only|none|
|view_count|integer|false|read-only|none|
|author|object|false|read-only|none|
|» id|integer|false|read-only|none|
|» username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|» real_name|string|false|none|none|
|» email|string(email)|false|read-only|none|
|» email_isvalid|boolean|false|read-only|none|
|» date_joined|string(date-time)|false|read-only|none|
|» bio|string|false|none|none|
|» location|string|false|none|none|
|» birthday|string|false|none|none|
|» description|string|false|none|none|
|» gender|string|false|none|none|
|» status|string|false|read-only|none|
|» website|string(uri)|false|none|none|
|» avatar_url|string|false|read-only|none|
|» cover|string|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|comment_count|string|false|read-only|none|
|vote_count|string|false|read-only|none|
|flag_count|string|false|read-only|none|
|captcha|object|false|write-only|none|
|» hashkey|string|true|none|none|
|» response|string|true|none|none|
|addressing|[integer]|false|none|none|
|follower_count|string|false|read-only|none|
|seen_by_id|[any]|false|none|none|
|has_boost|boolean|false|none|none|
|actions|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|media_type|images|
|media_type|video|
|media_type|documents|
|media_type|link|