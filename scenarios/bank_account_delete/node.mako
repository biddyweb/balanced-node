% if mode == 'definition': 
balanced.BankAccounts.delete

% else:
var balanced_library = require('balanced');

var balanced = new balanced_library({
    marketplace_uri: "${api_location}",
    secret: "${ctx.api_key}"
});

balanced.BankAccounts.delete("${request['uri']}", function (err, result) {
    /* . . . */
});

% endif
