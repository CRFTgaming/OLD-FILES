// Skalisty Bandit Base

/*

Installation is as usual:

Make a custom folder in your missionfile's main folder named "map" (or use your own if you have one).
Put "skalisty.sqf" into this folder.
Then add the following line as the bottom of your "init.sqf" file:

[] execVM "map\skalisty.sqf";

*/

// By Radec @ radecasylum.com


if (isServer) then {

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13666.307, 2955.3245, 0.06668219], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir -78.184364;
  _this setPos [13666.307, 2955.3245, 0.06668219];
};

_vehicle_13 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13669.099, 2947.7866, -0.00010734168], [], 0, "CAN_COLLIDE"];
  _vehicle_13 = _this;
  _this setDir -129.02211;
  _this setPos [13669.099, 2947.7866, -0.00010734168];
};

_vehicle_15 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13696.221, 2920.6606, -0.11079605], [], 0, "CAN_COLLIDE"];
  _vehicle_15 = _this;
  _this setDir 7.2229266;
  _this setPos [13696.221, 2920.6606, -0.11079605];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13674.697, 2941.5254, -0.10400748], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir -133.9917;
  _this setPos [13674.697, 2941.5254, -0.10400748];
};

_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13680.016, 2935.116, -0.077428475], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir -131.92174;
  _this setPos [13680.016, 2935.116, -0.077428475];
};

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13685.585, 2928.676], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir -131.40048;
  _this setPos [13685.585, 2928.676];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13691.351, 2922.3247, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir -132.62244;
  _this setPos [13691.351, 2922.3247, -2.6702881e-005];
};

_vehicle_26 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13704.768, 2919.7373, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_26 = _this;
  _this setDir 4.0622406;
  _this setPos [13704.768, 2919.7373, 7.6293945e-006];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13713.322, 2919.0156, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setDir 7.2229266;
  _this setPos [13713.322, 2919.0156, 2.2888184e-005];
};

_vehicle_30 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13721.979, 2917.9849, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_30 = _this;
  _this setDir 7.2229266;
  _this setPos [13721.979, 2917.9849, -7.6293945e-005];
};

_vehicle_32 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13730.566, 2918.1768, 0.040010583], [], 0, "CAN_COLLIDE"];
  _vehicle_32 = _this;
  _this setDir -27.957582;
  _this setPos [13730.566, 2918.1768, 0.040010583];
};

_vehicle_35 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13737.826, 2922.5828, 0.023361295], [], 0, "CAN_COLLIDE"];
  _vehicle_35 = _this;
  _this setDir -36.508827;
  _this setPos [13737.826, 2922.5828, 0.023361295];
};

_vehicle_37 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13744.516, 2927.8252, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_37 = _this;
  _this setDir -40.710339;
  _this setPos [13744.516, 2927.8252, 7.6293945e-005];
};

_vehicle_39 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13746.571, 2934.1248, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_39 = _this;
  _this setDir -124.85635;
  _this setPos [13746.571, 2934.1248, 5.3405762e-005];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13741.723, 2941.0886, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir -124.85635;
  _this setPos [13741.723, 2941.0886, 9.1552734e-005];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13736.901, 2948.0403, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir -124.85635;
  _this setPos [13736.901, 2948.0403, 2.6702881e-005];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13732.153, 2954.925, 8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir -124.85635;
  _this setPos [13732.153, 2954.925, 8.7738037e-005];
};

_vehicle_49 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13727.858, 2962.3328, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_49 = _this;
  _this setDir -160.16411;
  _this setPos [13727.858, 2962.3328, 0.00010681152];
};

_vehicle_51 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13720.15, 2965.5725, 9.9182129e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_51 = _this;
  _this setDir -153.32567;
  _this setPos [13720.15, 2965.5725, 9.9182129e-005];
};

_vehicle_53 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13713.336, 2970.1267, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_53 = _this;
  _this setDir -129.56499;
  _this setPos [13713.336, 2970.1267, -5.3405762e-005];
};

_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13676.632, 2961.7893, -0.00019073486], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir -35.005325;
  _this setPos [13676.632, 2961.7893, -0.00019073486];
};

_vehicle_67 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13678.682, 2963.1863, -8.392334e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_67 = _this;
  _this setDir -35.005325;
  _this setPos [13678.682, 2963.1863, -8.392334e-005];
};

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13680.713, 2964.6152, -0.0001449585], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setDir -35.005325;
  _this setPos [13680.713, 2964.6152, -0.0001449585];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13682.752, 2966.0435, -8.392334e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir -35.005325;
  _this setPos [13682.752, 2966.0435, -8.392334e-005];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13684.795, 2967.4893, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir -35.005325;
  _this setPos [13684.795, 2967.4893, 4.5776367e-005];
};

_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13676.012, 2943.2734, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setDir -130.13988;
  _this setPos [13676.012, 2943.2734, -7.6293945e-006];
};

_vehicle_81 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13674.438, 2945.1934, 0.0028648376], [], 0, "CAN_COLLIDE"];
  _vehicle_81 = _this;
  _this setDir -130.13988;
  _this setPos [13674.438, 2945.1934, 0.0028648376];
};

_vehicle_82 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13672.834, 2947.0845, -0.0088195801], [], 0, "CAN_COLLIDE"];
  _vehicle_82 = _this;
  _this setDir -130.13988;
  _this setPos [13672.834, 2947.0845, -0.0088195801];
};

_vehicle_83 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13671.227, 2948.9875, -0.030303955], [], 0, "CAN_COLLIDE"];
  _vehicle_83 = _this;
  _this setDir -130.13988;
  _this setPos [13671.227, 2948.9875, -0.030303955];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13669.606, 2950.8962, -0.036804199], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setDir -130.13988;
  _this setPos [13669.606, 2950.8962, -0.036804199];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13684.194, 2933.8501, 0.048973866], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir -131.12686;
  _this setPos [13684.194, 2933.8501, 0.048973866];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13682.538, 2935.7417, 0.057405353], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setDir -131.2307;
  _this setPos [13682.538, 2935.7417, 0.057405353];
};

_vehicle_107 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13680.897, 2937.6021, 0.0349801], [], 0, "CAN_COLLIDE"];
  _vehicle_107 = _this;
  _this setDir -131.2307;
  _this setPos [13680.897, 2937.6021, 0.0349801];
};

_vehicle_108 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13679.254, 2939.4744, 0.034632105], [], 0, "CAN_COLLIDE"];
  _vehicle_108 = _this;
  _this setDir -131.2307;
  _this setPos [13679.254, 2939.4744, 0.034632105];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13677.596, 2941.3521, 0.05908335], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setDir -131.2307;
  _this setPos [13677.596, 2941.3521, 0.05908335];
};

_vehicle_117 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13670.599, 2957.4717, 0.0061503616], [], 0, "CAN_COLLIDE"];
  _vehicle_117 = _this;
  _this setDir -34.796471;
  _this setPos [13670.599, 2957.4717, 0.0061503616];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13672.635, 2958.8953, 0.0093975589], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setDir -34.796471;
  _this setPos [13672.635, 2958.8953, 0.0093975589];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13674.694, 2960.3333, -0.027479103], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setDir -34.796471;
  _this setPos [13674.694, 2960.3333, -0.027479103];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13689.032, 2928.251, 0.093162999], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setDir -131.2307;
  _this setPos [13689.032, 2928.251, 0.093162999];
};

_vehicle_124 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13687.416, 2930.1121, 0.087594196], [], 0, "CAN_COLLIDE"];
  _vehicle_124 = _this;
  _this setDir -131.2307;
  _this setPos [13687.416, 2930.1121, 0.087594196];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13685.802, 2931.9946, 0.089426756], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir -131.2307;
  _this setPos [13685.802, 2931.9946, 0.089426756];
};

_vehicle_131 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13692.315, 2924.45, 0.076157905], [], 0, "CAN_COLLIDE"];
  _vehicle_131 = _this;
  _this setDir -131.2307;
  _this setPos [13692.315, 2924.45, 0.076157905];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13690.679, 2926.3323, 0.084740497], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir -131.2307;
  _this setPos [13690.679, 2926.3323, 0.084740497];
};

_vehicle_138 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [13690.602, 2935.5034, 0.010675919], [], 0, "CAN_COLLIDE"];
  _vehicle_138 = _this;
  _this setDir -221.94145;
  _this setPos [13690.602, 2935.5034, 0.010675919];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tent_east", [13682.263, 2958.6621, 0.12510577], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir -34.99715;
  _this setPos [13682.263, 2958.6621, 0.12510577];
};

_vehicle_142 = objNull;
if (true) then
{
  _this = createVehicle ["PowGen_Big", [13703.767, 2946.5093, 0.0061895046], [], 0, "CAN_COLLIDE"];
  _vehicle_142 = _this;
  _this setDir 76.419266;
  _this setPos [13703.767, 2946.5093, 0.0061895046];
};

_vehicle_143 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_corner", [13669.229, 2953.9583, 0.039384466], [], 0, "CAN_COLLIDE"];
  _vehicle_143 = _this;
  _this setDir 52.66433;
  _this setPos [13669.229, 2953.9583, 0.039384466];
};

_vehicle_148 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_EnvelopeSmall", [13672.183, 2961.614, 0.12842031], [], 0, "CAN_COLLIDE"];
  _vehicle_148 = _this;
  _this setDir -114.01031;
  _this setPos [13672.183, 2961.614, 0.12842031];
};

_vehicle_152 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13675.359, 2963.7402, -0.0001335144], [], 0, "CAN_COLLIDE"];
  _vehicle_152 = _this;
  _this setDir -46.865639;
  _this setPos [13675.359, 2963.7402, -0.0001335144];
};

_vehicle_170 = objNull;
if (true) then
{
  _this = createVehicle ["Land_cages_EP1", [13677.145, 2948.3545, -7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_170 = _this;
  _this setDir -136.65643;
  _this setPos [13677.145, 2948.3545, -7.2479248e-005];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [13726.112, 2950.5652, -6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setDir -43.473572;
  _this setPos [13726.112, 2950.5652, -6.8664551e-005];
};

_vehicle_214 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [13702.228, 2952.0642, -7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_214 = _this;
  _this setPos [13702.228, 2952.0642, -7.2479248e-005];
};

_vehicle_219 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [13700.944, 2926.2322, -0.042218454], [], 0, "CAN_COLLIDE"];
  _vehicle_219 = _this;
  _this setDir 3.6470118;
  _this setPos [13700.944, 2926.2322, -0.042218454];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["Land_vez", [13669.581, 2951.3369, -0.2276891], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir -84.755104;
  _this setPos [13669.581, 2951.3369, -0.2276891];
};

_vehicle_252 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13698.794, 2922.6643, -0.10156076], [], 0, "CAN_COLLIDE"];
  _vehicle_252 = _this;
  _this setDir -175.23926;
  _this setPos [13698.794, 2922.6643, -0.10156076];
};

_vehicle_253 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13696.276, 2922.8411, -0.08568573], [], 0, "CAN_COLLIDE"];
  _vehicle_253 = _this;
  _this setDir -175.34309;
  _this setPos [13696.276, 2922.8411, -0.08568573];
};

_vehicle_254 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13706.206, 2922.116, -0.045226023], [], 0, "CAN_COLLIDE"];
  _vehicle_254 = _this;
  _this setDir -175.34309;
  _this setPos [13706.206, 2922.116, -0.045226023];
};

_vehicle_255 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13703.737, 2922.2947, -0.063284203], [], 0, "CAN_COLLIDE"];
  _vehicle_255 = _this;
  _this setDir -175.34309;
  _this setPos [13703.737, 2922.2947, -0.063284203];
};

_vehicle_256 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13701.249, 2922.4941, -0.10208457], [], 0, "CAN_COLLIDE"];
  _vehicle_256 = _this;
  _this setDir -175.34309;
  _this setPos [13701.249, 2922.4941, -0.10208457];
};

_vehicle_257 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13711.182, 2921.7368, -0.030154999], [], 0, "CAN_COLLIDE"];
  _vehicle_257 = _this;
  _this setDir -175.34309;
  _this setPos [13711.182, 2921.7368, -0.030154999];
};

_vehicle_258 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13708.675, 2921.9165, -0.0088504208], [], 0, "CAN_COLLIDE"];
  _vehicle_258 = _this;
  _this setDir -175.34309;
  _this setPos [13708.675, 2921.9165, -0.0088504208];
};

_vehicle_269 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13713.681, 2921.5215, -0.037054129], [], 0, "CAN_COLLIDE"];
  _vehicle_269 = _this;
  _this setDir -173.67064;
  _this setPos [13713.681, 2921.5215, -0.037054129];
};

_vehicle_270 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13718.632, 2920.9976, -0.027830822], [], 0, "CAN_COLLIDE"];
  _vehicle_270 = _this;
  _this setDir -173.67064;
  _this setPos [13718.632, 2920.9976, -0.027830822];
};

_vehicle_271 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13716.136, 2921.2498, -0.028530845], [], 0, "CAN_COLLIDE"];
  _vehicle_271 = _this;
  _this setDir -173.67064;
  _this setPos [13716.136, 2921.2498, -0.028530845];
};

_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13721.104, 2920.7319, -0.051577337], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir -172.64375;
  _this setPos [13721.104, 2920.7319, -0.051577337];
};

_vehicle_276 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13726.045, 2920.1208, 0.0010870897], [], 0, "CAN_COLLIDE"];
  _vehicle_276 = _this;
  _this setDir -172.64375;
  _this setPos [13726.045, 2920.1208, 0.0010870897];
};

_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13723.555, 2920.4172, -0.017423363], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir -172.64375;
  _this setPos [13723.555, 2920.4172, -0.017423363];
};

_vehicle_279 = objNull;
if (true) then
{
  _this = createVehicle ["Land_vez", [13697.129, 2923.2424, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_279 = _this;
  _this setDir -153.1537;
  _this setPos [13697.129, 2923.2424, 3.8146973e-006];
};

_vehicle_281 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceShort", [13694.138, 2923.3669, -7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_281 = _this;
  _this setDir 14.135489;
  _this setPos [13694.138, 2923.3669, -7.2479248e-005];
};

_vehicle_290 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13733.706, 2948.7366, -0.14983174], [], 0, "CAN_COLLIDE"];
  _vehicle_290 = _this;
  _this setDir -126.57782;
  _this setPos [13733.706, 2948.7366, -0.14983174];
};

_vehicle_291 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13732.229, 2950.7483, -0.068637155], [], 0, "CAN_COLLIDE"];
  _vehicle_291 = _this;
  _this setDir -126.57782;
  _this setPos [13732.229, 2950.7483, -0.068637155];
};

_vehicle_292 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13730.733, 2952.7339, 0.026796535], [], 0, "CAN_COLLIDE"];
  _vehicle_292 = _this;
  _this setDir -126.57782;
  _this setPos [13730.733, 2952.7339, 0.026796535];
};

_vehicle_293 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13729.225, 2954.7324, 0.048573971], [], 0, "CAN_COLLIDE"];
  _vehicle_293 = _this;
  _this setDir -126.57782;
  _this setPos [13729.225, 2954.7324, 0.048573971];
};

_vehicle_295 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13738.205, 2942.7363, -0.19166808], [], 0, "CAN_COLLIDE"];
  _vehicle_295 = _this;
  _this setDir -126.369;
  _this setPos [13738.205, 2942.7363, -0.19166808];
};

_vehicle_296 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13736.726, 2944.7327, -0.2033907], [], 0, "CAN_COLLIDE"];
  _vehicle_296 = _this;
  _this setDir -126.369;
  _this setPos [13736.726, 2944.7327, -0.2033907];
};

_vehicle_297 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13735.233, 2946.7532, -0.14974377], [], 0, "CAN_COLLIDE"];
  _vehicle_297 = _this;
  _this setDir -126.369;
  _this setPos [13735.233, 2946.7532, -0.14974377];
};

_vehicle_313 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13715.202, 2964.3726, -0.16304667], [], 0, "CAN_COLLIDE"];
  _vehicle_313 = _this;
  _this setDir -132.89618;
  _this setPos [13715.202, 2964.3726, -0.16304667];
};

_vehicle_314 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13713.503, 2966.2207, -0.15558954], [], 0, "CAN_COLLIDE"];
  _vehicle_314 = _this;
  _this setDir -131.80252;
  _this setPos [13713.503, 2966.2207, -0.15558954];
};

_vehicle_315 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13711.866, 2968.0498, -0.15315476], [], 0, "CAN_COLLIDE"];
  _vehicle_315 = _this;
  _this setDir -131.80252;
  _this setPos [13711.866, 2968.0498, -0.15315476];
};

_vehicle_316 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13710.175, 2969.8914, -0.1774331], [], 0, "CAN_COLLIDE"];
  _vehicle_316 = _this;
  _this setDir -131.80252;
  _this setPos [13710.175, 2969.8914, -0.1774331];
};

_vehicle_317 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13708.542, 2971.7068, -0.16359918], [], 0, "CAN_COLLIDE"];
  _vehicle_317 = _this;
  _this setDir -131.80252;
  _this setPos [13708.542, 2971.7068, -0.16359918];
};

_vehicle_318 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13718.543, 2960.6594, -0.1586592], [], 0, "CAN_COLLIDE"];
  _vehicle_318 = _this;
  _this setDir -131.59366;
  _this setPos [13718.543, 2960.6594, -0.1586592];
};

_vehicle_319 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13716.869, 2962.5332, -0.14225872], [], 0, "CAN_COLLIDE"];
  _vehicle_319 = _this;
  _this setDir -131.59366;
  _this setPos [13716.869, 2962.5332, -0.14225872];
};

_vehicle_338 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fort_Watchtower", [13724.098, 2958.2134, 0.020934295], [], 0, "CAN_COLLIDE"];
  _vehicle_338 = _this;
  _this setDir -219.29897;
  _this setPos [13724.098, 2958.2134, 0.020934295];
};

_vehicle_340 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [13707.344, 2925.6372, -0.042238325], [], 0, "CAN_COLLIDE"];
  _vehicle_340 = _this;
  _this setDir 3.7665267;
  _this setPos [13707.344, 2925.6372, -0.042238325];
};

_vehicle_342 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [13714.011, 2925.1526, -0.039208762], [], 0, "CAN_COLLIDE"];
  _vehicle_342 = _this;
  _this setDir 3.2969284;
  _this setPos [13714.011, 2925.1526, -0.039208762];
};

_vehicle_345 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [13681.501, 2946.1084, -0.0079923077], [], 0, "CAN_COLLIDE"];
  _vehicle_345 = _this;
  _this setDir -401.46274;
  _this setPos [13681.501, 2946.1084, -0.0079923077];
};

_vehicle_351 = objNull;
if (true) then
{
  _this = createVehicle ["Land_cages_EP1", [13678.219, 2949.5288, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_351 = _this;
  _this setDir -49.778046;
  _this setPos [13678.219, 2949.5288, -3.8146973e-006];
};

_vehicle_356 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CamoNetB_EAST", [13702.696, 2949.5344, -0.041824345], [], 0, "CAN_COLLIDE"];
  _vehicle_356 = _this;
  _this setDir 165.20192;
  _this setPos [13702.696, 2949.5344, -0.041824345];
};

_vehicle_359 = objNull;
if (true) then
{
  _this = createVehicle ["HeliH", [13737.748, 2931.9517, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_359 = _this;
  _this setPos [13737.748, 2931.9517, 3.0517578e-005];
};

_vehicle_362 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [13696.554, 2974.1372, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_362 = _this;
  _this setDir 114.15025;
  _this setPos [13696.554, 2974.1372, 1.9073486e-005];
};

_vehicle_363 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [13673.165, 2949.781, -0.0023481953], [], 0, "CAN_COLLIDE"];
  _vehicle_363 = _this;
  _this setDir 44.916321;
  _this setPos [13673.165, 2949.781, -0.0023481953];
};

_vehicle_368 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [13679.002, 2950.0227, -0.043227818], [], 0, "CAN_COLLIDE"];
  _vehicle_368 = _this;
  _this setDir 24.230116;
  _this setPos [13679.002, 2950.0227, -0.043227818];
};

_vehicle_375 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [13685.107, 2943.7908, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_375 = _this;
  _this setPos [13685.107, 2943.7908, -1.5258789e-005];
};

_vehicle_376 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_sand", [13686.317, 2944.8401, -0.00012969971], [], 0, "CAN_COLLIDE"];
  _vehicle_376 = _this;
  _this setPos [13686.317, 2944.8401, -0.00012969971];
};

_vehicle_377 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_empty", [13685.574, 2944.2656, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_377 = _this;
  _this setPos [13685.574, 2944.2656, 1.5258789e-005];
};

_vehicle_379 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [13685.883, 2943.6929, -6.4849854e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_379 = _this;
  _this setPos [13685.883, 2943.6929, -6.4849854e-005];
};

_vehicle_381 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_water", [13686.196, 2944.251, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_381 = _this;
  _this setPos [13686.196, 2944.251, -1.5258789e-005];
};

_vehicle_384 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Reservoir_EP1", [13689.803, 2940.8684, 0.028165242], [], 0, "CAN_COLLIDE"];
  _vehicle_384 = _this;
  _this setDir -181.33723;
  _this setPos [13689.803, 2940.8684, 0.028165242];
};

_vehicle_386 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall", [13731.559, 2948.0889, -0.073263146], [], 0, "CAN_COLLIDE"];
  _vehicle_386 = _this;
  _this setDir -127.46015;
  _this setPos [13731.559, 2948.0889, -0.073263146];
};

_vehicle_388 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_stack_EP1", [13685.93, 2937.1279, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_388 = _this;
  _this setDir 57.124435;
  _this setPos [13685.93, 2937.1279, -1.1444092e-005];
};

_vehicle_392 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [13686.752, 2937.8203, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_392 = _this;
  _this setDir -22.786787;
  _this setPos [13686.752, 2937.8203, -1.5258789e-005];
};

_vehicle_393 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wheel_cart_EP1", [13683.096, 2941.5405, -0.01988731], [], 0, "CAN_COLLIDE"];
  _vehicle_393 = _this;
  _this setDir -483.6745;
  _this setPos [13683.096, 2941.5405, -0.01988731];
};

_vehicle_396 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [13698.284, 2946.1824], [], 0, "CAN_COLLIDE"];
  _vehicle_396 = _this;
  _this setDir -130.51144;
  _this setPos [13698.284, 2946.1824];
};

_vehicle_398 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_TyreHeapEP1", [13692.798, 2926.9775, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_398 = _this;
  _this setDir 9.1257095;
  _this setPos [13692.798, 2926.9775, 3.8146973e-006];
};

_vehicle_403 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [13691.701, 2929.0181, 8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_403 = _this;
  _this setPos [13691.701, 2929.0181, 8.7738037e-005];
};

_vehicle_405 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [13692.077, 2930.6531, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_405 = _this;
  _this setDir -47.845001;
  _this setPos [13692.077, 2930.6531, 2.2888184e-005];
};

_vehicle_416 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [13693.506, 2931.3684, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_416 = _this;
  _this setPos [13693.506, 2931.3684, 2.6702881e-005];
};

_vehicle_418 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [13694.657, 2933.0391, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_418 = _this;
  _this setDir 39.37878;
  _this setPos [13694.657, 2933.0391, 7.6293945e-006];
};

_vehicle_420 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Barrel_empty", [13695.147, 2931.5496, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_420 = _this;
  _this setPos [13695.147, 2931.5496, 2.6702881e-005];
};

_vehicle_421 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bag_EP1", [13688.642, 2939.3809, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_421 = _this;
  _this setDir -236.78116;
  _this setPos [13688.642, 2939.3809, -5.3405762e-005];
};

_vehicle_423 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bag_EP1", [13689.151, 2939.9802, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_423 = _this;
  _this setPos [13689.151, 2939.9802, -5.3405762e-005];
};

_vehicle_428 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bucket_EP1", [13696.039, 2972.967, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_428 = _this;
  _this setDir 73.705971;
  _this setPos [13696.039, 2972.967, 1.1444092e-005];
};

_vehicle_430 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bucket_EP1", [13695.565, 2972.7463, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_430 = _this;
  _this setDir 144.88164;
  _this setPos [13695.565, 2972.7463, -3.0517578e-005];
};

_vehicle_433 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [13694.986, 2973.3704, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_433 = _this;
  _this setDir 115.06184;
  _this setPos [13694.986, 2973.3704, 7.6293945e-006];
};

_vehicle_436 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [13697.804, 2924.4026, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_436 = _this;
  _this setDir -12.074517;
  _this setPos [13697.804, 2924.4026, -1.9073486e-005];
};

_vehicle_438 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [13697.115, 2925.2402, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_438 = _this;
  _this setDir 118.54749;
  _this setPos [13697.115, 2925.2402, -1.9073486e-005];
};

_vehicle_440 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Bucket_EP1", [13696.818, 2924.2712, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_440 = _this;
  _this setPos [13696.818, 2924.2712, 2.2888184e-005];
};

_vehicle_441 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [13676.48, 2947.3149, -0.00012969971], [], 0, "CAN_COLLIDE"];
  _vehicle_441 = _this;
  _this setPos [13676.48, 2947.3149, -0.00012969971];
};

_vehicle_447 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [13673.507, 2957.0291, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_447 = _this;
  _this setDir 44.466965;
  _this setPos [13673.507, 2957.0291, -3.8146973e-006];
};

_vehicle_454 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13707.621, 2976.2954, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_454 = _this;
  _this setDir -135.15903;
  _this setPos [13707.621, 2976.2954, -1.5258789e-005];
};

_vehicle_455 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13706.889, 2973.6465, -0.12945938], [], 0, "CAN_COLLIDE"];
  _vehicle_455 = _this;
  _this setDir -131.80252;
  _this setPos [13706.889, 2973.6465, -0.12945938];
};

_vehicle_456 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13705.249, 2975.4915, -0.11861038], [], 0, "CAN_COLLIDE"];
  _vehicle_456 = _this;
  _this setDir -131.80252;
  _this setPos [13705.249, 2975.4915, -0.11861038];
};

_vehicle_457 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13703.566, 2977.3306, -0.097780436], [], 0, "CAN_COLLIDE"];
  _vehicle_457 = _this;
  _this setDir -132.75528;
  _this setPos [13703.566, 2977.3306, -0.097780436];
};

_vehicle_465 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13686.771, 2968.9331, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_465 = _this;
  _this setDir -35.005325;
  _this setPos [13686.771, 2968.9331, 3.8146973e-005];
};

_vehicle_466 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13688.81, 2970.3613, 0.056976318], [], 0, "CAN_COLLIDE"];
  _vehicle_466 = _this;
  _this setDir -35.005325;
  _this setPos [13688.81, 2970.3613, 0.056976318];
};

_vehicle_467 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13690.858, 2971.8257, 0.080496274], [], 0, "CAN_COLLIDE"];
  _vehicle_467 = _this;
  _this setDir -34.694466;
  _this setPos [13690.858, 2971.8257, 0.080496274];
};

_vehicle_471 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13692.874, 2973.2151, 0.10706414], [], 0, "CAN_COLLIDE"];
  _vehicle_471 = _this;
  _this setDir -35.005325;
  _this setPos [13692.874, 2973.2151, 0.10706414];
};

_vehicle_472 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13694.896, 2974.6646, 0.10584947], [], 0, "CAN_COLLIDE"];
  _vehicle_472 = _this;
  _this setDir -35.005325;
  _this setPos [13694.896, 2974.6646, 0.10584947];
};

_vehicle_481 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13693.902, 2976.6807, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_481 = _this;
  _this setDir -136.713;
  _this setPos [13693.902, 2976.6807, 9.1552734e-005];
};

_vehicle_483 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13702.903, 2980.866, 8.392334e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_483 = _this;
  _this setDir -26.051394;
  _this setPos [13702.903, 2980.866, 8.392334e-005];
};

_vehicle_486 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13701.863, 2979.1213, -0.11223429], [], 0, "CAN_COLLIDE"];
  _vehicle_486 = _this;
  _this setDir -134.83524;
  _this setPos [13701.863, 2979.1213, -0.11223429];
};

_vehicle_489 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_RazorWire", [13688.782, 2972.5027, 0.022398066], [], 0, "CAN_COLLIDE"];
  _vehicle_489 = _this;
  _this setDir -395.24628;
  _this setPos [13688.782, 2972.5027, 0.022398066];
};

_vehicle_492 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BarGate2", [13699.146, 2978.5059, 4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_492 = _this;
  _this setDir -759.15253;
  _this setPos [13699.146, 2978.5059, 4.9591064e-005];
};

_vehicle_495 = objNull;
if (true) then
{
  _this = createVehicle ["BRDMWreck", [13708.046, 2980.8953, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_495 = _this;
  _this setDir -202.47322;
  _this setPos [13708.046, 2980.8953, -3.8146973e-006];
};

_vehicle_499 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13669.396, 2958.9485, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_499 = _this;
  _this setDir 44.465122;
  _this setPos [13669.396, 2958.9485, 7.6293945e-005];
};

_vehicle_501 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13669.34, 2958.9502, 0.48925841], [], 0, "CAN_COLLIDE"];
  _vehicle_501 = _this;
  _this setDir -135.32343;
  _this setPos [13669.34, 2958.9502, 0.48925841];
};

_vehicle_504 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13728.437, 2919.4958, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_504 = _this;
  _this setDir -145.51598;
  _this setPos [13728.437, 2919.4958, -7.6293945e-006];
};

_vehicle_506 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [13724.812, 2915.5354, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_506 = _this;
  _this setDir 2.5806644;
  _this setPos [13724.812, 2915.5354, 3.4332275e-005];
};

_vehicle_508 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [13733.876, 2917.311], [], 0, "CAN_COLLIDE"];
  _vehicle_508 = _this;
  _this setDir -209.3098;
  _this setPos [13733.876, 2917.311];
};

_vehicle_510 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [13741.584, 2922.512, 5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_510 = _this;
  _this setDir -217.55524;
  _this setPos [13741.584, 2922.512, 5.7220459e-005];
};

_vehicle_512 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [13748.627, 2928.5325, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_512 = _this;
  _this setDir -44.502159;
  _this setPos [13748.627, 2928.5325, -3.4332275e-005];
};

_vehicle_514 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [13748.029, 2936.9106, 6.4849854e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_514 = _this;
  _this setDir 52.166077;
  _this setPos [13748.029, 2936.9106, 6.4849854e-005];
};

_vehicle_516 = objNull;
if (true) then
{
  _this = createVehicle ["Hhedgehog_concrete", [13742.553, 2944.3638, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_516 = _this;
  _this setDir -123.39435;
  _this setPos [13742.553, 2944.3638, -2.2888184e-005];
};

_vehicle_518 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13751.813, 2933.7957, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_518 = _this;
  _this setDir 9.8325214;
  _this setPos [13751.813, 2933.7957, -1.1444092e-005];
};

_vehicle_519 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_DZ", [13751.931, 2932.3354, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_519 = _this;
  _this setDir -93.419701;
  _this setPos [13751.931, 2932.3354, 3.0517578e-005];
};

_vehicle_520 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_DZ", [13727.849, 2918.7437, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_520 = _this;
  _this setDir -103.58824;
  _this setPos [13727.849, 2918.7437, 2.2888184e-005];
};

_vehicle_524 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13740.022, 2940.8643, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_524 = _this;
  _this setDir -140.12086;
  _this setPos [13740.022, 2940.8643, 3.0517578e-005];
};

_vehicle_527 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13719.011, 2916.1067, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_527 = _this;
  _this setDir 9.8325214;
  _this setPos [13719.011, 2916.1067, 5.3405762e-005];
};

_vehicle_529 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13739.475, 2948.552, 0.00016021729], [], 0, "CAN_COLLIDE"];
  _vehicle_529 = _this;
  _this setDir -34.646946;
  _this setPos [13739.475, 2948.552, 0.00016021729];
};

_vehicle_531 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13745.971, 2931.7373, 9.9182129e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_531 = _this;
  _this setDir -21.506964;
  _this setPos [13745.971, 2931.7373, 9.9182129e-005];
};

_vehicle_533 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13738.036, 2949.2039, 0.0001449585], [], 0, "CAN_COLLIDE"];
  _vehicle_533 = _this;
  _this setDir 73.369232;
  _this setPos [13738.036, 2949.2039, 0.0001449585];
};

_vehicle_535 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13739.309, 2940.104, 4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_535 = _this;
  _this setDir 22.142937;
  _this setPos [13739.309, 2940.104, 4.9591064e-005];
};

_vehicle_537 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13702.427, 2982.5129, 7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_537 = _this;
  _this setDir 9.8325214;
  _this setPos [13702.427, 2982.5129, 7.2479248e-005];
};

_vehicle_539 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13694.112, 2982.5239, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_539 = _this;
  _this setDir 9.8325214;
  _this setPos [13694.112, 2982.5239, -7.6293945e-006];
};

_vehicle_541 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [13698.077, 2984.6289, 8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_541 = _this;
  _this setDir -34.927105;
  _this setPos [13698.077, 2984.6289, 8.7738037e-005];
};

_vehicle_543 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog", [13692.494, 2978.4907, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_543 = _this;
  _this setDir -34.927105;
  _this setPos [13692.494, 2978.4907, 1.5258789e-005];
};

_vehicle_545 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_bagfence_round", [13697.03, 2982.9507, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_545 = _this;
  _this setDir -24.238428;
  _this setPos [13697.03, 2982.9507, 1.9073486e-005];
};

_vehicle_548 = objNull;
if (true) then
{
  _this = createVehicle ["Concrete_Wall_EP1", [13696.922, 2976.0918, 0.052351173], [], 0, "CAN_COLLIDE"];
  _vehicle_548 = _this;
  _this setDir -34.872158;
  _this setPos [13696.922, 2976.0918, 0.052351173];
};

_vehicle_550 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceEnd", [13701.271, 2980.5208, 9.5367432e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_550 = _this;
  _this setDir -43.317501;
  _this setPos [13701.271, 2980.5208, 9.5367432e-005];
};

_vehicle_552 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceEnd", [13696.747, 2976.717, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_552 = _this;
  _this setDir -217.80855;
  _this setPos [13696.747, 2976.717, -2.6702881e-005];
};

_vehicle_557 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13719.88, 2914.7842, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_557 = _this;
  _this setDir -76.396172;
  _this setPos [13719.88, 2914.7842, 3.8146973e-005];
};

_vehicle_559 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13693.852, 2922.4436, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_559 = _this;
  _this setDir 29.646936;
  _this setPos [13693.852, 2922.4436, 7.6293945e-006];
};

_vehicle_561 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13668.633, 2956.4602, -0.00019073486], [], 0, "CAN_COLLIDE"];
  _vehicle_561 = _this;
  _this setDir 9.8325214;
  _this setPos [13668.633, 2956.4602, -0.00019073486];
};

_vehicle_563 = objNull;
if (true) then
{
  _this = createVehicle ["Hedgehog_EP1", [13667.661, 2952.7837, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_563 = _this;
  _this setDir -111.53041;
  _this setPos [13667.661, 2952.7837, 7.6293945e-006];
};

_vehicle_565 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [13697.496, 2947.0684, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_565 = _this;
  _this setDir -181.9149;
  _this setPos [13697.496, 2947.0684, -3.4332275e-005];
};

_vehicle_567 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [13697.931, 2946.4763, 0.97212023], [], 0, "CAN_COLLIDE"];
  _vehicle_567 = _this;
  _this setDir -30.797201;
  _this setPos [13697.931, 2946.4763, 0.97212023];
};

_vehicle_571 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [13708.051, 2954.9648, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_571 = _this;
  _this setDir 18.987732;
  _this setPos [13708.051, 2954.9648, -3.8146973e-006];
};

_vehicle_573 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [13707.114, 2955.625], [], 0, "CAN_COLLIDE"];
  _vehicle_573 = _this;
  _this setDir -56.088387;
  _this setPos [13707.114, 2955.625];
};

_vehicle_580 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [13707.712, 2952.9756], [], 0, "CAN_COLLIDE"];
  _vehicle_580 = _this;
  _this setPos [13707.712, 2952.9756];
};

_vehicle_582 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [13708.099, 2950.0076, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_582 = _this;
  _this setDir -177.13828;
  _this setPos [13708.099, 2950.0076, 7.6293945e-006];
};

_vehicle_584 = objNull;
if (true) then
{
  _this = createVehicle ["FoldChair", [13706.873, 2951.0398], [], 0, "CAN_COLLIDE"];
  _vehicle_584 = _this;
  _this setDir -139.19479;
  _this setPos [13706.873, 2951.0398];
};

_vehicle_586 = objNull;
if (true) then
{
  _this = createVehicle ["FoldTable", [13707.897, 2951.5598], [], 0, "CAN_COLLIDE"];
  _vehicle_586 = _this;
  _this setDir -99.869766;
  _this setPos [13707.897, 2951.5598];
};

_vehicle_587 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [13708.309, 2946.6711, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_587 = _this;
  _this setPos [13708.309, 2946.6711, 2.6702881e-005];
};

_vehicle_589 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [13708.964, 2946.8877, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_589 = _this;
  _this setDir 40.394436;
  _this setPos [13708.964, 2946.8877, 7.6293945e-006];
};

_vehicle_591 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [13708.367, 2947.2751], [], 0, "CAN_COLLIDE"];
  _vehicle_591 = _this;
  _this setDir 128.76482;
  _this setPos [13708.367, 2947.2751];
};

_vehicle_594 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Sack_EP1", [13709.211, 2947.5847, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_594 = _this;
  _this setPos [13709.211, 2947.5847, -0.00010681152];
};

_vehicle_596 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Sack_EP1", [13708.561, 2947.8862, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_596 = _this;
  _this setDir -140.03925;
  _this setPos [13708.561, 2947.8862, -9.1552734e-005];
};

_vehicle_598 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Shelf_EP1", [13708.857, 2948.979, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_598 = _this;
  _this setDir -160.65137;
  _this setPos [13708.857, 2948.979, -7.6293945e-005];
};

_vehicle_601 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wicker_basket_EP1", [13696.206, 2946.9602, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_601 = _this;
  _this setPos [13696.206, 2946.9602, -1.1444092e-005];
};

_vehicle_603 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wicker_basket_EP1", [13696.615, 2947.6572, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_603 = _this;
  _this setDir 70.995872;
  _this setPos [13696.615, 2947.6572, -1.1444092e-005];
};

_vehicle_606 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [13695.515, 2947.8962, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_606 = _this;
  _this setDir -22.786787;
  _this setPos [13695.515, 2947.8962, -1.9073486e-005];
};

_vehicle_609 = objNull;
if (true) then
{
  _this = createVehicle ["Laptop_EP1", [13707.852, 2951.3682, 0.79789132], [], 0, "CAN_COLLIDE"];
  _vehicle_609 = _this;
  _this setDir 94.296501;
  _this setPos [13707.852, 2951.3682, 0.79789132];
};

_vehicle_615 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13687.863, 2959.7056, -8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_615 = _this;
  _this setDir -153.61156;
  _this setPos [13687.863, 2959.7056, -8.7738037e-005];
};

_vehicle_617 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13685.145, 2963.6243, -0.00012588501], [], 0, "CAN_COLLIDE"];
  _vehicle_617 = _this;
  _this setDir -312.88547;
  _this setPos [13685.145, 2963.6243, -0.00012588501];
};

_vehicle_619 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13676.767, 2957.7302, -9.5367432e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_619 = _this;
  _this setDir -240.56789;
  _this setPos [13676.767, 2957.7302, -9.5367432e-005];
};

_vehicle_621 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13679.361, 2953.8113, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_621 = _this;
  _this setDir -253.94101;
  _this setPos [13679.361, 2953.8113, -5.7220459e-005];
};

_vehicle_623 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13683.73, 2938.8733, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_623 = _this;
  _this setDir -163.88496;
  _this setPos [13683.73, 2938.8733, 3.0517578e-005];
};

_vehicle_625 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13693.857, 2929.0872, -4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_625 = _this;
  _this setDir -153.61156;
  _this setPos [13693.857, 2929.0872, -4.9591064e-005];
};

_vehicle_627 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13716.126, 2930.0977, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_627 = _this;
  _this setDir -195.06827;
  _this setPos [13716.126, 2930.0977, -1.1444092e-005];
};

_vehicle_629 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13736.713, 2942.0444, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_629 = _this;
  _this setDir -24.443344;
  _this setPos [13736.713, 2942.0444, -3.0517578e-005];
};

_vehicle_632 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [13721.371, 2934.0203, -0.031181829], [], 0, "CAN_COLLIDE"];
  _vehicle_632 = _this;
  _this setDir -255.72078;
  _this setPos [13721.371, 2934.0203, -0.031181829];
};

_vehicle_634 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast", [13714.754, 2944.1211, 0.01193474], [], 0, "CAN_COLLIDE"];
  _vehicle_634 = _this;
  _this setDir -693.0423;
  _this setPos [13714.754, 2944.1211, 0.01193474];
};

_vehicle_639 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13716.855, 2938.5842, -0.01195173], [], 0, "CAN_COLLIDE"];
  _vehicle_639 = _this;
  _this setDir -217.56409;
  _this setPos [13716.855, 2938.5842, -0.01195173];
};

_vehicle_644 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [13717.77, 2923.1807, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_644 = _this;
  _this setDir 0.46677357;
  _this setPos [13717.77, 2923.1807, 3.8146973e-006];
};

_vehicle_646 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [13717.49, 2925.0925, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_646 = _this;
  _this setDir -23.322365;
  _this setPos [13717.49, 2925.0925, 1.9073486e-005];
};

_vehicle_651 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [13720.558, 2924.0225, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_651 = _this;
  _this setPos [13720.558, 2924.0225, 3.8146973e-005];
};

_vehicle_653 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13727.075, 2921.9976, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_653 = _this;
  _this setDir 127.96764;
  _this setPos [13727.075, 2921.9976, 1.1444092e-005];
};

_vehicle_656 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [13716.53, 2959.4287, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_656 = _this;
  _this setDir -232.45013;
  _this setPos [13716.53, 2959.4287, 1.5258789e-005];
};

_vehicle_664 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [13723.377, 2921.9438, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_664 = _this;
  _this setDir 27.815676;
  _this setPos [13723.377, 2921.9438, 5.3405762e-005];
};

_vehicle_681 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [13698.91, 2975.1926, -8.392334e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_681 = _this;
  _this setDir 50.171623;
  _this setPos [13698.91, 2975.1926, -8.392334e-005];
};

_vehicle_682 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [13702.853, 2975.3389, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_682 = _this;
  _this setDir -39.704784;
  _this setPos [13702.853, 2975.3389, 2.6702881e-005];
};

_vehicle_683 = objNull;
if (true) then
{
  _this = createVehicle ["Land_psi_bouda", [13734.31, 2944.9412, -0.010235707], [], 0, "CAN_COLLIDE"];
  _vehicle_683 = _this;
  _this setDir -209.66107;
  _this setPos [13734.31, 2944.9412, -0.010235707];
};

_vehicle_684 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [13686.517, 2966.6277, 4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_684 = _this;
  _this setDir -35.888794;
  _this setPos [13686.517, 2966.6277, 4.9591064e-005];
};

_vehicle_686 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [13687.488, 2967.3496, -9.5367432e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_686 = _this;
  _this setDir -35.888794;
  _this setPos [13687.488, 2967.3496, -9.5367432e-005];
};

_vehicle_688 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [13688.771, 2968.6289, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_688 = _this;
  _this setPos [13688.771, 2968.6289, -3.4332275e-005];
};

_vehicle_689 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [13692.689, 2970.4636, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_689 = _this;
  _this setDir -36.364296;
  _this setPos [13692.689, 2970.4636, -1.9073486e-005];
};

_vehicle_693 = objNull;
if (true) then
{
  _this = createVehicle ["Land_cages_EP1", [13706.343, 2971.6038, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_693 = _this;
  _this setDir -98.168243;
  _this setPos [13706.343, 2971.6038, 3.4332275e-005];
};

_vehicle_695 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [13714.629, 2962.9202, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_695 = _this;
  _this setDir -209.23958;
  _this setPos [13714.629, 2962.9202, 3.4332275e-005];
};

_vehicle_697 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [13714.073, 2959.7708, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_697 = _this;
  _this setDir -25.616266;
  _this setPos [13714.073, 2959.7708, 1.1444092e-005];
};

_vehicle_700 = objNull;
if (true) then
{
  _this = createVehicle ["PowerGenerator", [13729.064, 2952.3696, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_700 = _this;
  _this setDir -200.90346;
  _this setPos [13729.064, 2952.3696, -2.6702881e-005];
};

_vehicle_702 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13697.808, 2975.053, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_702 = _this;
  _this setDir -75.431366;
  _this setPos [13697.808, 2975.053, 3.8146973e-005];
};

_vehicle_704 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13704.124, 2975.2009, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_704 = _this;
  _this setDir -320.41171;
  _this setPos [13704.124, 2975.2009, 2.6702881e-005];
};

_vehicle_706 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [13695.336, 2976.4343, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_706 = _this;
  _this setDir -530.26282;
  _this setPos [13695.336, 2976.4343, 1.5258789e-005];
};

_vehicle_713 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13702.825, 2971.3982, 4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_713 = _this;
  _this setDir 23.173006;
  _this setPos [13702.825, 2971.3982, 4.196167e-005];
};

_vehicle_714 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13697.882, 2971.304, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_714 = _this;
  _this setDir 0.24294204;
  _this setPos [13697.882, 2971.304, 5.3405762e-005];
};

_vehicle_725 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Backpackheap", [13685.291, 2965.0818, 0.00011825562], [], 0, "CAN_COLLIDE"];
  _vehicle_725 = _this;
  _this setPos [13685.291, 2965.0818, 0.00011825562];
};

_vehicle_738 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [13708.218, 2968.083, 4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_738 = _this;
  _this setDir -218.71654;
  _this setPos [13708.218, 2968.083, 4.9591064e-005];
};

_vehicle_741 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [13680.097, 2966.8628, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_741 = _this;
  _this setDir -16.712297;
  _this setPos [13680.097, 2966.8628, -4.5776367e-005];
};

_vehicle_753 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [13711.911, 2965.3013, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_753 = _this;
  _this setDir -33.695885;
  _this setPos [13711.911, 2965.3013, 4.5776367e-005];
};

_vehicle_755 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [13713.122, 2963.8264, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_755 = _this;
  _this setDir -60.740807;
  _this setPos [13713.122, 2963.8264, 3.8146973e-005];
};

//_vehicle_758 = objNull;
//if (true) then
//{
//  _this = createVehicle ["Mi17_DZ", [13736.501, 2930.0166, -0.28099787], [], 0, "CAN_COLLIDE"];
//  _vehicle_758 = _this;
//  _this setDir 32.488255;
//  _this setPos [13736.501, 2930.0166, -0.28099787];
//};

_vehicle_760 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceShort", [13735.105, 2939.99, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_760 = _this;
  _this setDir -42.992195;
  _this setPos [13735.105, 2939.99, -2.2888184e-005];
};

_vehicle_762 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceShort", [13731.979, 2936.7146, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_762 = _this;
  _this setDir -56.874763;
  _this setPos [13731.979, 2936.7146, -1.5258789e-005];
};

_vehicle_764 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceShort", [13729.461, 2933.1108, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_764 = _this;
  _this setDir -60.138718;
  _this setPos [13729.461, 2933.1108, -7.6293945e-006];
};

_vehicle_766 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceShort", [13727.413, 2929.2114, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_766 = _this;
  _this setDir -64.565742;
  _this setPos [13727.413, 2929.2114, 6.1035156e-005];
};

_vehicle_768 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceShort", [13726.134, 2925.5254, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_768 = _this;
  _this setDir -74.946609;
  _this setPos [13726.134, 2925.5254, 2.2888184e-005];
};


};
