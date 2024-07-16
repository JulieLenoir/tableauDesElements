<?php


const SERVER = "";
const USER = "";
const PASSWORD = "";
const BASE = "";


try {
    $connexion = new PDO("mysql:host=" . SERVER . "; dbname=" . BASE, USER, PASSWORD);
} catch (Exception $e) {
    echo 'erreur : ' . $e->getMessage();
}
