var express = require('express');
var app = express();

app.get("/", function(req, res){
 res.send("HELLO FROM OUR WEB APP!");
});
 
app.listen(3000, function () {
 console.log('Server is running on 3000');
});