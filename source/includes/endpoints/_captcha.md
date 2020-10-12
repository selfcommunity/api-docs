<h1 id="selfcommunity-api-captcha">Captcha</h1>

## Get new Captcha

<a id="opIdCaptcha"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/captcha/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/captcha/',
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

This Endpoint retrieve a new captcha if it is necessary. The captcha and the inputted text value must be attached to [Discussion](#opIdcreateDiscussion) and/or [Post](#opIdcreatePost) creation for checking that the user is not a robot.

<h3 id="http-request">HTTP Request</h3>

`GET /api/v2/captcha/`

> Example responses

> 200 Response

```json
{
  "key": "string",
  "image_url": "http://example.com",
  "audio_url": "http://example.com"
}
```

<h3 id="Captcha-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[Captcha](#schemacaptcha)|

<aside class="notice">
This operation does not require authentication
</aside>
