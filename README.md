# nginx-proxy-pass-bug

The path doesn't seem to get passed over to proxy path when the destination contains a variable.

Proxy One works fine:
http://127.0.0.1/proxy1/test => https://webhook.site/9911047c-8142-43a4-8472-30210e553476/test

Proxy Two which contains a variable in the destination does not:
http://127.0.0.1/proxy2/test => https://webhook.site/9911047c-8142-43a4-8472-30210e553476/127.0.0.1/  ( missing /test )

/proxy1/test works and the path is passed to the proxy

/proxy2/test contains a variable and the path gets stripped

See https://webhook.site/#!/view/e0ea94d5-da35-4224-bb3c-ee62c52918c3 for proxy results.