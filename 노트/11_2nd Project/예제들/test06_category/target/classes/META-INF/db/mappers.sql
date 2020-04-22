-- 멤버 (login)
select * from member where mID='a' and mPW='1';
-- 멤버 (getMember)
select * from member where mID='a';

-- 좋아요 Clike (getClike)
select * from clike where mid='a';
-- 좋아요 Clike (insertClike)
insert into clike values (clike_sq.nextval, 'a',3);