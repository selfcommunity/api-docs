<h2 id="tocS_NotificationTypeConnectionAccept">NotificationTypeConnectionAccept</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeconnectionaccept"></a>
<a id="schema_NotificationTypeConnectionAccept"></a>
<a id="tocSnotificationtypeconnectionaccept"></a>
<a id="tocsnotificationtypeconnectionaccept"></a>

```json
{
  "is_new": false,
  "sid": 16052906326300000000007190,
  "notification_type": "connection_accept",
  "accept_user": {}
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|true|read-only|Notification not yet read|
|sid|string|true|read-only|Serialization id of the notification block|
|notification_type|string|true|read-only|Type "connection_accept"|
|accept_user|[User](#schemauser)]|true|read-only|User accepted the connection request|
