-- select문 50개 만들기

-- SELECT * FROM `테이블명` 
-- -> 전체 데이터 조회,전체 컬럼조회

-- 쿼리1 : `customers`테이블
SELECT * FROM `customers`;

-- SELECT 컬럼명(들) FROM `테이블명` 
-- -> 전체 데이터 조회, 일부컬럼 조회 


-- 쿼리2 : `customers`테이블
SELECT `first_name`,`company`,`business_phone` FROM `customers`;

-- SELECT * FROM `테이블명` WHERE 컬럼명 = 값
-- -> 데이터 중 조건에 맞는 데이터 조회


-- 쿼리3 : `customers`테이블
SELECT `first_name`,`company`,`business_phone` FROM `customers` WHERE `first_name`="Daniel";
-- 쿼리4 : `customers`테이블
SELECT `first_name`,`company`,`business_phone` FROM `customers` WHERE `company`="Company K";

-- 참고) 선택시 컬럼명에 AS를 사용하고 뒤에 문자를 적으면
--     선택결과 출력시 해당 이름으로 결과가 출력된다!

-- 쿼리5 : `customers`테이블
SELECT `first_name` AS "이름",`company` AS "회사명",`business_phone` AS "연락처" FROM `customers` WHERE `company`="Company K";

-- 참고2) 만약 두개 이상의 컬럼을 합쳐서 출력할 경우
--     CONCAT(컬럼명1,컬럼명2,...) 
--     CONCAT함수를 사용한다!

-- 쿼리6 : `customers`테이블
SELECT CONCAT(`first_name`," ",`last_name`) AS "이름",`company` AS "회사명",`business_phone` AS "연락처" FROM `customers` WHERE `company`="Company K";

-- <<<< 검색에 사용되는 select >>>>>>>
-- -> LIKE 키워드! + "%"
-- -> %를 뒤에 붙여 like검색하면 어떤문자로 시작하는 모든 것 검색

-- 쿼리7 : `customers`테이블
SELECT CONCAT(`first_name`," ",`last_name`) AS "이름", `company` AS "회사명", `business_phone` AS "연락처" FROM `customers` WHERE `first_name` LIKE "A%";

-- -> %를 앞에 붙여서 like검색하면 어떤문자로 끝나는 모든 것 검색
-- 쿼리8 : `customers`테이블
SELECT CONCAT(`first_name`," ",`last_name`) AS "이름", `company` AS "회사명", `business_phone` AS "연락처" FROM `customers` WHERE `first_name` LIKE "%n";


-- -> %를 앞뒤에 붙여서 like검색하면 어떤문자가 들어간 모든 것 검색
-- 쿼리9 : `customers`테이블
SELECT CONCAT(`first_name`," ",`last_name`) AS "이름", `company` AS "회사명", `business_phone` AS "연락처" FROM `customers` WHERE `first_name` LIKE "%ar%";

-- -> 언더바(_)를 사용할 개수만큼 글자수의 제한을 주어 
-- 그것이상의 모든 것 검색

-- 쿼리10 : `customers`테이블
SELECT CONCAT(`first_name`," ",`last_name`) AS "이름", `company` AS "회사명", `business_phone` AS "연락처" FROM `customers` WHERE `first_name` LIKE "a_______%";