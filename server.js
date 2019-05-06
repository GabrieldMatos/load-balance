'use strict';

const express = require('express');
const validarCpf = require('validar-cpf');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    res.send('Hello world from ' + req.connection.localAddress + ' ' + req.connection.localPort + '.\n');
});

app.get('/validar/:cpf', (req, res) => {
    var cpf = req.params.cpf;
    res.send(validarCpf(cpf)+'\n');
});
  
app.listen(PORT, HOST);
console.log(`Running listening on port ${PORT}`);
