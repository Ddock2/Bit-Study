/*  1.
    �μ���ȣ�� ������ �μ� �� ������� 5���̻��� �μ��� ��ȸ
    ��, �μ���ȣ�� ������������ ��ȸ
*/
select department_id, count(department_id) �����
  from employees
 where department_id is not null
 group by department_id
 having count(department_id)>=5
 order by department_id asc;
 
 /* 2.
    Employees ���̺��� �Ի��Ѵ�(hire_date)���� �ο����� ��ȸ
 */
 select e.*
   from(
        select to_char(hire_date, 'mm') as ��, count(to_char(hire_date, 'mm')) as ������
          from employees
        group by to_char(hire_date, 'mm')
        order by to_char(hire_date, 'mm') asc
      )e;

 /* 3.
    Ŀ�̼�(commission_pct)�� �������� ��ȸ
    Ŀ�̼��� �Ʒ�������ó�� 0.2, 0.25�� ���
    .2��, 0.3, 0.35�� .3 ���·� ��µǾ�� �Ѵ�.
    ��, Ŀ�̼� ������ ���� �����鵵 �ִµ� Ŀ�̼��� ���� ���� �׷���
    ��<Ŀ�̼� ����>���� ��µǰ� �Ѵ�
 */
select nvl(to_char(trunc(commission_pct, 1)), '<Ŀ�̼Ǿ���>') as Ŀ�̼�
       , count(trunc(nvl(commission_pct, 0), 1)) as ������
  from employees
 group by trunc(commission_pct, 1);
 
 /* 4
    ������� id�� �̸�(first_name), ��ȭ��ȣ�� ������ id �������������� ����ϴ� �ڵ带 �ۼ�
    �̶� ������ ��ȭ��ȣ�� ���ڸ��� 515�� ���� '����'
    590�� ���� '����'   650�� ���� '�λ�'
    603�� ���� '����'   �� ���� ��� '��Ÿ' �� ��µȴ�.
*/


/* 5
   ������̺��� ����( job_id)�� �ִ�޿�(salary)�� �޴� ����� ��ȸ�Ͻÿ�
*/


/* 6
    EMPLOYEES ���̺��� �޿��� ���� �޴� ������� ��ȸ���� �� ���ó�� 6��°����
    10��°���� 5���� last_name, first_name, salary�� ��ȸ�ϴ� sql������ �ۼ�
*/
