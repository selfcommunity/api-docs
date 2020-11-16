<h2 id="tocS_Category">IncubatorCategory</h2>
<!-- backwards compatibility -->
<a id="schemaincubatorcategory"></a>
<a id="schema_IncubatorCategory"></a>
<a id="tocSincubatorcategory"></a>
<a id="tocsincubatorcategory"></a>

```json
{
  "id": 0,
  "name": "string",
  "slug": "string",
  "slogan": "string",
  "approved_category": {},
  "added_at": "2019-08-24T14:15:22Z"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|read-only|Unique integer value identifying this category|
|name|string|true|none|Unique name of the category|
|slug|string|true|none|Unique slug identifying this category in a URL (pass `_GENERATE_` to auto generate slug)|
|slogan|string¦null|false|none|Short slogan to describe the category|
|approved_category|[Category](#schemacategory))|false|none|Category created from incubator|
|added_at|string(date-time)|false|read-only|Added at date time|
|status|integer|true|none|Status incubator|

#### Enumerated Values

|Property|Value|Description|
|---|---|---|
|status|0|Pending|
|status|1|Proposal|
|status|2|Approved|
|status|3|Ignored|
