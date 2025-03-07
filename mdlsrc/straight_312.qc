$modelname "BEE2/props_clean/window_frame_system/straight_312.mdl"
$staticprop
$bodygroup "body"
{
	studio "window_frame_system_312.smd"
}
$surfaceprop "default"
$contents "solid"
$illumposition 0 0 16
$cdmaterials "models\props_ingame\"
$cbox 0 0 0 0 0 0
$bbox -2.25 -2.25 -0.25 2.25 2.25 312.25
$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0
$sequence "ref" {
	"anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
$collisionmodel "straight_312_physics.smd"
{
	$mass 312
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone 
}
