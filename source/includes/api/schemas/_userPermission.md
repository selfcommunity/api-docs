<h3 id="tocS_UserPermission">UserPermission</h3>
<!-- backwards compatibility -->
<a id="schemauserpermission"></a>
<a id="schema_UserPermission"></a>
<a id="tocSuserpermission"></a>
<a id="tocsuserpermission"></a>

```json
{
    "upload_video": false,
    "create_contribute": true,
    "create_poll": true,
    "locate_post": false,
    "create_post": true,
    "create_post_with_category": true,
    "view_platform_access": false,
    "follow_user": true,
    "request_connection": true,
    "accept_connection": true
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|upload_video|bool|true|read-only|User can upload video when creating a post|
|create_contribute|bool|true|read-only|User can create a contribute|
|create_poll|bool|true|read-only|User can add a poll when creating a contribute|
|locate_post|bool|true|read-only|User can locate a contribute|
|create_post|bool|true|read-only|User can create a post|
|create_post_with_category|bool|true|read-only|User can add categories when creating a post|
|view_platform_access|bool|true|read-only|User can view platform access (only admin, moderator, editor)|
|follow_user|bool|true|read-only|User can follow users|
|request_connection|bool|true|read-only|User can accept a connection|
|accept_connection|bool|true|read-only|User can accept a connection|
