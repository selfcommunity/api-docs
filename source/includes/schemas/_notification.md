<h2 id="tocS_Notification">Notification</h2>
<!-- backwards compatibility -->
<a id="schemanotification"></a>
<a id="schema_Notification"></a>
<a id="tocSnotification"></a>
<a id="tocsnotification"></a>

```json
{
   "is_new": false,
   "sid": "1605259249000",
   "aggregated": [
        {
          "notification_type": "connection_accept",
          "accept_user": {}
        }
   ]
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|false|read-only|Notification not yet read|
|sid|string|false|read-only|Serialization id of the notification block|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved. For some types of notifications it will not be present.|
|aggregated|list(Object)|false|read-only|List of aggregated notifications by type. Type Object: [NotificationTypeAnswer](#schemanotificationtypeanswer), [NotificationTypeUpdateAnswer](#schemanotificationtypeupdateanswer),[NotificationTypeComment](#schemanotificationtypecomment), [NotificationTypeMention](schemanotificationtypemention), [NotificationTypeConnectionAccept](#schemanotificationtypeconnectionaccept)  |
