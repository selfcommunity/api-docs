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

### Webhook Payload

The body of a webhook payload is a JSON object that describes the target that triggered the webhook, as well as the event that has been triggered.

#### Properties

```json
{
    "type": "string",
    "created": "string",
    "data": {}
}

```

| Name    | Type   | Required | Description                                                                   |
|---------|--------|----------|-------------------------------------------------------------------------------|
| type    | string | true     | The name of the event that triggered the webhook                              |
| created | string | true     | The time or date that the event was triggered at                              |
| data    | object | true     | Object that contains information about the event associated with the webhook. |

### List of Category events

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "category": {
            "id": 1,
            "tags": [],
            "order": 123,
            "name": "string",
            "name_synonyms": "string",
            "slug": "string",
            "slogan": "string",
            "html_info": "string",
            "seo_title": "string",
            "seo_description": "string",
            "auto_follow": "none",
            "active": true,
            "deleted": true,
            "image_original": "string",
            "image_bigger": "string",
            "image_big": "string",
            "image_medium": "string",
            "image_small": "string",
            "emotional_image_original": "string",
            "emotional_image_position": 0,
            "lastmod_datetime": "2019-08-24T14:15:22Z",
            "stream_order_by": "recent",
        },
        "user": {
            "id": 100,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 1,
            "followers_counter": 1,
            "posts_counter": 3,
            "discussions_counter": 5,
            "statuses_counter": 1,
            "polls_counter": 8
        },
        "added_at": "2021-05-28T11:15:10.126738+02:00"
    }
}
```

| Category          | Triggered When                       | Note |
|-------------------|--------------------------------------|------|
| category.follow   | a category is followed by the user   | ---  |
| category.unfollow | a category is unfollowed by the user | ---  |

### List of Comment events

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 0,
        "discussion": 11,
        "author": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "description": "string",
            "avatar": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 24,
            "followings_counter": 1,
            "followers_counter": 1,
            "posts_counter": 3,
            "discussions_counter": 5,
            "statuses_counter": 1,
            "polls_counter": 8
        },
        "added_at": "2021-06-07T10:14:52.772383+02:00",
        "html":  "string",
        "summary":  "string",
        "deleted": true,
        "collapsed": false,
        "parent": "string",
        "in_reply_to": "string",
        "comment_count": 0,
        "vote_count": 0,
        "flag_count": 0
    }
}
```
| Comment          | Triggered When                       | Note |
|------------------|--------------------------------------|------|
| comment.created  | a new comment is created             | ---  |
| comment.updated  | a comment is updated                 | ---  |
| comment.deleted  | a comment is deleted                 | ---  |
| comment.restored | a comment is restored after deletion | ---  |

### List of Connection events

>* connection_request.created<br>
>* connection_request.rejected<br>
>* connection_request.cancelled<br>
>* connection.created<br>
>* connection.deleted


```json
{
    "type": "string",
    "created": "string",
    "data": {
        "to_user": {
            "id": 33,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "connection_requests_sent_counter": 1,
            "connection_requests_received_counter": 0,
            "connections_counter": 0,
            "posts_counter": 0,
            "discussions_counter": 0,
            "statuses_counter": 0,
            "polls_counter": 0
        },
        "from_user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "connection_requests_sent_counter": 1,
            "connection_requests_received_counter": 0,
            "connections_counter": 0,
            "posts_counter": 0,
            "discussions_counter": 0,
            "statuses_counter": 0,
            "polls_counter": 0
        }
    }
}
```

>* connection.follow<br> 
>* connection.unfollow 

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "to_user": {
            "id": 114,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 14,
            "connection_requests_sent_counter": 1,
            "connection_requests_received_counter": 0,
            "connections_counter": 0,
            "posts_counter": 0,
            "discussions_counter": 0,
            "statuses_counter": 0,
            "polls_counter": 0
        },
        "from_user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 81,
            "connection_requests_sent_counter": 1,
            "connection_requests_received_counter": 0,
            "connections_counter": 0,
            "posts_counter": 0,
            "discussions_counter": 0,
            "statuses_counter": 0,
            "polls_counter": 0
        }
    }
}
```
| Connection                   | Triggered When                                          | Note                                                                       |
|------------------------------|---------------------------------------------------------|----------------------------------------------------------------------------|
| connection_request.created   | a new connection request is created                     | This event is triggered only if `follow_enabled` community option is false |
| connection_request.rejected  | a connection request is rejected                        | This event is triggered only if `follow_enabled` community option is false |
| connection_request.restored  | a connection request that has been rejected is restored | This event is triggered only if `follow_enabled` community option is false |
| connection_request.cancelled | a connection request is cancelled by the creator        | This event is triggered only if `follow_enabled` community option is false |
| connection.created           | a new connection is created                             | This event is triggered only if `follow_enabled` community option is false |
| connection.deleted           | a connection is deleted                                 | This event is triggered only if `follow_enabled` community option is false |
| connection.follow            | a user follows another user                             | This event is triggered only if `follow_enabled` community option is true  |
| connection.unfollow          | a user unfollows another user                           | This event is triggered only if `follow_enabled` community option is true  |

### List of Discussion events

>* discussion.created<br>
>* discussion.updated<br>
>* discussion.deleted<br>
>* discussion.restored

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "categories": [],
        "medias": [],
        "location": [],
        "poll": [],
        "last_activity_at": "2021-05-28T11:37:25.178645+02:00",
        "author": {
            "id": 100,
            "username": "string",
            "real_name": "string",
            "date_joined": "2021-05-28T10:33:52.269304+02:00",
            "bio":  "string",
            "location": "string",
            "location_lat_lng":  "string",
            "position_lat_lng":  "string",
            "date_of_birth": "string",
            "description": "string",
            "gender": "Male",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        },
        "added_at": "2021-05-28T11:37:25.178645+02:00",
        "html":  "string",
        "summary":  "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 0,
        "vote_count": 0,
        "flag_count": 0,
        "share_count": 0,
        "addressing": [],
        "title": "string",
        "slug": "string",
        "view_count": 0,
        "follower_count": 0
    }
}
```


>* discussion.follow<br>
>* discussion.unfollow

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "added_at": "2021-06-07T09:46:39.536844+02:00",
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        },
        "discussion": {
            "id": 1,
            "categories": [],
            "medias": [],
            "location": "string",
            "poll": [],
            "last_activity_at": "2021-06-07T09:44:59.016173+02:00",
            "author": {
                "id": 100,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-06-07T09:44:59.016173+02:00",
            "html":  "string",
            "summary":  "string",
            "deleted": true,
            "collapsed": false,
            "comment_count": 0,
            "vote_count": 0,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 0,
            "follower_count": 0
        }
    }
}
```

| Discussion          | Triggered When                          | Note                                                                          |
|---------------------|-----------------------------------------|-------------------------------------------------------------------------------|
| discussion.created  | a new discussion is created             | This event is triggered only if `discussion_enabled` community option is true |
| discussion.updated  | a discussion is updated                 | This event is triggered only if `discussion_enabled` community option is true |
| discussion.deleted  | a discussion is deleted                 | This event is triggered only if `discussion_enabled` community option is true |
| discussion.restored | a discussion is restored after deletion | This event is triggered only if `discussion_enabled` community option is true |
| discussion.follow   | a discussion is followed by the user    | This event is triggered only if `discussion_enabled` community option is true |
| discussion.unfollow | a discussion is unfollowed by the user  | This event is triggered only if `discussion_enabled` community option is true |

### List of Loyalty events

>* loyalty.prize.created<br>
>* loyalty.prize.updated

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "active": true,
        "created_by": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "description": "string",
            "avatar": "string"
        },
        "title": "string",
        "description": "string",
        "points": 200,
        "link": "https://example.com",
        "image": "string",
        "created_at": "2021-06-07T10:36:29.850060+02:00",
        "lastmod_datetime": "2021-06-07T10:36:29.850136+02:00"
    }
}
```

>* loyalty.prize_request.created<br>
>* loyalty.prize_request.updated

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "description": "string",
            "avatar": "string"
        },
        "pending_at": "2021-06-07T11:11:06.148633+02:00",
        "prize": {
            "id": 2,
            "active": true,
            "title": "string",
            "description": "string",
            "points": 1,
            "link": "https://example.com",
            "image": "string"
        },
        "prize_points": 1,
        "status": 0,
        "status_description": "string"
    }
}
```

| Loyalty                       | Triggered When                                 | Note                                                                                 |
|-------------------------------|------------------------------------------------|--------------------------------------------------------------------------------------|
| loyalty.prize.created         | a new prize has been created                   | This event is triggered only if `loyalty_points_collection` community option is true |
| loyalty.prize.updated         | a prize has been updated                       | This event is triggered only if `loyalty_points_collection` community option is true |
| loyalty.prize_request.created | a new request of a prize has been created      | This event is triggered only if `loyalty_points_collection` community option is true |
| loyalty.prize_request.updated | a request of a prize has been updated (status) | This event is triggered only if `loyalty_points_collection` community option is true |



### List of Poll events

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "choice": {
            "id": 3,
            "choice": "string",
            "order": 0,
            "added_at": "2021-06-07T10:23:02.074940+02:00",
            "deleted": false,
            "vote_count": 0,
            "poll": {
                "id": 2,
                "title": "string",
                "multiple_choices": true,
                "added_at": "2021-06-07T10:23:02.036315+02:00",
                "modified_at": "2021-06-07T10:23:02.036371+02:00",
                "closed": false,
                "expiration_at": "2021-06-27T00:00:00+02:00",
                "hidden": false,
                "choices": [
                    {
                        "id": 3,
                        "choice": "string",
                        "order": 0,
                        "added_at": "2021-06-07T10:23:02.074940+02:00",
                        "deleted": false,
                        "vote_count": 1
                    },
                    {
                        "id": 4,
                        "choice": "string",
                        "order": 1,
                        "added_at": "2021-06-07T10:23:02.081369+02:00",
                        "deleted": false,
                        "vote_count": 0
                    }
                ]
            }
        },
        "user": {
            "id": 100,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```

| Poll              | Triggered When                     | Note |
|-------------------|------------------------------------|------|
| poll_vote.created | a user votes a poll                | ---  |
| poll_vote.deleted | a user remove the vote from a poll | ---  |

### List of Post events

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "categories": [],
        "medias": [],
        "location": [],
        "poll": [],
        "last_activity_at": "2021-05-28T11:37:25.178645+02:00",
        "author": {
            "id": 100,
            "username": "string",
            "real_name": "string",
            "date_joined": "2021-05-28T10:33:52.269304+02:00",
            "bio":  "string",
            "location": "string",
            "location_lat_lng":  "string",
            "position_lat_lng":  "string",
            "date_of_birth": "string",
            "description": "string",
            "gender": "Male",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        },
        "added_at": "2021-05-28T11:37:25.178645+02:00",
        "html":  "string",
        "summary":  "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 0,
        "vote_count": 0,
        "flag_count": 0,
        "share_count": 0,
        "addressing": [],
    }
}
```

| Post          | Triggered When                    | Note                                                                    |
|---------------|-----------------------------------|-------------------------------------------------------------------------|
| post.created  | a new post is created             | This event is triggered only if `post_enabled` community option is true |
| post.updated  | a post is updated                 | This event is triggered only if `post_enabled` community option is true |
| post.deleted  | a post is deleted                 | This event is triggered only if `post_enabled` community option is true |
| post.restored | a post is restored after deletion | This event is triggered only if `post_enabled` community option is true |

### List of Status events

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "categories": [],
        "medias": [],
        "location": [],
        "last_activity_at": "2021-05-28T11:37:25.178645+02:00",
        "author": {
            "id": 100,
            "username": "string",
            "real_name": "string",
            "date_joined": "2021-05-28T10:33:52.269304+02:00",
            "bio":  "string",
            "location": "string",
            "location_lat_lng":  "string",
            "position_lat_lng":  "string",
            "date_of_birth": "string",
            "description": "string",
            "gender": "Male",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        },
        "added_at": "2021-05-28T11:37:25.178645+02:00",
        "html":  "string",
        "summary":  "string",
        "deleted": true,
        "collapsed": false,
        "comment_count": 0,
        "vote_count": 0,
        "flag_count": 0,
        "share_count": 0,
        "addressing": [],
    }
}
```

| Status          | Triggered When                      | Note                                                                      |
|-----------------|-------------------------------------|---------------------------------------------------------------------------|
| status.created  | a new status is created             | This event is triggered only if `status_enabled` community option is true |
| status.updated  | a status is updated                 | This event is triggered only if `status_enabled` community option is true |
| status.deleted  | a status is deleted                 | This event is triggered only if `status_enabled` community option is true |
| status.restored | a status is restored after deletion | This event is triggered only if `status_enabled` community option is true |

### List of Notification events

>* notification.comment

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            1
        ],
        "discussion": {
            "id": 2,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-06-07T12:30:44.509122+02:00",
            "author": {
                "id": 1,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-27T14:58:04.334631+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 2,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 3,
            "follower_count": 0
        },
        "type": "string",
        "active_at": "2021-06-07T12:30:44.509122+02:00",
        "comment": {
            "id": 71,
            "discussion": 2,
            "author": {
                "id": 7,
                "username": "string",
                "real_name": "string",
                "description": "string",
                "avatar": "string",
                "ext_id": null,
                "tags": [],
                "reputation": 86,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-06-07T12:30:44.509122+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "parent": null,
            "in_reply_to": null,
            "comment_count": 1,
            "vote_count": 0,
            "flag_count": 0
        }
    }
}
```
>* notification.nested_comment

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            1
        ],
        "discussion": {
            "id": 2,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-06-07T12:24:23.830573+02:00",
            "author": {
                "id": 1,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-27T14:58:04.334631+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 2,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 3,
            "follower_count": 0
        },
        "type": "string",
        "active_at": "2021-06-07T12:24:23.830573+02:00",
        "comment": {
            "id": 70,
            "discussion": 2,
            "author": {
                "id": 7,
                "username": "string",
                "real_name": "string",
                "description": "string",
                "avatar": "string",
                "ext_id": 3,
                "tags": [],
                "reputation": 13,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-06-07T12:24:23.830573+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "parent": {
                "id": 69,
                "discussion": 2,
                "author": {
                    "id": 1,
                    "username": "string",
                    "real_name": "string",
                    "description": "string",
                    "avatar": "string",
                    "ext_id": "string",
                    "tags": [],
                    "reputation": 86,
                    "followings_counter": 7,
                    "followers_counter": 2,
                    "posts_counter": 4,
                    "discussions_counter": 3,
                    "statuses_counter": 0,
                    "polls_counter": 1
                },
                "added_at": "2021-06-07T12:30:44.50912+02:00",
                "html": "string",
                "summary": "string",
                "deleted": false,
                "collapsed": false,
                "parent": [],
                "in_reply_to": [],
                "comment_count": 1,
                "vote_count": 0,
                "flag_count": 0
            },
            "in_reply_to": [],
            "comment_count": 0,
            "vote_count": 0,
            "flag_count": 0
        }
    }
}
```
>* notification.mention

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            7
        ],
        "type": "string",
        "active_at": "2021-06-07T12:39:24.373244+02:00",
        "post": {
            "id": 24,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-06-07T12:39:24.373244+02:00",
            "author": {
                "id": 1,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-06-07T12:39:24.373244+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 2,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
        }
    }
}
```

>* notification.vote_up

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            48
        ],
        "discussion": {
            "id": 4,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-05-28T17:35:00+02:00",
            "author": {
                "id": 48,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-28T19:25:00+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 2,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 3,
            "follower_count": 0
        },
        "type": "string",
        "active_at": "2021-06-07T12:07:01.701850+02:00"
    }
}
```
>* notification.follow

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            32
        ],
        "type": "string",
        "active_at": "2021-06-07T13:09:13.163550+02:00",
        "discussion": {
            "id": 14,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-05-28T11:05:00+02:00",
            "author": {
                "id": 32,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-28T22:56:00+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 2,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 3,
            "follower_count": 0
        },
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```

>* notification.private_message

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            7
        ],
        "type": "string",
        "active_at": "2021-06-07T14:30:43.555649+02:00",
        "message": {
            "id": 1,
            "headline": "string",
            "sender": {
                "id": 1,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "html": "string",
            "sent_at": "2021-06-07T14:30:43.555649+02:00",
            "status": 0
        }
    }
}
```

>* notification.deleted_for_advertising<br>
* notification.deleted_for_aggressive<br>
* notification.deleted_for_vulgar<br>
* notification.deleted_for_poor<br>
* notification.deleted_for_offtopic<br>
* notification.undeleted_for<br>
* notification.kindly_notice_advertising<br>
* notification.kindly_notice_aggressive<br>
* notification.kindly_notice_vulgar<br>
* notification.kindly_notice_poor<br>
* notification.kindly_notice_offtopic<br>

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            110
        ],
        "discussion": {
            "id": 5,
            "categories":[],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-05-28T21:41:00+02:00",
            "author": {
                "id": 110,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-28T09:16:00+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 6,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 7,
            "follower_count": 0
        },
        "type": "string",
        "active_at": "2021-06-07T13:21:51.814550+02:00"
    }
}
```

>* notification.collapsed_for_advertising<br>
* notification.collapsed_for_aggressive<br>
* notification.collapsed_for_vulgar<br>
* notification.collapsed_for_poor<br>
* notification.collapsed_for_offtopic


```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            110
        ],
        "discussion": {
            "id": 9,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-05-28T11:31:00+02:00",
            "author": {
                "id": 32,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 37,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-28T07:11:00+02:00",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 5,
            "vote_count": 1,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 7,
            "follower_count": 0
        },
        "type": "string",
        "active_at": "2021-06-08T09:14:51.464044+02:00",
        "comment": {
            "id": 31,
            "discussion": 9,
            "author": {
                "id": 110,
                "username": "string",
                "real_name": "string",
                "description": "string",
                "avatar": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 23,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "2021-05-28T14:16:00+02:00",
            "html": "string",
            "deleted": false,
            "collapsed": true,
            "parent": {
                "id": 30,
                "discussion": 9,
                "author": {
                    "id": 56,
                    "username": "string",
                    "real_name": "string",
                    "description": "string",
                    "avatar": "string",
                    "ext_id": "string",
                    "tags": [],
                    "reputation": 39,
                    "followings_counter": 7,
                    "followers_counter": 2,
                    "posts_counter": 4,
                    "discussions_counter": 3,
                    "statuses_counter": 0,
                    "polls_counter": 1
                },
                "added_at": "2021-05-28T09:34:00+02:00",
                "html": "string",
                "deleted": false,
                "collapsed": false,
                "parent": [],
                "in_reply_to": [],
                "comment_count": 1,
                "vote_count": 0,
                "flag_count": 0
            },
            "in_reply_to": {
                "id": 30,
                "discussion": 9,
                "author": {
                    "id": 56,
                    "username": "string",
                    "real_name": "string",
                    "description": "string",
                    "avatar": "string",
                    "ext_id": "string",
                    "tags": [],
                    "reputation": 39,
                    "followings_counter": 7,
                    "followers_counter": 2,
                    "posts_counter": 4,
                    "discussions_counter": 3,
                    "statuses_counter": 0,
                    "polls_counter": 1
                },
                "added_at": "2021-05-28T09:34:00+02:00",
                "html": "string",
                "summary": "string",
                "deleted": false,
                "collapsed": false,
                "parent": [],
                "in_reply_to": [],
                "comment_count": 1,
                "vote_count": 0,
                "flag_count": 0
            },
            "comment_count": 0,
            "vote_count": 0,
            "flag_count": 1
        }
    }
}
```

>* notification.connection_request

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            4
        ],
        "type": "string",
        "active_at": "2021-06-07T14:12:57.827680+02:00",
        "request_user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "date_joined": "2021-05-28T10:33:52.269304+02:00",
            "bio":  "string",
            "location": "string",
            "location_lat_lng":  "string",
            "position_lat_lng":  "string",
            "date_of_birth": "string",
            "description": "string",
            "gender": "Male",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 88,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```
>* notification.connection_accept

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            4
        ],
        "type": "string",
        "active_at": "2021-06-07T14:12:57.827680+02:00",
        "accept_user": {
            "id": 33,
            "username": "string",
            "real_name": "string",
            "date_joined": "2021-05-28T10:33:52.269304+02:00",
            "bio":  "string",
            "location": "string",
            "location_lat_lng":  "string",
            "position_lat_lng":  "string",
            "date_of_birth": "string",
            "description": "string",
            "gender": "Male",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 17,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```


>* notification.user_follow

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            114
        ],
        "type": "string",
        "active_at": "2021-06-07T11:23:39.055083+02:00",
        "follower": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "date_joined": "2021-05-28T10:33:52.269304+02:00",
            "bio":  "string",
            "location": "string",
            "location_lat_lng":  "string",
            "position_lat_lng":  "string",
            "date_of_birth": "string",
            "description": "string",
            "gender": "Male",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": "string",
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```


>* notification.blocked_user

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            122
        ],
        "type": "string",
        "active_at": "2021-06-07T13:48:25.594550+02:00",
        "block_settings": {
            "blocked_at": "2021-06-07T13:48:25.543115+02:00",
            "days_blocked": 1,
            "expire_at": "2021-06-08T13:48:25.543115+02:00"
        }
    }
}
```
>* notification.unblocked_user

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            122
        ],
        "type": "string",
        "active_at": "2021-06-07T13:50:38.541768+02:00"
    }
}
```

>* notification.custom_notification

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "recipients": [
            4,
            7
        ],
        "type": "string",
        "active_at": "2021-06-07T12:58:19.079810+02:00",
        "custom_notification": {
            "id": 1,
            "type": "string",
            "embed": [],
            "title": "string",
            "description": "blablabla"
        },
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```
>* notification.banner.sent

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "banner": {
            "title": "string",
            "body_text": "string",
            "link_text": "string",
            "link": "https://example.com",
            "open_in_new_tab": false,
            "image": "string",
            "added_at": "2021-06-08T09:56:48.540278+02:00",
            "type_banner": "string"
        },
        "recipients": [
            1,
            2,
            3,
        ]
    }
}
```

| Notification                           | Triggered When                                                                            | Note                                                                       |
|----------------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| notification.comment                   | a new comment of first level is created                                                   | ---                                                                        |
| notification.nested_comment            | a new comment of second level is created                                                  | ---                                                                        |
| notification.mention                   | a user is mentioned                                                                       | ---                                                                        |
| notification.vote_up                   | a user vote up a post/discussion/comment                                                  | ---                                                                        |
| notification.follow                    | a user follow a post/discussion                                                           | ---                                                                        |
| notification.private_message           | a user send a private message                                                             | ---                                                                        |
| notification.deleted_for_advertising   | deleted content by moderators with motivation the content is advertising                  | ---                                                                        |
| notification.deleted_for_aggressive    | deleted content by moderators with motivation the content is aggressive                   | ---                                                                        |
| notification.deleted_for_vulgar        | deleted content by moderators with motivation the content is vulgar                       | ---                                                                        |
| notification.deleted_for_poor          | deleted content by moderators with motivation the content is poor                         | ---                                                                        |
| notification.deleted_for_offtopic      | deleted content by moderators with motivation the content is offtopic                     | ---                                                                        |
| notification.undeleted_for             | the content has been rehabilitated by the moderators                                      | ---                                                                        |
| notification.collapsed_for_advertising | only for comments, hidden content by moderator with motivation the content is advertising | ---                                                                        |
| notification.collapsed_for_aggressive  | only for comments, hidden content by moderator with motivation the content is aggressive  | ---                                                                        |
| notification.collapsed_for_vulgar      | only for comments, hidden content by moderator with motivation the content is vulgar      | ---                                                                        |
| notification.collapsed_for_poor        | only for comments, hidden content by moderator with motivation the content is poor        | ---                                                                        |
| notification.collapsed_for_offtopic    | only for comments, hidden content by moderator with motivation the content is offtopic    | ---                                                                        |
| notification.connection_request        | a user send a connection request                                                          | This event is triggered only if `follow_enabled` community option is false |
| notification.connection_accept         | a user accept a connection request                                                        | This event is triggered only if `follow_enabled` community option is false |
| notification.user_follow               | a user follow another user                                                                | This event is triggered only if `follow_enabled` community option is true  |
| notification.kindly_notice_advertising | content author notified for advertising content (via moderation)                          | ---                                                                        |
| notification.kindly_notice_aggressive  | content author notified for advertising content (via moderation)                          | ---                                                                        |
| notification.kindly_notice_vulgar      | content author notified for advertising content (via moderation)                          | ---                                                                        |
| notification.kindly_notice_poor        | content author notified for advertising content (via moderation)                          | ---                                                                        |
| notification.kindly_notice_offtopic    | content author notified for advertising content (via moderation)                          | ---                                                                        |
| notification.blocked_user              | a user is blocked                                                                         | ---                                                                        |
| notification.unblocked_user            | a user is unblocked                                                                       | ---                                                                        |
| notification.custom_notification       | a custom notification is created                                                          | ---                                                                        |
| notification.banner.sent               | a notification banner is sent and addressed to users                                      | ---                                                                        |

<aside class="notice">
All events with prefix notification.* include in the payload a field "recipients" specifying the list of recipients of the notification
</aside>



### List of User events

>* user.created<br>
>* user.updated<br>
>* user.deleted

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 1,
        "username": "string",
        "real_name": "string",
        "email": "user@example.com",
        "email_isvalid": true,
        "date_joined": "2019-08-24T14:15:22Z",
        "bio": "string",
        "location": "string",
        "location_lat_lng": "string",
        "position_lat_lng": "string",
        "date_of_birth": "2019-09-23",
        "description": "string",
        "gender": "Male",
        "status": "a",
        "website": "https://example.com",
        "avatar": "string",
        "cover": "string",
        "ext_id": 3,
        "tags": [],
        "reputation": 111,
        "followings_counter": 7,
        "followers_counter": 2,
        "posts_counter": 4,
        "discussions_counter": 3,
        "statuses_counter": 0,
        "polls_counter": 1
    }
}
```

>* user.settings_updated

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "qa_frequency": 0,
        "email_notification_not_qa": 0,
        "interests_frequency": 0,
        "engagement_frequency": 1,
        "mobile_notifications_scmty": 1,
        "toast_notifications_emit_sound": 1,
        "show_toast_notifications": 0,
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        }
    }
}
```


>* user.score_updated

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "id": 271,
        "user": {
            "id": 114,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "description": "string",
            "avatar": "string",
            "reputation": 12
        },
        "score": -2,
        "reputation_type": -19,
        "reputation_type_description": "string",
        "comment": "string"
    }
}
```

>* user.loyalty_points_updated

```json
{
    "type": "string",
    "created": "string",
    "data": {
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "description": "string",
            "avatar": "string"
        },
        "action": "string",
        "points": 1,
        "added_at": "2021-06-07T11:23:39.105234+02:00",
        "total_points": 13
    }
}
```


| User                        | Triggered When                                  | Note |
|-----------------------------|-------------------------------------------------|------|
| user.created                | a new user is created                           | ---  |
| user.updated                | a user is updated                               | ---  |
| user.deleted                | a user is deleted                               | ---  |
| user.settings_updated       | a user changes its settings                     | ---  |
| user.score_updated          | the score of the user has been updated          | ---  |
| user.loyalty_points_updated | the loyalty points of the user has been updated | ---  |
### List of Vote events

```json
{
    "type": "vote.created",
    "created": 1623060368.026038,
    "data": {
        "user": {
            "id": 1,
            "username": "string",
            "real_name": "string",
            "email": "user@example.com",
            "email_isvalid": true,
            "date_joined": "2019-08-24T14:15:22Z",
            "bio": "string",
            "location": "string",
            "location_lat_lng": "string",
            "position_lat_lng": "string",
            "date_of_birth": "2019-09-23",
            "description": "string",
            "gender": "Male",
            "status": "a",
            "website": "https://example.com",
            "avatar": "string",
            "cover": "string",
            "ext_id": 3,
            "tags": [],
            "reputation": 111,
            "followings_counter": 7,
            "followers_counter": 2,
            "posts_counter": 4,
            "discussions_counter": 3,
            "statuses_counter": 0,
            "polls_counter": 1
        },
        "voted_at": "2021-06-07T12:06:07.849533+02:00",
        "object_type": "discussion",
        "discussion": {
            "id": 3,
            "categories": [],
            "medias": [],
            "location": [],
            "poll": [],
            "last_activity_at": "2021-05-28T02:41:00+02:00",
            "author": {
                "id": 92,
                "username": "string",
                "real_name": "string",
                "date_joined": "2021-05-28T10:33:52.269304+02:00",
                "bio":  "string",
                "location": "string",
                "location_lat_lng":  "string",
                "position_lat_lng":  "string",
                "date_of_birth": "string",
                "description": "string",
                "gender": "Male",
                "website": "https://example.com",
                "avatar": "string",
                "cover": "string",
                "ext_id": "string",
                "tags": [],
                "reputation": 111,
                "followings_counter": 7,
                "followers_counter": 2,
                "posts_counter": 4,
                "discussions_counter": 3,
                "statuses_counter": 0,
                "polls_counter": 1
            },
            "added_at": "string",
            "html": "string",
            "summary": "string",
            "deleted": false,
            "collapsed": false,
            "comment_count": 6,
            "vote_count": 2,
            "flag_count": 0,
            "share_count": 0,
            "addressing": [],
            "title": "string",
            "slug": "string",
            "view_count": 7,
            "follower_count": 0
        }
    }
}
```
| Vote         | Triggered When                                                                                                                                       | Note |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------------|------|
| vote.created | a user votes a contribute ([Discussion](#schemadiscussion), [Post](#schemapost),  [Status](#schemastatus) or [Comment](#schemacomment))              | ---  |
| vote.deleted | a user remove the vote from a contribute ([Discussion](#schemadiscussion), [Post](#schemapost), [Status](#schemastatus) or [Comment](#schemacomment) | ---  |







