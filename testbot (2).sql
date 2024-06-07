-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 06:22 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` text NOT NULL,
  `replies` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'hi', 'Hello! How can I assist you today?'),
(2, 'hello', 'Hi there! How can I help you?'),
(3, 'hey', 'Hey! How can I assist you?'),
(4, 'good morning', 'Good morning! How can I help you today?'),
(5, 'good afternoon', 'Good afternoon! How can I assist you?'),
(6, 'good evening', 'Good evening! How can I help you today?'),
(7, 'how are you', 'I am just a bot, but I am here to assist you! How can I help?'),
(8, 'what\'s up', 'Not much, just here to help you! How can I assist you?'),
(9, 'good night', 'Good night! If you need any assistance, I am here to help!'),
(10, 'howdy', 'Howdy! How can I assist you today?'),
(11, 'hi there', 'Hi there! How can I help you today?'),
(12, 'hello there', 'Hello there! How can I assist you?'),
(13, 'hey there', 'Hey there! How can I help you?'),
(14, 'hiya', 'Hiya! How can I assist you today?'),
(15, 'greetings', 'Greetings! How can I help you?'),
(16, 'yo', 'Yo! How can I assist you today?'),
(17, 'what\'s going on', 'Not much, just here to help! How can I assist you?'),
(18, 'how is it going', 'It\'s going well! How can I help you today?'),
(19, 'good to see you', 'Good to see you too! How can I assist you?'),
(20, 'pleased to meet you', 'Pleased to meet you too! How can I help you today?'),
(21, 'What types of products are available on the Anon eCommerce site?', 'The Anon eCommerce site features a variety of products across different categories. These can include fashion items, electronics, home goods, beauty products, and more. Each category is designed to offer a wide selection of products to meet diverse customer needs.'),
(22, 'How can I search for a specific product on the Anon site?', 'You can search for specific products using the search bar located at the top of the site. Simply enter the product name or keywords related to the product you are looking for, and the site will display relevant results.'),
(23, 'How do I view product details?', 'To view the details of a product, click on the product image or name from the product listing page. This will take you to the product detail page, where you can find information such as product descriptions, price, available sizes, colors, and customer reviews.'),
(24, 'Are product reviews available on the Anon site?', 'Yes, product reviews are available on the Anon site. Customers can read reviews from other buyers to get insights into the product\'s quality, performance, and overall satisfaction. Reviews are typically found on the product detail page.'),
(25, 'How can I add a product to my shopping cart?', 'To add a product to your shopping cart, navigate to the product detail page and select any required options such as size or color. Then, click the \"Add to Cart\" button. The product will be added to your shopping cart, and you can continue shopping or proceed to checkout.'),
(26, 'What information is provided in the product description?', 'The product description typically includes detailed information about the product, such as its features, specifications, materials used, dimensions, and care instructions. This helps customers make informed purchasing decisions.'),
(27, 'Are there any discounts or promotions on products?', 'The Anon site may offer discounts or promotions on various products from time to time. Promotional details can be found on the homepage, product pages, or in a dedicated promotions section. Keep an eye out for special deals and discount codes.'),
(28, 'How can I compare different products?', 'While the Anon site may not have a built-in product comparison feature, you can compare different products by opening multiple product detail pages in separate tabs or windows. This allows you to view and compare their features, prices, and reviews side by side.'),
(29, 'What should I do if a product is out of stock?', 'If a product is out of stock, you can check if the site offers a notification service to inform you when the product is back in stock. Alternatively, you can contact customer support for information on restocking dates or similar product recommendations.'),
(30, 'Can I see recently viewed products?', 'Yes, the Anon site typically features a \"Recently Viewed Products\" section. This section displays the products you have recently looked at, making it easier for you to revisit and consider them for purchase.'),
(31, 'What are your standard delivery times?', 'Standard delivery times are 5-7 business days for domestic orders. Express shipping options are available during checkout for faster delivery.'),
(32, 'Do you offer free shipping?', 'We offer free standard shipping on orders over $50. Express shipping fees apply for faster delivery.'),
(33, 'How can I track my order?', 'After your order ships, you\'ll receive a tracking number via email that allows you to check the status on our site or the carrier\'s website.'),
(34, 'What are your policies around privacy and data protection?', 'Our privacy policy outlines how we collect, use, and protect customer data in compliance with all applicable laws and regulations.'),
(35, 'What should I do if I have a legal inquiry or notice?', 'For any legal inquiries or official notices, please contact email or send correspondence to mailing address.'),
(36, 'Where can I review your terms and conditions?', 'Our full terms and conditions are available index.html which we recommend reviewing before making a purchase.'),
(37, 'What is your return/refund policy?', 'You can return most items within 30 days for a refund or exchange. See our terms for complete details on eligibility and restocking fees.'),
(38, 'What is the history of your company?', 'Anon was founded in 2022 with the mission to bring products near a customer with the click of a button. You can read more about our story on our About page.'),
(39, 'Where are your products made?', 'We work with manufacturers globally and list the country of origin for each product. Many items are made locally, handcrafted, etc.'),
(40, 'How can I make a payment?', 'You can make a payment through our secure online portal using credit/debit cards or electronic bank transfer. Simply log in to your account and follow the prompts to complete the payment process.'),
(41, 'Is it safe to make a payment on your website?', 'Yes, we take security seriously. Our website is encrypted with SSL to protect your payment information, and we comply with industry standards to ensure a secure checkout experience.'),
(42, 'Are there any additional fees for using a specific payment method?', 'No, we don\'t charge any additional fees for using our supported payment methods.'),
(43, 'Can I save my payment information for future orders?', 'Yes, you can securely save your payment information for faster checkout on future orders.'),
(44, 'Can I track the status of my payment or order?', 'Yes, you can track the status of your payment and order in your account dashboard. We\'ll also send you email notifications at each stage of the process.'),
(45, 'What is your refund policy for payments?', 'We have a hassle-free refund policy. If you\'re not satisfied with your purchase, you can request a refund within 7 Days. Please review our refund policy for more details.'),
(46, 'What is the price of a pocket watch?', 'The price of a pocket watch is Ksh. 4,500'),
(47, 'Do you offer any discounts on Watches?', 'Yes, we currently have a 49% discount available for Men\'s Watches.'),
(48, 'What types of perfumes are available on the Anon eCommerce site?', 'The Anon eCommerce site offers a wide variety of perfumes, including eau de parfum, eau de toilette, and cologne. You can find fragrances for both men and women from various popular brands.'),
(49, 'How can I find a specific perfume on the Anon site?', 'You can use the search bar at the top of the site to find a specific perfume by entering the name of the perfume or the brand. The search results will display relevant products that match your query.'),
(50, 'How do I know if a perfume is long-lasting?', 'You can check the product description and customer reviews on the product detail page to get an idea of the perfume\'s longevity. Eau de parfum typically lasts longer than eau de toilette or cologne.'),
(51, 'Can I get samples of perfumes before buying?', 'Currently, we do not offer samples of perfumes. However, you can read product descriptions and reviews to make an informed decision.'),
(52, 'Are there any discounts on perfumes?', 'Yes, we often have promotions and discounts on perfumes. You can check the homepage or the promotions section for current deals and offers.'),
(53, 'How can I compare different perfumes?', 'While our site may not have a built-in comparison feature, you can open multiple product detail pages in separate tabs or windows to compare their features, prices, and customer reviews.'),
(54, 'What should I do if a perfume is out of stock?', 'If a perfume is out of stock, you can sign up for a notification to be informed when it\'s back in stock or contact customer support for more information.'),
(55, 'Can I see recently viewed perfumes?', 'Yes, you can view recently viewed perfumes in the \"Recently Viewed Products\" section on the site.'),
(56, 'What should I do if a product is out of stock?', 'If a product is out of stock, you can check if the site offers a notification service to inform you when the product is back in stock. Alternatively, you can contact customer support for information on restocking dates or similar product recommendations.'),
(57, 'What are your delivery times for perfumes?', 'Our standard delivery time for perfumes is 5-7 business days. We also offer express shipping options for faster delivery.'),
(58, 'Can I track the delivery of my perfume order?', 'Yes, you will receive a tracking number via email once your order is shipped, allowing you to track its progress on our site or the carrier\'s website.'),
(59, 'How are perfumes packaged for delivery?', 'Perfumes are carefully packaged to ensure they arrive safely. They are typically shipped in sturdy boxes with protective padding to prevent damage.'),
(60, 'What should I do if a perfume arrives damaged?', 'If a perfume arrives damaged, please contact our customer support immediately. We will arrange for a replacement or a refund based on our return policy.'),
(61, 'Can I return a perfume if I don\'t like the scent?', 'Yes, you can return a perfume within 30 days if you are not satisfied with the scent. Please ensure the product is in its original packaging and condition.'),
(62, 'How can I contact customer support for perfume-related queries?', 'You can contact our customer support team via email, phone, or live chat for any perfume-related queries. The contact details are available on our website.'),
(63, 'Can I purchase perfumes as gifts?', 'Yes, you can purchase perfumes as gifts. We offer gift wrapping and personalized message options during checkout.'),
(64, 'Are there any exclusive or limited edition perfumes available?', 'Yes, we occasionally offer exclusive or limited edition perfumes. Keep an eye on our new arrivals and promotions sections for the latest offerings.'),
(65, 'Do you offer gift cards for perfume purchases?', 'Yes, we offer gift cards that can be used for purchasing perfumes and other products on our site. Gift cards can be purchased online and sent via email.'),
(66, 'What are your customer service hours?', 'Our customer service team is available from 9 AM to 5 PM, Monday to Friday.'),
(67, 'How can I contact customer service?', 'You can reach us via email at support@anon.com, or call us at 1-800-123-4567 during business hours.'),
(68, 'Is there a way to track my order online?', 'Yes, you can log into your account on our website and view the status of your order under the \"My Orders\" section.'),
(69, 'What is the expected delivery time for orders?', 'Our standard delivery time is 5-7 business days. Expedited shipping options are available at checkout for faster delivery.'),
(70, 'Do you offer international shipping?', 'Currently, we only ship within the United States. We hope to offer international shipping in the near future.'),
(71, 'How can I return or exchange an item?', 'To return or exchange an item, please visit our Returns page for instructions and to request a return authorization.'),
(72, 'What is your refund policy?', 'We offer a 30-day refund policy for most items. Items must be returned in their original condition and packaging.'),
(73, 'What payment methods do you accept?', 'We accept Visa, MasterCard, American Express, Discover, and PayPal for online orders.'),
(74, 'Is it safe to enter my credit card information on your website?', 'Yes, our website uses SSL encryption to protect your personal and payment information.'),
(75, 'Do you offer any discounts or promotions?', 'Yes, we regularly offer discounts and promotions. Please sign up for our newsletter to receive updates on the latest deals.'),
(76, 'How can I apply a discount code to my order?', 'You can enter your discount code during the checkout process in the field labeled \"Discount Code.\"'),
(77, 'What should I do if my discount code isn\'t working?', 'If your discount code isn\'t working, please check the expiration date and terms and conditions. If you\'re still having trouble, contact our customer service for assistance.'),
(78, 'Can I change or cancel my order once it has been placed?', 'We strive to process orders quickly, but if you need to change or cancel your order, please contact our customer service as soon as possible.'),
(79, 'How can I update my account information?', 'You can update your account information by logging into your account and going to the \"Account Details\" section.'),
(80, 'What should I do if I forget my password?', 'If you forget your password, click on the \"Forgot Password\" link on the login page and follow the instructions to reset it.'),
(81, 'Can I track my order status online?', 'Yes, you can log into your account on our website and view the status of your order under the \"My Orders\" section.'),
(82, 'What are your customer service hours?', 'Our customer service team is available from 9 AM to 5 PM, Monday to Friday.'),
(83, 'How can I contact customer service?', 'You can reach us via email at support@anon.com, or call us at 1-800-123-4567 during business hours.'),
(84, 'What is the expected delivery time for orders?', 'Our standard delivery time is 5-7 business days. Expedited shipping options are available at checkout for faster delivery.'),
(85, 'Do you offer international shipping?', 'Currently, we only ship within the United States. We hope to offer international shipping in the near future.'),
(86, 'How can I return or exchange an item?', 'To return or exchange an item, please visit our Returns page for instructions and to request a return authorization.'),
(87, 'What is your refund policy?', 'We offer a 30-day refund policy for most items. Items must be returned in their original condition and packaging.'),
(88, 'What payment methods do you accept?', 'We accept Visa, MasterCard, American Express, Discover, and PayPal for online orders.'),
(89, 'Is it safe to enter my credit card information on your website?', 'Yes, our website uses SSL encryption to protect your personal and payment information.'),
(90, 'Do you offer any discounts or promotions?', 'Yes, we regularly offer discounts and promotions. Please sign up for our newsletter to receive updates on the latest deals.'),
(91, 'How can I apply a discount code to my order?', 'You can enter your discount code during the checkout process in the field labeled \"Discount Code.\"'),
(92, 'What should I do if my discount code isn\'t working?', 'If your discount code isn\'t working, please check the expiration date and terms and conditions. If you\'re still having trouble, contact our customer service for assistance.'),
(93, 'Can I change or cancel my order once it has been placed?', 'We strive to process orders quickly, but if you need to change or cancel your order, please contact our customer service as soon as possible.'),
(94, 'How can I update my account information?', 'You can update your account information by logging into your account and going to the \"Account Details\" section.'),
(95, 'What should I do if I forget my password?', 'If you forget your password, click on the \"Forgot Password\" link on the login page and follow the instructions to reset it.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description`, `price`, `created_at`, `image_path`) VALUES
(1, 'Nike Air Max', 'shoe', 'High-quality running shoes', '120.00', '2024-06-06 10:13:52', 'assets/images/products/sports-6.jpg'),
(2, 'Adidas Ultraboost', 'shoe', 'Comfortable sports shoes', '150.00', '2024-06-06 10:13:52', 'assets/images/products/shoe-4.jpg'),
(3, 'Levi\'s Jeans', 'clothing', 'Stylish blue jeans', '60.00', '2024-06-06 10:13:52', 'assets/images/products/shorts-1.jpg'),
(4, 'Puma Sneakers', 'shoe', 'Casual wear sneakers', '80.00', '2024-06-06 10:13:52', 'assets/images/products/sports-3.jpg'),
(5, 'Hanes T-Shirt', 'clothing', 'Basic white t-shirt', '15.00', '2024-06-06 10:13:52', 'assets/images/products/shirt-1.jpg'),
(6, 'Chanel No. 5', 'perfume', 'Classic floral fragrance for women', '200.00', '2024-06-06 12:18:39', 'assets/images/products/perfume.jpg'),
(7, 'Dior Sauvage', 'perfume', 'Fresh and spicy fragrance for men', '150.00', '2024-06-06 12:18:39', 'assets/images/products/perfume.jpg'),
(10, 'Gucci Belt', 'belt', 'Luxury leather belt with signature buckle', '300.00', '2024-06-06 12:18:39', 'assets/images/products/belt.jpg'),
(11, 'Hermes Belt', 'belt', 'High-end leather belt with iconic H buckle', '350.00', '2024-06-06 12:18:39', 'assets/images/products/belt.jpg'),
(12, 'Rolex Submariner', 'watch', 'Luxury dive watch', '8000.00', '2024-06-06 12:18:39', 'assets/images/products/watch-1.jpg'),
(13, 'Apple Watch Series 6', 'watch', 'Smartwatch with fitness tracking', '400.00', '2024-06-06 12:18:39', 'assets/images/products/watch-2.jpg'),
(20, 'Chanel No. 5', 'perfume', 'Classic floral fragrance for women', '200.00', '2024-06-06 12:46:23', 'assets/images/products/perfume-1.jpg'),
(21, 'Dior Sauvage', 'perfume', 'Fresh and spicy fragrance for men', '150.00', '2024-06-06 12:46:23', 'assets/images/products/perfume-2.jpg'),
(22, 'Leather Jacket', 'jacket', 'Genuine leather biker jacket', '250.00', '2024-06-06 12:46:23', 'assets/images/products/jacket-1.jpg'),
(23, 'Denim Jacket', 'jacket', 'Classic blue denim jacket', '100.00', '2024-06-06 12:46:23', 'assets/images/products/jacket-2.jpg'),
(28, 'Nike Cap', 'cap', 'Sports cap with adjustable strap', '25.00', '2024-06-06 12:46:23', 'assets/images/products/cap-1.jpg'),
(29, 'Adidas Cap', 'cap', 'Classic sports cap with logo', '20.00', '2024-06-06 12:46:23', 'assets/images/products/cap-2.jpg'),
(30, 'Jimmy Choo Heels', 'heels', 'Stylish high heels for women', '500.00', '2024-06-06 12:46:23', 'assets/images/products/party-wear-1.jpg'),
(31, 'Christian Louboutin Heels', 'heels', 'Luxury designer heels', '600.00', '2024-06-06 12:46:23', 'assets/images/products/party-wear-2.jpg'),
(32, 'Diamond Necklace', 'jewellery', 'Elegant diamond necklace', '1500.00', '2024-06-06 12:46:23', 'assets/images/products/jewellery-2.jpg'),
(33, 'Gold Earrings', 'jewellery', '18k gold hoop earrings', '700.00', '2024-06-06 12:46:23', 'assets/images/products/jewellery-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
