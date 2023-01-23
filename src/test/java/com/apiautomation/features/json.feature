@apiautomation
Feature: Json feature testing

Scenario: Json parser (Reader)

* def jsonObject =
"""
[
{ "name" : "Krsna",
  "place" : "golok dham",
   "age" : "3234543267"
},
{
  "name" : "Rama",
  "place" : "saket dham",
   "age" : "2341234532"
}
]
"""

* print jsonObject
* print jsonObject[0]
* print jsonObject[1]
* print jsonObject[0].name + " " + jsonObject[0].place + " " + jsonObject[0].age
* print jsonObject[1].name + " " + jsonObject[1].place + " " + jsonObject[1].age



Scenario: complex json reader

* def jsonObject =

"""
{
"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}
}
"""
* print jsonObject
* print jsonObject.menu
* print jsonObject.menu.id
* print jsonObject.menu.popup
* print jsonObject.menu.popup.menuitem[0]
* print jsonObject.menu.popup.menuitem[1]
* print jsonObject.menu.popup.menuitem[2]

* print jsonObject.menu.popup.menuitem[0].onclick

