<h3 id="tocS_TargetedNotificationBanner">TargetedNotificationBanner</h3>
<!-- backwards compatibility -->
<a id="schematargetednotificationbanner"></a>
<a id="schema_TargetedNotificationBanner"></a>
<a id="tocStargetednotificationbanner"></a>
<a id="tocstargetednotificationbanner"></a>

```json
{
    "title": "string",
    "description": "string",
    "link_text": "Further details linked here &raquo;",
    "link": "/users/alessia/",
    "open_in_new_tab": true,
    "image": null,
    "added_at": "2020-11-13T09:51:55.415280+01:00",
    "type_banner": "notification_banner"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|title|string|true|read-only|Title of the banner|
|description|string|false|read-only|Description of the banner|
|link_text|string|false|read-only|Label of the link of the banner|
|link|string|false|read-only|Url link of the banner|
|open_in_new_tab|bool|false|read-only|Url link of the banner|
|image|string|false|read-only|Url of an image|
|added_at|string(date-time)|false|read-only|Creation date of the banner|
|type_banner|string|true|read-only|Banner of type "notification_banner"|
