```dataview
TABLE WITHOUT ID
file.link AS "Todo",
type AS "Type"
FROM #Todo 
```
```dataview
TABLE WITHOUT ID
file.link AS "Recent Entries"
FROM "Entries"
SORT file.ctime DESC
LIMIT 5
```
```dataview
TABLE WITHOUT ID
file.link AS "Recent Vocab",
type AS "Type"
FROM "Vocab"
SORT file.ctime DESC
LIMIT 5
```
```dataview
TABLE WITHOUT ID
file.link AS "Recent Songs",
artist AS "Artist"
FROM "Songs"
SORT file.ctime DESC
LIMIT 5
```