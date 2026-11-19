___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "B24U AI Chat Widget",
  "categories": [
    "CHAT",
    "LEAD_GENERATION",
    "SALES"
  ],
  "brand": {
    "id": "brand_b24u",
    "displayName": "B24U",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAxlBMVEX////m3evCq82dea96SpJiKX5SE3JJBmpEAGZlLYHs5e+7oseGWpxeI3tNDG29pcnf0+RgJ31GA2ji1+fn4exYHHeffLHu6PFPEG9bH3lpM4WSaqbs5vBxPYu/qMvazeHw6/P28vfYyt9vO4l1Qo7UxdylhLWCVZmAUperjLr39PhWGXW5n8X59vqXcarGstFfKXygfrFnMIPNutaKX5/Kt9RQEG94R5GMYqHFsM8/AGLPvtjXyN7Qv9h/UZaVbqitkLywlL/d6n2CAAADcUlEQVRYw+2XbWOaMBDHkceA8qBOqVgFK2AF0Vnbtdtcu33/L7WQhCTyJPbtdi9aHnK/3F3+d6og/LdG64mSrKgaAJqqy5LYu83b6A9MC3BmmQPb6OzuSENQtZEijTu5f5EmoMEm0w5R2DpoMd2+5u9y0Y/uZrrn6TO+Gtb8vh1wbxYrF9LSN4LVKjAebGnNIKHTBWBK0Yp/vIokk6YRXQVM4ppj702L4g6jdsBo0xCk/zgiMThtAGubNL1MYlKKsK6SfeRnhCL/MHDdgL+3U0yYV/13IQJkTG2GuJc9RfFgJzD9HDDBquih93WRXTxw9uaICmIo0axtnIVe1qQELgDBMS2pOC5SiTFXKhU4vQA4YVXFMkkuecTEcSkAsGDFj2r7QX8gm02qIfRMHuA09JNONj1iOfFV2AEO4IagweSAbgetzwE2PGDa3M0xTRja4DIDWkQf1d96kuUn1oJqqubFn+DTjNALkzWMrXERzOG1tjnBaAOxGA6y38MHgyu3WqA9mGb3gAFQNM8kmpdv+Mh8kiYwDS4Hdg4hB7BJrmM0EF7Rym1RJzDCuy6RmGQKMDnAHLGjTWpN4d0bWriiALDHdbrLrxUKsBggQ9GoKvzzBm9z1aWRkAUFAO9qoC1VCkCv8CkEVETWgRQE5tM/FQAvYKu0OgAdqqjlc82FgTBWxAIwRKNk5aGbEiC5AORD5wQzUWECA/AdZvPjGuAiAg/q3lfgxRFyPP0nPGsksKeOKQzPsKfybSw4gRM01pKXvNav14qIAeYv4g+sMxsSd+wYVbRLI0DLG81fiqIYW5KYGxTg+QgFP1oiB7EkpDLA8os3Y7QV0A7tUq4A6EcPjhUp+D2/+EBPk3IzVWqw3hBbkMnsbd5zVIpDO6uldq7TQa1N+YGyEW4GhC4+RDwmdjcDFFLbGHD1vAGgkNI6s9IZNDRTJX6yP+yM3FLnNoAquWTxb60SwHXAbE6ldcDKUHoNADc0S6aH8z5bfcIF0HZCFYBnomuULOA/tQ/YH427BkCbZX9w/GBhfAowftYuBXEb4H5b1DefFnWArMU7c2I6rocVfwxYB1luCTT+f5a445dYVumRrn2hHmCtF7W21lONKUJ7q/vGDzrbcFebaFd3dd/w06mbu7n3BeGzAG32vmv54dbubJnhh93t99Y/an8Bjflvy/XmzTgAAAAASUVORK5CYII="
  },
  "description": "Adds the B24U AI chat assistant to your site. The assistant answers visitors from your site content and sends leads to your CRM. All widget settings are managed in your B24U account.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "domain",
    "displayName": "Site domain in B24U",
    "simpleValueType": true,
    "help": "The domain your site is registered with in B24U, for example example.com. Protocol, www and path are removed automatically.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "valueHint": "example.com"
  },
  {
    "type": "SELECT",
    "name": "server",
    "displayName": "B24U server",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "com",
        "displayValue": "b24u.com"
      },
      {
        "value": "ru",
        "displayValue": "b24u.ru"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "com",
    "help": "Where your B24U account is: b24u.com or b24u.ru."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Loads the B24U widget for the site, the same script the B24U embed code loads:
// https://i.b24u.<server>/<domain>. Everything else (look, texts, behaviour) comes from the
// B24U account, so the tag has nothing more to pass.
const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');
const makeString = require('makeString');

// Host only, lower case, without protocol, path, port and a leading www.
let host = makeString(data.domain || '').trim().toLowerCase();
const scheme = host.indexOf('://');
if (scheme !== -1) host = host.substring(scheme + 3);
const cut = ['/', '?', '#', ':'];
for (let i = 0; i < cut.length; i++) {
  const at = host.indexOf(cut[i]);
  if (at !== -1) host = host.substring(0, at);
}
if (host.indexOf('www.') === 0) host = host.substring(4);

if (host === '' || host.indexOf('.') === -1) {
  data.gtmOnFailure();
  return;
}

const server = data.server === 'ru' ? 'ru' : 'com';
const url = 'https://i.b24u.' + server + '/' + encodeUriComponent(host);
injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, url);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://i.b24u.com/*"
              },
              {
                "type": 1,
                "string": "https://i.b24u.ru/*"
              }
            ]
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
  - name: Loads the widget from b24u.com for a plain domain
    code: |-
      let injected = '';
      mock('injectScript', (url, onSuccess, onFailure) => { injected = url; onSuccess(); });
      runCode({domain: 'example.com', server: 'com'});
      assertThat(injected).isEqualTo('https://i.b24u.com/example.com');
      assertApi('gtmOnSuccess').wasCalled();
  - name: Cleans protocol, www, path and port and uses b24u.ru
    code: |-
      let injected = '';
      mock('injectScript', (url, onSuccess, onFailure) => { injected = url; onSuccess(); });
      runCode({domain: ' HTTPS://www.Example.ru:443/catalog?x=1 ', server: 'ru'});
      assertThat(injected).isEqualTo('https://i.b24u.ru/example.ru');
      assertApi('gtmOnSuccess').wasCalled();
  - name: Fails without loading anything when the domain is empty
    code: |-
      runCode({domain: '', server: 'com'});
      assertApi('injectScript').wasNotCalled();
      assertApi('gtmOnFailure').wasCalled();


___NOTES___

B24U, https://b24u.com/plugins. Source: partner/code/widget/gtm in the B24U repository.
