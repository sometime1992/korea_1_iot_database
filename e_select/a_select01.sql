### select ###

/*
	select: 선택하다
    
    cf) 데이터베이스는 '어떻게'보다 '무엇을' 가지고 오는지가 중요
		> select는 '무엇을' 선택할지 결정하는 키워드
        
	# select문의 기본 구조("작성 순서") #
	1. select 컬럼명(열 목록): 원하는 컬럼(열)을 지정
    2. from 테이블명: 어떤 테이블에서 데이터를 가져올 지 결정
    3. where 조건: 특정 조건에 맞는 데이터만 선택
    4. group by 그룹화 할 컬럼명: 특정 열을 기준으로 그룹화
    5. having 그룹 조건: 그룹화 한 이후의 조건을 지정
    6. order by 정령 컬럼명: 결과를 특정 컬럼의 순서로 정렬
    7. limit 컬럼 수 제한: 반환할 컬럼(행)의 수를 제한
    
    cf) 데이터 베이스 내부 처리 순서
    : select문 처리 순서
    
    from > join > where > group by > having > select > order by > limit
    
*/

use `korea_db`;

# 1. 기본 조회
# : select 컬럼명 from 데이터베이스명.테이블명;

select `name` from `korea_db`.`members`;
# : 정렬을 하지 않을 경우 데이터 입력 순서대로 출력

# cf) 전체 컬럼 조회
# : 컬럼명 작성에 * (전체 선택)을 사용하여 조회
select * from `korea_db`.`members`;


