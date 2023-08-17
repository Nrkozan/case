const socket = io();
const productTable = document.getElementById('productTable');

socket.on('newProduct', (productData) => {
  //productTableBody
  const productTableBody = document.getElementById('productTableBody');
  const productTableRow = document.createElement('tr');
  productTableRow.innerHTML = '<td>' + productData.name + '</td><td>' + productData.price + '</td>';
  productTableBody.appendChild(productTableRow);
});


socket.on('deleteAllProducts', () => {
  //productTableBody
  const productTableBody = document.getElementById('productTableBody');
  productTableBody.innerHTML = '';
});


document.getElementById('btnUpload').addEventListener('click', function() {
  var file = document.getElementById('file').files[0];
  if (!file) {
    return;
  }
  var formData = new FormData();
  formData.append('file', file);
  axios.post('/import', formData).then(function() {
    console.log('BAŞARILI!!');
  })
  .catch(function() {
    console.log('HATA!!');
  });
});

//btnDeleteAll
document.getElementById('btnDeleteAll').addEventListener('click', function() {
  axios.get('/deleteAll').then(function() {
    console.log('BAŞARILI!!');
  })
  .catch(function() {
    console.log('HATA!!');
  });
});

//.getSize with class name
document.querySelectorAll('.getSize').forEach(item => {
  item.addEventListener('click', event => {
    const size = item.getAttribute('data-size');
    axios.get('/getSize/' + size).then(function(response) {
     //empty productTableBody
      const productTableBody = document.getElementById('productTableBody');
      productTableBody.innerHTML = '';
      //add new products
      response.data.data.forEach(product => {
        const productTableRow = document.createElement('tr');
        productTableRow.innerHTML = '<td>' + product.name + '</td><td>' + product.price + '</td>';
        productTableBody.appendChild(productTableRow);
      });
    })
  })
})