/* 12.1 */
start Transaction;
insert into transaction values (1003, curdate(), 123, 'D', 50);
insert into transaction values (1004, curdate()), 789, 'D', 50);
update account set avail_balance = 500 - 50, last_activity_date = current_timestamp() where account_id = 123;
update account set avail_balance = 75 + 50, last_activity_date = current_timestamp() where account_id = 789; 
commit;
