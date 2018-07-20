/*  1.
    부서번호를 가지는 부서 중 사원수가 5명이상인 부서를 조회
    단, 부서번호는 오름차순으로 조회
*/
select department_id, count(department_id) 사원수
  from employees
 where department_id is not null
 group by department_id
 having count(department_id)>=5
 order by department_id asc;
 
 /* 2.
    Employees 테이블에서 입사한달(hire_date)별로 인원수를 조회
 */
 select e.*
   from(
        select to_char(hire_date, 'mm') as 월, count(to_char(hire_date, 'mm')) as 직원수
          from employees
        group by to_char(hire_date, 'mm')
        order by to_char(hire_date, 'mm') asc
      )e;

 /* 3.
    커미션(commission_pct)별 직원수를 조회
    커미션은 아래실행결과처럼 0.2, 0.25는 모두
    .2로, 0.3, 0.35는 .3 형태로 출력되어야 한다.
    단, 커미션 정보가 없는 직원들도 있는데 커미션이 없는 직원 그룹은
    ‘<커미션 없음>’이 출력되게 한다
 */
select nvl(to_char(trunc(commission_pct, 1)), '<커미션없음>') as 커미션
       , count(trunc(nvl(commission_pct, 0), 1)) as 직원수
  from employees
 group by trunc(commission_pct, 1);
 
 /* 4
    사원들의 id와 이름(first_name), 전화번호와 지역을 id 오름차순순으로 출력하는 코드를 작성
    이때 지역은 전화번호의 앞자리가 515인 경우는 '서울'
    590인 경우는 '대전'   650인 경우는 '부산'
    603인 경우는 '광주'   그 외의 경우 '기타' 라 출력된다.
*/


/* 5
   사원테이블에서 직원( job_id)별 최대급여(salary)를 받는 사원을 조회하시오
*/


/* 6
    EMPLOYEES 테이블에서 급여를 많이 받는 순서대로 조회했을 때 결과처럼 6번째부터
    10번째까지 5명의 last_name, first_name, salary를 조회하는 sql문장을 작성
*/
