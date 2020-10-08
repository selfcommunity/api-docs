<h1 id="selfcommunity-api-captcha">captcha</h1>

## retrieveCaptcha

<a id="opIdretrieveCaptcha"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v2/captcha/refresh \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v2/captcha/refresh',
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

`GET /api/v2/captcha/refresh`

> Example responses

> 200 Response

```json
{
  "key": "string",
  "image_url": "http://example.com",
  "audio_url": "http://example.com"
}
```

<h3 id="retrievecaptcha-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|[CaptchaRefresh](#schemacaptcharefresh)|

<aside class="success">
This operation does not require authentication
</aside>
