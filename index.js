const express = require('express');
const app = express();
const PORT = 12401;

const clientes = [
    { id: 1, nombre: 'David' },
    { id: 2, nombre: 'José' },
    { id: 3, nombre: 'Juan' }
];

const productos = [
    { id: 1, nombre: 'Laptop Acer' },
    { id: 2, nombre: 'Mouse Cougar' },
    { id: 3, nombre: 'Pad Hyperx' }
];

app.get('/', (req, res) => {
    res.send('Welcome to the index page!');
});

app.get('/clientes', (req, res) => {
    res.json(clientes);
});

app.get('/productos', (req, res) => {
    res.json(productos);
});

app.listen(PORT, () => {
    console.log(`Express server executing in http://localhost:${PORT}`);
});
