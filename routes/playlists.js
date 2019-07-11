const db = require('../db/db');
const express = require('express');
const bodyParser = require('body-parser');

const router = express.Router();

router.use(bodyParser.json());

router.use(bodyParser.urlencoded({
    extended: true
}));

//Créer une playlist
router.post('/playlist', (req, res) =>{
    const formData = req.body;
    db.query("INSERT INTO playlists SET ?", formData, (err, results) => {
        if(err){
            res.status(500).send('Erreur lors de la création de la playlist');
            return;
        }
        if (!results) {
            res.status(400).send();
            return;
        } else {
            db.query("SELECT * FROM playlists WHERE id = ?", results.insertId, (err, results) =>{
                if (err) {
                    res.status(500);
                } else {
                    res.status(201).send(results[0]);
                }
            })
        }
    })
});

//Consulter une playlist par id
router.get('/playlist/:id', (req, res) =>{
    const id = req.params.id;
    db.query('SELECT * FROM playlists WHERE id = ?', id, (err, results) => {
        if(err){
            res.status(500).send('Erreur lors de la récupération de la playlist');
        } 
        if (!results.length) {
            res.status(404).send();
        } else {
            res.status(200).json(results);
        }
    })
});

//Créer et ajouter un morceau à une playlist
router.post('/tracks', (req, res) => {
    const formData = req.body;
    db.query('INSERT INTO tracks set ?', formData, (err, results) => {
        if(err){
            res.status(500).send('Erreur lors de la création du morceau');
            return;
        } if (!results) {
            res.status(400).send();
        } else {
            db.query('SELECT * FROM tracks WHERE id = ?', results.insertId, (err, results) => {
                if(err){
                    res.status(500).send();
                } else {
                    res.status(201).send(results[0]);
                }
            })
        }
    })
});

//Lister les morceaux d'une playlist
router.get('/tracks/playlist/:id', (req, res) => {
    const id = req.params.id;
    db.query('SELECT * FROM tracks WHERE playlist_id = ?', id, (err, results) => {
        if(err){
            res.status(500).send('Erreur lors de la récupération des morceaux');
        } if (!results.length) {
            res.status(404).send();
        } else {
            res.status(200).json(results);
        }
    })
});

//Supprimer une playlist
router.delete('/playlist/:id', (req, res) => {
    const id = req.params.id;
    db.query('DELETE FROM playlists WHERE id = ?', id, err => {
        if(err){
            console.log(err)
            res.status(500).send('Erreur lors de la suppression');
        } else {
            res.status(204).send();
        }
    })
});

module.exports = router;
