<h2 id="tocS_NotificationTypeAnswer">NotificationTypeComment</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypecomment"></a>
<a id="schema_NotificationTypeComment"></a>
<a id="tocSnotificationtypecomment"></a>
<a id="tocsnotificationtypecomment"></a>

```json
{
   "is_new": false,
   "sid": "1605259249000",
   "aggregated": [
        {
          "notification_type": "comment",
          "post": {},
          "comment": {}
        }
   ]
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|notification_type|string|false|read-only|Type "answer"|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved.|
|comment|[Comment](#schemacomment)|true|read-only|Comment|
