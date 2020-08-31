var express = require('express');
var app = express();

app.set("view engine", "ejs");

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  database : 'ig_clone'
});
 
app.get("/", function(req, res){
 res.send("HELLO FROM OUR WEB APP!");
});

app.get("/joke", function(req, res){
 var joke = "What do you call a dog that does magic tricks? A labracadabrador.";
 res.send(joke);
});

app.get("/random_num", function(req, res){
 var num = Math.floor((Math.random() * 10) + 1);
 res.send("Your lucky number is " + num);
});
 
app.listen(3000, function () {
 console.log('Server is running on 3000');
});

app.get("/", function(req, res){
 var q = 'SELECT COUNT(*) as count FROM users';
 connection.query(q, function (error, results) {
 if (error) throw error;
 var msg = "We have " + results[0].count + " users";
	 var count = results[0].count;
 res.render("home", {data: count});
 });
});

app.post('/register', function(req,res){
 var person = {email: req.body.email};
 connection.query('INSERT INTO users SET ?', person, function(err, result) {
 console.log(err);
 console.log(result);
 res.redirect("/");
 });
});