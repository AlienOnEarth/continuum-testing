var express = require('express');
var app = express();
app.use(express.bodyParser());

app.post('/auth', function(req, res) {
  if (req.body.ClientInfo.ClientUser.match(/6tukfdorxhjdy4b4/g) && req.body.Command.match(/DELETE/i)) {
    // reject all drop and select commands
    console.log('Command: '+req.body.Command)
    console.log('DatastoreUser: '+req.body.ClientInfo.DatastoreUser)
    console.log('ClientAddress: '+req.body.ClientInfo.ClientAddress)
    console.log('Datastore: '+req.body.Datastore)
    console.log('ClientUsser: '+req.body.ClientInfo.ClientUser)
    res.json({ Permitted: false, Reason: "No!" })
  } else {
    // permit anything else
    console.log('Command: '+req.body.Command)
    console.log('ClientInfo: '+req.body.ClientInfo.ClientUser)
    res.json({ Permitted: true, Reason: "Move along" })
  }
});

// get the port from environment, or default to 4000
var port = process.env.PORT || 4000
app.listen(port);

// put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:"+port+"/");
