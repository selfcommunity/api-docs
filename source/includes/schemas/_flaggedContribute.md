<h2 id="tocS_FlaggedContribute">FlaggedContribute</h2>
<!-- backwards compatibility -->
<a id="schemaflaggedcontribute"></a>
<a id="schema_FlaggedContribute"></a>
<a id="tocSflaggedcontribute"></a>
<a id="tocsflaggedcontribute"></a>

```json
{
  "contribute_type": "string",
  "contribute": {
    "id": 0,
    "author": {
      "id": 0,
      "username": "string",
      "real_name": "string",
      "date_joined": "2019-08-24T14:15:22Z",
      "bio": "string",
      "location": "string",
      "location_lat_lng": "string",
      "position_lat_lng": "string",
      "date_of_birth": "2019-08-24",
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
    "title": "string",
    "html": "string",
    "summary": "string",
    "deleted": true,
    "collapsed": true,
    "parent": "string",
    "in_reply_to": "string",
    "comment_count": 0,
    "vote_count": "string",
    "flag_count": "string"
  },
  "last_flagged_at": "2019-08-24T14:15:22Z",
  "moderation_status": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|contribute_type|string|true|none|none|
|contribute|[object]|true|none|none|
|last_flagged_at|string(date-time)|true|none|none|
|moderation_status|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|contribute_type|discussion|
|contribute_type|post|
|contribute_type|comment|
|moderation_status|ignored|
|moderation_status|contribute deleted|
|moderation_status|contribute hidden|
|moderation_status|open|
