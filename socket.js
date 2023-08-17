const socketIo = require('socket.io');

let io;

const init = (httpServer) => {
  io = socketIo(httpServer);

  io.on('connection', (socket) => {
    console.log('Bir kullanıcı bağlandı');
      
    socket.on('newProduct', (productData) => {
      io.emit('newProduct', productData);
    });

    socket.on('productUpdate', (productData) => {
      io.emit('productUpdate', productData);
    });

    socket.on('deleteAllProducts', () => {
      io.emit('deleteAllProducts');
    });

    socket.on('disconnect', () => {
      console.log('A user disconnected');
    });
  });

  return io;
};

const getIo = () => {
  if (!io) {
    throw new Error('Socket.io is not initialized.');
  }
  return io;
};

module.exports = {
  init,
  getIo
};
