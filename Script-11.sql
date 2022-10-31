/* 6.1 
 * A union B = {L, M, N, O, P, Q, R, S, T}
 * A union all B = {L, M, N, O, P, P, Q, R, S, T}
 * A intersect B = {P}
 * A except B = {L, M, N, O}
 */
/* 6.2 */
use sakila;
select a.first_name, a.last_name
from actor a
where a.last_name like 'L%'
union all 
select c.first_name, c.last_name 
from customer c
where c.last_name like 'L%';
/* 6.3 */
use sakila;
select a.first_name, a.last_name
from actor a
where a.last_name like 'L%'
union all 
select c.first_name, c.last_name 
from customer c
where c.last_name like 'L%' order by last_name asc;