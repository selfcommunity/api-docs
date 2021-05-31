<h3 id="tocS_FlaggedContribution">FlaggedContribution</h3>
<!-- backwards compatibility -->
<a id="schemaflaggedcontribution"></a>
<a id="schema_FlaggedContribution"></a>
<a id="tocSflaggedcontribution"></a>
<a id="tocsflaggedcontribution"></a>

```json
{
  "contribution_type": "string",
  "contribution": {
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
      "website": "https://example.com",
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

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|contribution_type|string|true|none|none|
|contribution|[object]|true|none|none|
|last_flagged_at|string(date-time)|true|none|none|
|moderation_status|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|contribution_type|discussion|
|contribution_type|post|
|contribution_type|comment|
|moderation_status|ignored|
|moderation_status|deleted|
|moderation_status|hidden|
|moderation_status|open|
