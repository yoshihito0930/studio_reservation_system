USE studio_reservation_system;

-- CLIENTテーブルにサンプルデータを挿入
INSERT INTO CLIENT (name, contact_email, contact_phone) VALUES
('Studio A', 'contact@studioa.com', '1234567890'),
('Dance Studio B', 'info@dancestudiob.com', '9876543210');

-- USERテーブルにサンプルデータを挿入
INSERT INTO USER (name, email, phone) VALUES
('John Doe', 'john@example.com', '1112223333'),
('Jane Smith', 'jane@example.com', '4445556666');

-- ADMINテーブルにサンプルデータを挿入
INSERT INTO ADMIN (client_id, name, email, password_hash, role) VALUES
(1, 'Admin User', 'admin@studioa.com', 'hashed_password_here', 'admin'),
(2, 'Manager User', 'manager@dancestudiob.com', 'hashed_password_here', 'staff');

-- STUDIOテーブルにサンプルデータを挿入
INSERT INTO STUDIO (client_id, name, location, capacity, hourly_rate) VALUES
(1, 'Room 1', 'First Floor', 20, 50.00),
(1, 'Room 2', 'Second Floor', 15, 40.00),
(2, 'Dance Hall A', 'Main Building', 30, 60.00);

-- CALENDAR_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO CALENDAR_SETTINGS (client_id, settings) VALUES
(1, '{"workingDays": [1,2,3,4,5], "workingHours": {"start": "09:00", "end": "18:00"}}'),
(2, '{"workingDays": [1,2,3,4,5,6], "workingHours": {"start": "10:00", "end": "20:00"}}');

-- RESERVATIONテーブルにサンプルデータを挿入
INSERT INTO RESERVATION (studio_id, user_id, admin_id, start_time, end_time, status, notes) VALUES
(1, 1, 1, '2024-07-05 10:00:00', '2024-07-05 12:00:00', 'confirmed', 'Regular session'),
(2, 2, 2, '2024-07-06 14:00:00', '2024-07-06 16:00:00', 'pending', 'New client');

-- SPECIAL_BUSINESS_DAYテーブルにサンプルデータを挿入
INSERT INTO SPECIAL_BUSINESS_DAY (client_id, admin_id, day_name, day_date, custom_start_time, custom_end_time, notes) VALUES
(1, 1, 'Summer Event', '2024-07-20', '08:00:00', '22:00:00', 'Extended hours for summer event');

-- ADMIN_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO ADMIN_SETTINGS (admin_id, app_settings, notification_preferences) VALUES
(1, '{"theme": "dark", "language": "en"}', '{"email": true, "push": false}'),
(2, '{"theme": "light", "language": "ja"}', '{"email": true, "push": true}');
