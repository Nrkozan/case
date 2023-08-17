const fs = require('fs');
const express = require('express');
const http = require('http');
const socketIo = require('socket.io');
const path = require('path');

const app = express();
const server = http.createServer(app);
const io = socketIo(server);
const port = process.env.PORT || 3000;

require('dotenv').config();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));

const pagesRouter = require('./routes/pages');
app.use('/', pagesRouter);

const socket = require('./socket');
socket.init(server);


server.listen(port, () => {
  console.log(`Sunucu ${port} portunda çalışıyor`);
});
