_parajumpers = [s1, s2, s3, s4, s5, s6, s7, s8];

hint "Bereitmachen";
sleep 3;
hint "absprung in 3";
sleep 1;
hint "absprung in 2";
sleep 1;
hint "absprung in 1";
sleep 1;
hint "";

{
    _x allowdamage false
} forEach _parajumpers;
{
    _x setCaptive true
} forEach _parajumpers;
{
    moveOut _x;
    sleep 0.3
} forEach _parajumpers;

sleep 5;

{
    _x allowdamage true
} forEach _parajumpers;

sleep 60;
{
    _x setCaptive false
} forEach _parajumpers;