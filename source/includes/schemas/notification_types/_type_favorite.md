<h2 id="tocS_NotificationTypeAnswer">NotificationTypeFavorite</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypefavorite"></a>
<a id="schema_NotificationTypeFavorite"></a>
<a id="tocSnotificationtypefavorite"></a>
<a id="tocsnotificationtypefavorite"></a>

```json
{
   "is_new": false,
   "sid": "1605259249000",
   "aggregated": [
        {
          "notification_type": "answer",
          "post": {}
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
