-- 테스트를 위한 DML 작성

-- 멤버 데이터 삽입
INSERT INTO member (email, nickname, password, profile_img, height, weight, privacy_height, privacy_weight, gender, status, role , provider)
VALUES
    ('user@test.com', '테스트', '$2a$10$wMXNvfMMkAmIaOHy7NbE4OTqKz0F12tNe1xulO06oHdcA40p4c8Te', '/path/to/profile.jpg', 170.5, 65.2, TRUE, FALSE, 'MALE', 'ACTIVE', 'USER', 'CHALKAK'),
    ('admin@test.com', '어드민', '$2a$10$wMXNvfMMkAmIaOHy7NbE4OTqKz0F12tNe1xulO06oHdcA40p4c8Te', null, 162.0, 55.7, FALSE, TRUE, 'FEMALE', 'ACTIVE', 'USER', 'CHALKAK')
;

-- 정적 태그 데이터 삽입
-- STYLE 태그 데이터 삽입
INSERT INTO style_tag (category, keyword_img, keyword)
VALUES
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EC%95%84%EB%A9%94%EC%B9%B4%EC%A7%80.png', '아메카지'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EC%9B%90%EB%A7%88%EC%9D%BC%EC%9B%A8%EC%96%B4.png', '원마일웨어'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EB%AF%B8%EB%8B%88%EB%A9%80.png', '미니멀'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EB%8C%84%EB%94%94.png', '댄디'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EB%B9%84%EC%A6%88%EB%8B%88%EC%8A%A4%EC%BA%90%EC%A3%BC%EC%96%BC.png', '비즈니스캐주얼'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EB%B9%88%ED%8B%B0%EC%A7%80.png', '빈티지'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EC%8A%A4%ED%8A%B8%EB%A6%BF.png', '스트릿'),
    ('STYLE', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EC%8A%A4%ED%8F%AC%ED%8B%B0.png', '스포티');

-- TPO 태그 데이터 삽입
INSERT INTO style_tag (category, keyword_img, keyword)
VALUES
    ('TPO', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EB%8D%B0%EC%9D%B4%ED%8A%B8%EB%A3%A9.png', '데이트'),
    ('TPO', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%ED%95%98%EA%B0%9D%EB%A3%A9.png', '하객'),
    ('TPO', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EC%97%AC%ED%96%89%EB%A3%A9.png', '여행'),
    ('TPO', 'https://spring-photo-bucket.s3.ap-south-1.amazonaws.com/%EC%B6%9C%EA%B7%BC%EB%A3%A9.png', '출근');

-- SEASON 태그 데이터 삽입
INSERT INTO style_tag (category, keyword_img, keyword)
VALUES
    ('SEASON', '', '봄'),
    ('SEASON', '', '여름'),
    ('SEASON', '', '가을'),
    ('SEASON', '', '겨울');

-- WEATHER 태그 데이터 삽입
INSERT INTO style_tag (category, keyword_img, keyword)
VALUES
    ('WEATHER', '', '맑음'),
    ('WEATHER', '', '흐림'),
    ('WEATHER', '', '비'),
    ('WEATHER', '', '눈');

-- 조인 테이블 데이터 삽입
INSERT INTO member_style_tag (member_id, style_tag_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 10),
    (2, 2)
;

-- 해시 태그 정보 삽입
INSERT INTO hash_tag (keyword)
VALUES ('휴가'),
       ('여름'),
       ('뷰티'),
       ('커피'),
       ('패션')
;

-- 포스트 정보 삽입
INSERT INTO post (member_id, content, view_count, like_count, privacy_height, privacy_weight, location, status)
VALUES (1, '첫 번째 포스트 내용', 0, 0, true, true, '경기도 부천시 소사구', 'PUBLIC')
;

-- 포스트와 스타일 태그 조인 테이블 삽입
INSERT INTO post_style_tag (post_id, style_tag_id)
VALUES (1, 1);

-- 포스트와 해시 태그 조인 테이블 삽입
INSERT INTO post_hash_tag (post_id, hash_tag_id)
VALUES (1, 1);

INSERT INTO ADMINISTRATIVE_GEO_INFO (name, latitude, longitude)
VALUES ('강원강릉시', 128.8784972, 37.74913611),
       ('강원고성군',	128.4701639 ,	38.37796111),
       ('강원동해시',	129.1166333 ,	37.52193056),
       ('강원삼척시',	129.1674889 ,	37.44708611),
       ('강원속초시',	128.5941667 ,	38.204275),
       ('강원양구군',	127.9922444 ,	38.10729167),
       ('강원양양군',	128.6213556 ,	38.07283333),
       ('강원영월군',	128.4640194 ,	37.18086111),
       ('강원원주시',	127.9220556 ,	37.33908333),
       ('강원인제군',	128.1726972 ,	38.06697222),
       ('강원정선군',	128.6630861 ,	37.37780833),
       ('강원철원군',	127.3157333 ,	38.14405556),
       ('강원춘천시',	127.7323111 ,	37.87854167),
       ('강원평창군',	128.3923528 ,	37.36791667),
       ('강원홍천군',	127.8908417 ,	37.69442222),
       ('강원화천군',	127.7103556 ,	38.10340833),
       ('강원횡성군',	127.9872222 ,	37.48895833);