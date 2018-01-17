curl \
-X POST -H "Content-Type: application/json; charset=utf-8" \
-H "Authorization: Bearer d6f1f032cb9c4e7bb5f12d4d0ec04429" \
"https://api.dialogflow.com/api/query?v=20150910" \
--data "{
'event':{'name': WHETHER_INCIDENT},
'lang':'en',
'sessionId':'1321321'}"
