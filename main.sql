DROP TABLE IF EXISTS gender_pay;
CREATE TABLE gender_pay (
    gender TEXT,
    salary INT,
    occupation TEXT
);

INSERT INTO gender_pay VALUES 
('Male', 1486, 'MANAGEMENT'),
('Male', 2251, 'Chief executives'),
('Male', 1347, 'General and operations managers'),
('Male', 1603, 'Marketing and sales managers'),
('Male', 1451, 'Administrative services managers'),
('Male', 1817, 'Computer and information systems managers'),
('Male', 1732, 'Financial managers'),
('Male', 1495, 'Human resources managers'),
('Male', 1404, 'Purchasing managers'),
('Male', 1006, 'Transportation, storage, and distribution managers'),
('Male', 1585, 'Education administrators'),
('Male', 820, 'Food service managers'),
('Male', 1171, 'Lodging managers'),
('Male', 1422, 'Medical and health services managers'),

('Female', 1139, 'MANAGEMENT'),
('Female', 1836, 'Chief executives'),
('Female', 1002, 'General and operations managers'),
('Female', 1258, 'Marketing and sales managers'),
('Female', 981, 'Administrative services managers'),
('Female', 1563, 'Computer and information systems managers'),
('Female', 1130, 'Financial managers'),
('Female', 1274, 'Human resources managers'),
('Female', 1226, 'Purchasing managers'),
('Female', 749, 'Transportation, storage, and distribution managers'),
('Female', 1252, 'Education administrators'),
('Female', 680, 'Food service managers'),
('Female', 902, 'Lodging managers'),
('Female', 1156, 'Medical and health services managers');

SELECT 
    m.occupation,
    m.salary AS male_salary,
    f.salary AS female_salary,
    ROUND(((m.salary - f.salary) * 100.0 / m.salary), 2) AS pay_gap_percentage
FROM 
    gender_pay m
JOIN 
    gender_pay f 
ON 
    m.occupation = f.occupation 
    AND m.gender = 'Male' 
    AND f.gender = 'Female'
ORDER BY 
    pay_gap_percentage DESC;

.exit

    
