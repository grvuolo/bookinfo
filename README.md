# bookinfo
  
##  Enabling Instana

### Instana AutoTrace WebHook - all apps (no code inspection)

https://www.instana.com/docs/ecosystem/kubernetes/autotrace-webhook/

6TW57kR1ReyvLDox5Y7p_g

helm install --create-namespace --namespace instana-autotrace-webhook instana-autotrace-webhook \
  --repo https://agents.instana.io/helm instana-autotrace-webhook \
  --set webhook.imagePullCredentials.password=6TW57kR1ReyvLDox5Y7p_g \
  --set autotrace.opt_in=true


add label to deployment 

instana-autotrace: "true"

### Destails - Ruby

```
brew install ruby
which gem
export PATH="/usr/local/opt/ruby/bin:$PATH"
gem update --system
sudo gem install instana
```

### Productpage - Python

add to productpage.py:

```
import instana
```

in requirements.txt:

opentracing==2.3.0
opentracing-instrumentation==2.4.3
instana


### Ratings - NodeJS

https://www.instana.com/docs/ecosystem/node-js/api/#main

add to ratings.js

const instana = require('@instana/collector');
// init tracing
// MUST be done before loading anything else!
instana({
    tracing: {
        enabled: true
    },
    serviceName: 'ratings'
});

