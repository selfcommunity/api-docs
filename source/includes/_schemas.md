# Schemas

<h2 id="tocS_CaptchaRefresh">CaptchaRefresh</h2>
<!-- backwards compatibility -->
<a id="schemacaptcharefresh"></a>
<a id="schema_CaptchaRefresh"></a>
<a id="tocScaptcharefresh"></a>
<a id="tocscaptcharefresh"></a>

```json
{
  "key": "string",
  "image_url": "http://example.com",
  "audio_url": "http://example.com"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|key|string|true|none|none|
|image_url|string(uri)|true|none|none|
|audio_url|string(uri)|true|none|none|

<h2 id="tocS_Locality">Locality</h2>
<!-- backwards compatibility -->
<a id="schemalocality"></a>
<a id="schema_Locality"></a>
<a id="tocSlocality"></a>
<a id="tocslocality"></a>

```json
{
  "full_address": "string",
  "postal_code": "string",
  "town": "string",
  "province": "string",
  "province_short": "string",
  "region": "string",
  "country": "string",
  "lat": 0,
  "lng": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|full_address|string|false|read-only|none|
|postal_code|string|false|read-only|none|
|town|string|false|read-only|none|
|province|string|false|read-only|none|
|province_short|string|false|read-only|none|
|region|string|false|read-only|none|
|country|string|false|read-only|none|
|lat|number|false|read-only|none|
|lng|number|false|read-only|none|

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
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
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
  "media_type": "images",
  "author": {
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
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "type": "vimeo",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "link",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ],
      "embed_type": "string",
      "embed_id": "string"
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ],
  "seen_by_id": [
    null
  ],
  "has_boost": true,
  "latest_activities": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string|false|read-only|none|
|slug|string|false|read-only|none|
|category_tags|[object]|false|read-only|none|
|» id|integer|false|read-only|none|
|» name|string|true|none|none|
|» slug|string|true|none|none|
|» html_info|string¦null|false|none|none|
|» image_original|string(binary)¦null|false|none|none|
|» image_bigger|string(binary)|false|read-only|none|
|» image_big|string(binary)|false|read-only|none|
|» image_medium|string(binary)|false|read-only|none|
|» image_small|string(binary)|false|read-only|none|
|» emotional_image_original|string(binary)¦null|false|none|none|
|» emotional_image_position|integer|false|none|none|
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
|media_type|string|false|read-only|none|
|author|object|false|read-only|none|
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
|score|string|false|read-only|none|
|media_objects|[object]¦null|false|none|none|
|» id|integer|false|read-only|none|
|» hash_code|string(uuid)|false|read-only|none|
|» added_at|string(date-time)|false|read-only|none|
|» type|string¦null|false|none|none|
|» title|string|false|read-only|none|
|» description|string|false|read-only|none|
|» url|string(uri)|false|none|none|
|» keywords|string|false|read-only|none|
|» entities|string|false|read-only|none|
|» image|string(binary)¦null|false|none|none|
|» image_width|integer|false|read-only|none|
|» image_height|integer|false|read-only|none|
|» oembed_type|string|false|read-only|none|
|» oembed_url|string(uri)|false|read-only|none|
|» oembed_width|integer|false|read-only|none|
|» oembed_height|integer|false|read-only|none|
|» oembed_duration|integer|false|read-only|none|
|» oembed_html|string|false|read-only|none|
|» oembed_preview_ready|boolean|false|read-only|none|
|» oembed_available|boolean|false|read-only|none|
|» order|integer(int64)¦null|false|none|none|
|» choice_images|[any]|false|read-only|none|
|» embed_type|string¦null|false|none|none|
|» embed_id|string¦null|false|none|none|
|user_tags|[object]¦null|false|none|none|
|» id|string|false|read-only|none|
|» name|string|false|read-only|none|
|» color|string|false|read-only|none|
|» visible|string|false|read-only|none|
|» active|string|false|read-only|none|
|seen_by_id|[any]|false|none|none|
|has_boost|boolean|false|none|none|
|latest_activities|string|false|read-only|none|

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
|type|vimeo|
|type|url|
|type|embed|
|type|image|
|type|eimage|
|type|doc|
|oembed_type|link|
|oembed_type|photo|
|oembed_type|rich|
|oembed_type|video|

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
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
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
  "media_type": "images",
  "author": {
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
  "score": "string",
  "media_objects": [
    {
      "id": 0,
      "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
      "added_at": "2019-08-24T14:15:22Z",
      "type": "vimeo",
      "title": "string",
      "description": "string",
      "url": "http://example.com",
      "keywords": "string",
      "entities": "string",
      "image": "string",
      "image_width": 0,
      "image_height": 0,
      "oembed_type": "link",
      "oembed_url": "http://example.com",
      "oembed_width": 0,
      "oembed_height": 0,
      "oembed_duration": 0,
      "oembed_html": "string",
      "oembed_preview_ready": true,
      "oembed_available": true,
      "order": 0,
      "choice_images": [
        null
      ],
      "embed_type": "string",
      "embed_id": "string"
    }
  ],
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string|false|read-only|none|
|slug|string|false|read-only|none|
|category_tags|[object]|false|read-only|none|
|» id|integer|false|read-only|none|
|» name|string|true|none|none|
|» slug|string|true|none|none|
|» html_info|string¦null|false|none|none|
|» image_original|string(binary)¦null|false|none|none|
|» image_bigger|string(binary)|false|read-only|none|
|» image_big|string(binary)|false|read-only|none|
|» image_medium|string(binary)|false|read-only|none|
|» image_small|string(binary)|false|read-only|none|
|» emotional_image_original|string(binary)¦null|false|none|none|
|» emotional_image_position|integer|false|none|none|
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
|media_type|string|false|read-only|none|
|author|object|false|read-only|none|
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
|score|string|false|read-only|none|
|media_objects|[object]¦null|false|none|none|
|» id|integer|false|read-only|none|
|» hash_code|string(uuid)|false|read-only|none|
|» added_at|string(date-time)|false|read-only|none|
|» type|string¦null|false|none|none|
|» title|string|false|read-only|none|
|» description|string|false|read-only|none|
|» url|string(uri)|false|none|none|
|» keywords|string|false|read-only|none|
|» entities|string|false|read-only|none|
|» image|string(binary)¦null|false|none|none|
|» image_width|integer|false|read-only|none|
|» image_height|integer|false|read-only|none|
|» oembed_type|string|false|read-only|none|
|» oembed_url|string(uri)|false|read-only|none|
|» oembed_width|integer|false|read-only|none|
|» oembed_height|integer|false|read-only|none|
|» oembed_duration|integer|false|read-only|none|
|» oembed_html|string|false|read-only|none|
|» oembed_preview_ready|boolean|false|read-only|none|
|» oembed_available|boolean|false|read-only|none|
|» order|integer(int64)¦null|false|none|none|
|» choice_images|[any]|false|read-only|none|
|» embed_type|string¦null|false|none|none|
|» embed_id|string¦null|false|none|none|
|user_tags|[object]¦null|false|none|none|
|» id|string|false|read-only|none|
|» name|string|false|read-only|none|
|» color|string|false|read-only|none|
|» visible|string|false|read-only|none|
|» active|string|false|read-only|none|

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
|type|vimeo|
|type|url|
|type|embed|
|type|image|
|type|eimage|
|type|doc|
|oembed_type|link|
|oembed_type|photo|
|oembed_type|rich|
|oembed_type|video|

<h2 id="tocS_Widget">Widget</h2>
<!-- backwards compatibility -->
<a id="schemawidget"></a>
<a id="schema_Widget"></a>
<a id="tocSwidget"></a>
<a id="tocswidget"></a>

```json
{
  "name": "string",
  "position": "string",
  "column": "string",
  "index": 0,
  "page": 0,
  "page_index": 0,
  "visible": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|read-only|none|
|position|string|true|none|none|
|column|string|true|none|none|
|index|integer|true|none|none|
|page|integer|true|none|none|
|page_index|integer|true|none|none|
|visible|boolean|true|none|none|

<h2 id="tocS_Vote">Vote</h2>
<!-- backwards compatibility -->
<a id="schemavote"></a>
<a id="schema_Vote"></a>
<a id="tocSvote"></a>
<a id="tocsvote"></a>

```json
{
  "user": "string",
  "voted_post": "string",
  "voted_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user|string|false|read-only|none|
|voted_post|string|false|read-only|none|
|voted_at|string(date-time)|false|read-only|none|

<h2 id="tocS_Comment">Comment</h2>
<!-- backwards compatibility -->
<a id="schemacomment"></a>
<a id="schema_Comment"></a>
<a id="tocScomment"></a>
<a id="tocscomment"></a>

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string",
  "latest_comments": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|post|integer¦null|false|none|none|
|author|object|false|read-only|none|
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
|collapsed|boolean|false|read-only|none|
|parent|integer¦null|false|none|none|
|in_reply_to|integer¦null|false|none|none|
|score|string|false|read-only|none|
|latest_comments|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_Category">Category</h2>
<!-- backwards compatibility -->
<a id="schemacategory"></a>
<a id="schema_Category"></a>
<a id="tocScategory"></a>
<a id="tocscategory"></a>

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "html_info": "string",
  "image_original": "string",
  "image_bigger": "string",
  "image_big": "string",
  "image_medium": "string",
  "image_small": "string",
  "emotional_image_original": "string",
  "emotional_image_position": -2147483648
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|name|string|true|none|none|
|slug|string|true|none|none|
|html_info|string¦null|false|none|none|
|image_original|string(binary)¦null|false|none|none|
|image_bigger|string(binary)|false|read-only|none|
|image_big|string(binary)|false|read-only|none|
|image_medium|string(binary)|false|read-only|none|
|image_small|string(binary)|false|read-only|none|
|emotional_image_original|string(binary)¦null|false|none|none|
|emotional_image_position|integer|false|none|none|

<h2 id="tocS_User">User</h2>
<!-- backwards compatibility -->
<a id="schemauser"></a>
<a id="schema_User"></a>
<a id="tocSuser"></a>
<a id="tocsuser"></a>

```json
{
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
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|false|read-only|Required. 255 characters or fewer. Letters, numbers and -/_ characters|
|real_name|string|false|none|none|
|email|string(email)|false|read-only|none|
|email_isvalid|boolean|false|read-only|none|
|date_joined|string(date-time)|false|read-only|none|
|bio|string|false|none|none|
|location|string|false|none|none|
|birthday|string|false|none|none|
|description|string|false|none|none|
|gender|string|false|none|none|
|status|string|false|read-only|none|
|website|string(uri)|false|none|none|
|avatar_url|string|false|read-only|none|
|cover|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_ConnectionRequest">ConnectionRequest</h2>
<!-- backwards compatibility -->
<a id="schemaconnectionrequest"></a>
<a id="schema_ConnectionRequest"></a>
<a id="tocSconnectionrequest"></a>
<a id="tocsconnectionrequest"></a>

```json
{
  "id": 0,
  "from_user": {
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
  "to_user": {
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
  "created": "2019-08-24T14:15:22Z",
  "rejected": "2019-08-24T14:15:22Z",
  "viewed": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|from_user|object|false|read-only|none|
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
|to_user|object|false|read-only|none|
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
|created|string(date-time)|false|read-only|none|
|rejected|string(date-time)|false|read-only|none|
|viewed|string(date-time)|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_Notification">Notification</h2>
<!-- backwards compatibility -->
<a id="schemanotification"></a>
<a id="schema_Notification"></a>
<a id="tocSnotification"></a>
<a id="tocsnotification"></a>

```json
{
  "next_id": 0,
  "prev_id": 0,
  "is_new": true,
  "collapsed": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|next_id|integer|false|none|none|
|prev_id|integer|false|none|none|
|is_new|boolean|false|read-only|none|
|collapsed|string|false|read-only|none|

<h2 id="tocS_UserUnseen">UserUnseen</h2>
<!-- backwards compatibility -->
<a id="schemauserunseen"></a>
<a id="schema_UserUnseen"></a>
<a id="tocSuserunseen"></a>
<a id="tocsuserunseen"></a>

```json
{
  "unseen": [
    null
  ],
  "total": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|unseen|[any]|true|none|none|
|total|integer|true|none|none|

<h2 id="tocS_Signin">Signin</h2>
<!-- backwards compatibility -->
<a id="schemasignin"></a>
<a id="schema_Signin"></a>
<a id="tocSsignin"></a>
<a id="tocssignin"></a>

```json
{
  "username": "string",
  "password": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|true|none|none|
|password|string|true|none|none|

<h2 id="tocS_Create">Create</h2>
<!-- backwards compatibility -->
<a id="schemacreate"></a>
<a id="schema_Create"></a>
<a id="tocScreate"></a>
<a id="tocscreate"></a>

```json
{
  "username": "string",
  "email": "user@example.com",
  "password": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|true|none|none|
|email|string(email)|true|none|none|
|password|string|true|none|none|

<h2 id="tocS_Recover">Recover</h2>
<!-- backwards compatibility -->
<a id="schemarecover"></a>
<a id="schema_Recover"></a>
<a id="tocSrecover"></a>
<a id="tocsrecover"></a>

```json
{
  "email": "user@example.com"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|email|string(email)|true|none|none|

<h2 id="tocS_Reset">Reset</h2>
<!-- backwards compatibility -->
<a id="schemareset"></a>
<a id="schema_Reset"></a>
<a id="tocSreset"></a>
<a id="tocsreset"></a>

```json
{
  "validation_code": "string",
  "email": "user@example.com",
  "key": "string",
  "password": "stringst"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|validation_code|string|true|none|none|
|email|string(email)|true|none|none|
|key|string|true|none|none|
|password|string|true|none|none|

<h2 id="tocS_ChunkMedia">ChunkMedia</h2>
<!-- backwards compatibility -->
<a id="schemachunkmedia"></a>
<a id="schema_ChunkMedia"></a>
<a id="tocSchunkmedia"></a>
<a id="tocschunkmedia"></a>

```json
{
  "upload_id": "string",
  "offset": "string",
  "expires": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|upload_id|string|true|none|none|
|offset|string|true|none|none|
|expires|string|false|read-only|none|

<h2 id="tocS_ChunkCompleteMedia">ChunkCompleteMedia</h2>
<!-- backwards compatibility -->
<a id="schemachunkcompletemedia"></a>
<a id="schema_ChunkCompleteMedia"></a>
<a id="tocSchunkcompletemedia"></a>
<a id="tocschunkcompletemedia"></a>

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string",
  "upload_id": "string",
  "md5": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|hash_code|string(uuid)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|type|string|false|none|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|false|read-only|none|
|keywords|string|false|read-only|none|
|entities|string|false|read-only|none|
|image|string(binary)|false|read-only|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|oembed_type|string|false|read-only|none|
|oembed_url|string(uri)|false|read-only|none|
|oembed_width|integer|false|read-only|none|
|oembed_height|integer|false|read-only|none|
|oembed_duration|integer|false|read-only|none|
|oembed_html|string|false|read-only|none|
|oembed_preview_ready|boolean|false|read-only|none|
|oembed_available|boolean|false|read-only|none|
|order|integer|false|read-only|none|
|choice_images|[any]|false|read-only|none|
|embed_type|string|false|read-only|none|
|embed_id|string|false|read-only|none|
|upload_id|string|true|write-only|none|
|md5|string|true|write-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|vimeo|
|type|url|
|type|embed|
|oembed_type|link|
|oembed_type|photo|
|oembed_type|rich|
|oembed_type|video|

<h2 id="tocS_CreateMedia">CreateMedia</h2>
<!-- backwards compatibility -->
<a id="schemacreatemedia"></a>
<a id="schema_CreateMedia"></a>
<a id="tocScreatemedia"></a>
<a id="tocscreatemedia"></a>

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "string",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|hash_code|string(uuid)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|type|string|true|none|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|false|none|none|
|keywords|string|false|read-only|none|
|entities|string|false|read-only|none|
|image|string(binary)|false|read-only|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|oembed_type|string|false|read-only|none|
|oembed_url|string(uri)|false|read-only|none|
|oembed_width|integer|false|read-only|none|
|oembed_height|integer|false|read-only|none|
|oembed_duration|integer|false|read-only|none|
|oembed_html|string|false|read-only|none|
|oembed_preview_ready|boolean|false|read-only|none|
|oembed_available|boolean|false|read-only|none|
|order|integer|false|read-only|none|
|choice_images|[any]|false|read-only|none|
|embed_type|string¦null|false|none|none|
|embed_id|string¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|vimeo|
|type|url|
|type|embed|
|oembed_type|link|
|oembed_type|photo|
|oembed_type|rich|
|oembed_type|video|

<h2 id="tocS_WritableDiscussion">WritableDiscussion</h2>
<!-- backwards compatibility -->
<a id="schemawritablediscussion"></a>
<a id="schema_WritableDiscussion"></a>
<a id="tocSwritablediscussion"></a>
<a id="tocswritablediscussion"></a>

```json
{
  "id": 0,
  "title": "string",
  "slug": "string",
  "text": "string",
  "tags": [
    0
  ],
  "category_tags": [
    {
      "id": 0,
      "name": "string",
      "slug": "string",
      "html_info": "string",
      "image_original": "string",
      "image_bigger": "string",
      "image_big": "string",
      "image_medium": "string",
      "image_small": "string",
      "emotional_image_original": "string",
      "emotional_image_position": -2147483648
    }
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
  "score": "string",
  "captcha": {
    "hashkey": "string",
    "response": "string"
  },
  "user_tags": [
    {
      "id": "string",
      "name": "string",
      "color": "string",
      "visible": "string",
      "active": "string"
    }
  ],
  "addressing": [
    0
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|title|string|true|none|none|
|slug|string|false|read-only|none|
|text|string|true|write-only|none|
|tags|[integer]|true|write-only|none|
|category_tags|[object]|false|read-only|none|
|» id|integer|false|read-only|none|
|» name|string|true|none|none|
|» slug|string|true|none|none|
|» html_info|string¦null|false|none|none|
|» image_original|string(binary)¦null|false|none|none|
|» image_bigger|string(binary)|false|read-only|none|
|» image_big|string(binary)|false|read-only|none|
|» image_medium|string(binary)|false|read-only|none|
|» image_small|string(binary)|false|read-only|none|
|» emotional_image_original|string(binary)¦null|false|none|none|
|» emotional_image_position|integer|false|none|none|
|media_type|string|false|read-only|none|
|medias|[integer]|false|write-only|none|
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
|score|string|false|read-only|none|
|captcha|object|false|write-only|none|
|» hashkey|string|true|none|none|
|» response|string|true|none|none|
|user_tags|[object]¦null|false|none|none|
|» id|string|false|read-only|none|
|» name|string|false|read-only|none|
|» color|string|false|read-only|none|
|» visible|string|false|read-only|none|
|» active|string|false|read-only|none|
|addressing|[integer]|false|write-only|none|

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

<h2 id="tocS_WritableComment">WritableComment</h2>
<!-- backwards compatibility -->
<a id="schemawritablecomment"></a>
<a id="schema_WritableComment"></a>
<a id="tocSwritablecomment"></a>
<a id="tocswritablecomment"></a>

```json
{
  "id": 0,
  "post": 0,
  "author": {
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
  "text": "string",
  "html": "string",
  "summary": "string",
  "deleted": true,
  "collapsed": true,
  "parent": 0,
  "in_reply_to": 0,
  "score": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|post|integer¦null|false|none|none|
|author|object|false|read-only|none|
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
|text|string|true|write-only|none|
|html|string|false|read-only|none|
|summary|string|false|read-only|none|
|deleted|boolean|false|read-only|none|
|collapsed|boolean|false|read-only|none|
|parent|integer¦null|false|none|none|
|in_reply_to|integer¦null|false|none|none|
|score|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|gender|Male|
|gender|Female|
|gender|Unspecified|
|status|a|
|status|b|
|status|u|

<h2 id="tocS_ManageConnection">ManageConnection</h2>
<!-- backwards compatibility -->
<a id="schemamanageconnection"></a>
<a id="schema_ManageConnection"></a>
<a id="tocSmanageconnection"></a>
<a id="tocsmanageconnection"></a>

```json
{
  "username": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|username|string|true|none|none|

<h2 id="tocS_UpdateMedia">UpdateMedia</h2>
<!-- backwards compatibility -->
<a id="schemaupdatemedia"></a>
<a id="schema_UpdateMedia"></a>
<a id="tocSupdatemedia"></a>
<a id="tocsupdatemedia"></a>

```json
{
  "id": 0,
  "hash_code": "5dfe2ef5-1b28-417e-b650-0e7ec1ed126c",
  "added_at": "2019-08-24T14:15:22Z",
  "type": "vimeo",
  "title": "string",
  "description": "string",
  "url": "http://example.com",
  "keywords": "string",
  "entities": "string",
  "image": "http://example.com",
  "image_width": 0,
  "image_height": 0,
  "oembed_type": "link",
  "oembed_url": "http://example.com",
  "oembed_width": 0,
  "oembed_height": 0,
  "oembed_duration": 0,
  "oembed_html": "string",
  "oembed_preview_ready": true,
  "oembed_available": true,
  "order": 0,
  "choice_images": [
    null
  ],
  "embed_type": "string",
  "embed_id": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|hash_code|string(uuid)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|type|string|false|read-only|none|
|title|string|false|read-only|none|
|description|string|false|read-only|none|
|url|string(uri)|false|read-only|none|
|keywords|string|false|read-only|none|
|entities|string|false|read-only|none|
|image|string(uri)|true|none|none|
|image_width|integer|false|read-only|none|
|image_height|integer|false|read-only|none|
|oembed_type|string|false|read-only|none|
|oembed_url|string(uri)|false|read-only|none|
|oembed_width|integer|false|read-only|none|
|oembed_height|integer|false|read-only|none|
|oembed_duration|integer|false|read-only|none|
|oembed_html|string|false|read-only|none|
|oembed_preview_ready|boolean|false|read-only|none|
|oembed_available|boolean|false|read-only|none|
|order|integer|false|read-only|none|
|choice_images|[any]|false|read-only|none|
|embed_type|string|false|read-only|none|
|embed_id|string|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|vimeo|
|type|url|
|type|embed|
|type|image|
|type|eimage|
|type|doc|
|oembed_type|link|
|oembed_type|photo|
|oembed_type|rich|
|oembed_type|video|
