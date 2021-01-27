<h3 id="tocS_TargetedBannerVisibility">TargetedBannerVisibility</h3>
<!-- backwards compatibility -->
<a id="schematargetedbannervisibility"></a>
<a id="schema_TargetedBannerVisibility"></a>
<a id="tocStargetedbannervisibility"></a>
<a id="tocstargetedbannervisibility"></a>

```json
{
  "id": 0,
  "banner": {
    "html": "<div>Hello!</div>",
    "type_banner": "html_banner"
  },
  "added_at": "2019-08-24T14:15:22Z",
  "disposed_at": "2019-08-24T14:15:22Z",
  "viewed_at": "2019-08-24T14:15:22Z"
}
```

> Or

```json
{
    "id": 90,
    "banner": {
        "title": "Sed ut perspiciatis unde omnis iste natus",
        "body_text": "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur est hora nihi?",
        "link_text": "Further details linked here &raquo;",
        "link": "/users/alessia/",
        "open_in_new_tab": true,
        "image": null,
        "added_at": "2020-11-13T09:51:55.415280+01:00",
        "type_banner": "notification_banner"
    },
    "added_at": "2020-11-13T09:51:55.451181+01:00",
    "disposed_at": null,
    "viewed_at": "2020-11-13T10:09:15.576039+01:00"
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|none|
|banner|[TargetedHtmlBanner](#schematargetedhtmlbanner), [TargetedNotificationBanner](#schematargetednotificationbanner)|false|read-only|none|
|added_at|string(date-time)|false|read-only|none|
|disposed_at|string(date-time)|false|read-only|none|
|viewed_at|string(date-time)|false|read-only|none|
