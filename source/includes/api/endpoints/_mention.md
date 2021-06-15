<h2 id="selfcommunity-api-mention">Mention</h2>

### How it works

<a id="opIdMention"></a>

The mentions mechanism is used to allow users to mention some other users within the content they write (posts, discussions, status, comments, etc.). The presence of a mention within a contribution causes a `notification` to be sent to the mentioned user.

#### When creating or editing a contribution
To mention another user, one or more usernames preceded by the special character @ must be present in the text field when creating or updating a contribution, for example:

```json
{
  "post": 20, 
  "text": "This is a comment with some mentions to notify @username1 and @username2"
}
```

*Note that usernames may need to be auto-completed searchable in the contribution creation or editing interface (starting typing after the @ special character).*

#### While reading a contribution
Retrieving a contribution that contains a mention to one or more users you will find in the text field one or more html tags that indicate the position and details (user ids) of the mention and which must be made as links pointing to the user profiles mentioned, to example:

```json
{
    "html": "This is a comment with some mentions to notify <mention extid=\"301\" id=\"15\">@username1</mention> and <mention extid=\"302\" id=\"16\">@username2</mention>",
    "summary": "This is a comment with some mentions to notify @username1 and @username2"
}
```

*Note that the summary field also contains information about the mention.*


