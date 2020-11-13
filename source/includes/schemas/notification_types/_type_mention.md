<h2 id="tocS_NotificationTypeAnswer">NotificationTypeMention</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypemention"></a>
<a id="schema__type_comment.md"></a>
<a id="tocSnotificationtypemention"></a>
<a id="tocsnotificationtypemention"></a>

```json
{
   "is_new": false,
   "sid": "1605259249000",
   "aggregated": [
        {
          "notification_type": "mention",
          "post": {},
          "user": {}
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
|user|[User](#schemauser)|true|read-only|Comment|
