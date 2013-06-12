% if mode == 'definition': 
balanced.Refunds.get

% else:
<%!
    import json

    def to_json( d ):
        return json.dumps( d , indent=4)
%>

var balanced_library = require('balanced');

var balanced = new balanced_library({
    marketplace_uri: "${ctx.marketplace_uri}",
    secret: "${ctx.api_key}"
});

balanced.Refunds.get("${request['uri']}", function(err, result) {
    /* . . . */
});

% endif
