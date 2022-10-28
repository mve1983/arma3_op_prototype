_group = creategroup [west, false];
[t1, t2, t3, t4, t5, t6, t7, t8, t9, t10] joinSilent _group;

{
    unassignvehicle _x
} forEach [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10];

[t1, t2, t3, t4, t5, t6, t7, t8, t9, t10] allowGetin false;

_wpSAD = _group addWaypoint [getmarkerPos "lager", 0];
_wpSAD setwaypointType "SAD";
_wpSAD setwaypointStatements ["true", ""];