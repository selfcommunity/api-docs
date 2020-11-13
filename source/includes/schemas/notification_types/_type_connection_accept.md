<h2 id="tocS_NotificationTypeConnectionAccept">NotificationTypeConnectionAccept</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeconnectionaccept"></a>
<a id="schema_NotificationTypeConnectionAccept"></a>
<a id="tocSnotificationtypeconnectionaccept"></a>
<a id="tocsnotificationtypeconnectionaccept"></a>

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
|is_new|boolean|true|read-only|Notification not yet read|
|sid|string|true|read-only|Serialization id of the notification block|
|notification_type|string|true|read-only|Type "answer"|
|accept_user|[User](#schemauser)]|true|read-only|User accepted the connection request|
