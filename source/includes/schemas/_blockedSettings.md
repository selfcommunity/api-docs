<h2 id="tocS_BlockedSettings">BlockedSettings</h2>
<!-- backwards compatibility -->
<a id="schemablockedsettings"></a>
<a id="schema_BlockedSettings"></a>
<a id="tocSblockedsettings"></a>
<a id="tocsblockedsettings"></a>

```json
{
    "blocked_at": "2020-11-14T18:11:48.915332+01:00",
    "days_blocked": 1,
    "expire_at": "2020-11-15T18:11:48.915332+01:00",
    "reputation_delta": 161
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|days_blocked|integer|true|read-only|N° days of block|
|reputation_delta|integer|true|read-only|Reputation stolen|
|blocked_at|string(date-time)|false|read-only|Start User Block datetime|
|expire_at|string(date-time)|false|read-only|End User Block datetime|
