var express = require('express');
var router = express.Router();
var MongoClient = require('mongodb').MongoClient


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
router.post('/submit',function(req,res){
  console.log(req.body)

MongoClient.connect('mongodb://localhost:27017', (err, client) => {
if (err) 
console.log('Error connecting to MongoDB database')
 else 
  client.db('merwin').collection('user').insertOne(req.body)
})
res.send('got it')

})
module.exports = router;
