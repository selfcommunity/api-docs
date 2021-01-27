<h3 id="tocS_Notification">Notification</h3>
<!-- backwards compatibility -->
<a id="schemanotification"></a>
<a id="schema_Notification"></a>
<a id="tocSnotification"></a>
<a id="tocsnotification"></a>

```json
{
   "is_new": false,
   "sid": "1605259249000",
   "discussion": {...},
   "post": {...},
   "aggregated": [
        {
          "is_new": false,
          "type": "connection_accept",
          "sid": 16037238513640000000074020,
          "active_at": "2020-10-26T15:50:51.364336+01:00",
          "accept_user": {}
        }
   ]
}
```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|is_new|boolean|true|read-only|True if there is in aggregate list at least one notification not yet read by the user, otherwise false.|
|sid|string|true|read-only|Serialization id of the macro notification aggregate block.|
|discussion|[Discussion](#schemadiscussion)|false|read-only|Primary object involved (object that is common to notifications group) if it is a discusssion. For some types of notifications it will not be present.|
|post|[Post](#schemapost)|false|read-only|Primary object involved (object that is common to notifications group) if it is a post. For some types of notifications it will not be present.|
|aggregated|list(Object)|false|read-only|List of aggregated notifications by type. Types Object: [NotificationTypeComment](#schemanotificationtypecomment), [NotificationTypeMention](#schemanotificationtypemention), [NotificationTypeConnectionAccept](#schemanotificationtypeconnectionaccept), [NotificationTypeConnectionRequest](#schemanotificationtypeconnectionrequest), [NotificationTypePrivateMessage](#schemanotificationtypeprivatemessage), [NotificationTypeFollow](#schemanotificationtypefollow), [NotificationTypeVoteUp](#schemanotificationtypevoteup), [NotificationTypeBlockedUser](#schemanotificationtypeblockeduser), [NotificationTypeUnBlockedUser](#schemanotificationtypeunblockeduser), [NotificationTypeKindlyNotice](#schemanotificationtypekindlynotice), [NotificationTypeCollapsedFor](#schemanotificationtypecollapsedfor), [NotificationTypeDeletedFor](#schemanotificationtypedeletedfor), [NotificationTypeCustomNotification](#schemanotificationtypecustomnotification) |
