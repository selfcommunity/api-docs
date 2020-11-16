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
|is_new|boolean|false|read-only|True if there is in aggregate list at least one notification not yet read by the user, otherwise false.|
|sid|string|false|read-only|Serialization id of the macro notification aggregate block.|
|post|[Discussion](#schemadiscussion), [Post](#schemapost)|false|read-only|Primary object involved (object that is common to the aggregate notifications). For some types of notifications it will not be present.|
|aggregated|list(Object)|false|read-only|List of aggregated notifications by type. Types Object: [NotificationTypeAnswer](#schemanotificationtypeanswer), [NotificationTypeComment](#schemanotificationtypecomment), [NotificationTypeMention](#schemanotificationtypemention), [NotificationTypeConnectionAccept](#schemanotificationtypeconnectionaccept), [NotificationTypeConnectionRequest](#schemanotificationtypeconnectionrequest), [NotificationTypePrivateMessage](#schemanotificationtypeprivatemessage), [NotificationTypeFavorite](#schemanotificationtypefavorite), [NotificationTypeVoteUp](#schemanotificationtypevoteup), [NotificationTypeBlockedUser](#schemanotificationtypeblockeduser), [NotificationTypeUnBlockedUser](#schemanotificationtypeunblockeduser), [NotificationTypeKindlyNotice](#schemanotificationtypekindlynotice), [NotificationTypeCollapsedFor](#schemanotificationtypecollapsedfor), [NotificationTypeDeletedFor](#schemanotificationtypedeletedfor), [NotificationTypeCustomNotification](#schemanotificationtypecustomnotification) |
