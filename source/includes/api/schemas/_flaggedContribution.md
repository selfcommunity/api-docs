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
    "categories": [
        {
            "id": 0,
            "name": "string"
        }
    ],
    "title": "string",
    "html": "string",
    "summary": "string",
    "deleted": true,
    "collapsed": true,
    "parent": "string",
    "in_reply_to": "string",
    "comment_count": 0,
    "vote_count": 0,
    "flag_count": 6,
    "flag_count_detail": {
        "0": 1,
        "2": 5
    },
    "media_count_detail": {},
    "has_poll": false,
    "thread_id": 0,
    "thread_type": "string"
  },
  "last_flagged_at": "2019-08-24T14:15:22Z",
  "moderation_status": "string",
  "moderation_type": "0",
  "moderation_by": {
      "id": 0,
      "username": "string",
      "real_name": "",
      "avatar": "url",
      "ext_id": null,
      "tags": []
  },
  "moderation_at": "2021-07-07T12:20:12.472485+02:00"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|contribution_type|string|true|none|post, discussion, status or comment|
|contribution|[object]|true|none|the contribution|
|last_flagged_at|string(date-time)|true|none|date time of the last flag|
|moderation_status|string|true|none|moderation status|
|moderation_type|integer|false|none|cause of the moderation|
|moderation_by|[User](#schemauser)|false|none|moderator|
|moderation_at|string(date-time)|true|none|date time of the moderation|

#### Enumerated Values

|Property|Value|
|---|---|
|contribution_type|discussion|
|contribution_type|post|
|contribution_type|comment|
|moderation_status|ignored|
|moderation_status|deleted|
|moderation_status|hidden|

|Parameter|Value|Description|
|---|---|---|
|moderation_type|0|spam|
|moderation_type|1|aggressive|
|moderation_type|2|vulgar|
|moderation_type|3|poor|
|moderation_type|4|offtopic|

#### Field media_count_detail possible keys
|Key|
|---|
|vimeo|
|url|
|embed|
|image|
|eimage|
|doc|
|share|

