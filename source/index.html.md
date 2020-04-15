---
title: Routegy API v1
language_tabs:
  - http: HTTP
  - shell: Shell
  - python: Python
  - ruby: Ruby
  - go: Go
language_clients:
  - shell: curl
  - python: requests
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="routegy-api">Routegy API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Welcome to the Routegy API docs!

These documents include both the Management API and the Public API.

For more information, be sure to check out our documentation website at <https://docs.routegy.com>.

Base URLs:

* <a href="https://api.routegy.com/">https://api.routegy.com/</a>

<a href="https://www.routegy.com/terms-of-service/">Terms of service</a>
Email: <a href="mailto:support@routegy.com">Support</a> 

# Authentication

- oAuth2 authentication. 

    - Flow: authorizationCode
    - Authorization URL = [https://auth.routegy.com/authorization](https://auth.routegy.com/authorization)
    - Token URL = [https://tokens.routegy.com/oauth/token](https://tokens.routegy.com/oauth/token)

|Scope|Scope Description|
|---|---|

<h1 id="routegy-api-public-api">Public API</h1>

Operations for the Public API.

<a href="https://docs.routegy.com/topic/public-api/">External documentation</a>

## Get touchpoint from a code short id

<a id="opIdpublic_codes_touchpoint"></a>

> Code samples

```http
GET https://api.routegy.com/public/codes/{short_id}/touchpoint HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/public/codes/{short_id}/touchpoint \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://api.routegy.com/public/codes/{short_id}/touchpoint', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://api.routegy.com/public/codes/{short_id}/touchpoint',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/public/codes/{short_id}/touchpoint", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /public/codes/{short_id}/touchpoint`

Get touchpoint from code short id.

<h3 id="get-touchpoint-from-a-code-short-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|short_id|path|integer|true|A short ID identifying this code.|

> Example responses

> 200 Response

```json
{
  "name": "Out of coffee?",
  "slug": "out-of-coffee",
  "description": "Let us know so we can refill the pot",
  "location": {
    "name": "Break room",
    "slug": "break-room",
    "description": "Employee break room",
    "breadcrumbs": "Office / Floor 1"
  },
  "schema": {
    "name": "Coffee Machine",
    "slug": "coffee-machine",
    "description": "Report supply chain issues related to coffee machines",
    "document": {
      "type": "object",
      "title": "Out of coffee?",
      "required": [
        "problem"
      ],
      "additionalProperties": false,
      "properties": {
        "problem": [
          "No coffee beans",
          "No filters",
          "No cups",
          "Machine isn't working",
          "Something else"
        ],
        "type": "string",
        "attrs": {
          "type": "radio"
        },
        "title": "What is the problem?",
        "comments": {
          "type": "string",
          "attrs": {
            "type": "textarea",
            "placeholder": "Please provide any additional comments here"
          },
          "title": "Additional comments"
        }
      }
    }
  }
}
```

<h3 id="get-touchpoint-from-a-code-short-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[GetCodeTouchPointResponse](#schemagetcodetouchpointresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="success">
This operation does not require authentication
</aside>

## Create touch for a touchpoint from a code short id

<a id="opIdpublic_codes_touch"></a>

> Code samples

```http
POST https://api.routegy.com/public/codes/{short_id}/touch HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X POST https://api.routegy.com/public/codes/{short_id}/touch \
  -H 'Accept: application/json'

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://api.routegy.com/public/codes/{short_id}/touch', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.post 'https://api.routegy.com/public/codes/{short_id}/touch',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.routegy.com/public/codes/{short_id}/touch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /public/codes/{short_id}/touch`

Create a new touch for a touchpoint referenced from a code short id.

<h3 id="create-touch-for-a-touchpoint-from-a-code-short-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|short_id|path|integer|true|A short ID identifying this code.|

> Example responses

> 201 Response

```json
{
  "id": "5A29D4AB-99AE-49A7-810B-CDA71FBBF9ED"
}
```

<h3 id="create-touch-for-a-touchpoint-from-a-code-short-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[CodeTouchCreatedResponse](#schemacodetouchcreatedresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="routegy-api-management-api">Management API</h1>

Operations for the Management API.

<a href="https://docs.routegy.com/topic/management-api/">External documentation</a>

## Get code by id

<a id="opIdget_code_by_id"></a>

> Code samples

```http
GET https://api.routegy.com/codes/{id} HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/codes/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/codes/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/codes/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/codes/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /codes/{id}`

Get code by its ID. 

 Check out the [Topic: Code](https://docs.routegy.com/topic/codes/) and [Reference: Code](https://docs.routegy.com/reference/codes/) pages for more information.

<h3 id="get-code-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this code.|

> Example responses

> 200 Response

```json
{
  "id": "5C74E22E-D7ED-497E-8DE3-09FF4E9AEBEC",
  "url": "https://api.routegy.com/codes/5C74E22E-D7ED-497E-8DE3-09FF4E9AEBEC",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "short_id": "ax7dkEg",
  "touch_point": "BADD03B4-CAEB-49DB-8B91-BEFAC4EB9EEB"
}
```

<h3 id="get-code-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[GetCodeResponse](#schemagetcoderesponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Get code by short id

<a id="opIdget_code_by_short_id"></a>

> Code samples

```http
GET https://api.routegy.com/codes/{short_id} HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/codes/{short_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/codes/{short_id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/codes/{short_id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/codes/{short_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /codes/{short_id}`

Get code by its short ID. 

 Check out the [Topic: Code](https://docs.routegy.com/topic/codes/) and [Reference: Code](https://docs.routegy.com/reference/codes/) pages for more information.

<h3 id="get-code-by-short-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|short_id|path|integer|true|A short ID identifying this code.|

> Example responses

> 200 Response

```json
{
  "id": "5C74E22E-D7ED-497E-8DE3-09FF4E9AEBEC",
  "url": "https://api.routegy.com/codes/5C74E22E-D7ED-497E-8DE3-09FF4E9AEBEC",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "short_id": "ax7dkEg",
  "touch_point": "BADD03B4-CAEB-49DB-8B91-BEFAC4EB9EEB"
}
```

<h3 id="get-code-by-short-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[GetCodeResponse](#schemagetcoderesponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## List organizations

<a id="opIdlist_organizations"></a>

> Code samples

```http
GET https://api.routegy.com/organizations HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/organizations \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/organizations', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/organizations',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/organizations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations`

List all organizations for the authenticated user.

> Example responses

> 200 Response

```json
{
  "next": "https://api.routegy.com/organizations?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
      "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
      "name": "My Test Organization",
      "slug": "my-test-organization",
      "description": "Organization where I test things"
    }
  ]
}
```

<h3 id="list-organizations-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[ListOrganizationsResponse](#schemalistorganizationsresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Create new organization

<a id="opIdcreate_organization"></a>

> Code samples

```http
POST https://api.routegy.com/organizations HTTP/1.1
Host: api.routegy.com
Content-Type: application/json
Accept: application/json

```

```shell
# You can also use wget
curl -X POST https://api.routegy.com/organizations \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.routegy.com/organizations', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.routegy.com/organizations',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.routegy.com/organizations", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations`

Create a new organization.

**Related:**
* [How-to: Create new organizations](https://docs.routegy.com/how-to/create-new-organizations/)
* [Topic: Organization](https://docs.routegy.com/topic/organizations/)
* [Reference: Organization](https://docs.routegy.com/reference/organizations/)

> Body parameter

```json
{
  "name": "My Test Organization",
  "description": "Organization where I test things",
  "owner": "A56C801E-D814-41E0-8A4F-70FBF25B7C13",
  "plan": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D"
}
```

<h3 id="create-new-organization-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateOrganizationRequest](#schemacreateorganizationrequest)|true|Object defining the resource to create|

> Example responses

> 201 Response

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}
```

<h3 id="create-new-organization-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[CreateOrganizationResponse](#schemacreateorganizationresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Get organization by id

<a id="opIdget_organization"></a>

> Code samples

```http
GET https://api.routegy.com/organizations/{id} HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/organizations/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/organizations/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/organizations/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/organizations/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{id}`

Get organization by its ID.

**Related:**
* [How-to: Create new organizations](https://docs.routegy.com/how-to/create-new-organizations/)
* [Topic: Organization](https://docs.routegy.com/topic/organizations/)
* [Reference: Organization](https://docs.routegy.com/reference/organizations/)

<h3 id="get-organization-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 200 Response

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}
```

<h3 id="get-organization-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[GetOrganizationResponse](#schemagetorganizationresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Update organization by id

<a id="opIdupdate_organization"></a>

> Code samples

```http
PUT https://api.routegy.com/organizations/{id} HTTP/1.1
Host: api.routegy.com
Content-Type: application/json
Accept: application/json

```

```shell
# You can also use wget
curl -X PUT https://api.routegy.com/organizations/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.put('https://api.routegy.com/organizations/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.put 'https://api.routegy.com/organizations/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "https://api.routegy.com/organizations/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /organizations/{id}`

Update organization by its id

> Body parameter

```json
{
  "name": "My Test Organization",
  "description": "Organization where I test things",
  "owner": "27B4CF49-88CD-4960-B397-13443DD24402",
  "plan": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D"
}
```

<h3 id="update-organization-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[UpdateOrganizationRequest](#schemaupdateorganizationrequest)|true|none|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 200 Response

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}
```

<h3 id="update-organization-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[UpdateOrganizationResponse](#schemaupdateorganizationresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Patch organization by id

<a id="opIdpatch_organization"></a>

> Code samples

```http
PATCH https://api.routegy.com/organizations/{id} HTTP/1.1
Host: api.routegy.com
Content-Type: application/json
Accept: application/json

```

```shell
# You can also use wget
curl -X PATCH https://api.routegy.com/organizations/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.patch('https://api.routegy.com/organizations/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.patch 'https://api.routegy.com/organizations/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://api.routegy.com/organizations/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /organizations/{id}`

Patch organization by its id

> Body parameter

```json
{
  "name": "My Test Organization",
  "description": "Organization where I test things",
  "owner": "27B4CF49-88CD-4960-B397-13443DD24402",
  "plan": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D"
}
```

<h3 id="patch-organization-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatchUpdateOrganizationRequest](#schemapatchupdateorganizationrequest)|true|none|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 200 Response

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}
```

<h3 id="patch-organization-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[PatchUpdateOrganizationResponse](#schemapatchupdateorganizationresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Delete organization by id

<a id="opIddelete_organization"></a>

> Code samples

```http
DELETE https://api.routegy.com/organizations/{id} HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X DELETE https://api.routegy.com/organizations/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.routegy.com/organizations/{id}', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.routegy.com/organizations/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.routegy.com/organizations/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{id}`

Delete organization by its id

<h3 id="delete-organization-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 400 Response

```json
{
  "detail": "Bad Request.",
  "status_code": 400,
  "error_id": null
}
```

<h3 id="delete-organization-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Get organization activity stream by id

<a id="opIdget_organization_activity"></a>

> Code samples

```http
GET https://api.routegy.com/organizations/{id}/activity HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/organizations/{id}/activity \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/organizations/{id}/activity', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/organizations/{id}/activity',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/organizations/{id}/activity", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{id}/activity`

Get activity stream for the organization by its id

<h3 id="get-organization-activity-stream-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 200 Response

```json
{
  "next": "https://api.routegy.com/.../activity?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "id": "D216DCB8-CA9A-4B53-8468-A4A42E7EB63D",
      "actor": {
        "id": "27B4CF49-88CD-4960-B397-13443DD24402",
        "model_type": "user",
        "name": "John Smith",
        "email": "john.smith@example.org"
      },
      "verb": "created",
      "action_object": {
        "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
        "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
        "model_type": "organization",
        "name": "My Test Organization",
        "slug": "my-test-organization"
      },
      "target": null,
      "timestamp": "2020-03-27T23:09:35+0000"
    }
  ]
}
```

<h3 id="get-organization-activity-stream-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[ActivityStreamResponse](#schemaactivitystreamresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Follow organization activities

<a id="opIdfollow_organization"></a>

> Code samples

```http
POST https://api.routegy.com/organizations/{id}/follow HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X POST https://api.routegy.com/organizations/{id}/follow \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.post('https://api.routegy.com/organizations/{id}/follow', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.post 'https://api.routegy.com/organizations/{id}/follow',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://api.routegy.com/organizations/{id}/follow", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /organizations/{id}/follow`

Follow an organization by its id to include it in your activity stream.

<h3 id="follow-organization-activities-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 400 Response

```json
{
  "detail": "Bad Request.",
  "status_code": 400,
  "error_id": null
}
```

<h3 id="follow-organization-activities-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## Stop following organization activities

<a id="opIdunfollow_organization"></a>

> Code samples

```http
DELETE https://api.routegy.com/organizations/{id}/unfollow HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X DELETE https://api.routegy.com/organizations/{id}/unfollow \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.delete('https://api.routegy.com/organizations/{id}/unfollow', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.delete 'https://api.routegy.com/organizations/{id}/unfollow',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://api.routegy.com/organizations/{id}/unfollow", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /organizations/{id}/unfollow`

Stop following an organization by its id. Activities from this organization will no longer appear in your stream.

<h3 id="stop-following-organization-activities-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 400 Response

```json
{
  "detail": "Bad Request.",
  "status_code": 400,
  "error_id": null
}
```

<h3 id="stop-following-organization-activities-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## List organization followers

<a id="opIdlist_organizations_followers"></a>

> Code samples

```http
GET https://api.routegy.com/organizations/{id}/followers HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/organizations/{id}/followers \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/organizations/{id}/followers', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/organizations/{id}/followers',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/organizations/{id}/followers", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /organizations/{id}/followers`

List users that follow an organization by its id.

<h3 id="list-organization-followers-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string(uuid)|true|A UUID string identifying this organization.|

> Example responses

> 200 Response

```json
{
  "next": "https://api.routegy.com/.../followers?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "started": "2020-04-27T23:09:35+0000",
      "user": {
        "id": "27B4CF49-88CD-4960-B397-13443DD24402",
        "model_type": "user",
        "name": "John Smith",
        "email": "john.smith@example.org"
      }
    }
  ]
}
```

<h3 id="list-organization-followers-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[ListFollowersResponse](#schemalistfollowersresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

## List workspaces

<a id="opIdlist_workspaces"></a>

> Code samples

```http
GET https://api.routegy.com/workspaces HTTP/1.1
Host: api.routegy.com
Accept: application/json

```

```shell
# You can also use wget
curl -X GET https://api.routegy.com/workspaces \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer {access-token}'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer {access-token}'
}

r = requests.get('https://api.routegy.com/workspaces', headers = headers)

print(r.json())

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'Bearer {access-token}'
}

result = RestClient.get 'https://api.routegy.com/workspaces',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"Bearer {access-token}"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://api.routegy.com/workspaces", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /workspaces`

List all workspaces for the authenticated user.

> Example responses

> 200 Response

```json
{
  "next": "https://api.routegy.com/workspaces?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "id": "695D2753-4A29-4853-B85D-B1A7462B1FF8",
      "url": "https://api.routegy.com/workspaces/695D2753-4A29-4853-B85D-B1A7462B1FF8",
      "name": "Seattle Campus",
      "slug": "seattle-campus",
      "description": "Our Seattle area campus",
      "organization": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93"
    }
  ]
}
```

<h3 id="list-workspaces-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Success|[ListWorkspacesResponse](#schemalistworkspacesresponse)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Bad Request|[BadRequestResponse](#schemabadrequestresponse)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|Unauthorized|[UnauthorizedResponse](#schemaunauthorizedresponse)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|Forbidden|[ForbiddenResponse](#schemaforbiddenresponse)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Not Found|[NotFoundResponse](#schemanotfoundresponse)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
OAuth2
</aside>

# Schemas

<h2 id="tocS_BadRequestResponse">BadRequestResponse</h2>
<!-- backwards compatibility -->
<a id="schemabadrequestresponse"></a>
<a id="schema_BadRequestResponse"></a>
<a id="tocSbadrequestresponse"></a>
<a id="tocsbadrequestresponse"></a>

```json
{
  "detail": "Bad Request.",
  "status_code": 400,
  "error_id": null
}

```

Response body when bad request is received

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detail|string|false|read-only|Details about the error|
|status_code|integer|false|read-only|HTTP status code of the error|
|error_id|integer¦null|false|read-only|ID of the error for external tracking|

<h2 id="tocS_UnauthorizedResponse">UnauthorizedResponse</h2>
<!-- backwards compatibility -->
<a id="schemaunauthorizedresponse"></a>
<a id="schema_UnauthorizedResponse"></a>
<a id="tocSunauthorizedresponse"></a>
<a id="tocsunauthorizedresponse"></a>

```json
{
  "detail": "Unauthenticated.",
  "status_code": 401,
  "error_id": null
}

```

Response body when request lacks valid authentication credentials

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detail|string|false|read-only|Details about the error|
|status_code|integer|false|read-only|HTTP status code of the error|
|error_id|integer¦null|false|read-only|ID of the error for external tracking|

<h2 id="tocS_ForbiddenResponse">ForbiddenResponse</h2>
<!-- backwards compatibility -->
<a id="schemaforbiddenresponse"></a>
<a id="schema_ForbiddenResponse"></a>
<a id="tocSforbiddenresponse"></a>
<a id="tocsforbiddenresponse"></a>

```json
{
  "detail": "Forbidden.",
  "status_code": 403,
  "error_id": null
}

```

Response body when authenticated request does not have authorization to perform action

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detail|string|false|read-only|Details about the error|
|status_code|integer|false|read-only|HTTP status code of the error|
|error_id|integer¦null|false|read-only|ID of the error for external tracking|

<h2 id="tocS_NotFoundResponse">NotFoundResponse</h2>
<!-- backwards compatibility -->
<a id="schemanotfoundresponse"></a>
<a id="schema_NotFoundResponse"></a>
<a id="tocSnotfoundresponse"></a>
<a id="tocsnotfoundresponse"></a>

```json
{
  "detail": "Not Found.",
  "status_code": 404,
  "error_id": null
}

```

Response body when requested resource is not found

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detail|string|false|read-only|Details about the error|
|status_code|integer|false|read-only|HTTP status code of the error|
|error_id|integer¦null|false|read-only|ID of the error for external tracking|

<h2 id="tocS_ActivityStreamResponse">ActivityStreamResponse</h2>
<!-- backwards compatibility -->
<a id="schemaactivitystreamresponse"></a>
<a id="schema_ActivityStreamResponse"></a>
<a id="tocSactivitystreamresponse"></a>
<a id="tocsactivitystreamresponse"></a>

```json
{
  "next": "https://api.routegy.com/.../activity?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "id": "D216DCB8-CA9A-4B53-8468-A4A42E7EB63D",
      "actor": {
        "id": "27B4CF49-88CD-4960-B397-13443DD24402",
        "model_type": "user",
        "name": "John Smith",
        "email": "john.smith@example.org"
      },
      "verb": "created",
      "action_object": {
        "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
        "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
        "model_type": "organization",
        "name": "My Test Organization",
        "slug": "my-test-organization"
      },
      "target": null,
      "timestamp": "2020-03-27T23:09:35+0000"
    }
  ]
}

```

Response containing a list of activities

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|next|string(uri)¦null|false|none|URL to next page of results|
|previous|string(uri)¦null|false|none|URL to previous page of results|
|results|[[ActivityResponse](#schemaactivityresponse)]|false|none|Array containing page of results|

<h2 id="tocS_ActivityResponse">ActivityResponse</h2>
<!-- backwards compatibility -->
<a id="schemaactivityresponse"></a>
<a id="schema_ActivityResponse"></a>
<a id="tocSactivityresponse"></a>
<a id="tocsactivityresponse"></a>

```json
{
  "id": "D216DCB8-CA9A-4B53-8468-A4A42E7EB63D",
  "actor": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "model_type": "user",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "verb": "created",
  "action_object": {
    "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
    "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
    "model_type": "organization",
    "name": "My Test Organization",
    "slug": "my-test-organization"
  },
  "target": null,
  "timestamp": "2020-03-27T23:09:35+0000"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the activity|
|actor|object|false|read-only|User that created the activity|
|verb|string|false|read-only|Phrase that identifies the activity|
|action_object|object¦null|false|read-only|Object linked to the activity|
|target|object¦null|false|read-only|The object to which the activity was performed|
|public|boolean|false|read-only|Flag indicating if the activity is public or private|
|description|string|false|read-only|Description of the activity|
|timestamp|string(date-time)|false|read-only|Datetime when the activity happened|

<h2 id="tocS_GetCodeResponse">GetCodeResponse</h2>
<!-- backwards compatibility -->
<a id="schemagetcoderesponse"></a>
<a id="schema_GetCodeResponse"></a>
<a id="tocSgetcoderesponse"></a>
<a id="tocsgetcoderesponse"></a>

```json
{
  "id": "5C74E22E-D7ED-497E-8DE3-09FF4E9AEBEC",
  "url": "https://api.routegy.com/codes/5C74E22E-D7ED-497E-8DE3-09FF4E9AEBEC",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "short_id": "ax7dkEg",
  "touch_point": "BADD03B4-CAEB-49DB-8B91-BEFAC4EB9EEB"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the code|
|url|string(uri)|false|read-only|URL of the code|
|created_at|string(date-time)|false|read-only|Datetime when the code was created|
|updated_at|string(date-time)|false|read-only|Datetime when the code was last updated|
|short_id|string|false|read-only|Short ID to use when referencing the code in the public API|
|touch_point|string(uuid)|false|none|ID of the touchpoint for the code|

<h2 id="tocS_CodeTouchCreatedResponse">CodeTouchCreatedResponse</h2>
<!-- backwards compatibility -->
<a id="schemacodetouchcreatedresponse"></a>
<a id="schema_CodeTouchCreatedResponse"></a>
<a id="tocScodetouchcreatedresponse"></a>
<a id="tocscodetouchcreatedresponse"></a>

```json
{
  "id": "5A29D4AB-99AE-49A7-810B-CDA71FBBF9ED"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the touch that was created|

<h2 id="tocS_GetCodeTouchPointResponse">GetCodeTouchPointResponse</h2>
<!-- backwards compatibility -->
<a id="schemagetcodetouchpointresponse"></a>
<a id="schema_GetCodeTouchPointResponse"></a>
<a id="tocSgetcodetouchpointresponse"></a>
<a id="tocsgetcodetouchpointresponse"></a>

```json
{
  "name": "Out of coffee?",
  "slug": "out-of-coffee",
  "description": "Let us know so we can refill the pot",
  "location": {
    "name": "Break room",
    "slug": "break-room",
    "description": "Employee break room",
    "breadcrumbs": "Office / Floor 1"
  },
  "schema": {
    "name": "Coffee Machine",
    "slug": "coffee-machine",
    "description": "Report supply chain issues related to coffee machines",
    "document": {
      "type": "object",
      "title": "Out of coffee?",
      "required": [
        "problem"
      ],
      "additionalProperties": false,
      "properties": {
        "problem": [
          "No coffee beans",
          "No filters",
          "No cups",
          "Machine isn't working",
          "Something else"
        ],
        "type": "string",
        "attrs": {
          "type": "radio"
        },
        "title": "What is the problem?",
        "comments": {
          "type": "string",
          "attrs": {
            "type": "textarea",
            "placeholder": "Please provide any additional comments here"
          },
          "title": "Additional comments"
        }
      }
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|Name of the touchpoint|
|description|string|false|none|Description of the touchpoint|
|slug|string(slug)|false|read-only|Slug of the touchpoint|
|location|object|false|none|Location of the touchpoint|
|» name|string|false|none|Name of the location|
|» description|string|false|none|Description of the location|
|» slug|string(slug)|false|read-only|Slug of the location|
|» breadcrumbs|string|false|read-only|Breadcrumbs of the location|
|schema|object|false|none|Schema of the touchpoint|
|» name|string|false|none|Name of the schema|
|» description|string|false|none|Description of the schema|
|» slug|string(slug)|false|read-only|Slug of the schema|
|» document|object|false|none|JSON Schema document of the schema|
|»» type|string|false|none|Type of JSON Schema object|
|»» title|string|false|none|Title of JSON Schema object|
|»» required|[any]|false|none|Required properties of JSON Schema object|
|»» properties|object|false|none|Properties of JSON Schema object|

<h2 id="tocS_ListOrganizationsResponse">ListOrganizationsResponse</h2>
<!-- backwards compatibility -->
<a id="schemalistorganizationsresponse"></a>
<a id="schema_ListOrganizationsResponse"></a>
<a id="tocSlistorganizationsresponse"></a>
<a id="tocslistorganizationsresponse"></a>

```json
{
  "next": "https://api.routegy.com/organizations?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
      "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
      "name": "My Test Organization",
      "slug": "my-test-organization",
      "description": "Organization where I test things"
    }
  ]
}

```

Response containing a list of organizations

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|next|string(uri)¦null|false|none|URL to next page of results|
|previous|string(uri)¦null|false|none|URL to previous page of results|
|results|[[ListOrganizationResponse](#schemalistorganizationresponse)]|false|none|Array containing page of results|

<h2 id="tocS_ListOrganizationResponse">ListOrganizationResponse</h2>
<!-- backwards compatibility -->
<a id="schemalistorganizationresponse"></a>
<a id="schema_ListOrganizationResponse"></a>
<a id="tocSlistorganizationresponse"></a>
<a id="tocslistorganizationresponse"></a>

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the organization|
|url|string(uri)|false|read-only|URL of the organization|
|name|string|false|read-only|Name of the organization|
|slug|string(slug)|false|read-only|Slug of the organization|
|description|string|false|read-only|Description of the organization|

<h2 id="tocS_CreateOrganizationRequest">CreateOrganizationRequest</h2>
<!-- backwards compatibility -->
<a id="schemacreateorganizationrequest"></a>
<a id="schema_CreateOrganizationRequest"></a>
<a id="tocScreateorganizationrequest"></a>
<a id="tocscreateorganizationrequest"></a>

```json
{
  "name": "My Test Organization",
  "description": "Organization where I test things",
  "owner": "A56C801E-D814-41E0-8A4F-70FBF25B7C13",
  "plan": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|Name of the organization|
|description|string|false|none|Description of the organization|
|owner|string(uuid)|true|none|User that is the owner of this organization|
|plan|string(uuid)|true|none|Plan to use for this organization|

<h2 id="tocS_CreateOrganizationResponse">CreateOrganizationResponse</h2>
<!-- backwards compatibility -->
<a id="schemacreateorganizationresponse"></a>
<a id="schema_CreateOrganizationResponse"></a>
<a id="tocScreateorganizationresponse"></a>
<a id="tocscreateorganizationresponse"></a>

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the organization|
|url|string(uri)|false|read-only|URL of the organization|
|created_at|string(date-time)|false|read-only|Datetime when organization was created|
|updated_at|string(date-time)|false|read-only|Datetime when organization was last updated|
|name|string|false|none|Name of the organization|
|slug|string(slug)|false|read-only|Slug of the organization|
|description|string|false|none|Description of the organization|
|owner|object|false|none|User who owns this organization|
|plan|object|false|none|Plan of the organization|

<h2 id="tocS_GetOrganizationResponse">GetOrganizationResponse</h2>
<!-- backwards compatibility -->
<a id="schemagetorganizationresponse"></a>
<a id="schema_GetOrganizationResponse"></a>
<a id="tocSgetorganizationresponse"></a>
<a id="tocsgetorganizationresponse"></a>

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the organization|
|url|string(uri)|false|read-only|URL of the organization|
|created_at|string(date-time)|false|read-only|Datetime when organization was created|
|updated_at|string(date-time)|false|read-only|Datetime when organization was last updated|
|name|string|false|none|Name of the organization|
|slug|string(slug)|false|read-only|Slug of the organization|
|description|string|false|none|Description of the organization|
|owner|object|false|none|User who owns this organization|
|plan|object|false|none|Plan of the organization|

<h2 id="tocS_UpdateOrganizationRequest">UpdateOrganizationRequest</h2>
<!-- backwards compatibility -->
<a id="schemaupdateorganizationrequest"></a>
<a id="schema_UpdateOrganizationRequest"></a>
<a id="tocSupdateorganizationrequest"></a>
<a id="tocsupdateorganizationrequest"></a>

```json
{
  "name": "My Test Organization",
  "description": "Organization where I test things",
  "owner": "27B4CF49-88CD-4960-B397-13443DD24402",
  "plan": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|Name of the organization|
|description|string|false|none|Description of the organization|
|owner|string(uuid)|false|none|User who owns this organization|
|plan|string(uuid)|false|none|Plan of the organization|

<h2 id="tocS_UpdateOrganizationResponse">UpdateOrganizationResponse</h2>
<!-- backwards compatibility -->
<a id="schemaupdateorganizationresponse"></a>
<a id="schema_UpdateOrganizationResponse"></a>
<a id="tocSupdateorganizationresponse"></a>
<a id="tocsupdateorganizationresponse"></a>

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the organization|
|url|string(uri)|false|read-only|URL of the organization|
|created_at|string(date-time)|false|read-only|Datetime when organization was created|
|updated_at|string(date-time)|false|read-only|Datetime when organization was last updated|
|name|string|false|none|Name of the organization|
|slug|string(slug)|false|read-only|Slug of the organization|
|description|string|false|none|Description of the organization|
|owner|object|false|none|User who owns this organization|
|plan|object|false|none|Plan of the organization|

<h2 id="tocS_PatchUpdateOrganizationRequest">PatchUpdateOrganizationRequest</h2>
<!-- backwards compatibility -->
<a id="schemapatchupdateorganizationrequest"></a>
<a id="schema_PatchUpdateOrganizationRequest"></a>
<a id="tocSpatchupdateorganizationrequest"></a>
<a id="tocspatchupdateorganizationrequest"></a>

```json
{
  "name": "My Test Organization",
  "description": "Organization where I test things",
  "owner": "27B4CF49-88CD-4960-B397-13443DD24402",
  "plan": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|Name of the organization|
|description|string|false|none|Description of the organization|
|owner|string(uuid)|false|none|User who owns this organization|
|plan|string(uuid)|false|none|Plan of the organization|

<h2 id="tocS_PatchUpdateOrganizationResponse">PatchUpdateOrganizationResponse</h2>
<!-- backwards compatibility -->
<a id="schemapatchupdateorganizationresponse"></a>
<a id="schema_PatchUpdateOrganizationResponse"></a>
<a id="tocSpatchupdateorganizationresponse"></a>
<a id="tocspatchupdateorganizationresponse"></a>

```json
{
  "id": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "url": "https://api.routegy.com/organizations/1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93",
  "created_at": "2020-03-27T23:09:35+0000",
  "updated_at": "2020-03-27T23:09:35+0000",
  "name": "My Test Organization",
  "slug": "my-test-organization",
  "description": "Organization where I test things",
  "owner": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "name": "John Smith",
    "email": "john.smith@example.org"
  },
  "plan": {
    "id": "0BF5E76C-4423-44D6-BF29-BA2DC7D7CF2D",
    "expires_at": "2020-04-27T23:09:35+0000",
    "active": true,
    "plan_type": {
      "id": "e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "url": "https://api.routegy.com/plan-types/e38b1667-8246-4b92-b0d8-6a2a13d32c5a",
      "name": "Trial",
      "slug": "trial",
      "description": "Trial plan that enables limited use of the service",
      "meta_data": {
        "stripe_plan_id": "plan_GV4hyt7qWfXHps"
      },
      "quotas": [
        {
          "id": "303b3a7b-c03f-41e2-967d-1569e1a312e6",
          "name": "Touchpoints (20)",
          "slug": "touchpoints-20",
          "description": "Limit the number of touchpoints to 20",
          "value": 20
        }
      ]
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the organization|
|url|string(uri)|false|read-only|URL of the organization|
|created_at|string(date-time)|false|read-only|Datetime when organization was created|
|updated_at|string(date-time)|false|read-only|Datetime when organization was last updated|
|name|string|false|none|Name of the organization|
|slug|string(slug)|false|read-only|Slug of the organization|
|description|string|false|none|Description of the organization|
|owner|object|false|none|User who owns this organization|
|plan|object|false|none|Plan of the organization|

<h2 id="tocS_ListFollowersResponse">ListFollowersResponse</h2>
<!-- backwards compatibility -->
<a id="schemalistfollowersresponse"></a>
<a id="schema_ListFollowersResponse"></a>
<a id="tocSlistfollowersresponse"></a>
<a id="tocslistfollowersresponse"></a>

```json
{
  "next": "https://api.routegy.com/.../followers?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "started": "2020-04-27T23:09:35+0000",
      "user": {
        "id": "27B4CF49-88CD-4960-B397-13443DD24402",
        "model_type": "user",
        "name": "John Smith",
        "email": "john.smith@example.org"
      }
    }
  ]
}

```

Response containing a list of followers

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|next|string(uri)¦null|false|none|URL to next page of results|
|previous|string(uri)¦null|false|none|URL to previous page of results|
|results|[[ListFollowerResponse](#schemalistfollowerresponse)]|false|none|Array containing page of results|

<h2 id="tocS_ListFollowerResponse">ListFollowerResponse</h2>
<!-- backwards compatibility -->
<a id="schemalistfollowerresponse"></a>
<a id="schema_ListFollowerResponse"></a>
<a id="tocSlistfollowerresponse"></a>
<a id="tocslistfollowerresponse"></a>

```json
{
  "started": "2020-04-27T23:09:35+0000",
  "user": {
    "id": "27B4CF49-88CD-4960-B397-13443DD24402",
    "model_type": "user",
    "name": "John Smith",
    "email": "john.smith@example.org"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(date-time)|false|read-only|Datetime when user started following this resource|
|user|string(uri)|false|read-only|User following this resource|

<h2 id="tocS_ListWorkspacesResponse">ListWorkspacesResponse</h2>
<!-- backwards compatibility -->
<a id="schemalistworkspacesresponse"></a>
<a id="schema_ListWorkspacesResponse"></a>
<a id="tocSlistworkspacesresponse"></a>
<a id="tocslistworkspacesresponse"></a>

```json
{
  "next": "https://api.routegy.com/workspaces?next=XXXXXX",
  "previous": null,
  "items": [
    {
      "id": "695D2753-4A29-4853-B85D-B1A7462B1FF8",
      "url": "https://api.routegy.com/workspaces/695D2753-4A29-4853-B85D-B1A7462B1FF8",
      "name": "Seattle Campus",
      "slug": "seattle-campus",
      "description": "Our Seattle area campus",
      "organization": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93"
    }
  ]
}

```

Response containing a list of workspaces

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|next|string(uri)¦null|false|none|URL to next page of results|
|previous|string(uri)¦null|false|none|URL to previous page of results|
|results|[[ListWorkspaceResponse](#schemalistworkspaceresponse)]|false|none|Array containing page of results|

<h2 id="tocS_ListWorkspaceResponse">ListWorkspaceResponse</h2>
<!-- backwards compatibility -->
<a id="schemalistworkspaceresponse"></a>
<a id="schema_ListWorkspaceResponse"></a>
<a id="tocSlistworkspaceresponse"></a>
<a id="tocslistworkspaceresponse"></a>

```json
{
  "id": "695D2753-4A29-4853-B85D-B1A7462B1FF8",
  "url": "https://api.routegy.com/workspaces/695D2753-4A29-4853-B85D-B1A7462B1FF8",
  "name": "Seattle Campus",
  "slug": "seattle-campus",
  "description": "Our Seattle area campus",
  "organization": "1E96C10E-658B-40C5-B7FF-A9D9A8F6BB93"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string(uuid)|false|read-only|ID of the workspace|
|url|string(uri)|false|read-only|URL of the workspace|
|name|string|false|read-only|Name of the workspace|
|slug|string(slug)|false|read-only|Slug of the workspace|
|description|string|false|read-only|Description of the workspace|
|organization|string(uuid)|false|read-only|ID of the workspace organization|

