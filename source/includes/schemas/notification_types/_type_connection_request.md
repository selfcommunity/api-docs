<h2 id="tocS_NotificationTypeConnectionRequest">NotificationTypeConnectionRequest</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeconnectionrequest"></a>
<a id="schema_NotificationTypeConnectionRequest"></a>
<a id="tocSnotificationtypeconnectionrequest"></a>
<a id="tocsnotificationtypeconnectionrequest"></a>

```json
{
  "is_new": false,
  "sid": 16052906326300000000007190,
  "notification_type": "connection_request",
  "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
  "request_user": {}
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|true|read-only|Notification not yet read|
|sid|string|true|read-only|Serialization id of the notification block|
|notification_type|string|true|read-only|Type "connection_accept"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|request_user|[User](#schemauser)]|true|read-only|User request the connection|