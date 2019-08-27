# programming-quotes

## Configuration :

### Requirement :

It require `ELM_APP_URL` env which is your API url.

this app only perform a `GET` request on the endpoint provided :

```bash
curl -X GET \
	<my-api-endpoint.com>
```

### API :

API should responde a list of Tweets in this format :

```json
[{ "text": "content of tweet", "created_at": "Mon Aug 26 17:01:17 +0000 2019" }]
```

You can check out the [`Tweet` type](https://github.com/Tarektouati/programming-quotes/blob/master/src/API/Quotes.elm#L8) to learn more.
