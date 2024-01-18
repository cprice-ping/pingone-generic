{
  "companyId": "c07b4540-8fee-485a-af76-21e3956853a7",
  "authTokenExpireIds": [],
  "connectorIds": [
    "httpConnector",
    "pingOneFormsConnector",
    "pingOneSSOConnector",
    "nodeConnector",
    "pingOneRiskConnector",
    "annotationConnector",
    "functionsConnector",
    "pingOneMfaConnector",
    "flowConnector"
  ],
  "createdDate": 1705003099046,
  "currentVersion": 30,
  "customerId": "35f33bbaf301dfa496ccb7eee32d9c0e",
  "deployedDate": 1705003100849,
  "description": "",
  "flowStatus": "enabled",
  "isOutputSchemaSaved": false,
  "name": "[Sub] Registration",
  "publishedVersion": 30,
  "settings": {
    "csp": "worker-src 'self' blob:; script-src 'self' https://cdn.jsdelivr.net https://code.jquery.com https://devsdk.singularkey.com http://cdnjs.cloudflare.com 'unsafe-inline' 'unsafe-eval';",
    "intermediateLoadingScreenCSS": "",
    "intermediateLoadingScreenHTML": "",
    "logLevel": 3
  },
  "timeouts": "null",
  "updatedDate": 1705003100852,
  "flowId": "80a37dec35e71ad7296e21f238123157",
  "versionId": 30,
  "graphData": {
    "elements": {
      "nodes": [
        {
          "data": {
            "id": "4t40zsrqgu",
            "nodeType": "CONNECTION",
            "connectionId": "867ed4363b2bc21c860085ad2baa817d",
            "connectorId": "httpConnector",
            "name": "Http",
            "label": "Http",
            "status": "configured",
            "capabilityName": "customHTMLTemplate",
            "type": "trigger",
            "properties": {
              "customHTML": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"<form id=\\\"webAuthenSupportForm\\\" method=\\\"post\\\">\\n    <input type=\\\"hidden\\\" name=\\\"webAuthenSupport\\\" id=\\\"webAuthenSupport\\\">\\n    <button type=\\\"hidden\\\" data-skcomponent=\\\"skbutton\\\" data-skbuttontype=\\\"form-submit\\\" class=\\\"hidden-button\\\"  data-skbuttonvalue=\\\"submit\\\" data-skform=\\\"webAuthenSupportForm\\\" id=\\\"autoSubmit\\\">Next</button>\\n</form>\"\n      }\n    ]\n  }\n]"
              },
              "customScript": {
                "value": "function isWebAuthnSupported() {\n  try {\n    if (!window.PublicKeyCredential) {\n          console.log(\"Web Authentication API is not supported on this browser.\");\n          return false;\n      }\n      return true;\n  } catch (error) {\n    console.log(error);\n    return false;\n  }\n}\n\nsetTimeout(function() {\n  document.forms['webAuthenSupportForm'].elements[\"webAuthenSupport\"].value = isWebAuthnSupported();\n  document.getElementById('autoSubmit').click();\n}, 200);"
              },
              "nodeTitle": {
                "value": "Get Web-Authen Browser Compatibility"
              },
              "formFieldsList": {
                "value": [
                  {
                    "propertyName": "webAuthenSupport",
                    "preferredControlType": "textField",
                    "preferredDataType": "boolean",
                    "value": "",
                    "hashedVisibility": false,
                    "displayName": "webAuthenSupport"
                  },
                  {
                    "preferredControlType": "textField",
                    "preferredDataType": "string",
                    "propertyName": "buttonValue"
                  }
                ]
              },
              "sktemplate": {
                "customerId": "50a0de8b585e95ff04f40f30f8ffd219",
                "visibility": "private",
                "version": "1.0",
                "name": "Browser computability check - meirav",
                "description": "",
                "createdDate": 1641819181546,
                "inputSchema": {},
                "outputSchema": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"buttonValue\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"propertyName\": \"buttonValue\"\n\t\t},\n\t\t\"webAuthenSupport\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"propertyName\": \"webAuthenSupport\"\n\t\t}\n\t}\n}",
                "script": "function isWebAuthnSupported() {\n  try {\n    if (!window.PublicKeyCredential) {\n          console.log(\"Web Authentication API is not supported on this browser.\");\n          return false;\n      }\n      return true;\n  } catch (error) {\n    console.log(error);\n    return false;\n  }\n}\n\nsetTimeout(function() {\n  document.forms['webAuthenSupportForm'].elements[\"webAuthenSupport\"].value = isWebAuthnSupported();\n  document.getElementById('autoSubmit').click();\n}, 200);",
                "style": ".hidden-button{\n    display: none;\n}",
                "template": "<form id=\"webAuthenSupportForm\" method=\"post\">\n    <input type=\"hidden\" name=\"webAuthenSupport\" id=\"webAuthenSupport\">\n    <button type=\"hidden\" data-skcomponent=\"skbutton\" data-skbuttontype=\"form-submit\" class=\"hidden-button\"  data-skbuttonvalue=\"submit\" data-skform=\"webAuthenSupportForm\" id=\"autoSubmit\">Next</button>\n</form>",
                "updatedDate": 1641889117353,
                "validationRules": [],
                "uiId": "8pFQopGGttGoUHoy31b0qT7AgofhTszG",
                "companyId": "6cQlNujpNKr8Rx50NwxbdnenYSPAW14d",
                "value": "8pFQopGGttGoUHoy31b0qT7AgofhTszG"
              },
              "inputSchema": {
                "value": {}
              },
              "outputSchema": {
                "value": "{\n\t\"type\": \"object\",\n\t\"properties\": {\n\t\t\"buttonValue\": {\n\t\t\t\"type\": \"string\",\n\t\t\t\"propertyName\": \"buttonValue\"\n\t\t},\n\t\t\"webAuthenSupport\": {\n\t\t\t\"type\": \"boolean\",\n\t\t\t\"propertyName\": \"webAuthenSupport\"\n\t\t}\n\t}\n}"
              },
              "customCSS": {
                "value": ".hidden-button{\n    display: none;\n}"
              },
              "validationRules": {
                "value": []
              }
            },
            "idUnique": "jf2del2ob5"
          },
          "position": {
            "x": 306.84061430270356,
            "y": 296
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
            "id": "cb35xm45za",
            "nodeType": "EVAL",
            "label": "Evaluator",
            "properties": {
              "zf7lb9zudi": {
                "value": "allTriggersFalse"
              },
              "buj43o33tt": {
                "value": "allTriggersTrue"
              }
            }
          },
          "position": {
            "x": 426.84061430270356,
            "y": 296
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
            "id": "buj43o33tt",
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
                    "key": "user.email",
                    "value": ""
                  }
                ]
              },
              "form": {
                "value": "${form_register_passkey}"
              },
              "enableRisk": {
                "value": true
              },
              "collectBehavioralData": {
                "value": true
              },
              "nodeTitle": {
                "value": "Register (Passkey)"
              }
            }
          },
          "position": {
            "x": 576.8406143027036,
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
            "id": "zf7lb9zudi",
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
                    "key": "user.email",
                    "value": ""
                  },
                  {
                    "key": "user.password",
                    "value": ""
                  }
                ]
              },
              "form": {
                "value": "${form_register_password}"
              },
              "enableRisk": {
                "value": true
              },
              "collectBehavioralData": {
                "value": true
              },
              "nodeTitle": {
                "value": "Register (Password)"
              }
            }
          },
          "position": {
            "x": 576.8406143027036,
            "y": 356
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
            "id": "9e12oby2o5",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 683.3406143027036,
            "y": 356.5
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
            "id": "ifypk8aw56",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "population": {
                "value": "abf6c96f-e5bd-4394-8e39-50bde27281a9"
              },
              "passwordForCreateUser": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"password\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.formData.user.password}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.formData.user.password}}\",\n        \"children\": [\n          {\n            \"text\": \"password\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "email": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1073.402465024622,
            "y": 357.00800156276154
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
            "id": "4jbs7xy7cf",
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
            "x": 277,
            "y": 768.9403110582557
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
            "id": "npmw5ql1lv",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 386.8486158654651,
            "y": 768.9403110582557
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
            "id": "nrh2zkzo37",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"username\",\n        \"data\": \"{{local.4jbs7xy7cf.payload.output.username}}\",\n        \"tooltip\": \"{{local.4jbs7xy7cf.payload.output.username}}\",\n        \"children\": [\n          {\n            \"text\": \"username\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"teleport.svg\",\n        \"url\": \"payload\",\n        \"data\": \"{{local.4jbs7xy7cf.payload.output.payload}}\",\n        \"tooltip\": \"{{local.4jbs7xy7cf.payload.output.payload}}\",\n        \"children\": [\n          {\n            \"text\": \"payload\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 496.6972317309302,
            "y": 768.9403110582557
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
            "id": "miqb6kerqq",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 606.5458475963953,
            "y": 768.9403110582557
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
            "id": "dt1udx2xen",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"level\",\n        \"data\": \"{{local.nrh2zkzo37.payload.output.rawResponse.result.level}}\",\n        \"tooltip\": \"{{local.nrh2zkzo37.payload.output.rawResponse.result.level}}\",\n        \"children\": [\n          {\n            \"text\": \"level\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "threatEvalId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.nrh2zkzo37.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.nrh2zkzo37.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1320.5618507219183,
            "y": 686.5538491591568
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
            "id": "67uv57g2v0",
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
            "x": 222.07569206726748,
            "y": 631.6295412264243
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
            "id": "ke93y7zxpd",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"level\",\n        \"data\": \"{{local.nrh2zkzo37.payload.output.rawResponse.result.level}}\",\n        \"tooltip\": \"{{local.nrh2zkzo37.payload.output.rawResponse.result.level}}\",\n        \"children\": [\n          {\n            \"text\": \"level\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
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
            "x": 1018.4781570918893,
            "y": 768.9403110582557
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
            "id": "p6d5jtulyk",
            "nodeType": "EVAL",
            "properties": {
              "dt1udx2xen": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 1155.7889269237207,
            "y": 768.9403110582557
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
            "id": "cfbnw7vsqn",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"<p>Suspicious activity detected - as a precaution, we're unable to create your account.</p>\\n<br>\\n<p>Please contact the Support center for help.</p>\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1650.1076983183139,
            "y": 878.7889269237207
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
            "id": "ygltf7326v",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.nrh2zkzo37.payload.output.rawResponse.id}}\",\n        \"tooltip\": \"{{local.nrh2zkzo37.payload.output.rawResponse.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
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
            "x": 1375.4861586546508,
            "y": 878.7889269237207
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
            "id": "fh3pj1dqjw",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"recommendedAction\",\n        \"data\": \"{{local.nrh2zkzo37.payload.output.rawResponse.result.recommendedAction}}\",\n        \"tooltip\": \"{{local.nrh2zkzo37.payload.output.rawResponse.result.recommendedAction}}\",\n        \"children\": [\n          {\n            \"text\": \"recommendedAction\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
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
            "x": 771.3187713945929,
            "y": 768.9403110582557
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
            "id": "de5tgukeot",
            "nodeType": "EVAL",
            "properties": {
              "cfbnw7vsqn": {
                "value": "allTriggersFalse"
              },
              "ygltf7326v": {
                "value": "allTriggersFalse"
              },
              "j4vk6ulvdd": {
                "value": "allTriggersFalse"
              }
            }
          },
          "position": {
            "x": 881.167387260058,
            "y": 768.9403110582557
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
            "id": "2ck5oa3032",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 1485.3347745201158,
            "y": 878.7889269237207
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
            "id": "ub14jvbgba",
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
            "x": 1293.099696755552,
            "y": 961.1753888228195
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
            "id": "r9e6m7ezt5",
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
                "value": "4jbs7xy7cf"
              },
              "payload": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"deviceRisk\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.deviceRisk}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.deviceRisk}}\",\n        \"children\": [\n          {\n            \"text\": \"deviceRisk\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "username": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 817.0913038339538,
            "y": 356.46544040625014
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
            "id": "tvgni355gc",
            "nodeType": "EVAL"
          },
          "position": {
            "x": 945.2468844292879,
            "y": 356.73672098450584
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
            "id": "r7kj00bmes",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1180.201232512311,
            "y": 358.0040007813808
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
            "id": "v2kovz4kzj",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ifypk8aw56.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.ifypk8aw56.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "deviceType": {
                "value": "EMAIL"
              },
              "status": {
                "value": "ACTIVE"
              },
              "email": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.zf7lb9zudi.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1300.402465024622,
            "y": 359
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
            "id": "due9oe2dhj",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1400.701232512311,
            "y": 359
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
            "id": "5zroz2qdv1",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ifypk8aw56.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.ifypk8aw56.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1527.402465024622,
            "y": 359
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
            "id": "7baiawbhav",
            "nodeType": "EVAL",
            "label": "Evaluator",
            "properties": {
              "auyah1sjfy": {
                "value": "anyTriggersTrue"
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
            "id": "auyah1sjfy",
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
                    "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ifypk8aw56.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.ifypk8aw56.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ojxa0zkmyd.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.ojxa0zkmyd.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]",
                    "key": 0.4259501568913946,
                    "label": "userId (string - flowInstance)",
                    "type": "string",
                    "nameDefault": "id"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 1800,
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
            "id": "8jydsrj4b7",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 685.9203071513518,
            "y": 234.5
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
            "id": "jw3ry0cqur",
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
                "value": "4jbs7xy7cf"
              },
              "payload": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"deviceRisk\",\n        \"data\": \"{{local.buj43o33tt.payload.output.deviceRisk}}\",\n        \"tooltip\": \"{{local.buj43o33tt.payload.output.deviceRisk}}\",\n        \"children\": [\n          {\n            \"text\": \"deviceRisk\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "username": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "userId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 810,
            "y": 240
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
            "id": "44b8yaam5c",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 930,
            "y": 240
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
            "id": "ojxa0zkmyd",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "population": {
                "value": "abf6c96f-e5bd-4394-8e39-50bde27281a9"
              },
              "email": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingone-forms.svg\",\n        \"url\": \"email\",\n        \"data\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"tooltip\": \"{{local.buj43o33tt.payload.output.formData.user.email}}\",\n        \"children\": [\n          {\n            \"text\": \"email\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1080,
            "y": 240
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
            "id": "30tgt7c7w0",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1185,
            "y": 239.5
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
            "id": "qnp68bc0h9",
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
                  "label": "[Sub] Passkey - Enrollment",
                  "value": "1a050a2ea204ff7179104113ce22d983"
                }
              },
              "p1UserId": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ojxa0zkmyd.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.ojxa0zkmyd.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              },
              "fidoRelyingParty": {
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"auth.pingone.com\"\n      }\n    ]\n  }\n]"
              },
              "nodeTitle": {
                "value": "Passkey Enrollment"
              },
              "subFlowVersionId": {
                "value": -1
              }
            }
          },
          "position": {
            "x": 1307,
            "y": 239
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
            "id": "zdbgr9snzh",
            "nodeType": "EVAL",
            "label": "Evaluator"
          },
          "position": {
            "x": 1404,
            "y": 239.5
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
            "id": "6rvukgand7",
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
                "value": "[\n  {\n    \"children\": [\n      {\n        \"text\": \"\"\n      },\n      {\n        \"text\": \"\"\n      },\n      {\n        \"type\": \"link\",\n        \"src\": \"pingIdentity.svg\",\n        \"url\": \"id\",\n        \"data\": \"{{local.ojxa0zkmyd.payload.output.user.id}}\",\n        \"tooltip\": \"{{local.ojxa0zkmyd.payload.output.user.id}}\",\n        \"children\": [\n          {\n            \"text\": \"id\"\n          }\n        ]\n      },\n      {\n        \"text\": \"\"\n      }\n    ]\n  }\n]"
              }
            }
          },
          "position": {
            "x": 1534,
            "y": 240
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
            "id": "eg556b51o0",
            "source": "4t40zsrqgu",
            "target": "cb35xm45za"
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
            "id": "4yw7xq8efi",
            "source": "cb35xm45za",
            "target": "buj43o33tt"
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
            "id": "717sch1j8j",
            "source": "cb35xm45za",
            "target": "zf7lb9zudi"
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
            "id": "ms92o52n4d",
            "source": "zf7lb9zudi",
            "target": "9e12oby2o5"
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
            "id": "lrrszg2hvo",
            "source": "p6d5jtulyk",
            "target": "ygltf7326v"
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
            "id": "diuhqjgjar",
            "source": "p6d5jtulyk",
            "target": "dt1udx2xen"
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
            "id": "106m62753a",
            "source": "ke93y7zxpd",
            "target": "p6d5jtulyk"
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
            "id": "3r7whayaif",
            "source": "de5tgukeot",
            "target": "ke93y7zxpd"
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
            "id": "hc0m7o6v16",
            "source": "miqb6kerqq",
            "target": "fh3pj1dqjw"
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
            "id": "hw32uhrlcb",
            "source": "ygltf7326v",
            "target": "2ck5oa3032"
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
            "id": "qlipug8i5v",
            "source": "de5tgukeot",
            "target": "ygltf7326v"
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
            "id": "2f14pc4o9w",
            "source": "4jbs7xy7cf",
            "target": "npmw5ql1lv"
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
            "id": "khfme9xd0p",
            "source": "fh3pj1dqjw",
            "target": "de5tgukeot"
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
            "id": "yuykz56szj",
            "source": "nrh2zkzo37",
            "target": "miqb6kerqq"
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
            "id": "479w2owix1",
            "source": "npmw5ql1lv",
            "target": "nrh2zkzo37"
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
            "id": "zhp61re5ho",
            "source": "2ck5oa3032",
            "target": "cfbnw7vsqn"
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
            "id": "5c1x2b9wed",
            "source": "9e12oby2o5",
            "target": "r9e6m7ezt5"
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
            "id": "8bpmy93935",
            "source": "r9e6m7ezt5",
            "target": "tvgni355gc"
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
            "id": "54s5vr4znz",
            "source": "tvgni355gc",
            "target": "ifypk8aw56"
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
            "id": "9rcoy4t0pv",
            "source": "ifypk8aw56",
            "target": "r7kj00bmes"
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
            "id": "mq4qjil78r",
            "source": "r7kj00bmes",
            "target": "v2kovz4kzj"
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
            "id": "8j4bp7fx4c",
            "source": "v2kovz4kzj",
            "target": "due9oe2dhj"
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
            "id": "u903tx6jod",
            "source": "due9oe2dhj",
            "target": "5zroz2qdv1"
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
            "id": "xta4376vlg",
            "source": "5zroz2qdv1",
            "target": "7baiawbhav"
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
            "id": "mz8kn4nv3d",
            "source": "7baiawbhav",
            "target": "auyah1sjfy"
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
            "id": "wvig1vvy3l",
            "source": "buj43o33tt",
            "target": "8jydsrj4b7"
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
            "id": "twloeoxqbm",
            "source": "8jydsrj4b7",
            "target": "jw3ry0cqur"
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
            "id": "tr03jtj1ea",
            "source": "jw3ry0cqur",
            "target": "44b8yaam5c"
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
            "id": "sw2n3ratis",
            "source": "44b8yaam5c",
            "target": "ojxa0zkmyd"
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
            "id": "eglfqdistp",
            "source": "ojxa0zkmyd",
            "target": "30tgt7c7w0"
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
            "id": "m1op7lmx4e",
            "source": "30tgt7c7w0",
            "target": "qnp68bc0h9"
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
            "id": "q3cwa38xxe",
            "source": "qnp68bc0h9",
            "target": "zdbgr9snzh"
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
            "id": "6ciggi5y0e",
            "source": "zdbgr9snzh",
            "target": "6rvukgand7"
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
            "id": "ll69j88i1j",
            "source": "6rvukgand7",
            "target": "7baiawbhav"
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
  "flowColor": "#AFD5FF",
  "savedDate": 1705003098304,
  "variables": [],
  "connections": []
}