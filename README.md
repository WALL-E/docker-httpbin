# docker-httpbin

HTTP Request & Response Service

## Contens

* build.sh
  * Build image from Dockerfile
* run.sh
  * Run a new container

## Endpoints
default port: *8080*

- `/ip` Returns Origin IP.
- `/user-agent` Returns user-agent.
- `/headers` Returns headers.
- `/get` Returns GET data.
- `/status/:code` Returns given HTTP Status code.
- `/redirect/:n` 302 Redirects _n_ times.
- `/absolute-redirect/:n` 302 Absolute redirects _n_ times.
- `/redirect-to?url=foo` 302 Redirects to the _foo_ URL.
- `/stream/:n` Streams _n_ lines of JSON objects
- `/delay/:n` Delays responding for _min(n, 10)_ seconds.
- `/bytes/:n` Generates _n_ random bytes of binary data, accepts optional _seed_ integer parameter.
- `/cookies` Returns the cookies.
- `/cookies/set?name=value` Sets one or more simple cookies.
- `/cookies/delete?name` Deletes one or more simple cookies.
- `/drip?numbytes=n&duration=s&delay=s&code=code` Drips data over a duration after
  an optional initial _delay_, then optionally returns with the given status _code_.
- `/cache` Returns 200 unless an If-Modified-Since or If-None-Match header is provided, when it returns a 304.
- `/cache/:n` Sets a Cache-Control header for _n_ seconds.
- `/gzip` Returns gzip-encoded data.
- `/deflate` Returns deflate-encoded data.
- `/robots.txt` Returns some robots.txt rules.
- `/deny` Denied by robots.txt file.
- `/basic-auth/:user/:passwd` Challenges HTTP Basic Auth.
- `/hidden-basic-auth/:user/:passwd` Challenges HTTP Basic Auth and returns 404 on failure.
- `/html` Returns some HTML
- `/xml` Returns some XML
- `/image/gif` Returns page containing an animated GIF image.
- `/image/png` Returns page containing a PNG image.
- `/image/jpeg` Returns page containing a JPEG image.

## How to use
```
[root@dockerHost ~]# curl http://172.28.32.105:8080/ip
{
  "origin": "172.28.32.105"
}
```

## Acknowledge

* https://github.com/kennethreitz/httpbin
* https://github.com/ahmetb/go-httpbin
