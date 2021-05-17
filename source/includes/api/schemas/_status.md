<h3 id="tocS_Status">Status</h3>
<!-- backwards compatibility -->
<a id="schemastatus"></a>
<a id="schema_Status"></a>
<a id="tocSstatus"></a>
<a id="tocsstatus"></a>

```json
{
  "id": 0,
  "categories": [
    {
      "id": 0,
      "order": 1,
      "name": "name",
      "name_synonyms": "synonyms",
      "slug": "name",
      "slogan": "Slogan",
      "html_info": null,
      "seo_title": null,
      "seo_description": null,
      "auto_follow": "None",
      "active": true,
      "deleted": false,
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": 50,
      "lastmod_datetime": "2020-09-30T15:22:07.123058+02:00",
      "stream_order_by": "recent"
    }
  ],
  "media_type": "images",
  "medias": [
    {
      "id": 0,
      "added_at": "2019-08-24T14:15:22Z",
      "type": "url",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "order": 0,
      "embed": {
          "id": 0,
          "embed_type": "string",
          "embed_id": "string",
          "url": "string",
          "metadata": {}
      }
    }
  ],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "last_activity_at": "2019-08-24T14:15:22Z",
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "location_lat_lng": "string",
    "position_lat_lng": "string",
    "date_of_birth": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string",
    "ext_id": "string",
    "tags": [],
    "reputation": 111,
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
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|categories|list([Category](#schemacategory))|true|none|none|
|media_type|string|false|read-only|none|
|medias|list([Media](#schemamedia))|false|none|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|last_activity_at|string(date-time)|false|read-only|none|
|author|[User](#schemauser)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|comment_count|integer|false|read-only|none|
|share_count|integer|false|read-only|none|
|vote_count|integer|false|read-only|none|
|flag_count|integer|false|read-only|none|
|addressing|[integer]|false|none|none|

<h3 id="tocS_SearchStatus">SearchStatus</h3>
<!-- backwards compatibility -->
<a id="schemasearchstatus"></a>
<a id="schema_SearchStatus"></a>
<a id="tocSsearchstatus"></a>
<a id="tocssearchstatus"></a>

```json
{
  "id": 0,
  "categories": [
    {
      "id": 0,
      "order": 1,
      "name": "name",
      "name_synonyms": "synonyms",
      "slug": "name",
      "slogan": "Slogan",
      "html_info": null,
      "seo_title": null,
      "seo_description": null,
      "auto_follow": "None",
      "active": true,
      "deleted": false,
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": 50,
      "lastmod_datetime": "2020-09-30T15:22:07.123058+02:00",
      "stream_order_by": "recent"
    }
  ],
  "media_type": "images",
  "medias": [
    {
      "id": 0,
      "added_at": "2019-08-24T14:15:22Z",
      "type": "url",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "order": 0,
      "embed": {
        "id": 0,
        "embed_type": "string",
        "embed_id": "string",
        "url": "string",
        "metadata": {}
      }
    }
  ],
  "location": {
    "location": "string",
    "lat": 0,
    "lng": 0
  },
  "last_activity_at": "2019-08-24T14:15:22Z",
  "author": {
    "id": 0,
    "username": "string",
    "real_name": "string",
    "date_joined": "2019-08-24T14:15:22Z",
    "bio": "string",
    "location": "string",
    "location_lat_lng": "string",
    "position_lat_lng": "string",
    "date_of_birth": "string",
    "description": "string",
    "gender": "Male",
    "website": "http://example.com",
    "avatar": "string",
    "cover": "string",
    "ext_id": "string",
    "tags": [],
    "reputation": 111,
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
  "matches": [
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
        "date_joined": "2019-08-24T14:15:22Z",
        "bio": "string",
        "location": "string",
        "location_lat_lng": "string",
        "position_lat_lng": "string",
        "date_of_birth": "string",
        "description": "string",
        "gender": "Male",
        "website": "http://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": "string",
        "tags": [],
        "reputation": 111,
      }
    }
  ]
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|categories|list([Category](#schemacategory))|true|none|none|
|medias|list([Media](#schemamedia))|false|none|none|
|location|object¦null|false|none|none|
|» location|string¦null|true|none|none|
|» lat|number¦null|true|none|none|
|» lng|number¦null|true|none|none|
|last_activity_at|string(date-time)|false|read-only|none|
|author|[User](#schemauser)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|
|comment_count|integer|false|read-only|none|
|share_count|integer|false|read-only|none|
|vote_count|integer|false|read-only|none|
|flag_count|integer|false|read-only|none|
|addressing|[integer]|false|none|none|
|matches|list([SearchMatch](#schemasearchmatch))|false|read-only|none|