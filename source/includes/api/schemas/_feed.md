<h3 id="tocS_Feed">Feed</h3>
<!-- backwards compatibility -->
<a id="schemafeed"></a>
<a id="schema_Feed"></a>
<a id="tocSfeed"></a>
<a id="tocsfeed"></a>

```json
{
  "type": "discussion",
  "discussion": {
    "id": 0,
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
    "author": {
      "id": 0,
      "username": "string",
      "real_name": "string",
      "date_joined": "2019-08-24T14:15:22Z",
      "bio": "string",
      "location": "string",
      "position": "string",
      "birthday": "string",
      "description": "string",
      "gender": "Male",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": "string",
      "tags": [
        {
          "id": 0,
          "active": true,
          "type": "user",
          "name": "string",
          "description": "string",
          "color": "string",
          "visible": true,
          "deleted": true,
          "created_at": "2019-08-24T14:15:22Z"
        }
      ]
    },
    "added_at": "2019-08-24T14:15:22Z",
    "html": "string",
    "summary": "string",
    "deleted": true,
    "collapsed": false,
    "comment_count": 0,
    "share_count": 0,
    "vote_count": 0,
    "flag_count": 0,
    "addressing": [
      0
    ],
    "title": "string",
    "slug": "string",
    "view_count": 0,
    "captcha": {
      "hashkey": "string",
      "response": "string"
    },
    "follower_count": "string"
  },
  "post": {
    "id": 0,
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
    "author": {
      "id": 0,
      "username": "string",
      "real_name": "string",
      "date_joined": "2019-08-24T14:15:22Z",
      "bio": "string",
      "location": "string",
      "position": "string",
      "birthday": "string",
      "description": "string",
      "gender": "Male",
      "website": "http://example.com",
      "avatar": "string",
      "cover": "string",
      "ext_id": "string",
      "tags": [
        {
          "id": 0,
          "active": true,
          "type": "user",
          "name": "string",
          "description": "string",
          "color": "string",
          "visible": true,
          "deleted": true,
          "created_at": "2019-08-24T14:15:22Z"
        }
      ]
    },
    "added_at": "2019-08-24T14:15:22Z",
    "html": "string",
    "summary": "string",
    "deleted": true,
    "collapsed": false,
    "comment_count": 0,
    "share_count": 0,
    "vote_count": 0,
    "flag_count": 0,
    "addressing": [
      0
    ]
  },
  "seen_by_id": [],
  "has_boost": true,
  "activities": [
    {
      "type": "string",
      "object": {},
      "author": {
        "id": 0,
        "username": "string",
        "real_name": "string",
        "date_joined": "2019-08-24T14:15:22Z",
        "bio": "string",
        "location": "string",
        "position": "string",
        "birthday": "string",
        "description": "string",
        "gender": "Male",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": "string",
        "tags": [
          {
            "id": 0,
            "active": true,
            "type": "user",
            "name": "string",
            "description": "string",
            "color": "string",
            "visible": true,
            "deleted": true,
            "created_at": "2019-08-24T14:15:22Z"
          }
        ]
      },
      "active_at": "2019-08-24T14:15:22Z",
      "seen_by_id": [
        null
      ]
    }
  ]
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|type|string|false|read-only|The type of the object, can be `discussion` or `post`|
|discussion|[Discussion](#schemadiscussion)¦null|false|read-only|none|
|post|[Post](#schemapost)¦undefined|false|read-only|none|
|seen_by_id|list(integer)¦undefined|false|read-only|Id of [User](#schemauser) that have seen this object|
|has_boost|¦undefined|false|read-only|True if this object has the visibility boost|
|activities|list([FeedActivity](#schemafeedactivity))¦undefined|false|read-only|List of feed acitivity. This field is returned only for relevance feed|

<h3 id="tocS_FeedActivity">FeedActivity</h3>
<!-- backwards compatibility -->
<a id="schemafeedactivity"></a>
<a id="schema_FeedActivity"></a>
<a id="tocSfeedactivity"></a>
<a id="tocsfeedactivity"></a>

```json
{
  "type": "string",
  "comment": {},
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "position": "string",
    "birthday": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string",
    "ext_id": "string",
    "tags": [
      {
        "id": 0,
        "active": true,
        "type": "string",
        "name": "string",
        "description": "string",
        "color": "string",
        "visible": true,
        "deleted": true,
        "created_at": "2019-08-24T14:15:22Z"
      }
    ]
  },
  "active_at": "2019-08-24T14:15:22Z",
  "seen_by_id": [
    0
  ]
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|type|string|false|read-only|none|
|comment|[Comment](#schemacomment)¦null|false|read-only|none|
|author|[User](#schemauser)|false|read-only|none|
|active_at|string(date-time)|false|read-only|none|
|seen_by_id|list(integer)¦null|false|read-only|Id of [User](#schemauser) that have seen this activity|

<h3 id="tocS_FeedUnseenCount">FeedUnseenCount</h3>
<!-- backwards compatibility -->
<a id="schemafeedunseencount"></a>
<a id="schema_FeedUnseenCount"></a>
<a id="tocSfeedunseencount"></a>
<a id="tocsfeedunseencount"></a>

```json
{
  {
    "count_by_category": [
        {
            "id": 1,
            "count": 67
        }
    ],
    "total": 67
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|count_by_category|list(object)|false|read-only|Total count of unread feed objects per category|
|» id|integer|true|read-only|[Category](#schemacategory) id]|
|» count|integer|true|read-only|Total count of unread feed objects for this category|
|total|integer|true|read-only|Total count of unread feed objects|
