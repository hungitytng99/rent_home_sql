

-- 1 nha o ha noi
use rent_home;

select users.name,users.phone, concat(province," /",
district," /",commune," /",street," /",no_home) as 'Address of home'
from  users,home,address
where users.id_user = home.id_host
and home.id_addr = address.id_addr
and province like "%Ha Noi%";

-- 2 thong tin ve chu nha ma cho thue 3 loai nha tro len
select users.name,users.phone,count(distinct type)
from users,home,address
where users.id_user = home.id_host
group by(users.id_user)
having count(distinct type)>3;

-- 3 tat ca nhung nguoi danh gia nha co ma so 85, so sao ho danh gia
select name,phone,star
from users,renter_vote,vote
where users.id_user = renter_vote.id_user
and vote.id_vote = renter_vote.id_vote
and vote.id_home = 85;

-- 4 chua cho thue, kham thien ha noi,
select users.name,users.phone,fee,
concat(province," /",district," /",commune," /",street," /",no_home) as 'Address of home'
from users,home,address
where users.id_user = home.id_host
and home.id_addr = address.id_addr
and province like "%ha Noi%"
and commune like"%Kham Thien%"
and home.status =0;

-- 5, 5 phong tro gia thap nhat tai HCM
select users.name,users.phone,fee, concat(province," /",
district," /",commune," /",street," /",no_home) as 'Address of home'
from users,home,address
where users.id_user = home.id_home
and home.id_addr = address.id_addr
and province like "%Ho Chi Minh%"
and type = "Nha tro"
order by(fee) asc limit 5;

-- 6 nha co it nhat 2 phong ngu, 1 dieu hoa, danh gia tren 3
use rent_home;
select users.name,users.phone,type, home.fee,sum(star)/count(*) as star
from users, home as home ,vote,detail 
where users.id_user = home.id_host 
and home.id_home = vote.id_home
and home.id_home = detail.id_home 
and detail.bedroom >= 2 and detail.air_conditional >=1
and home.status = 0
and (select sum(star)/count(*) from vote where home.id_home = vote.id_home) >=3
group by(home.id_home)
order by (fee) asc;


-- 7 chu nha va nha cung ow ha noi,van phong,gia duoi 9 trieu
select users.name,users.phone,fee,
concat(province,"/",
district,"/",commune,"/",street,"/",no_home) as 'Address of home'
from users,home as home1,address,vote
where users.id_user = home1.id_home
and users.id_addr = address.id_addr
and province like "%ha Noi%"
and home1.type = "Van phong"
and home1.fee <=9000000
and home1.status = 0
and home1.id_home in (select home2.id_home from home as home2,address
where home2.id_home = home1.id_home
and home2.id_addr = address.id_addr
and province like "%ha Noi%")
group by(home1.id_home)
order by fee;

-- 8 biet thu, duoi 28tr,60% nguoi danh gia tren 3 sao, chua cho thue
select users.name,users.phone, home1.fee,sum(star)/count(*) as star
from users, home as home1 ,vote,detail 
where users.id_user = home1.id_host
and home1.id_home = vote.id_home 
and home1.id_home = detail.id_home 
and home1.status = 0
and home1.type = "Biet thu"
and home1.fee < 28000000
and (select count(*) from vote where home1.id_home = vote.id_home and vote.star > 3)
/(select count(*) from vote where home1.id_home = vote.id_home) >=0.6
group by(home1.id_home);

-- tong so nha da cho thue va chua cho thue tai ha noi
delimiter //
drop procedure if exists total_home;//
create procedure total_home(in province_input varchar(50), out sum int)
begin 
	select count(*) into sum from home, address where home.id_addr = address.id_addr
    and home.status = 0
    and address.province like (concat("%",province_input,"%"));
end//
call total_home("Ha Noi",@sum);//
select count(*) as 'Tong so nha da thue tai HN',@sum as 'tong nha chua thue tai HN' from home, address where home.id_addr = address.id_addr
and address.province like ("%Ha Noi%");//
delimiter ;


