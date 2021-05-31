# Webhook

### About Webhooks
Webhooks allow you to get programmatical notifications from SelfCommunity about changes to your data as they happen. If you're new to webhooks, [read this guide](https://requestbin.com/blog/working-with-webhooks/) to learn more.

Rather than requiring you to pull information via our API, webhooks will push information to your endpoint. When one of those events is triggered (for example a new post is created), SelfCommunity will send this notification as an HTTP POST request, with a JSON body, to the endpoint(s) you specify.

The SelfCommunity webhook module are **only available for enterprise communities**.
Take a look at the various [plans](https://selfcommunity.com/pricing/) you can subscribe to on.

As an Enterprise plan subscriber, login to [https://make.selfcommunity.com](https://make.selfcommunity.com) with your account, go to the Webhooks section on Integration menu and enable the Webhooks.


### Build a webhook endpoint
*For testing purpose you can create a webhook receiver using [https://requestbin.com/](RequestBin).*

The first step to adding webhooks to your SeflCommunity integration is to build your own custom endpoint. Creating a webhook endpoint on your server is no different from creating any page on your website. 


#### Expected data
For each event occurrence, SelfCommunity POSTs the webhook data to your endpoint in JSON format. The full event details are included and can be used directly after parsing the JSON. Thus, at minimum, the webhook endpoint needs to expect data through a POST request and confirm successful receipt of that data.

An example of data passed to your endpoint is:

```

```

#### Response code
To acknowledge receipt of an event, your endpoint must return a 2xx HTTP status code to SelfCommunity. All response codes outside this range, including 3xx codes, indicate to SelfCommunity that you did not receive the event.

If SelfCommunity does not receive a 2xx HTTP status code, the notification attempt is repeated. We will try 5 more times: after 5, 25, 125, 625, 3125 seconds. If it still fails for each of those attempts, it is counted as one non-successful delivery.

Because properly acknowledging receipt of the webhook notification is so important, your endpoint should return a 2xx HTTP status code prior to any complex logic that could cause a timeout.

<aside class="notice">
A URL redirection or a “Not Modified” response is treated as a failure. SelfCommunity ignores any other information returned in the request headers or request body.
</aside>


#### Check the webhook signatures
SelfCommunity sign the webhook events it sends to your endpoints by including a signature in each event’s SelfCommunity-Signature header. This allows you to verify that the events were sent by SelfCommunity, not by a third party. 

Before you can verify signatures, you need to retrieve your endpoint’s secret from your Dashboard’s Webhooks settings. Select an endpoint that you want to obtain the secret for, then click the Click to reveal button.

SelfCommunity generates a unique secret key for each endpoint. If you use multiple endpoints, you must obtain a secret for each one you want to verify signatures on. After this setup, SelfCommunity starts to sign each webhook it sends to the endpoint.

**Signature Verification**
The SelfCommunity-Signature header included in each signed event contains a timestamp and one or more signatures. The timestamp is prefixed by t=, and each signature is prefixed by a scheme. Schemes start with v, followed by an integer. Currently, the only valid live signature scheme is v1.

```
SelfCommunity-Signature:
t=1492774577,
v1=5257a869e7ecebeda32affa62cdca3fa51cad7e77a0e56ff536d0ce8e108d8bd,
v0=6ffbb59b2300aae63f272406069a9788598b792a944a07aba816edb039989a39
```

Note that newlines have been added for clarity, but a real SelfCommunity-Signature header is on a single line.

SelfCommunity generates signatures using a hash-based message authentication code (HMAC) with SHA-256.

To verify webhook event signatures, you can create a custom solution by following these steps.

*Step 1: Extract the timestamp and signatures from the header*
Split the header, using the , character as the separator, to get a list of elements. Then split each element, using the = character as the separator, to get a prefix and value pair.

The value for the prefix t corresponds to the timestamp, and v1 corresponds to the signature (or signatures). You can discard all other elements.

*Step 2: Prepare the signed_payload string*
The signed_payload string is created by concatenating:

The timestamp (as a string)
The character .
The actual JSON payload (i.e., the request body)

*Step 3: Determine the expected signature*
Compute an HMAC with the SHA256 hash function. Use the endpoint’s signing secret as the key, and use the signed_payload string as the message.

*Step 4: Compare the signatures*
Compare the signature (or signatures) in the header to the expected signature. For an equality match, compute the difference between the current timestamp and the received timestamp, then decide if the difference is within your tolerance.

To protect against timing attacks, use a constant-time string comparison to compare the expected signature to each of the received signatures.


### Adding Webhooks
If your community is Enterprise login to [https://make.selfcommunity.com](https://make.selfcommunity.com/) with your account and go to Webhook panel under Integration menu and check that you have **enabled** the **Webhook** and register and endpoint for subscribing to events.

### List of Events
|Event|Triggered When|Note|
|---|---|---|
|discussion.created|a new discussion is created|This event is triggered only if `discussion_enabled` community option is true|
|discussion.updated|a discussion is updated|This event is triggered only if `discussion_enabled` community option is true|
|discussion.deleted|a discussion is deleted|This event is triggered only if `discussion_enabled` community option is true|
|discussion.follow|a discussion is followed by the user|This event is triggered only if `discussion_enabled` community option is true|
|discussion.unfollow|a discussion is unfollowed by the user|This event is triggered only if `discussion_enabled` community option is true|
|discussion.restored|a discussion is restored after deletion|This event is triggered only if `discussion_enabled` community option is true|
|post.created|a new post is created|This event is triggered only if `post_enabled` community option is true|
|post.updated|a post is updated|This event is triggered only if `post_enabled` community option is true|
|post.deleted|a post is deleted|This event is triggered only if `post_enabled` community option is true|
|post.restored|a post is restored after deletion|This event is triggered only if `post_enabled` community option is true|
|comment.created|a new comment is created|---|
|comment.updated|a comment is updated|---|
|comment.deleted|a comment is deleted|---|
|comment.restored|a comment is restored after deletion|---|
|poll_vote.created|a user votes a poll|---|
|poll_vote.deleted|a user remove the vote from a poll|---|
|vote.created|a user votes a contribute ([Discussion](#schemadiscussion), [Post](#scehmapost) or [Comment](#schemacomment))|---|
|vote.deleted|a user remove the vote from a contribute ([Discussion](#schemadiscussion), [Post](#scehmapost) or [Comment](#schemacomment)|---|
|user.created|a new user is created|---|
|user.updated|a user is updated|---|
|user.deleted|a user is deleted|---|
|user.settings_updated|a user changes its settings|---|
|category.follow|a category is followed by the user|---|
|category.unfollow|a category is unfollowed by the user|---|
|connection_request.created|a new connection request is created|This event is triggered only if `follow_enabled` community option is false|
|connection_request.rejected|a connection request is rejected|This event is triggered only if `follow_enabled` community option is false|
|connection_request.restored|a connection request that has been rejected is restored|This event is triggered only if `follow_enabled` community option is false|
|connection_request.cancelled|a connection request is cancelled by the creator|This event is triggered only if `follow_enabled` community option is false|
|connection.created|a new connection is created|This event is triggered only if `follow_enabled` community option is false|
|connection.deleted|a connection is deleted|This event is triggered only if `follow_enabled` community option is false|
|connection.follow|a user follows another user|This event is triggered only if `follow_enabled` community option is true|
|connection.unfollow|a user unfollows another user|This event is triggered only if `follow_enabled` community option is true|
|user.score_updated|the score of the user has been updated|---|
|user.loyalty_points_updated|the loyalty points of the user has been updated|---|
|loyalty.prize.created|a new prize has been created|---|
|loyalty.prize.updated|a prize has been updated|---|
|loyalty.prize_request.created|a new request of a prize has been created|---|
|loyalty.prize_request.updated|a request of a prize has been updated (status)|---|
<!--
|notification.comment|a new comment of first level is created|---|
|notification.nested_comment|a new comment of second level is created|---|
|notification.mention|a user is mentioned|---|
|notification.vote_up|a user vote up a post/discussion/comment|---|
|notification.follow|a user follow a post/discussion|---|
|notification.private_message|a user send a private message|---|
|notification.deleted_for_advertising|deleted content by moderators with motivation the content is advertising|---|
|notification.deleted_for_aggressive|deleted content by moderators with motivation the content is aggressive|---|
|notification.deleted_for_vulgar|deleted content by moderators with motivation the content is vulgar|---|
|notification.deleted_for_poor|deleted content by moderators with motivation the content is poor|---|
|notification.deleted_for_offtopic|deleted content by moderators with motivation the content is offtopic|---|
|notification.undeleted_for|the content has been rehabilitated by the moderators	|---|
|notification.collapsed_for_advertising|only for comments, hidden content by moderator with motivation the content is advertising|---|
|notification.collapsed_for_aggressive|only for comments, hidden content by moderator with motivation the content is aggressive|---|
|notification.collapsed_for_vulgar|only for comments, hidden content by moderator with motivation the content is vulgar|---|
|notification.collapsed_for_poor|only for comments, hidden content by moderator with motivation the content is poor|---|
|notification.collapsed_for_offtopic|only for comments, hidden content by moderator with motivation the content is offtopic|---|
|notification.connection_request|a user send a connection request|This event is triggered only if `follow_enabled` community option is false|
|notification.connection_accept|a user accept a connection request|This event is triggered only if `follow_enabled` community option is false|
|notification.user_follow|a user follow another user|This event is triggered only if `follow_enabled` community option is true|
|notification.kindly_notice_advertising|content author notified for advertising content (via moderation)|---|
|notification.kindly_notice_aggressive|content author notified for advertising content (via moderation)|---|
|notification.kindly_notice_vulgar|content author notified for advertising content (via moderation)|---|
|notification.kindly_notice_poor|content author notified for advertising content (via moderation)|---|
|notification.kindly_notice_offtopic|content author notified for advertising content (via moderation)|---|
|notification.blocked_user|a user is blocked|---|
|notification.unblocked_user|a user is unblocked|---|
|notification.custom_notification|a custom notification is created|---|
|notification.banner.sent|a notification banner is sent and addressed to users|---|

<aside class="notice">
All events with prefix notification.* include in the payload a field "recipients" specifying the list of recipients of the notification
</aside>
-->

