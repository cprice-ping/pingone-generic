{
  "companyId": "c07b4540-8fee-485a-af76-21e3956853a7",
  "authTokenExpireIds": [],
  "connectorIds": [
    "pingOneFormsConnector",
    "functionsConnector",
    "pingOneSSOConnector",
    "httpConnector",
    "nodeConnector",
    "pingOneRiskConnector",
    "pingOneMfaConnector",
    "errorConnector",
    "annotationConnector",
    "flowConnector"
  ],
  "createdDate": 1705001323424,
  "currentVersion": 151,
  "customerId": "35f33bbaf301dfa496ccb7eee32d9c0e",
  "deployedDate": 1705001345220,
  "description": "",
  "flowStatus": "enabled",
  "isOutputSchemaSaved": false,
  "name": "[Sub] Login with External Lookup",
  "publishedVersion": 151,
  "settings": {
    "csp": "worker-src 'self' blob:; script-src 'self' https://cdn.jsdelivr.net https://code.jquery.com https://devsdk.singularkey.com http://cdnjs.cloudflare.com 'unsafe-inline' 'unsafe-eval';",
    "intermediateLoadingScreenCSS": "",
    "intermediateLoadingScreenHTML": "",
    "logLevel": 3,
    "pingOneFlow": false
  },
  "timeouts": "null",
  "trigger": {},
  "updatedDate": 1705001345223,
  "flowId": "31b3bf12793ed125c051202918bdac28",
  "versionId": 151,
  "graphData": {
    "elements": {
      "nodes": [
        {
          "data": {
            "id": "m2bbc5n993",
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
                    "key": "user.username",
                    "value": ""
                  },
                  {
                    "key": "user.password",
                    "value": ""
                  }
                ]
              },
              "form": {
                "value": "${form_login}"
              },
              "enableRisk": {
                "value": true
              },
              "collectBehavioralData": {
                "value": true
              }
            }
          },
          "position": {
            "x": 313,
            "y": 453
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
            "id": "7ft6no4gn0",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 433,
            "y": 453
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
            "id": "cga5vp7k4w",
            "nodeType": "CONNECTION",
            "connectionId": "de650ca45593b82c49064ead10b9fe17",
            "connectorId": "functionsConnector",
            "name": "Functions",
            "label": "Functions",
            "status": "configured",
            "capabilityName": "AEqualsMultipleB",
            "type": "trigger",
            "properties": {
              "leftValueA": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"buttonValue\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.event.buttonValue}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.event.buttonValue}}\",\n        \"children\": [\n          {\n            \"text\": \"buttonValue\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "rightValueMultiple": {
                "value": [
                  {
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"submit\"\n      }\n    ]\n  }\n]",
                    "id": "l8rhy32i6o"
                  },
                  {
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"issues\"\n      }\n    ]\n  }\n]",
                    "id": "9rd90m3h5v"
                  },
                  {
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"register\"\n      }\n    ]\n  }\n]",
                    "id": "3qnw9tpwje"
                  },
                  {
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"passkey\"\n      }\n    ]\n  }\n]",
                    "id": "u25sl5brqv"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 546,
            "y": 450
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
            "id": "m3n3k97uh6",
            "nodeType": "CONNECTION",
            "connectionId": "94141bf2f1b9b59a5f5365ff135e02bb",
            "connectorId": "pingOneSSOConnector",
            "name": "PingOne",
            "label": "PingOne",
            "status": "configured",
            "capabilityName": "checkPassword",
            "type": "action",
            "properties": {
              "matchAttribute": {
                "value": "id"
              },
              "identifier": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"tooltip\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "password": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"password\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.password}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.password}}\",\n        \"children\": [\n          {\n            \"text\": \"password\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1303,
            "y": 449
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
            "id": "j3ng7qwtcq",
            "nodeType": "EVAL",
            "properties": {
              "z793vf05ne": {
                "value": "allTriggersFalse"
              },
              "skfbh7h9iv": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 1423,
            "y": 449
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
            "id": "lwuu51to0i",
            "nodeType": "CONNECTION",
            "connectionId": "94141bf2f1b9b59a5f5365ff135e02bb",
            "connectorId": "pingOneSSOConnector",
            "name": "PingOne",
            "label": "PingOne",
            "status": "configured",
            "capabilityName": "userLookup",
            "type": "action",
            "properties": {
              "matchAttributes": {
                "value": [
                  "username",
                  "email"
                ]
              },
              "userIdentifierForFindUser": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 780,
            "y": 450
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
            "id": "3qj301cbqk",
            "nodeType": "EVAL",
            "properties": {
              "z793vf05ne": {
                "value": "allTriggersFalse"
              },
              "edocgivif6": {
                "value": "allTriggersFalse"
              },
              "0easmisq3n": {
                "value": "allTriggersFalse"
              },
              "xunjp2iy9q": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 900,
            "y": 450
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
            "id": "gg5hvb2cho",
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
              },
              "nodeTitle": {
                "value": "Return to create session"
              },
              "claimsNameValuePairs": {
                "value": [
                  {
                    "name": "userId",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"tooltip\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]",
                    "key": 0.5363045639567638,
                    "label": "userId (string - flowInstance)",
                    "type": "string",
                    "nameDefault": "id"
                  }
                ]
              },
              "backgroundColor": {
                "value": "#b8e986ff"
              }
            }
          },
          "position": {
            "x": 3307,
            "y": 510
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
            "id": "bvi5oievpq",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "startNode",
            "type": "trigger",
            "properties": {
              "inputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"payload\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"payload\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"payload\"\n\t\t},\n\t\t\"username\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"username\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"username\"\n\t\t},\n\t\t\"userId\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"userId\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"userId\"\n\t\t}\n\t}\n}"
              },
              "nodeTitle": {
                "value": "Evaluate Threat"
              }
            }
          },
          "position": {
            "x": 315,
            "y": 1380
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
            "id": "h9bwhbvxqd",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 405,
            "y": 1380
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
            "id": "2efy5xedi3",
            "nodeType": "CONNECTION",
            "connectionId": "292873d5ceea806d81373ed0341b5c88",
            "connectorId": "pingOneRiskConnector",
            "name": "PingOne Protect",
            "label": "PingOne Protect",
            "status": "configured",
            "capabilityName": "createRiskEvaluation",
            "type": "action",
            "properties": {
              "userName": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.bvi5oievpq.payload.output.username}}\",\n        \"tooltip\": \"{{local.bvi5oievpq.payload.output.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{local.bvi5oievpq.payload.output.userId}}\",\n        \"tooltip\": \"{{local.bvi5oievpq.payload.output.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "ipAddress": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"auth.svg\",\n        \"url\": \"ip\",\n        \"data\": \"{{global.ip}}\",\n        \"tooltip\": \"{{global.ip}}\",\n        \"children\": [\n          {\n            \"text\": \"ip\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "targetResourceName": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"DV - Login\"\n      }\n    ]\n  }\n]"
              },
              "userType": {
                "value": "PING_ONE"
              },
              "skRiskFP": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"payload\",\n        \"data\": \"{{local.bvi5oievpq.payload.output.payload}}\",\n        \"tooltip\": \"{{local.bvi5oievpq.payload.output.payload}}\",\n        \"children\": [\n          {\n            \"text\": \"payload\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 525,
            "y": 1380
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
            "id": "y7nvq54knp",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "goToNode",
            "type": "action",
            "properties": {
              "nodeInstanceId": {
                "value": "bvi5oievpq"
              },
              "payload": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"deviceRisk\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.deviceRisk}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.deviceRisk}}\",\n        \"children\": [\n          {\n            \"text\": \"deviceRisk\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "username": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"tooltip\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 2287,
            "y": 510
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
            "id": "6fngf7xtxj",
            "nodeType": "CONNECTION",
            "connectionId": "867ed4363b2bc21c860085ad2baa817d",
            "connectorId": "httpConnector",
            "name": "Http",
            "label": "Http",
            "status": "configured",
            "capabilityName": "makeRestApiCall",
            "type": "trigger",
            "properties": {
              "headers": {
                "value": [
                  {
                    "key": "Authorization",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"Bearer \"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"http.svg\",\n        \"url\": \"access_token\",\n        \"data\": \"{{local.edocgivif6.payload.output.rawResponse.body.access_token}}\",\n        \"tooltip\": \"{{local.edocgivif6.payload.output.rawResponse.body.access_token}}\",\n        \"children\": [\n          {\n            \"text\": \"access_token\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
                  }
                ]
              },
              "raw": {},
              "bodyParams": {
                "value": []
              },
              "url": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"https://api.pingone.com/v1/environments/0a8e3654-b433-4e20-abc6-a4517680aca7/users\"\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "httpMethod": {
                "value": "GET"
              },
              "httpBody": {
                "value": "none"
              },
              "nodeTitle": {
                "value": "Retrieve User Info"
              },
              "queryParams": {
                "value": [
                  {
                    "key": "filter",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"username eq \\\"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{local.a3u17yw6n6.payload.output.userId}}\",\n        \"tooltip\": \"{{local.a3u17yw6n6.payload.output.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\\\"\"\n      }\n    ]\n  }\n]"
                  }
                ]
              },
              "contentType": {
                "value": null
              },
              "outputSchema": {
                "value": "{\n  \"type\": \"object\",\n  \"required\": [],\n  \"properties\": {\n    \"_links\": {\n      \"type\": \"object\",\n      \"required\": [],\n      \"properties\": {\n        \"self\": {\n          \"type\": \"object\",\n          \"required\": [],\n          \"properties\": {\n            \"href\": {\n              \"type\": \"string\"\n            }\n          }\n        }\n      }\n    },\n    \"_embedded\": {\n      \"type\": \"object\",\n      \"required\": [],\n      \"properties\": {\n        \"users\": {\n          \"type\": \"array\",\n          \"items\": {\n            \"type\": \"object\",\n            \"required\": [],\n            \"properties\": {\n              \"_links\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"self\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"password\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"password.set\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"password.reset\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"password.check\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"password.recover\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"account.sendVerificationCode\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  },\n                  \"linkedAccounts\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"href\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  }\n                }\n              },\n              \"_embedded\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"password\": {\n                    \"type\": \"object\",\n                    \"required\": [],\n                    \"properties\": {\n                      \"status\": {\n                        \"type\": \"string\"\n                      }\n                    }\n                  }\n                }\n              },\n              \"id\": {\n                \"type\": \"string\"\n              },\n              \"environment\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"id\": {\n                    \"type\": \"string\"\n                  }\n                }\n              },\n              \"account\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"canAuthenticate\": {\n                    \"type\": \"boolean\"\n                  },\n                  \"status\": {\n                    \"type\": \"string\"\n                  }\n                }\n              },\n              \"coPatientId\": {\n                \"type\": \"string\"\n              },\n              \"createdAt\": {\n                \"type\": \"string\"\n              },\n              \"email\": {\n                \"type\": \"string\"\n              },\n              \"enabled\": {\n                \"type\": \"boolean\"\n              },\n              \"identityProvider\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"type\": {\n                    \"type\": \"string\"\n                  }\n                }\n              },\n              \"lifecycle\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"status\": {\n                    \"type\": \"string\"\n                  }\n                }\n              },\n              \"mfaEnabled\": {\n                \"type\": \"boolean\"\n              },\n              \"name\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"given\": {\n                    \"type\": \"string\"\n                  },\n                  \"family\": {\n                    \"type\": \"string\"\n                  }\n                }\n              },\n              \"population\": {\n                \"type\": \"object\",\n                \"required\": [],\n                \"properties\": {\n                  \"id\": {\n                    \"type\": \"string\"\n                  }\n                }\n              },\n              \"updatedAt\": {\n                \"type\": \"string\"\n              },\n              \"username\": {\n                \"type\": \"string\"\n              },\n              \"verifyStatus\": {\n                \"type\": \"string\"\n              }\n            }\n          }\n        }\n      }\n    },\n    \"count\": {\n      \"type\": \"number\"\n    },\n    \"size\": {\n      \"type\": \"number\"\n    }\n  }\n}"
              }
            },
            "idUnique": "kgju39yvaf"
          },
          "position": {
            "x": 742.6775266751616,
            "y": 1125.9949597978257
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
            "id": "edocgivif6",
            "nodeType": "CONNECTION",
            "connectionId": "867ed4363b2bc21c860085ad2baa817d",
            "connectorId": "httpConnector",
            "name": "Http",
            "label": "Http",
            "status": "configured",
            "capabilityName": "makeRestApiCall",
            "type": "trigger",
            "properties": {
              "url": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"https://auth.pingone.com/0a8e3654-b433-4e20-abc6-a4517680aca7/as/token\"\n      }\n    ]\n  }\n]"
              },
              "httpMethod": {
                "value": "POST"
              },
              "httpBody": {
                "value": "xwwwFormUrlEncoded"
              },
              "bodyParams": {
                "value": [
                  {
                    "key": "grant_type",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"client_credentials\"\n      }\n    ]\n  }\n]"
                  },
                  {
                    "key": "client_id",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"2e14ace0-0689-491c-9aba-f8e9491a7e2e\"\n      }\n    ]\n  }\n]"
                  },
                  {
                    "key": "client_secret",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"Ds8jhUN1ulJjp7eduXI1BrIBiR8x~3ovVGd_6B9OJJGXYhnnG9dW65Lrv8v9y.3J\"\n      }\n    ]\n  }\n]"
                  }
                ]
              },
              "nodeTitle": {
                "value": "Get Token"
              },
              "outputSchema": {
                "value": "{\n  \"type\": \"object\",\n  \"required\": [],\n  \"properties\": {\n    \"access_token\": {\n      \"type\": \"string\"\n    },\n    \"token_type\": {\n      \"type\": \"string\"\n    },\n    \"expires_in\": {\n      \"type\": \"number\"\n    }\n  }\n}"
              },
              "contentType": {
                "value": "application/json"
              }
            }
          },
          "position": {
            "x": 503.1041309734966,
            "y": 1125.9949597978257
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
            "id": "i09dmt07d6",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 622.8908288243291,
            "y": 1125.9949597978257
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
            "id": "hb6fyofx4n",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 663,
            "y": 451
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
            "id": "d9rgg26jj7",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 645,
            "y": 1380
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
            "id": "jtrgtig8kr",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "returnBackToCallingNode",
            "type": "trigger",
            "properties": {
              "outputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"threatLevel\": {\n\t\t\t\"type\": \"boolean\",\n\t\t\t\"displayName\": \"Threat Level\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"threatLevel\"\n\t\t},\n\t\t\"threatEvalId\": {\n\t\t\t\"type\": \"boolean\",\n\t\t\t\"displayName\": \"Threat Eval ID\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"threatEvalId\"\n\t\t}\n\t}\n}"
              },
              "threatLevel": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"level\",\n        \"data\": \"{{local.2efy5xedi3.payload.output.rawResponse.result.level}}\",\n        \"tooltip\": \"{{local.2efy5xedi3.payload.output.rawResponse.result.level}}\",\n        \"children\": [\n          {\n            \"text\": \"level\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "threatEvalId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.2efy5xedi3.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.2efy5xedi3.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1357,
            "y": 1290
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
            "id": "xunjp2iy9q",
            "nodeType": "CONNECTION",
            "connectionId": "94141bf2f1b9b59a5f5365ff135e02bb",
            "connectorId": "pingOneSSOConnector",
            "name": "PingOne",
            "label": "PingOne",
            "status": "configured",
            "capabilityName": "createUser",
            "type": "action",
            "properties": {
              "additionalUserProperties": {
                "value": []
              },
              "username": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "population": {
                "value": "abf6c96f-e5bd-4394-8e39-50bde27281a9"
              },
              "passwordForCreateUser": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"password\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.password}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.password}}\",\n        \"children\": [\n          {\n            \"text\": \"password\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "given": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"firstName\",\n        \"data\": \"{{local.0easmisq3n.payload.output.firstName}}\",\n        \"tooltip\": \"{{local.0easmisq3n.payload.output.firstName}}\",\n        \"children\": [\n          {\n            \"text\": \"firstName\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "family": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"lastName\",\n        \"data\": \"{{local.0easmisq3n.payload.output.lastName}}\",\n        \"tooltip\": \"{{local.0easmisq3n.payload.output.lastName}}\",\n        \"children\": [\n          {\n            \"text\": \"lastName\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "email": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1566,
            "y": 600
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
            "id": "a3u17yw6n6",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "startNode",
            "type": "trigger",
            "properties": {
              "nodeTitle": {
                "value": "External Lookup"
              },
              "inputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"userId\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"userId\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"userId\"\n\t\t}\n\t}\n}"
              }
            }
          },
          "position": {
            "x": 311.44541441216455,
            "y": 1125.9949597978257
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
            "id": "esf024zcfv",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 407.27477269283054,
            "y": 1125.9949597978257
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
            "id": "qsjah6jmh9",
            "nodeType": "EVAL",
            "label": "Evaluator",
            "properties": {
              "yd0il19zwk": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 862.4642245259942,
            "y": 1125.9949597978257
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
            "id": "uggqph7qig",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "returnBackToCallingNode",
            "type": "trigger",
            "properties": {
              "outputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"coPatientID\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"CO PatientID\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"coPatientID\"\n\t\t},\n\t\t\"firstName\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"First Name\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"firstName\"\n\t\t},\n\t\t\"lastName\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"Last Name\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"lastName\"\n\t\t}\n\t}\n}"
              },
              "coPatientID": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"http.svg\",\n        \"url\": \"coPatientId\",\n        \"data\": \"{{local.6fngf7xtxj.payload.output.rawResponse.body._embedded.users[0].coPatientId}}\",\n        \"tooltip\": \"{{local.6fngf7xtxj.payload.output.rawResponse.body._embedded.users[0].coPatientId}}\",\n        \"children\": [\n          {\n            \"text\": \"coPatientId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "firstName": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"http.svg\",\n        \"url\": \"given\",\n        \"data\": \"{{local.6fngf7xtxj.payload.output.rawResponse.body._embedded.users[0].name.given}}\",\n        \"tooltip\": \"{{local.6fngf7xtxj.payload.output.rawResponse.body._embedded.users[0].name.given}}\",\n        \"children\": [\n          {\n            \"text\": \"given\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "lastName": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"http.svg\",\n        \"url\": \"family\",\n        \"data\": \"{{local.6fngf7xtxj.payload.output.rawResponse.body._embedded.users[0].name.family}}\",\n        \"tooltip\": \"{{local.6fngf7xtxj.payload.output.rawResponse.body._embedded.users[0].name.family}}\",\n        \"children\": [\n          {\n            \"text\": \"family\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1006.2082619469932,
            "y": 1125.9949597978257
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
            "id": "5dq3xm73yu",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1680,
            "y": 600
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
            "id": "isx0guqtkw",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "createDevice",
            "type": "action",
            "properties": {
              "customDeviceType": {
                "value": "{}"
              },
              "customNotificationPolicyId": {
                "value": "{}"
              },
              "customTemplateVariant": {
                "value": "{}"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "deviceType": {
                "value": "EMAIL"
              },
              "status": {
                "value": "ACTIVE"
              },
              "email": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1794,
            "y": 600
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
            "id": "lduyav0d3s",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1896,
            "y": 600.5
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
            "id": "alcao76uch",
            "nodeType": "CONNECTION",
            "connectionId": "b72bd44e6be8180bd5988ac74cd9c949",
            "connectorId": "pingOneMfaConnector",
            "name": "PingOne MFA",
            "label": "PingOne MFA",
            "status": "configured",
            "capabilityName": "updateUserMFAEnabled",
            "type": "action",
            "properties": {
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 2021,
            "y": 601
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
            "id": "skfbh7h9iv",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "goToNode",
            "type": "action",
            "properties": {
              "nodeInstanceId": {
                "value": "a3u17yw6n6"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1650,
            "y": 300
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
            "id": "t1yv2luwlb",
            "nodeType": "EVAL",
            "properties": {
              "8v6yni2tfv": {
                "value": "anyTriggersTrue"
              },
              "y7nvq54knp": {
                "value": "anyTriggersTrue"
              }
            }
          },
          "position": {
            "x": 2160,
            "y": 480
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
            "id": "yd0il19zwk",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"There was a problem with your credential\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1006.2082619469932,
            "y": 1006.2082619469932
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
            "id": "jk6tden1l9",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#f2f3f4ff"
              },
              "annotationTextColor": {
                "value": "#000000"
              },
              "annotation": {
                "value": "Login User"
              },
              "width": {
                "value": 300
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              },
              "strokeEnabled": {
                "value": true
              },
              "strokeWidth": {
                "value": 1
              },
              "strokeColor": {
                "value": "#181818ff"
              }
            },
            "status": "configured"
          },
          "position": {
            "x": 389,
            "y": 334
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
            "id": "2o4vkon73p",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#4462edff"
              },
              "annotationTextColor": {
                "value": "#ffffffff"
              },
              "annotation": {
                "value": "Sign On with External User Lookup and MFA"
              },
              "width": {
                "value": 1200
              },
              "fontSize": {
                "value": 0
              },
              "fontStyle": {
                "value": "bold"
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              }
            },
            "status": "configured",
            "idUnique": "9c4uyspv8m"
          },
          "position": {
            "x": 239,
            "y": 214
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
            "id": "uf5pmgnaj4",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#5D00D6ff"
              },
              "annotationTextColor": {
                "value": "#ffffffff"
              },
              "annotation": {
                "value": "Login Flow - with MFA"
              },
              "width": {
                "value": 700
              },
              "fontStyle": {
                "value": "bold"
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              }
            },
            "status": "configured",
            "idUnique": "spuozs7bzp"
          },
          "position": {
            "x": 239,
            "y": 274
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
            "id": "6yod0uynyy",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#f2f3f4ff"
              },
              "annotationTextColor": {
                "value": "#000000"
              },
              "annotation": {
                "value": "Locate external user, migrate, enroll MFA"
              },
              "width": {
                "value": 300
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              },
              "strokeEnabled": {
                "value": true
              },
              "strokeWidth": {
                "value": 1
              },
              "strokeColor": {
                "value": "#181818ff"
              }
            },
            "status": "configured",
            "idUnique": "axbw96canb"
          },
          "position": {
            "x": 1507,
            "y": 660
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
            "id": "p919tdb86h",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#5D00D6ff"
              },
              "annotationTextColor": {
                "value": "#ffffffff"
              },
              "annotation": {
                "value": "Contact external datastore"
              },
              "width": {
                "value": 700
              },
              "fontStyle": {
                "value": "bold"
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              }
            },
            "status": "configured",
            "idUnique": "flr1geok77"
          },
          "position": {
            "x": 215.61605613149854,
            "y": 910.3789036663271
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
            "id": "66264wrup5",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#5D00D6ff"
              },
              "annotationTextColor": {
                "value": "#ffffffff"
              },
              "annotation": {
                "value": "Threat Detection"
              },
              "width": {
                "value": 700
              },
              "fontStyle": {
                "value": "bold"
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              }
            },
            "status": "configured",
            "idUnique": "qlzvj30hfo"
          },
          "position": {
            "x": 225,
            "y": 1230
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
            "id": "25q0lj6kma",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#f2f3f4ff"
              },
              "annotationTextColor": {
                "value": "#000000"
              },
              "annotation": {
                "value": "Locate external user, retrieve external data"
              },
              "width": {
                "value": 300
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              },
              "strokeEnabled": {
                "value": true
              },
              "strokeWidth": {
                "value": 1
              },
              "strokeColor": {
                "value": "#181818ff"
              }
            },
            "status": "configured",
            "idUnique": "ad81mnkca"
          },
          "position": {
            "x": 1499,
            "y": 364
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
            "id": "lygg8zzqei",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 2370,
            "y": 510
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
            "id": "f0argkmztm",
            "nodeType": "CONNECTION",
            "connectionId": "2581eb287bb1d9bd29ae9886d675f89f",
            "connectorId": "flowConnector",
            "name": "Flow Connector",
            "label": "Flow Connector",
            "status": "configured",
            "capabilityName": "startUiSubFlow",
            "type": "trigger",
            "properties": {
              "subFlowId": {
                "value": {
                  "label": "MFA",
                  "value": "a7a1269728459f5fe3ec9dd1e68b4ce7"
                }
              },
              "subFlowVersionId": {
                "value": -1
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.xunjp2iy9q.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"tooltip\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Perform Step-Up"
              }
            }
          },
          "position": {
            "x": 2850,
            "y": 630
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
            "id": "itgt6px7kt",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 2970,
            "y": 630
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
            "id": "k751djx9z6",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"publicKeyCredentialRequestOptions\",\n        \"data\": \"{{local.1e2j7pkrmh.payload.output.rawResponse.publicKeyCredentialRequestOptions}}\",\n        \"tooltip\": \"{{local.1e2j7pkrmh.payload.output.rawResponse.publicKeyCredentialRequestOptions}}\",\n        \"children\": [\n          {\n            \"text\": \"publicKeyCredentialRequestOptions\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "hasDeviceSelectionScreen": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"false\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 757,
            "y": 1830
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
            "id": "1e2j7pkrmh",
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
              },
              "usernameless": {
                "value": true
              }
            },
            "idUnique": "j4o8jtirz8"
          },
          "position": {
            "x": 517,
            "y": 1830
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
            "id": "ibws8njtcu",
            "nodeType": "EVAL",
            "properties": {
              "undefined": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 607,
            "y": 1830
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
            "id": "xhmf13bxut",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 877,
            "y": 1830
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
            "id": "e6yig196dg",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.1e2j7pkrmh.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.1e2j7pkrmh.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "assertion": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"http.svg\",\n        \"url\": \"assertionValue\",\n        \"data\": \"{{local.k751djx9z6.payload.output.assertionValue}}\",\n        \"tooltip\": \"{{local.k751djx9z6.payload.output.assertionValue}}\",\n        \"children\": [\n          {\n            \"text\": \"assertionValue\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "origin": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"https://auth.pingone.com\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 997,
            "y": 1830
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
            "id": "utsbqm0k37",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#5D00D6ff"
              },
              "annotationTextColor": {
                "value": "#ffffffff"
              },
              "annotation": {
                "value": "Passkey Login"
              },
              "width": {
                "value": 700
              },
              "fontStyle": {
                "value": "bold"
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              }
            },
            "status": "configured",
            "idUnique": "uq2973oi6f"
          },
          "position": {
            "x": 217,
            "y": 1710
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
            "id": "k9ldoz8znx",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "startNode",
            "type": "trigger",
            "properties": {
              "nodeTitle": {
                "value": "Login with Passkey"
              }
            }
          },
          "position": {
            "x": 277,
            "y": 1830
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
            "id": "jz1yucq6rp",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 397,
            "y": 1830
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
            "id": "4bnwgecbn7",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1087,
            "y": 1830
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
            "id": "c3vvg99nij",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "returnBackToCallingNode",
            "type": "trigger",
            "properties": {
              "outputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"userId\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"User ID\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"userId\"\n\t\t},\n\t\t\"username\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"displayName\": \"Username\",\n\t\t\t\"preferredControlType\": \"textField\",\n\t\t\t\"enableParameters\": true,\n\t\t\t\"propertyName\": \"username\"\n\t\t}\n\t}\n}"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.qtskvt8nh4.payload.output.matchedUser.id}}\",\n        \"tooltip\": \"{{local.qtskvt8nh4.payload.output.matchedUser.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "username": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.qtskvt8nh4.payload.output.matchedUser.username}}\",\n        \"tooltip\": \"{{local.qtskvt8nh4.payload.output.matchedUser.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1477,
            "y": 1830
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
            "id": "wkgjjzzbqa",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 638,
            "y": 643
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
            "id": "xtzzwdnjq5",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "capabilityName": "goToNode",
            "type": "action",
            "properties": {
              "nodeInstanceId": {
                "value": "k9ldoz8znx"
              },
              "nodeTitle": {
                "value": "Login with Passkey"
              }
            }
          },
          "position": {
            "x": 750,
            "y": 750
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
            "id": "hsxf12ksbs",
            "nodeType": "EVAL",
            "label": "Evaluator",
            "properties": {
              "4ixz4gn7v1": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 840,
            "y": 780
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
            "id": "l78yb68rfi",
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
              },
              "claimsNameValuePairs": {
                "value": [
                  {
                    "name": "userId",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{local.xtzzwdnjq5.payload.output.userId}}\",\n        \"tooltip\": \"{{local.xtzzwdnjq5.payload.output.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]",
                    "key": 0.4251338230268523,
                    "label": "userId (string - flowInstance)",
                    "type": "string",
                    "nameDefault": "userId"
                  }
                ]
              },
              "nodeTitle": {
                "value": "Return to create Session"
              },
              "backgroundColor": {
                "value": "#b8e986ff"
              }
            },
            "idUnique": "0vc3uk96zc"
          },
          "position": {
            "x": 1470,
            "y": 750
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
            "id": "qtskvt8nh4",
            "nodeType": "CONNECTION",
            "connectionId": "94141bf2f1b9b59a5f5365ff135e02bb",
            "connectorId": "pingOneSSOConnector",
            "name": "PingOne",
            "label": "PingOne",
            "status": "configured",
            "capabilityName": "userLookup",
            "type": "action",
            "properties": {
              "matchAttributes": {
                "value": [
                  "id"
                ]
              },
              "userIdentifierForFindUser": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.e6yig196dg.payload.output.rawResponse.user.id}}\",\n        \"tooltip\": \"{{local.e6yig196dg.payload.output.rawResponse.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1237,
            "y": 1830
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
            "id": "pg2fa73wuz",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 1357,
            "y": 1830
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
            "id": "mlas55crze",
            "nodeType": "CONNECTION",
            "connectionId": "de650ca45593b82c49064ead10b9fe17",
            "connectorId": "functionsConnector",
            "name": "Functions",
            "label": "Functions",
            "status": "configured",
            "capabilityName": "AEqualsB",
            "type": "trigger",
            "properties": {
              "leftValueA": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"level\",\n        \"data\": \"{{local.2efy5xedi3.payload.output.rawResponse.result.level}}\",\n        \"tooltip\": \"{{local.2efy5xedi3.payload.output.rawResponse.result.level}}\",\n        \"children\": [\n          {\n            \"text\": \"level\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "rightValueB": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"HIGH\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Check if Threat is HIGH"
              }
            }
          },
          "position": {
            "x": 1057,
            "y": 1380
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
            "id": "8vmo0fji75",
            "nodeType": "EVAL",
            "properties": {
              "jtrgtig8kr": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 1177,
            "y": 1380
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
            "id": "5k6dk6llk1",
            "nodeType": "CONNECTION",
            "connectionId": "94141bf2f1b9b59a5f5365ff135e02bb",
            "connectorId": "pingOneSSOConnector",
            "name": "PingOne",
            "label": "PingOne",
            "status": "configured",
            "capabilityName": "enableUser",
            "type": "action",
            "properties": {
              "identifier": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{local.bvi5oievpq.payload.output.userId}}\",\n        \"tooltip\": \"{{local.bvi5oievpq.payload.output.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1320,
            "y": 1500
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
            "id": "fzkpxvcjr8",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1440,
            "y": 1500
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
            "id": "dcmc7sndho",
            "nodeType": "CONNECTION",
            "connectionId": "8209285e0d2f3fc76bfd23fd10d45e6f",
            "connectorId": "pingOneFormsConnector",
            "name": "PingOne Forms",
            "label": "PingOne Forms",
            "status": "configured",
            "capabilityName": "customMessage",
            "type": "action",
            "properties": {
              "message": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"<p>Suspicious activity detected - as a precaution, we've disabled your account.</p>\\n<br>\\n<p>Please contact the CareOregon Support center for help.</p>\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1860,
            "y": 1500
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
            "id": "dyxo6d8r5x",
            "nodeType": "CONNECTION",
            "connectionId": "de650ca45593b82c49064ead10b9fe17",
            "connectorId": "functionsConnector",
            "name": "Functions",
            "label": "Functions",
            "status": "configured",
            "capabilityName": "AEqualsB",
            "type": "trigger",
            "properties": {
              "leftValueA": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"threatLevel\",\n        \"data\": \"{{local.y7nvq54knp.payload.output.threatLevel}}\",\n        \"tooltip\": \"{{local.y7nvq54knp.payload.output.threatLevel}}\",\n        \"children\": [\n          {\n            \"text\": \"threatLevel\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "rightValueB": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"MEDIUM\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Require step-up?"
              },
              "caseSensitive": {
                "value": false
              },
              "rightValueMultiple": {
                "value": [
                  {
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"LOW\"\n      }\n    ]\n  }\n]",
                    "id": "ch75bbtoih"
                  },
                  {
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"MEDIUM\"\n      }\n    ]\n  }\n]",
                    "id": "9imdpnhjq6"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 2527,
            "y": 510
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
            "id": "ua9c64snsk",
            "nodeType": "CONNECTION",
            "connectionId": "292873d5ceea806d81373ed0341b5c88",
            "connectorId": "pingOneRiskConnector",
            "name": "PingOne Protect",
            "label": "PingOne Protect",
            "status": "configured",
            "capabilityName": "updateRiskEvaluation",
            "type": "action",
            "properties": {
              "completionStatus": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"SUCCESS\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Report SUCCESS"
              },
              "riskId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"threatEvalId\",\n        \"data\": \"{{local.y7nvq54knp.payload.output.threatEvalId}}\",\n        \"tooltip\": \"{{local.y7nvq54knp.payload.output.threatEvalId}}\",\n        \"children\": [\n          {\n            \"text\": \"threatEvalId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 3090,
            "y": 510
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
            "id": "cgy864q896",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 3187,
            "y": 510
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
            "id": "7kr2uctego",
            "nodeType": "CONNECTION",
            "connectionId": "292873d5ceea806d81373ed0341b5c88",
            "connectorId": "pingOneRiskConnector",
            "name": "PingOne Protect",
            "label": "PingOne Protect",
            "status": "configured",
            "capabilityName": "updateRiskEvaluation",
            "type": "action",
            "properties": {
              "riskId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.2efy5xedi3.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.2efy5xedi3.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "completionStatus": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"FAILED\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Report Threat Detected"
              }
            }
          },
          "position": {
            "x": 1590,
            "y": 1500
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
            "id": "2oat5vssec",
            "nodeType": "CONNECTION",
            "connectionId": "de650ca45593b82c49064ead10b9fe17",
            "connectorId": "functionsConnector",
            "name": "Functions",
            "label": "Functions",
            "status": "configured",
            "capabilityName": "ANotEqualsB",
            "type": "trigger",
            "properties": {
              "leftValueA": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"recommendedAction\",\n        \"data\": \"{{local.2efy5xedi3.payload.output.rawResponse.result.recommendedAction}}\",\n        \"tooltip\": \"{{local.2efy5xedi3.payload.output.rawResponse.result.recommendedAction}}\",\n        \"children\": [\n          {\n            \"text\": \"recommendedAction\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "rightValueB": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"BOT_MITIGATION\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Is this a Human?"
              }
            }
          },
          "position": {
            "x": 794,
            "y": 1382
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
            "id": "x9lonnex7n",
            "nodeType": "EVAL",
            "properties": {
              "dcmc7sndho": {
                "value": "allTriggersFalse"
              },
              "7kr2uctego": {
                "value": "allTriggersFalse"
              },
              "5k6dk6llk1": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 907,
            "y": 1380
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
            "id": "7v0v4418tr",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 1710,
            "y": 1500
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
            "id": "o9h36vxno4",
            "nodeType": "ANNOTATION",
            "name": "Annotation",
            "connectionId": "921bfae85c38ed45045e07be703d86b8",
            "connectorId": "annotationConnector",
            "capabilityName": "updateAnnotationProperties",
            "type": "action",
            "properties": {
              "backgroundColor": {
                "value": "#f2f3f4ff"
              },
              "annotationTextColor": {
                "value": "#000000"
              },
              "annotation": {
                "value": "Suspicious behavior detected - Disable account"
              },
              "width": {
                "value": 300
              },
              "fontSize": {
                "value": 14
              },
              "fontFamily": {
                "value": "sans-serif"
              },
              "cornerRadius": {
                "value": 8
              },
              "strokeEnabled": {
                "value": true
              },
              "strokeWidth": {
                "value": 1
              },
              "strokeColor": {
                "value": "#181818ff"
              }
            },
            "status": "configured",
            "idUnique": "vdqushrix5"
          },
          "position": {
            "x": 1320,
            "y": 1560
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
            "id": "67psjgu4jo",
            "nodeType": "CONNECTION",
            "connectionId": "e7eae662d2ca276e4c6f097fc36a3bb1",
            "connectorId": "nodeConnector",
            "name": "Node",
            "label": "Node",
            "status": "configured",
            "idUnique": "7mq92ym7tt",
            "capabilityName": "goToNode",
            "type": "action",
            "properties": {
              "nodeInstanceId": {
                "value": "bvi5oievpq"
              },
              "payload": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"deviceRisk\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.deviceRisk}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.deviceRisk}}\",\n        \"children\": [\n          {\n            \"text\": \"deviceRisk\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "username": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"tooltip\": \"{{local.m2bbc5n993.payload.output.formData.user.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"tooltip\": \"{{local.lwuu51to0i.payload.output.matchedUser.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1040,
            "y": 451
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
            "id": "2lbfuh4edi",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 1140,
            "y": 450
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
            "id": "01mkrsfvk0",
            "nodeType": "EVAL",
            "properties": {
              "ua9c64snsk": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 2670,
            "y": 510
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
            "id": "0ylqqp3wi2",
            "nodeType": "CONNECTION",
            "connectionId": "94141bf2f1b9b59a5f5365ff135e02bb",
            "connectorId": "pingOneSSOConnector",
            "name": "PingOne",
            "label": "PingOne",
            "status": "configured",
            "capabilityName": "userLookup",
            "type": "action",
            "properties": {
              "userIdentifierForFindUser": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{local.xtzzwdnjq5.payload.output.userId}}\",\n        \"tooltip\": \"{{local.xtzzwdnjq5.payload.output.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "matchAttributes": {
                "value": [
                  "id"
                ]
              }
            }
          },
          "position": {
            "x": 990,
            "y": 810
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
            "id": "0exju3kfxk",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1110,
            "y": 810
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
            "id": "q5cyy2bkw1",
            "nodeType": "CONNECTION",
            "connectionId": "de650ca45593b82c49064ead10b9fe17",
            "connectorId": "functionsConnector",
            "name": "Functions",
            "label": "Functions",
            "status": "configured",
            "capabilityName": "AEqualsB",
            "type": "trigger",
            "properties": {
              "leftValueA": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"enabled\",\n        \"data\": \"{{local.0ylqqp3wi2.payload.output.matchedUser.enabled}}\",\n        \"tooltip\": \"{{local.0ylqqp3wi2.payload.output.matchedUser.enabled}}\",\n        \"children\": [\n          {\n            \"text\": \"enabled\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "rightValueB": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"true\"\n      }\n    ]\n  }\n]"
              },
              "type": {
                "value": "boolean"
              },
              "nodeTitle": {
                "value": "User Enabled?"
              }
            }
          },
          "position": {
            "x": 1230,
            "y": 810
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
            "id": "dlmdzpy9c2",
            "nodeType": "EVAL",
            "properties": {
              "eidkiap8gr": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 1350,
            "y": 810
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
            "id": "eidkiap8gr",
            "nodeType": "CONNECTION",
            "connectionId": "867ed4363b2bc21c860085ad2baa817d",
            "connectorId": "httpConnector",
            "name": "Http",
            "label": "Http",
            "status": "configured",
            "capabilityName": "createErrorResponse",
            "type": "action",
            "properties": {
              "returnRequestParameters": {
                "value": false
              }
            }
          },
          "position": {
            "x": 1474,
            "y": 881
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
            "id": "9anfvrw6wc",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 651.5,
            "y": 600
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
            "id": "ntl9g3fwbo",
            "nodeType": "CONNECTION",
            "connectionId": "2581eb287bb1d9bd29ae9886d675f89f",
            "connectorId": "flowConnector",
            "name": "Flow Connector",
            "label": "Flow Connector",
            "status": "configured",
            "capabilityName": "startUiSubFlow",
            "type": "trigger",
            "properties": {
              "subFlowId": {
                "value": {
                  "label": "[Sub] Registration",
                  "value": "80a37dec35e71ad7296e21f238123157"
                }
              },
              "subFlowVersionId": {
                "value": -1
              },
              "nodeTitle": {
                "value": "Registration"
              }
            }
          },
          "position": {
            "x": 780,
            "y": 600
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
            "id": "j5no0e6ir2",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 900,
            "y": 600
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
            "id": "h9m6bjnayw",
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
              },
              "claimsNameValuePairs": {
                "value": [
                  {
                    "name": "userId",
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"flow-connector.svg\",\n        \"url\": \"userId\",\n        \"data\": \"{{local.ntl9g3fwbo.payload.output.userId}}\",\n        \"tooltip\": \"{{local.ntl9g3fwbo.payload.output.userId}}\",\n        \"children\": [\n          {\n            \"text\": \"userId\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]",
                    "key": 0.4251338230268523,
                    "label": "userId (string - flowInstance)",
                    "type": "string",
                    "nameDefault": "userId"
                  }
                ]
              },
              "nodeTitle": {
                "value": "Return to create Session"
              },
              "backgroundColor": {
                "value": "#b8e986ff"
              }
            },
            "idUnique": "1oojvq39dl"
          },
          "position": {
            "x": 1050,
            "y": 660
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
            "id": "q0mubh2uoq",
            "source": "dlmdzpy9c2",
            "target": "eidkiap8gr"
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
            "id": "b79c0u3mye",
            "source": "q5cyy2bkw1",
            "target": "dlmdzpy9c2"
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
            "id": "cnc3d8hrzg",
            "source": "lygg8zzqei",
            "target": "dyxo6d8r5x"
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
            "id": "bw3ibzya9h",
            "source": "3qj301cbqk",
            "target": "xunjp2iy9q"
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
            "id": "k7wx3uqrxq",
            "source": "67psjgu4jo",
            "target": "2lbfuh4edi"
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
            "id": "q1iau5iu34",
            "source": "x9lonnex7n",
            "target": "mlas55crze"
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
            "id": "39slfau4wp",
            "source": "d9rgg26jj7",
            "target": "2oat5vssec"
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
            "id": "8g4ad3x4wg",
            "source": "ua9c64snsk",
            "target": "cgy864q896"
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
            "id": "ccbgnj3xjs",
            "source": "dyxo6d8r5x",
            "target": "01mkrsfvk0",
            "multiValueSourceId": "ch75bbtoih"
          },
          "position": {
            "x": 64,
            "y": 52
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
            "id": "so99ueen8g",
            "source": "f0argkmztm",
            "target": "itgt6px7kt"
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
            "id": "9szpqo6cbn",
            "source": "itgt6px7kt",
            "target": "ua9c64snsk"
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
            "id": "gtt7mekf9v",
            "source": "pg2fa73wuz",
            "target": "c3vvg99nij"
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
            "id": "n76ejsejje",
            "source": "lwuu51to0i",
            "target": "3qj301cbqk"
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
            "id": "dex5b4kv7",
            "source": "i09dmt07d6",
            "target": "6fngf7xtxj"
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
            "id": "9hofk8yrfh",
            "source": "cgy864q896",
            "target": "gg5hvb2cho"
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
            "id": "1keh7gffti",
            "source": "7kr2uctego",
            "target": "7v0v4418tr"
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
            "id": "4b8bbqrv00",
            "source": "hb6fyofx4n",
            "target": "lwuu51to0i"
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
            "id": "4bk17ttvy0",
            "source": "qsjah6jmh9",
            "target": "yd0il19zwk"
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
            "id": "178yssg6dd",
            "source": "fzkpxvcjr8",
            "target": "7kr2uctego"
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
            "id": "s3l2796txi",
            "source": "bvi5oievpq",
            "target": "h9bwhbvxqd"
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
            "id": "iciwlg81pl",
            "source": "m2bbc5n993",
            "target": "7ft6no4gn0"
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
            "id": "1otlrb45g5",
            "source": "7ft6no4gn0",
            "target": "cga5vp7k4w"
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
            "id": "8z5s8wascl",
            "source": "2oat5vssec",
            "target": "x9lonnex7n"
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
            "id": "oy7ou904vi",
            "source": "edocgivif6",
            "target": "i09dmt07d6"
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
            "id": "6vzpbosyan",
            "source": "2efy5xedi3",
            "target": "d9rgg26jj7"
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
            "id": "napfvzsxid",
            "source": "01mkrsfvk0",
            "target": "ua9c64snsk"
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
            "id": "tosxwzwdns",
            "source": "m3n3k97uh6",
            "target": "j3ng7qwtcq"
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
            "id": "q72asjahsw",
            "source": "01mkrsfvk0",
            "target": "f0argkmztm"
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
            "id": "gyrtz0301t",
            "source": "h9bwhbvxqd",
            "target": "2efy5xedi3"
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
            "id": "p3oqwz4cvi",
            "source": "cga5vp7k4w",
            "target": "hb6fyofx4n",
            "multiValueSourceId": "l8rhy32i6o"
          },
          "position": {
            "x": 64,
            "y": 52
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
            "id": "jgajeydzqc",
            "source": "a3u17yw6n6",
            "target": "esf024zcfv"
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
            "id": "ey89smbdp0",
            "source": "esf024zcfv",
            "target": "edocgivif6"
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
            "id": "imze9phgvr",
            "source": "6fngf7xtxj",
            "target": "qsjah6jmh9"
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
            "id": "ppijhww8dc",
            "source": "qsjah6jmh9",
            "target": "uggqph7qig"
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
            "id": "hg406xegwb",
            "source": "2lbfuh4edi",
            "target": "m3n3k97uh6"
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
            "id": "3cfmurg0xx",
            "source": "j3ng7qwtcq",
            "target": "y7nvq54knp"
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
            "id": "7m4kyb04t3",
            "source": "3qj301cbqk",
            "target": "67psjgu4jo"
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
            "id": "monc06b8iw",
            "source": "xunjp2iy9q",
            "target": "5dq3xm73yu"
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
            "id": "o3ie2avyvh",
            "source": "5dq3xm73yu",
            "target": "isx0guqtkw"
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
            "id": "cztlhcwtb0",
            "source": "isx0guqtkw",
            "target": "lduyav0d3s"
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
            "id": "df7vsbywwr",
            "source": "lduyav0d3s",
            "target": "alcao76uch"
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
            "id": "bgabodeiie",
            "source": "alcao76uch",
            "target": "t1yv2luwlb"
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
            "id": "j6r8493m3",
            "source": "j3ng7qwtcq",
            "target": "skfbh7h9iv"
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
            "id": "cxrfqjqjcc",
            "source": "skfbh7h9iv",
            "target": "t1yv2luwlb"
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
            "id": "oflropay3k",
            "source": "y7nvq54knp",
            "target": "lygg8zzqei"
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
            "id": "vmg9ma7xbr",
            "source": "7v0v4418tr",
            "target": "dcmc7sndho"
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
            "id": "11xqn3i03q",
            "source": "xhmf13bxut",
            "target": "e6yig196dg"
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
            "id": "s77bavz7dk",
            "source": "1e2j7pkrmh",
            "target": "ibws8njtcu"
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
            "id": "rggmb389ig",
            "source": "k751djx9z6",
            "target": "xhmf13bxut"
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
            "id": "qflrswxp5b",
            "source": "ibws8njtcu",
            "target": "k751djx9z6"
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
            "id": "d1ddor9mhv",
            "source": "k9ldoz8znx",
            "target": "jz1yucq6rp"
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
            "id": "52md88lppq",
            "source": "jz1yucq6rp",
            "target": "1e2j7pkrmh"
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
            "id": "kdec10e0xd",
            "source": "e6yig196dg",
            "target": "4bnwgecbn7"
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
            "id": "0uhcu8f3lq",
            "source": "cga5vp7k4w",
            "target": "9anfvrw6wc",
            "multiValueSourceId": "3qnw9tpwje"
          },
          "position": {
            "x": 64,
            "y": 132
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
            "id": "febj8k4o89",
            "source": "cga5vp7k4w",
            "target": "wkgjjzzbqa",
            "multiValueSourceId": "u25sl5brqv"
          },
          "position": {
            "x": 64,
            "y": 172
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
            "id": "33sz0dei2s",
            "source": "wkgjjzzbqa",
            "target": "xtzzwdnjq5"
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
            "id": "6b10vt045i",
            "source": "xtzzwdnjq5",
            "target": "hsxf12ksbs"
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
            "id": "fsyw1fqsb1",
            "source": "dlmdzpy9c2",
            "target": "l78yb68rfi"
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
            "id": "729gtkamyx",
            "source": "9anfvrw6wc",
            "target": "ntl9g3fwbo"
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
            "id": "en9jo7dwcl",
            "source": "4bnwgecbn7",
            "target": "qtskvt8nh4"
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
            "id": "jn82b9ehdl",
            "source": "qtskvt8nh4",
            "target": "pg2fa73wuz"
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
            "id": "7lgb42ktsd",
            "source": "t1yv2luwlb",
            "target": "y7nvq54knp"
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
            "id": "hya9j2drsz",
            "source": "mlas55crze",
            "target": "8vmo0fji75"
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
            "id": "7s2ebajme6",
            "source": "8vmo0fji75",
            "target": "jtrgtig8kr"
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
            "id": "7pxb785bq1",
            "source": "8vmo0fji75",
            "target": "5k6dk6llk1"
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
            "id": "8fqp4tf1vy",
            "source": "5k6dk6llk1",
            "target": "fzkpxvcjr8"
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
            "id": "a0vnkwb0z9",
            "source": "x9lonnex7n",
            "target": "5k6dk6llk1"
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
            "id": "cdrucbz0dl",
            "source": "hsxf12ksbs",
            "target": "0ylqqp3wi2"
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
            "id": "mnusnjjxxr",
            "source": "0ylqqp3wi2",
            "target": "0exju3kfxk"
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
            "id": "tidx0389go",
            "source": "0exju3kfxk",
            "target": "q5cyy2bkw1"
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
            "id": "h0njn7qunu",
            "source": "ntl9g3fwbo",
            "target": "j5no0e6ir2"
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
            "id": "b06li53cvo",
            "source": "j5no0e6ir2",
            "target": "h9m6bjnayw"
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
  "flowColor": "#E3F0FF",
  "savedDate": 1705001321183,
  "variables": [],
  "connections": []
}