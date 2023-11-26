INSERT INTO ml_msa.customer (customer_id, customer_name, customer_email, customer_phone, customer_addr_st1, customer_addr_st2, customer_addr_city, customer_addr_state, customer_addr_zip, customer_addr_country) VALUES
(1, 'John Doe', 'johndoe@example.com', '123-456-7890', '123 Main Street', 'Apt 101', 'Anytown', 'AnyState', '12345', 'CountryA'),
(2, 'Alice Smith', 'alice.smith@example.com', '987-654-3210', '456 Elm Street', '', 'Othertown', 'OtherState', '54321', 'CountryB'),
(3, 'Bob Johnson', 'bob.johnson@example.com', '111-222-3333', '789 Oak Avenue', 'Suite 201', 'Sometown', 'SomeState', '67890', 'CountryC'),
(4, 'Emily Davis', 'emily.davis@example.com', '444-555-6666', '321 Pine Road', '', 'Anycity', 'Anystate', '13579', 'CountryD'),
(5, 'Michael Wilson', 'michael.wilson@example.com', '777-888-9999', '888 Maple Blvd', '', 'Yourtown', 'Yourstate', '97531', 'CountryE');


INSERT INTO ml_msa.status_code (status_code, status_description, status_type) VALUES
(1, 'Order Created', 'Order'),
(2, 'Order Processing', 'Order'),
(3, 'Order Shipped', 'Order'),
(4, 'Order Delivered', 'Order'),
(5, 'Order Cancelled', 'Order'),
(6, 'Shipment Created', 'Shipment'),
(7, 'Shipment Processing', 'Shipment'),
(8, 'Shipment Dispatched', 'Shipment'),
(9, 'Shipment In Transit', 'Shipment'),
(10, 'Shipment Delivered', 'Shipment'),
(11, 'Shipment Returned', 'Shipment');

INSERT INTO ml_msa.item (item_id, item_name, item_price, item_descr, item_catalog_pic, item_stock_qty) VALUES
(1, 'Laptop', 899.99, 'High-performance laptop with Intel Core i7 processor and 16GB RAM.', 'laptop_image.jpg', 15),
(2, 'Smartphone', 699.50, 'Latest smartphone model with advanced camera and 128GB storage.', 'phone_image.jpg', 20),
(3, 'Smart TV', 1299.00, '4K Ultra HD Smart TV with HDR and built-in streaming apps.', 'tv_image.jpg', 10),
(4, 'Wireless Headphones', 149.95, 'Over-ear wireless headphones with noise-cancelling feature.', 'headphones_image.jpg', 30),
(5, 'Tablet', 399.00, '10-inch tablet with long-lasting battery and multitouch display.', 'tablet_image.jpg', 25),
(6, 'Gaming Console', 499.99, 'Powerful gaming console with 4K gaming capabilities.', 'console_image.jpg', 12),
(7, 'Bluetooth Speaker', 79.99, 'Portable Bluetooth speaker with waterproof design.', 'speaker_image.jpg', 18),
(8, 'Digital Camera', 599.00, 'Mirrorless digital camera with interchangeable lenses.', 'camera_image.jpg', 8),
(9, 'Smartwatch', 249.50, 'Smartwatch with health monitoring features and customizable straps.', 'watch_image.jpg', 22),
(10, 'Desktop Computer', 1199.00, 'Desktop PC with high-speed processor and dedicated graphics card.', 'desktop_image.jpg', 10);


INSERT INTO courier (courier_id, courier_name) VALUES
(1, 'Courier 1'),
(2, 'Courier 2'),
(3, 'Courier 3');

INSERT INTO ml_msa.`order` (order_id, customer_id, order_timestamp) VALUES
(1, 1, '2023-11-27 22:10:00'),
(2, 2, '2023-11-27 22:11:00'),
(3, 3, '2023-11-27 22:12:00'),
(4, 4, '2023-11-27 22:13:00'),
(5, 5, '2023-11-27 22:14:00');

INSERT INTO ml_msa.order_item (order_id, item_id, item_qty) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 3),
(3, 5, 3),
(3, 6, 3),
(4, 7, 2),
(4, 8, 1),
(5, 9, 2),
(6, 10, 1);

INSERT INTO ml_msa.shipment_request (request_id, order_id, courier_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2);

INSERT INTO ml_msa.order_status (order_id, order_status_timestamp, order_status_code) VALUES
(1, '2023-11-01 08:00:00', 1),
(1, '2023-11-06 13:00:00', 2),
(1, '2023-11-11 18:00:00', 3),
(1, '2023-11-16 23:00:00', 4),
(2, '2023-11-02 09:30:00', 1),
(2, '2023-11-07 14:30:00', 2),
(2, '2023-11-12 19:30:00', 3),
(2, '2023-11-17 00:30:00', 4),
(3, '2023-11-03 10:45:00', 1),
(3, '2023-11-08 15:45:00', 2),
(3, '2023-11-13 20:45:00', 3),
(3, '2023-11-18 01:45:00', 4),
(4, '2023-11-04 11:20:00', 1),
(4, '2023-11-09 16:20:00', 2),
(4, '2023-11-14 21:20:00', 3),
(4, '2023-11-19 02:20:00', 4),
(5, '2023-11-05 12:15:00', 1),
(5, '2023-11-10 17:15:00', 2),
(5, '2023-11-15 22:15:00', 3),
(5, '2023-11-20 03:15:00', 4);

INSERT INTO ml_msa.shipment_request_status (request_id, shipment_status_timestamp, shipment_status_code) VALUES
(1, '2023-11-01 08:00:00', 6),
(1, '2023-11-02 09:30:00', 7),
(1, '2023-11-03 10:45:00', 9),
(1, '2023-11-04 11:20:00', 10),
(2, '2023-11-05 12:15:00', 6),
(2, '2023-11-06 13:00:00', 7),
(2, '2023-11-07 14:30:00', 9),
(2, '2023-11-08 15:45:00', 10),
(3, '2023-11-09 16:20:00', 6),
(3, '2023-11-10 17:15:00', 7),
(3, '2023-11-11 18:00:00', 9),
(3, '2023-11-12 19:30:00', 10),
(4, '2023-11-13 20:45:00', 6),
(4, '2023-11-14 21:20:00', 7),
(4, '2023-11-15 22:15:00', 9),
(4, '2023-11-16 23:00:00', 10),
(5, '2023-11-17 00:30:00', 6),
(5, '2023-11-18 01:45:00', 7),
(5, '2023-11-19 02:20:00', 9),
(5, '2023-11-20 03:15:00', 10);




