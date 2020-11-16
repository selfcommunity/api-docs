<h2 id="tocS_NotificationTypePrivateMessage">NotificationTypePrivateMessage</h2>
<!-- backwards compatibility -->
<a id="schemanotificationtypeprivatemessage"></a>
<a id="schema_NotificationTypePrivateMessage"></a>
<a id="tocSnotificationtypeprivatemessage"></a>
<a id="tocsnotificationtypeprivatemessage"></a>

```json
{
    "is_new": true,
    "sid": 16053713157510000000004370,
    "notification_type": "private_message",
    "notification_active_at": "2020-11-14T17:52:20.967302+01:00",
    "message": {
        "id": 4,
        "headline": "Hello, how are you?!😊",
        "sender": {}
        "html": "<div><p>Hello, how are you?!😊</p></div>",
        "sent_at": "2020-11-14T17:28:35.751794+01:00",
        "status": 0
    }
}
```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|true|read-only|Notification not yet read|
|sid|string|true|read-only|Serialization id of the notification block|
|notification_type|string|true|read-only|Type "private_message"|
|notification_active_at|string(date-time)|false|read-only|Time when the notification was generated|
|message|[Message](#schemaprivatemessage)|true|read-only|Message received|
