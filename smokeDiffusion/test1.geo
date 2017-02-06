Point(1) = {0, 0, 0, 0.1};
Extrude {2, 0, 0} {
  Point{1};
Layers{40};
Recombine;

}
Extrude {0, 1, 0} {
  Line{1};
Layers{20};
Recombine;

}


Line Loop(6) = {2, -4, -1, 3};
Plane Surface(7) = {6};


Extrude {0, 0, 1} {
  Surface{5};
Layers{20};
Recombine;
}
Physical Surface("inlet") = {28};
Physical Surface("outlet") = {20};
Physical Surface("sideWalls") = {24, 29, 16, 5};
Physical Volume("internal") = {1};
