const express = require('express');
const app = express();
const port = 3000;
const Router = require('./routes/playlists');


app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET, POST, OPTIONS, PUT, DELETE");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
    });

app.use('/api', Router);

app.listen(port, (err) => {
    if (err) {
        throw new Error('Something bad happened...');
    }
    
    console.log(`Server is listening on ${port}`);
});