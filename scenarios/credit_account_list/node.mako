% if mode == 'definition': 

% else:
var balanced_library = require('balanced');

var balanced = new balanced_library({
    marketplace_uri: "${api_location}",
    secret: "${ctx.api_key}"
});

balanced.Accounts.get("${request['uri']}", function(err, result) {
    var user = balanced.Accounts.nbalanced(result);
    user.Credits.list({ limit: 10, offset: 0 }, function(err, result) {
	/* . . . */
    });
});

% endif
