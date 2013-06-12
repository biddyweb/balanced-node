% if mode == 'definition': 
balanced.Accounts.underwrite

% else:
var balanced_library = require('balanced');

var balanced = new balanced_library({
    marketplace_uri: "${api_location}",
    secret: "${ctx.api_key}"
});

balanced.Accounts.underwrite({
    phone_number: "+140899188155",
  name: "Skripts4Kids",
  postal_code: "91111",
  type: "business",
  street_address: "555 VoidMain Road",
  tax_id: "211111111",
  person: {
    phone_number: "+14089999999",
    dob: "1989-12",
    postal_code: "94110",
    name: "${payload['name']}",
    street_address: "121 Skriptkid Row"
  }
}, function(err, result) {
    /* . . . */
});

% endif
