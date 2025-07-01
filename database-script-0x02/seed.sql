-- ========================================
-- USERS
-- ========================================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Hostman', 'alice@host.com', 'hashed_pass_1', '+1234567890', 'host', CURRENT_TIMESTAMP),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Guestman', 'bob@guest.com', 'hashed_pass_2', '+1987654321', 'guest', CURRENT_TIMESTAMP),
('33333333-3333-3333-3333-333333333333', 'Charlie', 'Guestson', 'charlie@guest.com', 'hashed_pass_3', NULL, 'guest', CURRENT_TIMESTAMP);

-- ========================================
-- PROPERTIES
-- ========================================
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 'Cozy Cabin', 'A small cozy cabin in the woods.', 'Asheville, NC', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 'Modern Loft', 'Loft apartment in the city center.', 'New York, NY', 250.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ========================================
-- BOOKINGS
-- ========================================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', '2025-08-01', '2025-08-05', 480.00, 'confirmed', CURRENT_TIMESTAMP),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', '2025-09-10', '2025-09-12', 500.00, 'pending', CURRENT_TIMESTAMP);

-- ========================================
-- PAYMENTS
-- ========================================
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('ppppppp1-pppp-pppp-pppp-ppppppppppp1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 480.00, CURRENT_TIMESTAMP, 'credit_card'),
('ppppppp2-pppp-pppp-pppp-ppppppppppp2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 500.00, CURRENT_TIMESTAMP, 'paypal');

-- ========================================
-- REVIEWS
-- ========================================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
('rrrrrrr1-rrrr-rrrr-rrrr-rrrrrrrrrrr1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 5, 'Wonderful place! Very cozy and clean.', CURRENT_TIMESTAMP),
('rrrrrrr2-rrrr-rrrr-rrrr-rrrrrrrrrrr2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', 4, 'Great location, but a bit noisy at night.', CURRENT_TIMESTAMP);

-- ========================================
-- MESSAGES
-- ========================================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('mmmmmmm1-mmmm-mmmm-mmmm-mmmmmmmmmmm1', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, I’m looking forward to my stay!', CURRENT_TIMESTAMP),
('mmmmmmm2-mmmm-mmmm-mmmm-mmmmmmmmmmm2', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Thanks Bob! Let me know if you have any questions.', CURRENT_TIMESTAMP);
