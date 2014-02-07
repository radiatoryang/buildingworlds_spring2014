//Maya ASCII 2014 scene
//Name: maya_practice2.ma
//Last modified: Thu, Feb 06, 2014 08:22:52 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.665229205310126 -7.5383749954203623 33.140987277394231 ;
	setAttr ".r" -type "double3" 12.261647270391558 -327.79999999992316 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 38.012010474888605;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -31.622508807795878 4.0060741395874313 -0.5079196274693345 ;
	setAttr ".s" -type "double3" 1.8134002593221634 1 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  3.2231784 -1.256725 -5.2470465 
		0.48044655 -1.351326 0.0053343847 4.5705695 0.10556127 0.062803715 2.2920125 0.61034757 
		0.33633322;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" 0.23635834589687832 0 0.2796771961833393 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[132]" -type "float3" 0.32920775 1.3196257 -0.65623271 ;
	setAttr ".pt[133]" -type "float3" 0.32920775 1.3196257 -0.65623271 ;
	setAttr ".pt[134]" -type "float3" 0.32920775 1.3196257 -0.65623271 ;
	setAttr ".pt[135]" -type "float3" 0.32920775 1.303658 -0.65623271 ;
	setAttr ".pt[152]" -type "float3" 0.32920775 0.71618241 -0.65623271 ;
	setAttr ".pt[153]" -type "float3" 0.32920775 0.71618241 -0.65623271 ;
	setAttr ".pt[154]" -type "float3" 0.32920775 0.71618241 -0.65623271 ;
	setAttr ".pt[155]" -type "float3" 0.32920775 0.70021456 -0.65623271 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 7.8700498040891187;
	setAttr ".h" 8.0121482791748626;
	setAttr ".d" 8.162279174003622;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	setAttr ".r" 6.4057758652546983;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[212]" "f[214]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.23635834589687832 0 0.2796771961833393 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.65039837 1.5030754 5.9075022 ;
	setAttr ".rs" 37215;
	setAttr ".lt" -type "double3" 7.7715611723760958e-016 0 -1.0366304908696728 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3214061842850064 1.0020835399627686 5.2084157902385151 ;
	setAttr ".cbx" -type "double3" 2.0206094397613192 2.0040671825408936 6.6065886456157124 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 354 ".tk";
	setAttr ".tk[0]" -type "float3" 0.10301726 0.024573617 0.011457698 ;
	setAttr ".tk[1]" -type "float3" 0.14192019 0.024573617 0.011457698 ;
	setAttr ".tk[2]" -type "float3" 0.20251338 0.024573617 0.011457698 ;
	setAttr ".tk[4]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.90333784 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.81611812 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.74690002 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.70245934 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.68714607 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.70245934 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.74690002 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.81611812 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.90333784 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.20251338 0.024573617 0.011457698 ;
	setAttr ".tk[17]" -type "float3" 0.14192037 0.024573617 0.011457698 ;
	setAttr ".tk[18]" -type "float3" 0.10301737 0.024573617 0.011457698 ;
	setAttr ".tk[19]" -type "float3" 0.08961229 0.024573617 0.011457698 ;
	setAttr ".tk[20]" -type "float3" -0.15105295 0.024573617 0.011457698 ;
	setAttr ".tk[21]" -type "float3" -0.074204668 0.024573617 0.011457698 ;
	setAttr ".tk[22]" -type "float3" 0.045489438 0.024573617 0.011457698 ;
	setAttr ".tk[23]" -type "float3" 0.19631253 0.024573617 0.011457698 ;
	setAttr ".tk[24]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.80903465 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[27]" -type "float3" -0.50001079 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.41222367 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.38197434 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.41222367 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.50001085 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.80903471 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.19631265 0.024573617 0.011457698 ;
	setAttr ".tk[36]" -type "float3" 0.045489557 0.024573617 0.011457698 ;
	setAttr ".tk[37]" -type "float3" -0.07420437 0.024573617 0.011457698 ;
	setAttr ".tk[38]" -type "float3" -0.15105259 0.024573617 0.011457698 ;
	setAttr ".tk[39]" -type "float3" -0.17753273 0.024573617 0.011457698 ;
	setAttr ".tk[40]" -type "float3" -0.39245307 0.024573617 0.011457698 ;
	setAttr ".tk[41]" -type "float3" -0.27955192 0.024573617 0.011457698 ;
	setAttr ".tk[42]" -type "float3" -0.10370414 0.024573617 0.011457698 ;
	setAttr ".tk[43]" -type "float3" 0.11787693 0.024573617 0.011457698 ;
	setAttr ".tk[44]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.71943402 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.4663122 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.26543361 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.1364616 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.092020936 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.1364616 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.2654337 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.46631229 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.71943408 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.11787705 0.024573617 0.011457698 ;
	setAttr ".tk[56]" -type "float3" -0.1037039 0.024573617 0.011457698 ;
	setAttr ".tk[57]" -type "float3" -0.27955151 0.024573617 0.011457698 ;
	setAttr ".tk[58]" -type "float3" -0.39245266 0.024573617 0.011457698 ;
	setAttr ".tk[59]" -type "float3" -0.43135566 0.024573617 0.011457698 ;
	setAttr ".tk[60]" -type "float3" -0.61523908 0.024573617 0.011457698 ;
	setAttr ".tk[61]" -type "float3" -0.46906495 0.024573617 0.011457698 ;
	setAttr ".tk[62]" -type "float3" -0.24139337 0.024573617 0.011457698 ;
	setAttr ".tk[63]" -type "float3" 0.045489438 0.024573617 0.011457698 ;
	setAttr ".tk[64]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.30902365 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.048944455 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.1180366 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.17557436 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.1180366 0 0 ;
	setAttr ".tk[71]" -type "float3" -0.04894454 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.30902371 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.045489557 0.024573617 0.011457698 ;
	setAttr ".tk[76]" -type "float3" -0.24139307 0.024573617 0.011457698 ;
	setAttr ".tk[77]" -type "float3" -0.46906441 0.024573617 0.011457698 ;
	setAttr ".tk[78]" -type "float3" -0.61523843 0.024573617 0.011457698 ;
	setAttr ".tk[79]" -type "float3" -0.66560656 0.024573617 0.011457698 ;
	setAttr ".tk[80]" -type "float3" -0.81392521 0.024573617 0.011457698 ;
	setAttr ".tk[81]" -type "float3" -0.63807756 0.024573617 0.011457698 ;
	setAttr ".tk[82]" -type "float3" -0.36418825 0.024573617 0.011457698 ;
	setAttr ".tk[83]" -type "float3" -0.01906763 0.024573617 0.011457698 ;
	setAttr ".tk[84]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.56299609 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.1687497 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.14412603 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.34500468 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.4142226 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.34500468 0 0 ;
	setAttr ".tk[91]" -type "float3" 0.14412594 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.16874984 0 0 ;
	setAttr ".tk[93]" -type "float3" -0.56299615 0 0 ;
	setAttr ".tk[95]" -type "float3" -0.019067392 0.024573617 0.011457698 ;
	setAttr ".tk[96]" -type "float3" -0.36418784 0.024573617 0.011457698 ;
	setAttr ".tk[97]" -type "float3" -0.63807696 0.024573617 0.011457698 ;
	setAttr ".tk[98]" -type "float3" -0.81392455 0.024573617 0.011457698 ;
	setAttr ".tk[99]" -type "float3" -0.87451744 0.024573617 0.011457698 ;
	setAttr ".tk[100]" -type "float3" -0.98361921 0.024573617 0.011457698 ;
	setAttr ".tk[101]" -type "float3" -0.78242785 0.024573617 0.011457698 ;
	setAttr ".tk[102]" -type "float3" -0.46906483 0.024573617 0.011457698 ;
	setAttr ".tk[103]" -type "float3" -0.074204609 0.024573617 0.011457698 ;
	setAttr ".tk[104]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.50001079 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.048944369 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.30902377 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.53885359 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.61804754 0 0 ;
	setAttr ".tk[110]" -type "float3" 0.53885359 0 0 ;
	setAttr ".tk[111]" -type "float3" 0.30902377 0 0 ;
	setAttr ".tk[112]" -type "float3" -0.048944604 0 0 ;
	setAttr ".tk[113]" -type "float3" -0.50001091 0 0 ;
	setAttr ".tk[115]" -type "float3" -0.074204311 0.024573617 0.011457698 ;
	setAttr ".tk[116]" -type "float3" -0.46906441 0.024573617 0.011457698 ;
	setAttr ".tk[117]" -type "float3" -0.78242719 0.024573617 0.011457698 ;
	setAttr ".tk[118]" -type "float3" -0.98361844 0.024573617 0.011457698 ;
	setAttr ".tk[119]" -type "float3" -1.0529441 0.024573617 0.011457698 ;
	setAttr ".tk[120]" -type "float3" -1.1201426 0.024573617 0.011457698 ;
	setAttr ".tk[121]" -type "float3" -0.89856172 0.024573617 0.011457698 ;
	setAttr ".tk[122]" -type "float3" -0.55344099 0.024573617 0.011457698 ;
	setAttr ".tk[123]" -type "float3" -0.1185637 0.024573617 0.011457698 ;
	setAttr ".tk[124]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[125]" -type "float3" -0.44933733 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.047442175 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.44168851 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.69481033 0 0 ;
	setAttr ".tk[129]" -type "float3" 0.78203034 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.69481033 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.44168851 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.047441952 0 0 ;
	setAttr ".tk[133]" -type "float3" -0.44933751 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.1185634 0.024573617 0.011457698 ;
	setAttr ".tk[136]" -type "float3" -0.55344045 0.024573617 0.011457698 ;
	setAttr ".tk[137]" -type "float3" -0.89856094 0.024573617 0.011457698 ;
	setAttr ".tk[138]" -type "float3" -1.1201416 0.024573617 0.011457698 ;
	setAttr ".tk[139]" -type "float3" -1.1964933 0.024573617 0.011457698 ;
	setAttr ".tk[140]" -type "float3" -1.220134 0.024573617 0.011457698 ;
	setAttr ".tk[141]" -type "float3" -0.98361939 0.024573617 0.011457698 ;
	setAttr ".tk[142]" -type "float3" -0.61523902 0.024573617 0.011457698 ;
	setAttr ".tk[143]" -type "float3" -0.15105277 0.024573617 0.011457698 ;
	setAttr ".tk[144]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[145]" -type "float3" -0.41222364 0 0 ;
	setAttr ".tk[146]" -type "float3" 0.11803675 0 0 ;
	setAttr ".tk[147]" -type "float3" 0.5388537 0 0 ;
	setAttr ".tk[148]" -type "float3" 0.80903488 0 0 ;
	setAttr ".tk[149]" -type "float3" 0.90213269 0 0 ;
	setAttr ".tk[150]" -type "float3" 0.80903488 0 0 ;
	setAttr ".tk[151]" -type "float3" 0.53885359 0 0 ;
	setAttr ".tk[152]" -type "float3" 0.11803654 0 0 ;
	setAttr ".tk[153]" -type "float3" -0.41222373 0 0 ;
	setAttr ".tk[155]" -type "float3" -0.15105259 0.024573617 0.011457698 ;
	setAttr ".tk[156]" -type "float3" -0.61523843 0.024573617 0.011457698 ;
	setAttr ".tk[157]" -type "float3" -0.98361844 0.024573617 0.011457698 ;
	setAttr ".tk[158]" -type "float3" -1.2201329 0.024573617 0.011457698 ;
	setAttr ".tk[159]" -type "float3" -1.3016301 0.024573617 0.011457698 ;
	setAttr ".tk[160]" -type "float3" -1.2811307 0.024573617 0.011457698 ;
	setAttr ".tk[161]" -type "float3" -1.0355064 0.024573617 0.011457698 ;
	setAttr ".tk[162]" -type "float3" -0.65293717 0.024573617 0.011457698 ;
	setAttr ".tk[163]" -type "float3" -0.17087197 0.024573617 0.011457698 ;
	setAttr ".tk[164]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.38958332 0 0 ;
	setAttr ".tk[166]" -type "float3" 0.16110103 0 0 ;
	setAttr ".tk[167]" -type "float3" 0.59812677 0 0 ;
	setAttr ".tk[168]" -type "float3" 0.87871414 0 0 ;
	setAttr ".tk[169]" -type "float3" 0.97539794 0 0 ;
	setAttr ".tk[170]" -type "float3" 0.87871414 0 0 ;
	setAttr ".tk[171]" -type "float3" 0.59812653 0 0 ;
	setAttr ".tk[172]" -type "float3" 0.1611008 0 0 ;
	setAttr ".tk[173]" -type "float3" -0.38958353 0 0 ;
	setAttr ".tk[175]" -type "float3" -0.17087162 0.024573617 0.011457698 ;
	setAttr ".tk[176]" -type "float3" -0.65293658 0.024573617 0.011457698 ;
	setAttr ".tk[177]" -type "float3" -1.0355053 0.024573617 0.011457698 ;
	setAttr ".tk[178]" -type "float3" -1.2811297 0.024573617 0.011457698 ;
	setAttr ".tk[179]" -type "float3" -1.365766 0.024573617 0.011457698 ;
	setAttr ".tk[180]" -type "float3" -1.3016312 0.024573617 0.011457698 ;
	setAttr ".tk[181]" -type "float3" -1.0529451 0.024573617 0.011457698 ;
	setAttr ".tk[182]" -type "float3" -0.66560721 0.024573617 0.011457698 ;
	setAttr ".tk[183]" -type "float3" -0.17753297 0.024573617 0.011457698 ;
	setAttr ".tk[184]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[185]" -type "float3" -0.38197416 0 0 ;
	setAttr ".tk[186]" -type "float3" 0.17557453 0 0 ;
	setAttr ".tk[187]" -type "float3" 0.61804754 0 0 ;
	setAttr ".tk[188]" -type "float3" 0.90213269 0 0 ;
	setAttr ".tk[189]" -type "float3" 1.0000218 0 0 ;
	setAttr ".tk[190]" -type "float3" 0.90213269 0 0 ;
	setAttr ".tk[191]" -type "float3" 0.61804754 0 0 ;
	setAttr ".tk[192]" -type "float3" 0.1755743 0 0 ;
	setAttr ".tk[193]" -type "float3" -0.3819744 0 0 ;
	setAttr ".tk[195]" -type "float3" -0.17753267 0.024573617 0.011457698 ;
	setAttr ".tk[196]" -type "float3" -0.66560656 0.024573617 0.011457698 ;
	setAttr ".tk[197]" -type "float3" -1.0529441 0.024573617 0.011457698 ;
	setAttr ".tk[198]" -type "float3" -1.3016301 0.024573617 0.011457698 ;
	setAttr ".tk[199]" -type "float3" -1.3873215 0.024573617 0.011457698 ;
	setAttr ".tk[200]" -type "float3" -1.2811307 0.024573617 0.011457698 ;
	setAttr ".tk[201]" -type "float3" -1.0355064 0.024573617 0.011457698 ;
	setAttr ".tk[202]" -type "float3" -0.65293717 0.024573617 0.011457698 ;
	setAttr ".tk[203]" -type "float3" -0.17087197 0.024573617 0.011457698 ;
	setAttr ".tk[204]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[205]" -type "float3" -0.38958332 0 0 ;
	setAttr ".tk[206]" -type "float3" 0.16110103 0 0 ;
	setAttr ".tk[207]" -type "float3" 0.59812677 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.87871414 0 0 ;
	setAttr ".tk[209]" -type "float3" 0.97539794 0 0 ;
	setAttr ".tk[210]" -type "float3" 0.87871414 0 0 ;
	setAttr ".tk[211]" -type "float3" 0.59812653 0 0 ;
	setAttr ".tk[212]" -type "float3" 0.1611008 0 0 ;
	setAttr ".tk[213]" -type "float3" -0.38958353 0 0 ;
	setAttr ".tk[215]" -type "float3" -0.17087162 0.024573617 0.011457698 ;
	setAttr ".tk[216]" -type "float3" -0.65293658 0.024573617 0.011457698 ;
	setAttr ".tk[217]" -type "float3" -1.0355053 0.024573617 0.011457698 ;
	setAttr ".tk[218]" -type "float3" -1.2811297 0.024573617 0.011457698 ;
	setAttr ".tk[219]" -type "float3" -1.365766 0.024573617 0.011457698 ;
	setAttr ".tk[220]" -type "float3" -1.220134 0.024573617 0.011457698 ;
	setAttr ".tk[221]" -type "float3" -0.98361939 0.024573617 0.011457698 ;
	setAttr ".tk[222]" -type "float3" -0.61523902 0.024573617 0.011457698 ;
	setAttr ".tk[223]" -type "float3" -0.15105277 0.024573617 0.011457698 ;
	setAttr ".tk[224]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[225]" -type "float3" -0.41222364 0 0 ;
	setAttr ".tk[226]" -type "float3" 0.11803675 0 0 ;
	setAttr ".tk[227]" -type "float3" 0.5388537 0 0 ;
	setAttr ".tk[228]" -type "float3" 0.80903488 0 0 ;
	setAttr ".tk[229]" -type "float3" 0.90213269 0 0 ;
	setAttr ".tk[230]" -type "float3" 0.80903488 0 0 ;
	setAttr ".tk[231]" -type "float3" 0.53885359 0 0 ;
	setAttr ".tk[232]" -type "float3" 0.11803654 0 0 ;
	setAttr ".tk[233]" -type "float3" -0.41222373 0 0 ;
	setAttr ".tk[235]" -type "float3" -0.15105259 0.024573617 0.011457698 ;
	setAttr ".tk[236]" -type "float3" -0.61523843 0.024573617 0.011457698 ;
	setAttr ".tk[237]" -type "float3" -0.98361844 0.024573617 0.011457698 ;
	setAttr ".tk[238]" -type "float3" -1.2201329 0.024573617 0.011457698 ;
	setAttr ".tk[239]" -type "float3" -1.3016301 0.024573617 0.011457698 ;
	setAttr ".tk[240]" -type "float3" -1.1201426 0.024573617 0.011457698 ;
	setAttr ".tk[241]" -type "float3" -0.89856172 0.024573617 0.011457698 ;
	setAttr ".tk[242]" -type "float3" -0.55344099 0.024573617 0.011457698 ;
	setAttr ".tk[243]" -type "float3" -0.1185637 0.024573617 0.011457698 ;
	setAttr ".tk[244]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[245]" -type "float3" -0.44933733 0 0 ;
	setAttr ".tk[246]" -type "float3" 0.047442175 0 0 ;
	setAttr ".tk[247]" -type "float3" 0.44168851 0 0 ;
	setAttr ".tk[248]" -type "float3" 0.69481033 0 0 ;
	setAttr ".tk[249]" -type "float3" 0.78203034 0 0 ;
	setAttr ".tk[250]" -type "float3" 0.69481033 0 0 ;
	setAttr ".tk[251]" -type "float3" 0.44168851 0 0 ;
	setAttr ".tk[252]" -type "float3" 0.047441952 0 0 ;
	setAttr ".tk[253]" -type "float3" -0.44933751 0 0 ;
	setAttr ".tk[255]" -type "float3" -0.1185634 0.024573617 0.011457698 ;
	setAttr ".tk[256]" -type "float3" -0.55344045 0.024573617 0.011457698 ;
	setAttr ".tk[257]" -type "float3" -0.89856094 0.024573617 0.011457698 ;
	setAttr ".tk[258]" -type "float3" -1.1201416 0.024573617 0.011457698 ;
	setAttr ".tk[259]" -type "float3" -1.1964933 0.024573617 0.011457698 ;
	setAttr ".tk[260]" -type "float3" -0.98361921 0.024573617 0.011457698 ;
	setAttr ".tk[261]" -type "float3" -0.78242785 0.024573617 0.011457698 ;
	setAttr ".tk[262]" -type "float3" -0.46906483 0.024573617 0.011457698 ;
	setAttr ".tk[263]" -type "float3" -0.074204609 0.024573617 0.011457698 ;
	setAttr ".tk[264]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[265]" -type "float3" -0.50001079 0 0 ;
	setAttr ".tk[266]" -type "float3" -0.048944369 0 0 ;
	setAttr ".tk[267]" -type "float3" 0.30902377 0 0 ;
	setAttr ".tk[268]" -type "float3" 0.53885359 0 0 ;
	setAttr ".tk[269]" -type "float3" 0.61804754 0 0 ;
	setAttr ".tk[270]" -type "float3" 0.53885359 0 0 ;
	setAttr ".tk[271]" -type "float3" -0.29780072 1.0525693 0.88230181 ;
	setAttr ".tk[272]" -type "float3" -0.65576923 1.0525693 0.88230181 ;
	setAttr ".tk[273]" -type "float3" -0.50001091 0 0 ;
	setAttr ".tk[275]" -type "float3" 0.46395063 1.4006289 1.464901 ;
	setAttr ".tk[276]" -type "float3" 0.069090709 1.4006289 1.464901 ;
	setAttr ".tk[277]" -type "float3" -0.78242719 0.024573617 0.011457698 ;
	setAttr ".tk[278]" -type "float3" -0.98361844 0.024573617 0.011457698 ;
	setAttr ".tk[279]" -type "float3" -1.0529441 0.024573617 0.011457698 ;
	setAttr ".tk[280]" -type "float3" -0.81392521 0.024573617 0.011457698 ;
	setAttr ".tk[281]" -type "float3" -0.63807756 0.024573617 0.011457698 ;
	setAttr ".tk[282]" -type "float3" -0.36418825 0.024573617 0.011457698 ;
	setAttr ".tk[283]" -type "float3" -0.01906763 0.024573617 0.011457698 ;
	setAttr ".tk[284]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[285]" -type "float3" -0.56299609 0 0 ;
	setAttr ".tk[286]" -type "float3" -0.1687497 0 0 ;
	setAttr ".tk[287]" -type "float3" 0.14412603 0 0 ;
	setAttr ".tk[288]" -type "float3" 0.34500468 0 0 ;
	setAttr ".tk[289]" -type "float3" 0.4142226 0 0 ;
	setAttr ".tk[290]" -type "float3" 0.34500468 0 0 ;
	setAttr ".tk[291]" -type "float3" -0.46269855 1.0525693 0.88230181 ;
	setAttr ".tk[292]" -type "float3" -0.77557421 1.0525693 0.88230181 ;
	setAttr ".tk[293]" -type "float3" -0.56299615 0 0 ;
	setAttr ".tk[295]" -type "float3" 0.51908761 1.4006289 1.464901 ;
	setAttr ".tk[296]" -type "float3" 0.17396717 1.4006289 1.464901 ;
	setAttr ".tk[297]" -type "float3" -0.63807696 0.024573617 0.011457698 ;
	setAttr ".tk[298]" -type "float3" -0.81392455 0.024573617 0.011457698 ;
	setAttr ".tk[299]" -type "float3" -0.87451744 0.024573617 0.011457698 ;
	setAttr ".tk[300]" -type "float3" -0.61523908 0.024573617 0.011457698 ;
	setAttr ".tk[301]" -type "float3" -0.46906495 0.024573617 0.011457698 ;
	setAttr ".tk[302]" -type "float3" -0.24139337 0.024573617 0.011457698 ;
	setAttr ".tk[303]" -type "float3" 0.045489438 0.024573617 0.011457698 ;
	setAttr ".tk[304]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[305]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[306]" -type "float3" -0.30902365 0 0 ;
	setAttr ".tk[307]" -type "float3" -0.048944455 0 0 ;
	setAttr ".tk[308]" -type "float3" 0.1180366 0 0 ;
	setAttr ".tk[309]" -type "float3" 0.17557436 0 0 ;
	setAttr ".tk[310]" -type "float3" 0.1180366 0 0 ;
	setAttr ".tk[311]" -type "float3" -0.04894454 0 0 ;
	setAttr ".tk[312]" -type "float3" -0.30902371 0 0 ;
	setAttr ".tk[313]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[315]" -type "float3" 0.045489557 0.024573617 0.011457698 ;
	setAttr ".tk[316]" -type "float3" -0.24139307 0.024573617 0.011457698 ;
	setAttr ".tk[317]" -type "float3" -0.46906441 0.024573617 0.011457698 ;
	setAttr ".tk[318]" -type "float3" -0.61523843 0.024573617 0.011457698 ;
	setAttr ".tk[319]" -type "float3" -0.66560656 0.024573617 0.011457698 ;
	setAttr ".tk[320]" -type "float3" -0.39245307 0.024573617 0.011457698 ;
	setAttr ".tk[321]" -type "float3" -0.27955192 0.024573617 0.011457698 ;
	setAttr ".tk[322]" -type "float3" -0.10370414 0.024573617 0.011457698 ;
	setAttr ".tk[323]" -type "float3" 0.11787693 0.024573617 0.011457698 ;
	setAttr ".tk[324]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[325]" -type "float3" -0.71943402 0 0 ;
	setAttr ".tk[326]" -type "float3" -0.4663122 0 0 ;
	setAttr ".tk[327]" -type "float3" -0.26543361 0 0 ;
	setAttr ".tk[328]" -type "float3" -0.1364616 0 0 ;
	setAttr ".tk[329]" -type "float3" -0.092020936 0 0 ;
	setAttr ".tk[330]" -type "float3" -0.1364616 0 0 ;
	setAttr ".tk[331]" -type "float3" -0.2654337 0 0 ;
	setAttr ".tk[332]" -type "float3" -0.46631229 0 0 ;
	setAttr ".tk[333]" -type "float3" -0.71943408 0 0 ;
	setAttr ".tk[335]" -type "float3" 0.11787705 0.024573617 0.011457698 ;
	setAttr ".tk[336]" -type "float3" -0.1037039 0.024573617 0.011457698 ;
	setAttr ".tk[337]" -type "float3" -0.27955151 0.024573617 0.011457698 ;
	setAttr ".tk[338]" -type "float3" -0.39245266 0.024573617 0.011457698 ;
	setAttr ".tk[339]" -type "float3" -0.43135566 0.024573617 0.011457698 ;
	setAttr ".tk[340]" -type "float3" -0.15105295 0.024573617 0.011457698 ;
	setAttr ".tk[341]" -type "float3" -0.074204668 0.024573617 0.011457698 ;
	setAttr ".tk[342]" -type "float3" 0.045489438 0.024573617 0.011457698 ;
	setAttr ".tk[344]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[345]" -type "float3" -0.80903465 0 0 ;
	setAttr ".tk[346]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[347]" -type "float3" -0.50001079 0 0 ;
	setAttr ".tk[348]" -type "float3" -0.41222367 0 0 ;
	setAttr ".tk[349]" -type "float3" -0.38197434 0 0 ;
	setAttr ".tk[350]" -type "float3" -0.41222367 0 0 ;
	setAttr ".tk[351]" -type "float3" -0.50001085 0 0 ;
	setAttr ".tk[352]" -type "float3" -0.63674265 0 0 ;
	setAttr ".tk[353]" -type "float3" -0.80903471 0 0 ;
	setAttr ".tk[355]" -type "float3" 0.19631265 0.024573617 0.011457698 ;
	setAttr ".tk[356]" -type "float3" 0.045489557 0.024573617 0.011457698 ;
	setAttr ".tk[357]" -type "float3" -0.07420437 0.024573617 0.011457698 ;
	setAttr ".tk[358]" -type "float3" -0.15105259 0.024573617 0.011457698 ;
	setAttr ".tk[359]" -type "float3" -0.17753273 0.024573617 0.011457698 ;
	setAttr ".tk[360]" -type "float3" 0.10301726 0.024573617 0.011457698 ;
	setAttr ".tk[361]" -type "float3" 0.14192019 0.024573617 0.011457698 ;
	setAttr ".tk[364]" -type "float3" -1.0000218 0 0 ;
	setAttr ".tk[365]" -type "float3" -0.90333784 0 0 ;
	setAttr ".tk[366]" -type "float3" -0.81611812 0 0 ;
	setAttr ".tk[367]" -type "float3" -0.74690002 0 0 ;
	setAttr ".tk[368]" -type "float3" -0.70245934 0 0 ;
	setAttr ".tk[369]" -type "float3" -0.68714607 0 0 ;
	setAttr ".tk[370]" -type "float3" -0.70245934 0 0 ;
	setAttr ".tk[371]" -type "float3" -0.74690002 0 0 ;
	setAttr ".tk[372]" -type "float3" -0.81611812 0 0 ;
	setAttr ".tk[373]" -type "float3" -0.90333784 0 0 ;
	setAttr ".tk[377]" -type "float3" 0.14192037 0.024573617 0.011457698 ;
	setAttr ".tk[378]" -type "float3" 0.10301737 0.024573617 0.011457698 ;
	setAttr ".tk[379]" -type "float3" 0.08961229 0.024573617 0.011457698 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polyExtrudeFace1.out" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of maya_practice2.ma
