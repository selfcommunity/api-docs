<h2 id="tocS_UserSettings">UserSettings</h2>
<!-- backwards compatibility -->
<a id="schemausersettings"></a>
<a id="schema_UserSettings"></a>
<a id="tocSusersettings"></a>
<a id="tocsusersettings"></a>

```json
{
  "qa_frequency": -1,
  "email_notification_not_qa": 1,
  "interests_frequency": -1,
  "engagement_frequency": 1,
  "mobile_notifications_scmty": 1,
  "toast_notifications_emit_sound": 1,
  "show_toast_notifications": 1
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|qa_frequency|integer|false|none|Email notification of interactions in Discussions, Posts, Comments|
|email_notification_not_qa|integer|false|none|All email notifications except those related to 'qa_frequency'. Ex. connections, follow, flags, etc.|
|interests_frequency|integer|false|none|Email notification of interesting posts related to my interests|
|engagement_frequency|integer|false|none|Community engagement email notifications|
|mobile_notifications_scmty|integer|false|none|Mobile notifications|
|show_toast_notifications|integer|false|none|Show a popup (frontend) when receive a notification|
|toast_notifications_emit_sound|integer|false|none|Emit a sound when the notification popup is shown. See 'show_toast_notifications'.|


### Enumerated Values

|Property|Value|Description|
|---|---|---|
|qa_frequency|-1|Send email immediately|
|qa_frequency|1|Send email daily|
|qa_frequency|0|Never send email|
|email_notification_not_qa|1|Notify also via email|
|email_notification_not_qa|0|Notify only frontend side|
|interests_frequency|-1|Send email|
|interests_frequency|0|Never send email|
|engagement_frequency|1|Notify also via email|
|engagement_frequency|0|Never send email|
|mobile_notifications_scmty|1|Notify also via mobile push notification (FCM, APNS). Available only if there is an app associated with the community.|
|mobile_notifications_scmty|0|Never send push notification|
|show_toast_notifications|1|Show popup (frontend - not on the notifications page)|
|show_toast_notifications|0|Hide popup (frontend)|
|toast_notifications_emit_sound|1|Emit sound with the popup notification (frontend)|
|toast_notifications_emit_sound|0|Don't emit sound|
