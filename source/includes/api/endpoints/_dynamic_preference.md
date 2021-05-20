<h2 id="selfcommunity-api-dynamic-preference">Dynamic Preference</h2>

### Get All Dynamic Preferences

<a id="opIdlistGlobalPreferenceModels"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/dynamic_preference/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/dynamic_preference/',
{
  method: 'GET',
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

This endpoint retrieves all available dynamic preferences.

<h4>Available sections</h4>


<h5>Addons</h5>
This section contains a collection of modules which can be added as an extra feature.

* **loyalty_points_collection**: This feature allows to enable loyalty points collection.
* **polls_enabled**: This feature allows to enable polls.
* **registration_wizard**: This feature enables registration wizard.
* **invite_code**: Invitation code.
* **closed_community**: This feature allows to make community closed.
* **archetypes_enabled**: This feature enables archetypes.
* **affinity_enabled**: This feature enables affinity.
* **incubator_enabled**: This feature  enables incubator.
* **incubator_subscribers**: Incubator subscribers number.
* **incubator_suggestions**: Incubator suggestions number.
* **post_geolocation_enabled**: This feature enables geolocation for posts.
* **cookie_policy_enabled**: This feature enables Cookie Policy.
* **tutorial_enabled**: This feature enables tutorial.
* **gdpr_signup_step_enabled**: This feature  enables gdpr signup in steps????
* **share_post_on_facebook_enabled**: This feature allows users to share posts on Facebook.
* **share_post_on_twitter_enabled**: This feature allows users to share posts on Twitter.
* **share_post_on_linkedin_enabled**: This feature allows users to share posts on Linkedin.
* **video_upload_enabled**: This feature  enables video upload.
* **vimeo_token_upload**: This feature  uploads vimeo token.
* **vimeo_token_delete**:  This feature deletes vimeo token.
* **video_upload_only_for_staff**: This feature  enables video upload only for staff members.
* **zapier_enabled**: This feature  enables Zapier.
* **custom_code_head**: First part of the custom code.
* **custom_code_body**: Second part of the custom code.



<h5>Advertising</h5>
This section provides the settings for advertising management.

* **custom_adv_enabled**: Enables custom advertising.
* **custom_adv_only_for_anonymous_users_enabled**: Enables custom advertising only for anonymous users.
* **ads_enabled**: Enables advertising.
* **ads_verification_code**: Verification code for advertinsing.
* **ads_manual_enabled**: Enables advertising manually.
* **ads_only_for_anonymous_users_enabled**: Enables  advertising only for anonymous users.
* **ads_below_topbar_code**: Code for showing ads below top bar.
* **ads_in_post_comments_code**: Code for showing ads in post comments.
* **ads_related_posts_column_code**:Code for showing ads in related posts.
* **ads_above_footer_bar_code**: Code for showing ads above footer bar.
* **ads_footer_sticky_code**: Code for showing ads in the footer.
* **ads_tools_column_code**: Code for showing ads in the tools column.
* **ads_in_stream_code**: Code for showing ads in stream.



<h5>Analytics</h5>
This section the settings to manage Google Analytics.

* **google_analytics_stats_enabled**: Enables Google Analytics statistics.
* **google_analytics_stats_property_id**: Tracking ID obtained from Google Analytics.
* **google_analytics_stats_debug_enabled**: Enables the debug mode for Google Analytics.
* **hotjar_stats_enabled**: Enables Hotjar.
* **hotjar_stats_tracking_code**: Hotjar Tracking Code(every account will have its own unique Tracking Code to install.)



<h5>Colors</h5>
This sections contains colors preferences for  application elements.

* **colorprimary**: Main color for the app buttons.
* **colorsecondary**: Secondary branding color for the app buttons.
* **colorback**: Main background color.
* **navbarback**:  Navbar background color .
* **submenuback**: Submenu background color .



<h5>Configurations</h5>
This section contains general configurations.

* **manual_categories_order_enabled**: Enables manual categories order.
* **follow_enabled**: Enables Follow.
* **people_search_enabled**: Enables people search.
* **people_card_with_cover_enabled**: Enables people card with cover.
* **post_only_staff_enabled**: Enables post only for staff members.
* **post_with_categories_only_staff_enabled**: Enables post with categories only for staff members.
* **content_availability**: Checks content availability.
* **users_approval_enabled**: Enables users approval.
* **home_stream_order_by**: Allows to choose the homepage ordering method.
* **explore_stream_enabled**: Enables explore feed stream.
* **explore_stream_order_by**: Allows to choose the explore feed ordering method.
* **stream_quality**: Enables stream quality.
* **discussion_type_enabled**: Enables discussion type.
* **post_type_enabled**: Enables post type.
* **status_type_enabled**: Enables status type.



<h5>Covers</h5>
This section contains covers settings for homepage.

* **covers_visibility**: Allow to decide the number of images visible on the homepage.
* **cover_1_hp_320**: Image n.1 in 320 hp.
* **cover_1_hp_480**: Image n.1 in 480 hp.
* **cover_1_hp_767**: Image n.1 in 767 hp.
* **cover_1_hp_m1920**: Image n.1 in 1920 hp.
* **cover_2_hp_320**: Image n.2 in 320 hp.
* **cover_2_hp_480**: Image n.2 in 480 hp.
* **cover_2_hp_767**: Image n.2 in 767 hp.
* **cover_2_hp_m1920**: Image n.2 in 1920 hp.
* **cover_3_hp_320**: Image n.3 in 320 hp.
* **cover_3_hp_480**: Image n.3 in 480 hp.
* **cover_3_hp_767**:  Image n.3 in 767 hp.
* **cover_3_hp_m1920**: Image n.3 in 1920 hp.
* **cover_4_hp_320**: Image n.4 in 320 hp.
* **cover_4_hp_480**: Image n.4 in 480 hp.
* **cover_4_hp_767**: Image n.4 in 767 hp.
* **cover_4_hp_m1920**: Image n.4 in 1920 hp.



<h5>Images</h5>
This section contains image preferences.

* **app_icon**: Image used for the app icon.
* **error_404**: Image for error 404.
* **error_503**: Image for error 503.
* **errorpages_image**: Image for error pages.
* **user_default_cover**: Default cover for user.



<h5>Logo</h5>
This section contains logo style settings.

* **logo_dark**: Dark version of the logo.
* **logo_light**: Light version of the logo.
* **navbar_logo**: Appearance of the navbar logo.
* **navbar_logo_mobile**: Mobile view of the navbar logo .



<h5>Loyalty</h5>
This section contains all preferences for calibration of loyalty flow.

* **points_make_discussion**: Points earned for a new discussion.
* **points_make_post**: Points earned for a new post.
* **points_make_comment**: Points earned for a comment.
* **points_receive_vote**: Points earned for an upvote.
* **points_connection_or_follower**: Points earned for a new connection (if connections enabled) or for a new follower (if follow enabled).
* **points_social_share**: Points earned when starting a social share of a post or a discussion.
* **points_app_used**: Points earned for the first usage of the app (if available).
* **points_daily_visit**: Points earned for a daily visit.



<h5>Providers</h5>
This section contains providers settings.

* **fidelitycard_signin_enabled**: Enables fidelity card signin.
* **facebook_signin_enabled**: Enables Facebook  signin.
* **facebook_app_key**: Facebook app key.
* **facebook_app_secret**: Secret key for Facebook.
* **twitter_signin_enabled**: Enables Twitter signin.
* **twitter_app_key**: Twitter app key.
* **twitter_app_secret**: Secret key for Twitter.
* **google_signin_enabled**: Enables Google signin.
* **google_app_key**: Google app key.
* **google_app_secret**: Secret key for Google.
* **google_project_id**: Google project ID.
* **google_project_number**: Google project number.
* **google_cloud_messaging_api_key**: Google Api Key for cloud messaging.
* **google_geocoding_api_key**: Google Api Key for geocoding.
* **linkedin_signin_enabled**: Enables Linkedin signin.
* **linkedin_app_key**: Linkedin app key.
* **linkedin_app_secret**: Secret key for Linkedin.
* **apns_push_notifications_cert**: Apns push notifications.
* **app_url_on_app_store**: App url on App Store.
* **app_url_on_google_play**: App url on Google Store.
* **app_schema_url**: App schema Url.
* **app_ios_membership_team_id**: Ios membership team ID
* **app_ios_bundle_id**: Ios bundle ID.



<h5>Staff</h5>
This section allows to customize staff status section.

* **staff_badge_label**: Label for staff badge.
* **staff_badge_icon**: Icon for staff badge.



<h5>Style</h5>
This section contains style settings for Community customization.

* **font_family**: List of available fonts.
* **custom_css**: Section where to insert custom css.



<h5>Text</h5>
This section contains text preferences.

* **application_name**: Application name visible in the browser's tab.
* **application_slogan1**: Title given to the community.
* **application_slogan2**: Slogan for the community.
* **application_copyright**: Copyright for the community.
* **errorpages_title**: Main text used for error pages.
* **errorpages_subtitle**: Secondary text used for error pages.


<h5>Webmaster</h5>
This section contains the settings for checking the status of indexing and to optimize the visibility of the website.

* **google_sitemap_code**: Creates sitemap code.
* **meta_robots**: Allow to decide how the page should be indexed and served to users in Google Search results.
* **meta_title_home_not_logged**: Title visibile on the Homepage (if not logged in).
* **meta_description**: Short text that sums up the content on the page.






















<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/dynamic_preference/`

<h4 id="listglobalpreferencemodels-parameters">Parameters</h4>

| Name     | In    | Type    | Required | Description                                         |
|----------|-------|---------|----------|-----------------------------------------------------|
| limit    | query | integer | false    | Number of results to return per page.               |
| offset   | query | integer | false    | The initial index from which to return the results. |
| search   | query | string  | false    | A search term.                                      |
| section  | query | string  | false    | Filter all preferences in a section                 |
| ordering | query | string  | false    | Which field to use when ordering the results.       |

> Example responses

> 200 Response

```json
{
  "count": 123,
  "next": "string(uri)",
  "previous": "string(uri)",
  "results": [
    {
      "id": 0,
      "section": "loyalty",
      "name": "points_make_post",
      "value": "2"
    }
  ]
}
```

<h4 id="listglobalpreferencemodels-responses">Responses</h4>

| Status | Meaning                                                 | Description | Schema |
|--------|---------------------------------------------------------|-------------|--------|
| 200    | [OK](https://tools.ietf.org/html/rfc7231#section-6.3.1) | none        | Inline |

<h4 id="listglobalpreferencemodels-responseschema">Response Schema</h4>

Status Code **200**

| Name       | Type                                            | Required | Restrictions | Description         |
|------------|-------------------------------------------------|----------|--------------|---------------------|
| » count    | integer                                         | false    | none         | Total results count |
| » next     | string(uri)¦null                                | false    | none         | Next page url       |
| » previous | string(uri)¦null                                | false    | none         | Previous page url   |
| » results  | [[DynamicPreference](#schemadynamicpreference)] | false    | none         | List of results     |


<aside class="notice">
This operation does not require authentication
</aside>

### Get a Specific Dynamic Preference

<a id="opIdretrieveGlobalPreferenceModel"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/dynamic_preference/{id}/ \
  -H 'Accept: application/json'
  -H 'Authorization: Bearer {access_token}'

```

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization': 'Bearer {access_token}'
};

fetch('/api/v2/dynamic_preference/{id}/',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```
This endpoint retrieves a specific dynamic preference.

<h5 id="http-request">HTTP Request</h5>

`GET /api/v2/dynamic_preference/{id}/`

<h4 id="retrieveglobalpreferencemodel-parameters">Parameters</h4>

| Name | In   | Type   | Required | Description                                                 |
|------|------|--------|----------|-------------------------------------------------------------|
| id   | path | string | true     | A unique integer value identifying this dynamic preference. |

> Example responses

> 200 Response

```json
{
  "id": 0,
  "section": "string",
  "name": "string",
  "value": "string"
}
```

<h4 id="retrieveglobalpreferencemodel-responses">Responses</h4>

| Status | Meaning                                                 | Description | Schema                                        |
|--------|---------------------------------------------------------|-------------|-----------------------------------------------|
| 200    | [OK](https://tools.ietf.org/html/rfc7231#section-6.3.1) | none        | [DynamicPreference](#schemadynamicpreference) |

<aside class="notice">
This operation does not require authentication
</aside>
