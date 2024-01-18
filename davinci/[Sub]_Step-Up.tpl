{
  "companyId": "c07b4540-8fee-485a-af76-21e3956853a7",
  "authTokenExpireIds": [],
  "connectorIds": [
    "pingOneMfaConnector",
    "functionsConnector",
    "pingOneFormsConnector",
    "errorConnector",
    "httpConnector"
  ],
  "createdDate": 1699049598365,
  "currentVersion": 13,
  "customerId": "35f33bbaf301dfa496ccb7eee32d9c0e",
  "deployedDate": 1699049601298,
  "description": "OTP and Passkey",
  "flowStatus": "enabled",
  "inputSchemaCompiled": {
    "parameters": {
      "type": "object",
      "properties": {
        "userId": {
          "description": "",
          "preferredDataType": "string",
          "isExpanded": true,
          "type": "string",
          "name": "userId"
        }
      },
      "additionalProperties": false,
      "required": []
    }
  },
  "isInputSchemaSaved": true,
  "isOutputSchemaSaved": false,
  "name": "[Sub] Step-Up",
  "publishedVersion": 13,
  "settings": {
    "csp": "worker-src 'self' blob:; script-src 'self' https://cdn.jsdelivr.net https://code.jquery.com https://devsdk.singularkey.com http://cdnjs.cloudflare.com 'unsafe-inline' 'unsafe-eval';",
    "intermediateLoadingScreenCSS": "",
    "intermediateLoadingScreenHTML": "",
    "logLevel": 3
  },
  "timeouts": "null",
  "updatedDate": 1699049601298,
  "flowId": "a7a1269728459f5fe3ec9dd1e68b4ce7",
  "versionId": 13,
  "graphData": {
    "elements": {
      "nodes": [
        {
          "data": {
            "id": "kd60dkrscv",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "readAllDevices",
            "type": "action",
            "properties": {
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"auth.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{global.parameters.userId}}\",\n        \"tooltip\": \"{{global.parameters.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "setFilterFlag": {
                "value": true
              },
              "deviceTypes": {
                "value": [
                  "FIDO2"
                ]
              }
            }
          },
          "position": {
            "x": 277,
            "y": 352
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "s8pdi3ef5w",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 378.5,
            "y": 352
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "ulgcvgqwk0",
            "nodeType": "CONNECTION",
            "connectionId": "de650ca45593b82c49064ead10b9fe17",
            "connectorId": "functionsConnector",
            "name": "Functions",
            "label": "Functions",
            "status": "configured",
            "capabilityName": "AGreaterThanB",
            "type": "trigger",
            "properties": {
              "rightValueB": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"0\"\n      }\n    ]\n  }\n]"
              },
              "leftValueA": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"size\",\n        \"data\": \"{{local.kd60dkrscv.payload.output.rawResponse.size}}\",\n        \"tooltip\": \"{{local.kd60dkrscv.payload.output.rawResponse.size}}\",\n        \"children\": [\n          {\n            \"text\": \"size\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Passkey Enrolled?"
              }
            }
          },
          "position": {
            "x": 517,
            "y": 352
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "aogbt07ttt",
            "nodeType": "EVAL",
            "label": "Evaluator",
            "properties": {
              "ve564n9h88": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 637,
            "y": 352
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "ve564n9h88",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "createDeviceAuthentication",
            "type": "action",
            "properties": {
              "customNotificationPolicyId": {
                "value": "{}"
              },
              "customTemplateVariant": {
                "value": "{}"
              },
              "customApplicationId": {
                "value": "{}"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"auth.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{global.parameters.userId}}\",\n        \"tooltip\": \"{{global.parameters.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "selectedDevice": {},
              "authTemplateName": {
                "value": "STRONG_AUTHENTICATION"
              }
            }
          },
          "position": {
            "x": 787,
            "y": 412
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "nsh24tkqv5",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 899.5,
            "y": 411
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "26lcvxndot",
            "nodeType": "CONNECTION",
            "connectionId": "8209285e0d2f3fc76bfd23fd10d45e6f",
            "connectorId": "pingOneFormsConnector",
            "name": "PingOne Forms",
            "label": "PingOne Forms",
            "status": "configured",
            "capabilityName": "customForm",
            "type": "action",
            "properties": {
              "formData": {
                "value": [
                  {
                    "key": "otp",
                    "value": ""
                  }
                ]
              },
              "form": {
                "value": "${form_id}"
              }
            }
          },
          "position": {
            "x": 1014,
            "y": 410
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "k5n08mfo3s",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1117,
            "y": 409.5
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "k4mt0jn636",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "validateOtpDeviceAuthentication",
            "type": "action",
            "properties": {
              "deviceAuthenticationId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ve564n9h88.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.ve564n9h88.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "otp": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"otp\",\n        \"data\": \"{{local.26lcvxndot.payload.output.formData.otp}}\",\n        \"tooltip\": \"{{local.26lcvxndot.payload.output.formData.otp}}\",\n        \"children\": [\n          {\n            \"text\": \"otp\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1241,
            "y": 409
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "o4l9h7jhmc",
            "nodeType": "EVAL",
            "label": "Evaluator",
            "properties": {
              "k7srzm89zs": {
                "value": "allTriggersFalse"
              },
              "0h0kie4kxi": {
                "value": "anyTriggersTrue"
              }
            }
          },
          "position": {
            "x": 1380,
            "y": 326
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "k7srzm89zs",
            "nodeType": "CONNECTION",
            "connectionId": "53ab83a4a4ab919d9f2cb02d9e111ac8",
            "connectorId": "errorConnector",
            "name": "Error Message",
            "label": "Error Message",
            "status": "configured",
            "capabilityName": "customErrorMessage",
            "type": "action",
            "properties": {
              "errorMessage": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"Invalid Passcode\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1530,
            "y": 446
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "0h0kie4kxi",
            "nodeType": "CONNECTION",
            "connectionId": "867ed4363b2bc21c860085ad2baa817d",
            "connectorId": "httpConnector",
            "name": "Http",
            "label": "Http",
            "status": "configured",
            "capabilityName": "createSuccessResponse",
            "type": "action",
            "properties": {
              "returnRequestParameters": {
                "value": false
              }
            }
          },
          "position": {
            "x": 1530,
            "y": 326
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "dkxb1h2ngb",
            "nodeType": "CONNECTION",
            "connectionId": "867ed4363b2bc21c860085ad2baa817d",
            "connectorId": "httpConnector",
            "name": "Http",
            "label": "Http",
            "status": "configured",
            "capabilityName": "customHTMLTemplate",
            "type": "trigger",
            "properties": {
              "undefined": {
                "value": {}
              },
              "customHTML": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"<div class=\\\"col-4 justify-content-center align-items-center mx-auto mt-5 d-none\\\" style=\\\"min-width:400px,max-width:400px; width:100%\\\">\\n   <div class=\\\"card\\\">\\n      <div class=\\\"card-body\\\">\\n         <div class=\\\"container\\\">\\n            <h3>\\n               <svg role=\\\"presentation\\\" viewBox=\\\"0 0 24 24\\\" style=\\\"width: 32px; height: 32px;\\\">\\n                  <path d=\\\"M17.81,4.47C17.73,4.47 17.65,4.45 17.58,4.41C15.66,3.42 14,3 12,3C10.03,3 8.15,3.47 6.44,4.41C6.2,4.54 5.9,4.45 5.76,4.21C5.63,3.97 5.72,3.66 5.96,3.53C7.82,2.5 9.86,2 12,2C14.14,2 16,2.47 18.04,3.5C18.29,3.65 18.38,3.95 18.25,4.19C18.16,4.37 18,4.47 17.81,4.47M3.5,9.72C3.4,9.72 3.3,9.69 3.21,9.63C3,9.47 2.93,9.16 3.09,8.93C4.08,7.53 5.34,6.43 6.84,5.66C10,4.04 14,4.03 17.15,5.65C18.65,6.42 19.91,7.5 20.9,8.9C21.06,9.12 21,9.44 20.78,9.6C20.55,9.76 20.24,9.71 20.08,9.5C19.18,8.22 18.04,7.23 16.69,6.54C13.82,5.07 10.15,5.07 7.29,6.55C5.93,7.25 4.79,8.25 3.89,9.5C3.81,9.65 3.66,9.72 3.5,9.72M9.75,21.79C9.62,21.79 9.5,21.74 9.4,21.64C8.53,20.77 8.06,20.21 7.39,19C6.7,17.77 6.34,16.27 6.34,14.66C6.34,11.69 8.88,9.27 12,9.27C15.12,9.27 17.66,11.69 17.66,14.66A0.5,0.5 0 0,1 17.16,15.16A0.5,0.5 0 0,1 16.66,14.66C16.66,12.24 14.57,10.27 12,10.27C9.43,10.27 7.34,12.24 7.34,14.66C7.34,16.1 7.66,17.43 8.27,18.5C8.91,19.66 9.35,20.15 10.12,20.93C10.31,21.13 10.31,21.44 10.12,21.64C10,21.74 9.88,21.79 9.75,21.79M16.92,19.94C15.73,19.94 14.68,19.64 13.82,19.05C12.33,18.04 11.44,16.4 11.44,14.66A0.5,0.5 0 0,1 11.94,14.16A0.5,0.5 0 0,1 12.44,14.66C12.44,16.07 13.16,17.4 14.38,18.22C15.09,18.7 15.92,18.93 16.92,18.93C17.16,18.93 17.56,18.9 17.96,18.83C18.23,18.78 18.5,18.96 18.54,19.24C18.59,19.5 18.41,19.77 18.13,19.82C17.56,19.93 17.06,19.94 16.92,19.94M14.91,22C14.87,22 14.82,22 14.78,22C13.19,21.54 12.15,20.95 11.06,19.88C9.66,18.5 8.89,16.64 8.89,14.66C8.89,13.04 10.27,11.72 11.97,11.72C13.67,11.72 15.05,13.04 15.05,14.66C15.05,15.73 16,16.6 17.13,16.6C18.28,16.6 19.21,15.73 19.21,14.66C19.21,10.89 15.96,7.83 11.96,7.83C9.12,7.83 6.5,9.41 5.35,11.86C4.96,12.67 4.76,13.62 4.76,14.66C4.76,15.44 4.83,16.67 5.43,18.27C5.53,18.53 5.4,18.82 5.14,18.91C4.88,19 4.59,18.87 4.5,18.62C4,17.31 3.77,16 3.77,14.66C3.77,13.46 4,12.37 4.45,11.42C5.78,8.63 8.73,6.82 11.96,6.82C16.5,6.82 20.21,10.33 20.21,14.65C20.21,16.27 18.83,17.59 17.13,17.59C15.43,17.59 14.05,16.27 14.05,14.65C14.05,13.58 13.12,12.71 11.97,12.71C10.82,12.71 9.89,13.58 9.89,14.65C9.89,16.36 10.55,17.96 11.76,19.16C12.71,20.1 13.62,20.62 15.03,21C15.3,21.08 15.45,21.36 15.38,21.62C15.33,21.85 15.12,22 14.91,22Z\\\" style=\\\"fill: rgb(61, 69, 77);\\\"></path>\\n               </svg>\\n               <span class=\\\"ml-3\\\">Passkey</span>\\n            </h3>\\n            <p>\\n               Follow the directions your device provides to authenticate with this site.\\n            </p>\\n            <div class=\\\"form\\\">\\n               <div data-skcomponent=\\\"skerror\\\" class=\\\"feedback branding-template-feedback feedback--error picon-error-triangle\\\" data-skvisibility=\\\"\\\" ></div>\\n               <form id=\\\"securityKeyForm\\\" method=\\\"post\\\">\\n                  <div class=\\\"float-label placeholder-shown\\\">\\n                     <input type=\\\"hidden\\\" name=\\\"assertionValue\\\" id=\\\"assertionValue\\\" />\\n                     <button data-skcomponent=\\\"skbutton\\\" data-skbuttontype=\\\"form-submit\\\" class=\\\"d-none\\\"  data-skbuttonvalue=\\\"submit\\\" data-skform=\\\"securityKeyForm\\\" id=\\\"assertionButton\\\">Next</button>\\n                  </div>\\n               </form>\\n            </div>\\n         </div>\\n      </div>\\n   </div>\\n</div>\"\n      }\n    ]\n  }\n]"
              },
              "customScript": {
                "value": "var authAbortController = window.PublicKeyCredential ? new AbortController() : null;\nvar authAbortSignal = window.PublicKeyCredential ? authAbortController.signal : null;\n\nwindow.abortWebAuthnSignal = function abortWebAuthnSignal()\n{\n    authAbortController.abort();\n    authAbortController = new AbortController();\n    authAbortSignal = authAbortController.signal;\n}\n\nwindow.IsWebAuthnSupported = function IsWebAuthnSupported()\n{\n    if (!window.PublicKeyCredential)\n    {\n            console.log(\"Web Authentication API is not supported on this browser.\");\n            return false;\n    }\n    return true;\n}\n\nwindow.isWebAuthnPlatformAuthenticatorAvailable = function isWebAuthnPlatformAuthenticatorAvailable() {\n    var timer;\n    var p1 = new Promise(function(resolve) {\n            timer = setTimeout(function() {\n                    resolve(false);\n            }, 1000);\n    });\n    var p2 = new Promise(function(resolve) {\n            if (IsWebAuthnSupported() && window.PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable) {\n                    resolve(\n                            window.PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable().catch(function(err) {\n                                    console.log(err);\n                                    return false;\n                            }));\n            }\n            else {\n                    resolve(false);\n            }\n    });\n    return Promise.race([p1, p2]).then(function (res) {\n            clearTimeout(timer);\n            return res;\n    });\n}\nwindow.WebAuthnPlatformAuthentication = function WebAuthnPlatformAuthentication(publicKeyCredentialRequestOptions) {\n    return new Promise(function(resolve, reject) {\n            isWebAuthnPlatformAuthenticatorAvailable().then(function (result) {\n                    if (result) {\n                            resolve(Authenticate(publicKeyCredentialRequestOptions));\n                    }\n                    reject(Error(\"UnSupportedBrowserError\"));\n            });\n    });\n}\nfunction Authenticate(publicKeyCredentialRequestOptions) {\n    return new Promise(function(resolve, reject) {\n            var options = JSON.parse(publicKeyCredentialRequestOptions);\n            var publicKeyCredential = {};\n            publicKeyCredential.challenge = new Uint8Array(options.challenge);\n            if ('allowCredentials' in options) {\n                    publicKeyCredential.allowCredentials = credentialListConversion(options.allowCredentials);\n            }\n            if ('rpId' in options) {\n                    publicKeyCredential.rpId = options.rpId;\n            }\n            if ('timeout' in options) {\n                    publicKeyCredential.timeout = options.timeout;\n            }\n            if ('userVerification' in options) {\n                    publicKeyCredential.userVerification = options.userVerification;\n            }\n            navigator.credentials.get({\"publicKey\": publicKeyCredential})\n                    .then(function (assertion) {\n                            // Send new credential info to server for verification and registration.\n                            var publicKeyCredential = {};\n                            if ('id' in assertion) {\n                                    publicKeyCredential.id = assertion.id;\n                            }\n                            if ('rawId' in assertion) {\n                                    publicKeyCredential.rawId = toBase64Str(assertion.rawId);\n                            }\n                            if ('type' in assertion) {\n                                    publicKeyCredential.type = assertion.type;\n                            }\n                            var response = {};\n                            response.clientDataJSON = toBase64Str(assertion.response.clientDataJSON);\n                            response.authenticatorData = toBase64Str(assertion.response.authenticatorData);\n                            response.signature = toBase64Str(assertion.response.signature);\n                            response.userHandle = toBase64Str(assertion.response.userHandle);\n                            publicKeyCredential.response = response;\n                            resolve(JSON.stringify(publicKeyCredential));\n                            document.getElementById(\"assertionValue\").value = JSON.stringify(publicKeyCredential);                            \n                            document.getElementById('assertionButton').click();\n                    }).catch(function (err) {\n                            // No acceptable authenticator or user refused consent. Cancel authentication\n                            // if this is the only device so we don't loop\n                            console.log(\"No acceptable authenticator or user refused consent\");\n\n            });\n    });\n}\nfunction credentialListConversion(list) {\n    var credList = [];\n    for (var i=0; i < list.length; i++) {\n            var cred = {\n                    type: list[i].type,\n                    id: new Uint8Array(list[i].id)\n            };\n            if (list[i].transports) {\n                    cred.transports = list[i].transports;\n            }\n            credList.push(cred);\n    }\n    return credList;\n}\nfunction toBase64Str(bin){\n    return btoa(String.fromCharCode.apply(null, new Uint8Array(bin)));\n}\n\nAuthenticate('{{{skjson publicKeyCredentialCreationOptions}}}');"
              },
              "nodeTitle": {
                "value": "JS Step for Assertion value"
              },
              "formFieldsList": {
                "value": [
                  {
                    "propertyName": "assertionValue",
                    "preferredControlType": "textField",
                    "preferredDataType": "string",
                    "value": "",
                    "hashedVisibility": false,
                    "displayName": "assertionValue"
                  },
                  {
                    "preferredControlType": "textField",
                    "preferredDataType": "string",
                    "propertyName": "buttonValue"
                  }
                ]
              },
              "sktemplate": {
                "customerId": "35f33bbaf301dfa496ccb7eee32d9c0e",
                "visibility": "private",
                "version": "1.0",
                "name": "FIDO Logon",
                "description": "",
                "createdDate": 1651013128815,
                "inputSchema": "{\n\"type\": \"object\",\n   \"properties\": {\n      \"publicKeyCredentialCreationOptions\": {\n        \"displayName\": \"credentials\",\n\t\t\t\"preferedControlType\": \"textField\",\n            \"enableParameters\": true\n      }\n   }\n}",
                "outputSchema": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"assertionValue\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"propertyName\": \"assertionValue\"\n\t\t}\n\t}\n}",
                "script": "var authAbortController = window.PublicKeyCredential ? new AbortController() : null;\nvar authAbortSignal = window.PublicKeyCredential ? authAbortController.signal : null;\n\nwindow.abortWebAuthnSignal = function abortWebAuthnSignal()\n{\n    authAbortController.abort();\n    authAbortController = new AbortController();\n    authAbortSignal = authAbortController.signal;\n}\n\nwindow.IsWebAuthnSupported = function IsWebAuthnSupported()\n{\n    if (!window.PublicKeyCredential)\n    {\n            console.log(\"Web Authentication API is not supported on this browser.\");\n            return false;\n    }\n    return true;\n}\n\nwindow.isWebAuthnPlatformAuthenticatorAvailable = function isWebAuthnPlatformAuthenticatorAvailable() {\n    var timer;\n    var p1 = new Promise(function(resolve) {\n            timer = setTimeout(function() {\n                    resolve(false);\n            }, 1000);\n    });\n    var p2 = new Promise(function(resolve) {\n            if (IsWebAuthnSupported() && window.PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable) {\n                    resolve(\n                            window.PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable().catch(function(err) {\n                                    console.log(err);\n                                    return false;\n                            }));\n            }\n            else {\n                    resolve(false);\n            }\n    });\n    return Promise.race([p1, p2]).then(function (res) {\n            clearTimeout(timer);\n            return res;\n    });\n}\nwindow.WebAuthnPlatformAuthentication = function WebAuthnPlatformAuthentication(publicKeyCredentialRequestOptions) {\n    return new Promise(function(resolve, reject) {\n            isWebAuthnPlatformAuthenticatorAvailable().then(function (result) {\n                    if (result) {\n                            resolve(Authenticate(publicKeyCredentialRequestOptions));\n                    }\n                    reject(Error(\"UnSupportedBrowserError\"));\n            });\n    });\n}\nfunction Authenticate(publicKeyCredentialRequestOptions) {\n    return new Promise(function(resolve, reject) {\n            var options = JSON.parse(publicKeyCredentialRequestOptions);\n            var publicKeyCredential = {};\n            publicKeyCredential.challenge = new Uint8Array(options.challenge);\n            if ('allowCredentials' in options) {\n                    publicKeyCredential.allowCredentials = credentialListConversion(options.allowCredentials);\n            }\n            if ('rpId' in options) {\n                    publicKeyCredential.rpId = options.rpId;\n            }\n            if ('timeout' in options) {\n                    publicKeyCredential.timeout = options.timeout;\n            }\n            if ('userVerification' in options) {\n                    publicKeyCredential.userVerification = options.userVerification;\n            }\n            navigator.credentials.get({\"publicKey\": publicKeyCredential})\n                    .then(function (assertion) {\n                            // Send new credential info to server for verification and registration.\n                            var publicKeyCredential = {};\n                            if ('id' in assertion) {\n                                    publicKeyCredential.id = assertion.id;\n                            }\n                            if ('rawId' in assertion) {\n                                    publicKeyCredential.rawId = toBase64Str(assertion.rawId);\n                            }\n                            if ('type' in assertion) {\n                                    publicKeyCredential.type = assertion.type;\n                            }\n                            var response = {};\n                            response.clientDataJSON = toBase64Str(assertion.response.clientDataJSON);\n                            response.authenticatorData = toBase64Str(assertion.response.authenticatorData);\n                            response.signature = toBase64Str(assertion.response.signature);\n                            response.userHandle = toBase64Str(assertion.response.userHandle);\n                            publicKeyCredential.response = response;\n                            resolve(JSON.stringify(publicKeyCredential));\n                            document.getElementById(\"assertionValue\").value = JSON.stringify(publicKeyCredential);\n                            \n                            document.getElementById('assertionButton').click();\n                    }).catch(function (err) {\n                            // No acceptable authenticator or user refused consent. Cancel authentication\n                            // if this is the only device so we don't loop\n                            console.log(\"No acceptable authenticator or user refused consent\");\n\n            });\n    });\n}\nfunction credentialListConversion(list) {\n    var credList = [];\n    for (var i=0; i < list.length; i++) {\n            var cred = {\n                    type: list[i].type,\n                    id: new Uint8Array(list[i].id)\n            };\n            if (list[i].transports) {\n                    cred.transports = list[i].transports;\n            }\n            credList.push(cred);\n    }\n    return credList;\n}\nfunction toBase64Str(bin){\n    return btoa(String.fromCharCode.apply(null, new Uint8Array(bin)));\n}\n\nconst fidoButton = document.getElementById(\"fidoButton\");\nfidoButton.addEventListener(\"click\", startFido);\nfunction startFido() {  \n    Authenticate('{{{skjson publicKeyCredentialCreationOptions}}}');\n}",
                "style": "",
                "template": "<div class=\"page\">\n<div class=\"card card--no-padding\">\n   <div class=\"card__content\">\n      <div class=\"flex-container\">\n         <div class=\"branding-template-logo-container\">\n            <div class=\"org-logo\">\n               <img\n                  class=\"org-logo__image\"\n                  src=\"https://d3uinntk0mqu3p.cloudfront.net/branding/market/a3d073bc-3108-49ad-b96c-404bea59a1d0.png\"\n                  alt=\"Company Logo\"\n                  />\n            </div>\n         </div>\n         <div class=\"branding-template-form-container\">\n            <h1 class=\"heading branding-template-heading\">\n               {{#ifEquals type \"PLATFORM\"}}  \n                    <svg role=\"presentation\" viewBox=\"0 0 24 24\" style=\"width: 32px; height: 32px;\">\n                     <path d=\"M17.81,4.47C17.73,4.47 17.65,4.45 17.58,4.41C15.66,3.42 14,3 12,3C10.03,3 8.15,3.47 6.44,4.41C6.2,4.54 5.9,4.45 5.76,4.21C5.63,3.97 5.72,3.66 5.96,3.53C7.82,2.5 9.86,2 12,2C14.14,2 16,2.47 18.04,3.5C18.29,3.65 18.38,3.95 18.25,4.19C18.16,4.37 18,4.47 17.81,4.47M3.5,9.72C3.4,9.72 3.3,9.69 3.21,9.63C3,9.47 2.93,9.16 3.09,8.93C4.08,7.53 5.34,6.43 6.84,5.66C10,4.04 14,4.03 17.15,5.65C18.65,6.42 19.91,7.5 20.9,8.9C21.06,9.12 21,9.44 20.78,9.6C20.55,9.76 20.24,9.71 20.08,9.5C19.18,8.22 18.04,7.23 16.69,6.54C13.82,5.07 10.15,5.07 7.29,6.55C5.93,7.25 4.79,8.25 3.89,9.5C3.81,9.65 3.66,9.72 3.5,9.72M9.75,21.79C9.62,21.79 9.5,21.74 9.4,21.64C8.53,20.77 8.06,20.21 7.39,19C6.7,17.77 6.34,16.27 6.34,14.66C6.34,11.69 8.88,9.27 12,9.27C15.12,9.27 17.66,11.69 17.66,14.66A0.5,0.5 0 0,1 17.16,15.16A0.5,0.5 0 0,1 16.66,14.66C16.66,12.24 14.57,10.27 12,10.27C9.43,10.27 7.34,12.24 7.34,14.66C7.34,16.1 7.66,17.43 8.27,18.5C8.91,19.66 9.35,20.15 10.12,20.93C10.31,21.13 10.31,21.44 10.12,21.64C10,21.74 9.88,21.79 9.75,21.79M16.92,19.94C15.73,19.94 14.68,19.64 13.82,19.05C12.33,18.04 11.44,16.4 11.44,14.66A0.5,0.5 0 0,1 11.94,14.16A0.5,0.5 0 0,1 12.44,14.66C12.44,16.07 13.16,17.4 14.38,18.22C15.09,18.7 15.92,18.93 16.92,18.93C17.16,18.93 17.56,18.9 17.96,18.83C18.23,18.78 18.5,18.96 18.54,19.24C18.59,19.5 18.41,19.77 18.13,19.82C17.56,19.93 17.06,19.94 16.92,19.94M14.91,22C14.87,22 14.82,22 14.78,22C13.19,21.54 12.15,20.95 11.06,19.88C9.66,18.5 8.89,16.64 8.89,14.66C8.89,13.04 10.27,11.72 11.97,11.72C13.67,11.72 15.05,13.04 15.05,14.66C15.05,15.73 16,16.6 17.13,16.6C18.28,16.6 19.21,15.73 19.21,14.66C19.21,10.89 15.96,7.83 11.96,7.83C9.12,7.83 6.5,9.41 5.35,11.86C4.96,12.67 4.76,13.62 4.76,14.66C4.76,15.44 4.83,16.67 5.43,18.27C5.53,18.53 5.4,18.82 5.14,18.91C4.88,19 4.59,18.87 4.5,18.62C4,17.31 3.77,16 3.77,14.66C3.77,13.46 4,12.37 4.45,11.42C5.78,8.63 8.73,6.82 11.96,6.82C16.5,6.82 20.21,10.33 20.21,14.65C20.21,16.27 18.83,17.59 17.13,17.59C15.43,17.59 14.05,16.27 14.05,14.65C14.05,13.58 13.12,12.71 11.97,12.71C10.82,12.71 9.89,13.58 9.89,14.65C9.89,16.36 10.55,17.96 11.76,19.16C12.71,20.1 13.62,20.62 15.03,21C15.3,21.08 15.45,21.36 15.38,21.62C15.33,21.85 15.12,22 14.91,22Z\" style=\"fill: rgb(61, 69, 77);\"></path>\n               </svg>\n               <span class=\"text-left-to-icon\">Biometrics</span>\n               {{/ifEquals}}\n               {{#ifEquals type \"SECURITY_KEY\"}}  \n                  <svg viewBox=\"0 0 24 24\" role=\"presentation\" style=\"width: 32px; height: 32px;\">\n                      <path d=\"M8 15C8.55 15 9 15.45 9 16C9 16.55 8.55 17 8 17C7.45 17 7 16.55 7 16C7 15.45 7.45 15 8 15M15.07 4.69L16.5 6.1L15.07 7.5L13.66 6.1L15.07 4.69M17.9 7.5L19.31 8.93L17.9 10.34L16.5 8.93L17.9 7.5M8 13C6.34 13 5 14.34 5 16C5 17.66 6.34 19 8 19C9.66 19 11 17.66 11 16C11 14.34 9.66 13 8 13M9.77 4.33L10.5 5.08L14.29 1.29C14.47 1.11 14.72 1 15 1C15.28 1 15.53 1.11 15.71 1.29L22.78 8.36L22.78 8.37C22.92 8.54 23 8.76 23 9C23 9.3 22.87 9.57 22.66 9.76L22.66 9.76L18.93 13.5L19.67 14.23L12.95 20.95C11.68 22.22 9.93 23 8 23C4.13 23 1 19.87 1 16C1 14.07 1.78 12.32 3.05 11.05L9.77 4.33M20.59 9L15 3.41L11.93 6.5L17.5 12.08L20.59 9Z\" style=\"fill: rgb(61, 69, 77);\"></path>\n                  </svg>\n               <span class=\"text-left-to-icon\">Security Key</span>\n               {{/ifEquals}}\n            </h1>\n            <div class=\"text-block branding-template-primary-text\">\n               <div class=\"text-block--overflow-wrap\">\n                  Enter the directions your browser provides to finish\n                  {{#ifEquals type \"PLATFORM\"}} Biometrics {{/ifEquals}}\n                  {{#ifEquals type \"SECURITY_KEY\"}} security key {{/ifEquals}}\n                  pairing.\n               </div>\n            </div>\n           <div class=\"form\">\n            <div data-skcomponent=\"skerror\" class=\"feedback branding-template-feedback feedback--error picon-error-triangle\" data-skvisibility=\"\" ></div>\n            <form id=\"securityKeyForm\" method=\"post\">\n               <div class=\"float-label placeholder-shown\">\n                  <input type=\"hidden\" name=\"assertionValue\" id=\"assertionValue\" />\n                 <button data-skcomponent=\"skbutton\" data-skbuttontype=\"form-submit\" class=\"hidden-button\"  data-skbuttonvalue=\"submit\" data-skform=\"securityKeyForm\" id=\"assertionButton\">Next</button>\n                  </div>\n   </form>\n                  <div>\n                     <button class=\"button file-input--button branding-template-primary-button button--primary brand-primary-bg\" id=\"fidoButton\">Continue</button>\n                  </div>\n               {{#if hasDeviceSelectionScreen}}  \n                  <div class=\"text-block branding-template-link-container\">\n                     <div class=\"text-block--overflow-wrap\">\n                        <a data-skcomponent=\"skbutton\" data-skbuttontype=\"back-to-previous\" class=\"branding-template-link-text link-text\" href=\"#\" data-skbuttonvalue=\"cancel\" id=\"cancel\">Cancel</a>\n                     </div>\n                  </div>\n               {{/if}}\n         </div>\n            </div>\n         </div>\n      </div>\n   </div>\n</div>",
                "updatedDate": 1651013415023,
                "validationRules": [],
                "uiId": "2d7eb349d5fc5e91fbdfb5b2cd2510ac",
                "companyId": "a451e225-e437-4087-81bc-2090f1c5a4b8",
                "value": "2d7eb349d5fc5e91fbdfb5b2cd2510ac"
              },
              "inputSchema": {
                "value": "{\n\"type\": \"object\",\n   \"properties\": {\n      \"publicKeyCredentialCreationOptions\": {\n        \"displayName\": \"credentials\",\n\t\t\t\"preferedControlType\": \"textField\",\n            \"enableParameters\": true\n      }\n   }\n}"
              },
              "outputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"assertionValue\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"propertyName\": \"assertionValue\"\n\t\t}\n\t}\n}"
              },
              "customCSS": {},
              "validationRules": {
                "value": []
              },
              "publicKeyCredentialCreationOptions": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"publicKeyCredentialRequestOptions\",\n        \"data\": \"{{local.5rbo543qsa.payload.output.rawResponse.publicKeyCredentialRequestOptions}}\",\n        \"tooltip\": \"{{local.5rbo543qsa.payload.output.rawResponse.publicKeyCredentialRequestOptions}}\",\n        \"children\": [\n          {\n            \"text\": \"publicKeyCredentialRequestOptions\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "hasDeviceSelectionScreen": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"false\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1020,
            "y": 236
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "5rbo543qsa",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "createDeviceAuthentication",
            "type": "action",
            "properties": {
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"auth.svg\",\n        \"url\": \"p1UserId\",\n        \"data\": \"{{global.parameters.p1UserId}}\",\n        \"tooltip\": \"{{global.parameters.p1UserId}}\",\n        \"children\": [\n          {\n            \"text\": \"p1UserId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "deviceId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"variable.svg\",\n        \"url\": \"fidoDeviceId\",\n        \"data\": \"{{global.variables.fidoDeviceId}}\",\n        \"tooltip\": \"{{global.variables.fidoDeviceId}}\",\n        \"children\": [\n          {\n            \"text\": \"fidoDeviceId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "authTemplateName": {
                "value": "STRONG_AUTHENTICATION"
              },
              "selectedDevice": {
                "value": "id"
              },
              "selectedDeviceId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"{{local.kd60dkrscv.payload.output.rawResponse._embedded.devices[0].id}}\"\n      }\n    ]\n  }\n]"
              },
              "customNotificationPolicyId": {
                "value": "{}"
              },
              "customTemplateVariant": {
                "value": "{}"
              },
              "customApplicationId": {
                "value": "{}"
              }
            },
            "idUnique": "j4o8jtirz8"
          },
          "position": {
            "x": 780,
            "y": 236
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "cd59yj1aai",
            "nodeType": "EVAL",
            "properties": {
              "undefined": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 870,
            "y": 236
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "i54n8tviqo",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1140,
            "y": 236
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        },
        {
          "data": {
            "id": "0wr8yt39to",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "validateAssertionDeviceAuthentication",
            "type": "action",
            "properties": {
              "deviceAuthenticationId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.5rbo543qsa.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.5rbo543qsa.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "assertion": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"http.svg\",\n        \"url\": \"assertionValue\",\n        \"data\": \"{{local.dkxb1h2ngb.payload.output.assertionValue}}\",\n        \"tooltip\": \"{{local.dkxb1h2ngb.payload.output.assertionValue}}\",\n        \"children\": [\n          {\n            \"text\": \"assertionValue\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "origin": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"https://auth.pingone.com\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1260,
            "y": 236
          },
          "group": "nodes",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": false,
          "classes": ""
        }
      ],
      "edges": [
        {
          "data": {
            "id": "gkayws5e05",
            "source": "kd60dkrscv",
            "target": "s8pdi3ef5w"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "ef5fehho0r",
            "source": "s8pdi3ef5w",
            "target": "ulgcvgqwk0"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "ber47nevpv",
            "source": "ulgcvgqwk0",
            "target": "aogbt07ttt"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "gim83pw2rw",
            "source": "aogbt07ttt",
            "target": "ve564n9h88"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "lw47tx0moe",
            "source": "ve564n9h88",
            "target": "nsh24tkqv5"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "iq4xdkydp5",
            "source": "nsh24tkqv5",
            "target": "26lcvxndot"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "zb9r4frt7l",
            "source": "26lcvxndot",
            "target": "k5n08mfo3s"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "7tf4m25kud",
            "source": "k5n08mfo3s",
            "target": "k4mt0jn636"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "0v4yps3fht",
            "source": "k4mt0jn636",
            "target": "o4l9h7jhmc"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "tsie10heck",
            "source": "o4l9h7jhmc",
            "target": "k7srzm89zs"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "bosqsmao1u",
            "source": "o4l9h7jhmc",
            "target": "0h0kie4kxi"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "f5fdmd1do0",
            "source": "aogbt07ttt",
            "target": "5rbo543qsa"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "t8gjpr7xui",
            "source": "i54n8tviqo",
            "target": "0wr8yt39to"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "0fd1q6k598",
            "source": "5rbo543qsa",
            "target": "cd59yj1aai"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "vdphnjtr33",
            "source": "dkxb1h2ngb",
            "target": "i54n8tviqo"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "r0tbtnvh7y",
            "source": "cd59yj1aai",
            "target": "dkxb1h2ngb"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        },
        {
          "data": {
            "id": "qz9y9yfhgp",
            "source": "0wr8yt39to",
            "target": "o4l9h7jhmc"
          },
          "position": {
            "x": 0,
            "y": 0
          },
          "group": "edges",
          "removed": false,
          "selected": false,
          "selectable": true,
          "locked": false,
          "grabbable": true,
          "pannable": true,
          "classes": ""
        }
      ]
    },
    "data": {},
    "zoomingEnabled": true,
    "userZoomingEnabled": true,
    "zoom": 1,
    "minZoom": 1e-50,
    "maxZoom": 1e+50,
    "panningEnabled": true,
    "userPanningEnabled": true,
    "pan": {
      "x": 0,
      "y": 0
    },
    "boxSelectionEnabled": true,
    "renderer": {
      "name": "null"
    }
  },
  "inputSchema": [
    {
      "propertyName": "userId",
      "description": "",
      "preferredDataType": "string",
      "preferredControlType": "textField",
      "isExpanded": true
    }
  ],
  "flowColor": "#e4e2e1",
  "savedDate": 1699049598039,
  "variables": [],
  "connections": []
}