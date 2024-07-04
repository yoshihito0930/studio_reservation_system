USE studio_reservation_system;

-- CLIENTテーブルにサンプルデータを挿入
INSERT INTO CLIENT (name, contact_email, contact_phone) VALUES
('Studio A', 'contact@studioa.com', '1234567890'),
('Dance Studio B', 'info@dancestudiob.com', '9876543210');

-- STUDIOテーブルにサンプルデータを挿入
INSERT INTO STUDIO (client_id, name, location, capacity, hourly_rate) VALUES
(1, 'Room 1', 'First Floor', 20, 50.00),
(1, 'Room 2', 'Second Floor', 15, 40.00),
(2, 'Dance Hall A', 'Main Building', 30, 60.00);

-- CALENDAR_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO CALENDAR_SETTINGS (client_id, settings) VALUES
(1, '{"workingDays": [1,2,3,4,5], "workingHours": {"start": "09:00", "end": "18:00"}}'),
(2, '{"workingDays": [1,2,3,4,5,6], "workingHours": {"start": "10:00", "end": "20:00"}}');

-- CALENDAR_DISPLAY_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO CALENDAR_DISPLAY_SETTINGS (client_id, display_start_time, display_end_time, default_view, custom_views, show_weekends, time_slot_intervals) VALUES
(1, '09:00:00', '18:00:00', 'week', '{"custom1": "3days", "custom2": "2weeks"}', true, '{"morning": 30, "afternoon": 60}'),
(2, '10:00:00', '20:00:00', 'month', '{"custom1": "4days", "custom2": "10days"}', false, '{"all": 45}');

-- HOLIDAY_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO HOLIDAY_SETTINGS (client_id, holiday_name, holiday_date, is_business_day, custom_start_time, custom_end_time, repeats_yearly) VALUES
(1, 'New Year''s Day', '2024-01-01', false, NULL, NULL, true),
(2, 'Summer Festival', '2024-07-15', true, '12:00:00', '22:00:00', true);

-- USERテーブルにサンプルデータを挿入
INSERT INTO USER (name, email, phone) VALUES
('John Doe', 'john@example.com', '1112223333'),
('Jane Smith', 'jane@example.com', '4445556666');

-- ADMINテーブルにサンプルデータを挿入
INSERT INTO ADMIN (client_id, name, email, password_hash, role) VALUES
(1, 'Admin User', 'admin@studioa.com', 'hashed_password_here', 'admin'),
(2, 'Manager User', 'manager@dancestudiob.com', 'hashed_password_here', 'staff');

-- SPECIAL_BUSINESS_DAYテーブルにサンプルデータを挿入
INSERT INTO SPECIAL_BUSINESS_DAY (client_id, admin_id, day_name, day_date, custom_start_time, custom_end_time, notes) VALUES
(1, 1, 'Summer Event', '2024-07-20', '08:00:00', '22:00:00', 'Extended hours for summer event'),
(2, 2, 'Dance Workshop', '2024-08-15', '09:00:00', '18:00:00', 'Annual dance workshop');

-- FORM_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO FORM_SETTINGS (client_id, form_structure, validation_rules) VALUES
(1, '{"fields": [{"name": "attendees", "type": "number"}, {"name": "equipment", "type": "checkbox"}]}', '{"attendees": {"min": 1, "max": 20}}'),
(2, '{"fields": [{"name": "dance_style", "type": "select"}, {"name": "experience", "type": "radio"}]}', '{"dance_style": {"required": true}}');

-- RESERVATION_POLICYテーブルにサンプルデータを挿入
INSERT INTO RESERVATION_POLICY (client_id, use_provisional, days_before_auto_confirm, cancellation_policy) VALUES
(1, true, 3, '{"freeCancellation": 7, "partialRefund": 3}'),
(2, false, NULL, '{"freeCancellation": 14, "noRefund": 7}');

-- RESERVATIONテーブルにサンプルデータを挿入
INSERT INTO RESERVATION (studio_id, user_id, admin_id, start_time, end_time, status, reservation_type, confirmed_at, cancelled_at, notes) VALUES
(1, 1, 1, '2024-07-05 10:00:00', '2024-07-05 12:00:00', 'confirmed', 'confirmed', '2024-07-03 09:00:00', NULL, 'Regular session'),
(2, 2, 2, '2024-07-06 14:00:00', '2024-07-06 16:00:00', 'pending', 'provisional', NULL, NULL, 'New client');

-- RESERVATION_DATAテーブルにサンプルデータを挿入
INSERT INTO RESERVATION_DATA (reservation_id, field_name, field_value) VALUES
(1, 'attendees', '5'),
(1, 'equipment', 'projector,microphone'),
(2, 'dance_style', 'hip-hop'),
(2, 'experience', 'intermediate');

-- ADMIN_SESSIONテーブルにサンプルデータを挿入
INSERT INTO ADMIN_SESSION (admin_id, token, expires_at) VALUES
(1, 'sample_token_123', '2024-07-10 23:59:59'),
(2, 'sample_token_456', '2024-07-11 23:59:59');

-- ADMIN_ACTION_LOGテーブルにサンプルデータを挿入
INSERT INTO ADMIN_ACTION_LOG (admin_id, reservation_id, action_type, action_details) VALUES
(1, 1, 'confirm_reservation', '{"previous_status": "pending"}'),
(2, 2, 'create_reservation', '{"studio": "Room 2"}');

-- ADMIN_NOTIFICATIONテーブルにサンプルデータを挿入
INSERT INTO ADMIN_NOTIFICATION (admin_id, type, message, is_read) VALUES
(1, 'new_reservation', 'New reservation request for Room 1', false),
(2, 'cancellation_request', 'Cancellation request for Dance Hall A', true);

-- ADMIN_DEVICEテーブルにサンプルデータを挿入
INSERT INTO ADMIN_DEVICE (admin_id, device_token, device_type, last_active) VALUES
(1, 'fcm_token_123', 'ios', '2024-07-04 10:30:00'),
(2, 'fcm_token_456', 'android', '2024-07-04 11:45:00');

-- ADMIN_SETTINGSテーブルにサンプルデータを挿入
INSERT INTO ADMIN_SETTINGS (admin_id, app_settings, notification_preferences) VALUES
(1, '{"theme": "dark", "language": "en"}', '{"email": true, "push": false}'),
(2, '{"theme": "light", "language": "ja"}', '{"email": true, "push": true}');