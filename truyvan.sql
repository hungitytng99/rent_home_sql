
-- tat cac ca nha cho thue tai phuong kham thien
select * from address where address.commune like "%Kham Thien%";

-- nha o ha noi
select host.name,host.phone, concat(province,"/",
district,"/",commune,"/",street,"/",no_home) as 'Address of home'
from  host,home,address
where host.id_host = home.id_home
and home.id_addr = address.id_addr
and province like "%Ha Noi%";

-- thong tin ve chu nha ma cho thue tat ca cac loai nha
select host.name,host.phone
from host,home,address
where host.id_host = home.id_host
group by(host.id_host)
having count(distinct type) = (select count(distinct home.type) from home);
select * from home;

-- tat ca nhung nguoi danh gia nha co ma so 85, so sao ho danh gia
select name,phone,star
from renter,renter_vote,vote
where renter.id_renter = renter_vote.id_renter
and vote.id_vote = renter_vote.id_vote
and vote.id_home = 85;

-- chua cho thue, kham thien ha noi,
select host.name,host.phone,fee,
concat(province,"/",district,"/",commune,"/",street,"/",no_home) as 'Address of home'
from host,home,address
where host.id_host = home.id_host
and home.id_addr = address.id_addr
and province like "%ha Noi%"
and commune like"%Kham Thien%"
and home.status =1;

-- 5 phong tro gia thap nhat tai hCM
select host.name,host.phone,fee, concat(province,"/",
district,"/",commune,"/",street,"/",no_home) as 'Address of home'
from host,home,address
where host.id_host = home.id_home
and home.id_addr = address.id_addr
and province like "%Ho Chi Minh%"
and type = "Nha tro"
order by(fee) limit 5;

-- nha co it nhat 2 phong ngu, 1 dieu hoa, danh gia tren 3
use rent_home;
select host.name,host.phone, home1.fee,sum(star)/count(*) as star
from host, home as home1 ,vote, home_detail,detail 
where host.id_host = home1.id_host 
and home1.id_home = vote.id_home 
and home1.id_home = home_detail.id_home 
and home_detail.id_detail = detail.id_detail 
and detail.bedroom >= 2 and detail.aircondition >=1
and home1.status = 0
and (select sum(star)/count(*) from vote where home1.id_home = vote.id_home) >=3
group by(home1.id_home);


-- chu nha va nha cung ow ha noi,van phong,gia duoi 5 trieu
select host.name,host.phone,fee,
concat(province,"/",
district,"/",commune,"/",street,"/",no_home) as 'Address of home'
from host,home as home1,address,vote
where host.id_host = home1.id_home
and host.id_addr = address.id_addr
and province like "%ha Noi%"
and home1.type = "Van phong"
and home1.fee <=5000000
and home1.status = 0
and home1.id_home in (select home2.id_home from home as home2,address
where home2.id_home = home1.id_home
and home2.id_addr = address.id_addr
and province like "%ha Noi%")
group by(home1.id_home)
order by fee;

-- biet thu, duoi 28tr,80% nguoi danh gia tren 4 sao, chua cho thue
select host.name,host.phone, home1.fee,sum(star)/count(*) as star
from host, home as home1 ,vote, home_detail,detail 
where host.id_host = home1.id_host 
and home1.id_home = vote.id_home 
and home1.id_home = home_detail.id_home 
and home_detail.id_detail = detail.id_detail 
and home1.status = 0
and home1.type = "Biet thu"
and home1.fee < 28000000
and (select count(*) from vote where home1.id_home = vote.id_home and vote.star>=4)
/(select count(*) from vote where home1.id_home = vote.id_home) >=0.8
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


