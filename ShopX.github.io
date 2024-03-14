<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Alışveriş Sitesi</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      transition: background-color 0.5s, color 0.5s;
    }

    header {
      background-color: #333;
      color: white;
      text-align: center;
      padding: 10px;
    }

    nav {
      background-color: #555;
      overflow: hidden;
    }

    nav a {
      float: left;
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    nav a:hover {
      background-color: #ddd;
      color: black;
    }

    main {
      margin: 20px;
    }

    #products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 20px;
    }

    .product {
      border: 1px solid #ccc;
      border-radius: 10px;
      padding: 20px;
    }

    .product img {
      max-width: 100%;
      height: auto;
    }

    .product h3 {
      margin-top: 10px;
    }

    .product button {
      background-color: #4CAF50;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      width: 100%;
    }

    .product button:hover {
      background-color: #45a049;
    }

    #cart {
      border: 1px solid #ccc;
      border-radius: 10px;
      padding: 20px;
      margin-top: 20px;
      display: none; /* Başlangıçta sepeti gizle */
    }

    #cart h2 {
      margin-bottom: 10px;
    }

    #cart ul {
      list-style-type: none;
      padding: 0;
    }

    #cart li {
      margin-bottom: 10px;
    }

    #orders {
      border: 1px solid #ccc;
      border-radius: 10px;
      padding: 20px;
      margin-bottom: 20px;
    }

    #orders ul {
      list-style-type: none;
      padding: 0;
    }

    #orders li {
      margin-bottom: 10px;
    }

    footer {
      background-color: #555;
      color: white;
      text-align: center;
      padding: 10px;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
  <header>
    <h1>ShopX</h1>
  </header>

  <nav>
    <a href="#">Anasayfa</a>
    <a href="#" onclick="showProducts()">Ürünler</a>
    <a href="#" onclick="showOrders()">Siparişler</a>
    <a href="" ##kullanıcı ücretli ürürn ekleme
    <a href="#">İletişim</a>
    <a href="#">Hakkımızda</a>
    <a href="#">Yardım</a>
    <a href="#">Giriş</a>
  </nav>

  <main>
    <section id="products">
      <div class="product">
        <img src="ps5.jpg" alt="PS5">
        <h3>PlayStation 5</h3>
        <p>Fiyat: 18.000 TL</p>
        <button type="button" onclick="addToCart('PlayStation 5', 18000)">Sepete Ekle</button>
      </div>
      <!-- Diğer ürünler buraya eklenebilir -->
    </section>

    <section id="cart">
      <h2>Sepet</h2>
      <ul id="cart-items">
        <!-- Sepete eklenen ürünler buraya dinamik olarak eklenecek -->
      </ul>
    </section>

    <section id="orders" style="display: none;">
      <h2>Siparişler</h2>
      <ul id="order-items">
        <!-- Siparişler buraya dinamik olarak eklenecek -->
      </ul>
    </section>
  </main>

  <footer>
    <p>&copy; 2024 Alışveriş Sitesi</p>
  </footer>

  <script>
    function addToCart(productName, price) {
      const cartItems = document.getElementById('cart-items');
      const listItem = document.createElement('li');
      const removeButton = document.createElement('button');
      removeButton.textContent = 'Kaldır';
      removeButton.onclick = function() {
        listItem.remove();
      };
      listItem.textContent = `${productName} - Fiyat: ${price} TL `;
      listItem.appendChild(removeButton);
      cartItems.appendChild(listItem);
    }

    function showProducts() {
      document.getElementById('products').style.display = 'grid';
      document.getElementById('cart').style.display = 'none';
      document.getElementById('orders').style.display = 'none';
    }

    function showOrders() {
      document.getElementById('products').style.display = 'none';
      document.getElementById('cart').style.display = 'block';
      document.getElementById('orders').style.display = 'block';
    }
  </script>
</body>
</html>



