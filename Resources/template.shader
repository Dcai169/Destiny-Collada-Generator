// Shader by BIOS#0307, with assistance from Mulana#1337 and Thejudsub#7823

Shader "Destiny/SHADERNAMEENUM"
{
    Properties
    {
        _Maskclipvalue("Mask clip value (0 to enable alpha blend)", Float) = 0.5
		[NoScaleOffset]_MainTex("Diffuse Texture", 2D) = "white" {}
		[NoScaleOffset]_Gstack("Gstack Texture", 2D) = "white" {}
		[NoScaleOffset]_Normal("Normal Map", 2D) = "bump" {}
		[NoScaleOffset]_DyeSlotTexture("DyeSlot Texture", 2D) = "white" {}
		[Toggle]_EnableifusingDyeSlotTexture("Enable if using DyeSlot Texture -->", Float) = 0
		[NoScaleOffset]_Iridescence_Lookup("_Iridescence_Lookup", 2D) = "white" {}
		
		_VertexAnim_Scale("Vertex Animation Scale", Float) = 0.02
		_VertexAnim_Speed("Vertex Animation Speed", Float) = 1
		
		[NoScaleOffset]_DetailDiffuse01("327503503_gear_detail_metal_dif.png", 2D) = "gray" {}
		[NoScaleOffset]_DetailNormal01("327503503_gear_detail_metal_norm.png", 2D) = "bump" {}
		[NoScaleOffset]_DetailDiffuse02("327503503_gear_detail_cloud_noise_dif.png", 2D) = "white" {}
		[NoScaleOffset]_DetailNormal02("327503503_gear_detail_cotton_fabric_d2_norm.png", 2D) = "bump" {}
		[NoScaleOffset]_DetailDiffuse03("327503503_gear_detail_leather_dif.png", 2D) = "white" {}
		[NoScaleOffset]_DetailNormal03("327503503_gear_detail_leather_norm.png", 2D) = "bump" {}
		
		_Armor_DetailDiffuseTransform("Armor_Detail Diffuse Transform", Vector) = (4, 4, 0, 0)
		_Armor_DetailNormalTransform("Armor_Detail Normal Transform", Vector) = (4, 4, 0, 0)
		_Cloth_DetailDiffuseTransform("Cloth_Detail Diffuse Transform", Vector) = (4, 4, 0, 0)
		_Cloth_DetailNormalTransform("Cloth_Detail Normal Transform", Vector) = (4, 4, 0, 0)
		_Suit_DetailDiffuseTransform("Suit_Detail Diffuse Transform", Vector) = (2, 2, 0, 0)
		_Suit_DetailNormalTransform("Suit_Detail Normal Transform", Vector) = (2, 2, 0, 0)
		
		_ArmorPrimary_Color("ArmorPrimary_Color", Color) = (0.25295, 0, 0, 1.0)
		_ArmorPrimary_WearRemap("ArmorPrimary_Wear Remap", Vector) = (-5.044, 13.248001, 0, 1)
		_ArmorPrimary_RoughnessRemap("ArmorPrimary_Roughness Remap", Vector) = (0, 0.703, 0, 1)
		_ArmorPrimary_DetailDiffuseBlend("ArmorPrimary_Detail Diffuse Blend", Float) = 0.501
		_ArmorPrimary_DetailNormalBlend("ArmorPrimary_Detail Normal Blend", Float) = 0
		_ArmorPrimary_DetailRoughnessBlend("ArmorPrimary_Detail Roughness Blend", Float) = 1.708
		_ArmorPrimary_Metalness("ArmorPrimary_Metalness", Float) = 0
		_ArmorPrimary_Iridescence("ArmorPrimary_Iridescence", Float) = -1
		_ArmorPrimary_Fuzz("ArmorPrimary_Fuzz", Float) = 0
		_ArmorPrimary_Transmission("ArmorPrimary_Transmission", Float) = 0
		[HDR]_ArmorPrimary_Emission("ArmorPrimary_Emission", Color) = (0.051269, 1, 0.991102, 1.0)
		_WornArmorPrimary_Color("WornArmorPrimary_Color", Color) = (0.447988, 0.447988, 0.447988, 1.0)
		_WornArmorPrimary_RoughnessRemap("WornArmorPrimary_Roughness Remap", Vector) = (0 ,1 ,0 ,1)
		_WornArmorPrimary_DetailDiffuseBlend("WornArmorPrimary_Detail Diffuse Blend", Float) = 0
		_WornArmorPrimary_DetailNormalBlend("WornArmorPrimary_Detail Normal Blend", Float) = 0
		_WornArmorPrimary_DetailRoughnessBlend("WornArmorPrimary_Detail Roughness Blend", Float) = 0
		_WornArmorPrimary_Metalness("WornArmorPrimary_Metalness", Float) = 1
		
		_ArmorSecondary_Color("ArmorSecondary_Color", Color) = (0.036968, 0.036968, 0.036968, 1.0)
		_ArmorSecondary_WearRemap("ArmorSecondary_Wear Remap", Vector) = (-7.165, 15.932, 0, 1)
		_ArmorSecondary_RoughnessRemap("ArmorSecondary_Roughness Remap", Vector) = (0.802, 0.198, 0, 1)
		_ArmorSecondary_DetailDiffuseBlend("ArmorSecondary_Detail Diffuse Blend", Float) = 1
		_ArmorSecondary_DetailNormalBlend("ArmorSecondary_Detail Normal Blend", Float) = 1
		_ArmorSecondary_DetailRoughnessBlend("ArmorSecondary_Detail Roughness Blend", Float) = 1
		_ArmorSecondary_Metalness("ArmorSecondary_Metalness", Float) = 0
		_ArmorSecondary_Iridescence("ArmorSecondary_Iridescence", Float) = -1
		_ArmorSecondary_Fuzz("ArmorSecondary_Fuzz", Float) = 0
		_ArmorSecondary_Transmission("ArmorSecondary_Transmission", Float) = 0
		[HDR]_ArmorSecondary_Emission("ArmorSecondary_Emission", Color) = (0.144128, 0.584078, 1, 1.0)
		_WornArmorSecondary_Color("WornArmorSecondary_Color", Color) = (0.147319, 0.147319, 0.147319, 1.0)
		_WornArmorSecondary_RoughnessRemap("WornArmorSecondary_Roughness Remap", Vector) = (0, 1, 0, 1)
		_WornArmorSecondary_DetailDiffuseBlend("WornArmorSecondary_Detail Diffuse Blend", Float) = 1
		_WornArmorSecondary_DetailRoughnessBlend("WornArmorSecondary_Detail Roughness Blend", Float) = 1
		_WornArmorSecondary_DetailNormalBlend("WornArmorSecondary_Detail Normal Blend", Float) = 0
		_WornArmorSecondary_Metalness("WornArmorSecondary_Metalness", Float) = 1
		
		_ClothPrimary_Color("ClothPrimary_Color", Color) = (0.042509, 0.042509, 0.042509, 1.0)
		_ClothPrimary_WearRemap("ClothPrimary_Wear Remap", Vector) = (-1.114, 5.368, 0, 1)
		_ClothPrimary_RoughnessRemap("ClothPrimary_Roughness Remap", Vector) = (0.52, 0.48, 0, 1)
		_ClothPrimary_DetailDiffuseBlend("ClothPrimary_Detail Diffuse Blend", Float) = 0
		_ClothPrimary_DetailNormalBlend("ClothPrimary_Detail Normal Blend", Float) = 0.339
		_ClothPrimary_DetailRoughnessBlend("ClothPrimary_Detail Roughness Blend", Float) = 0
		_ClothPrimary_Metalness("ClothPrimary_Metalness", Float) = 0
		_ClothPrimary_Iridescence("ClothPrimary_Iridescence", Float) = -1
		_ClothPrimary_Fuzz("ClothPrimary_Fuzz", Float) = 0
		_ClothPrimary_Transmission("ClothPrimary_Transmission", Float) = 0
		[HDR]_ClothPrimary_Emission("ClothPrimary_Emission", Color) = (0.051269, 1, 0.991102, 1.0)
		_WornClothPrimary_Color("WornClothPrimary_Color", Color) = (0.061913, 0.061913, 0.061913, 1.0)
		_WornClothPrimary_RoughnessRemap("WornClothPrimary_Roughness Remap", Vector) = (0, 0, 0, 1)
		_WornClothPrimary_DetailDiffuseBlend("WornClothPrimary_Detail Diffuse Blend", Float) = 0
		_WornClothPrimary_DetailNormalBlend("WornClothPrimary_Detail Normal Blend", Float) = 0
		_WornClothPrimary_DetailRoughnessBlend("WornClothPrimary_Detail Roughness Blend", Float) = 0
		_WornClothPrimary_Metalness("WornClothPrimary_Metalness", Float) = 1
		
		_ClothSecondary_Color("ClothSecondary_Color", Color) = (0.145169, 0.133555, 0.054583, 1.0)
		_ClothSecondary_WearRemap("ClothSecondary_Wear Remap", Vector) = (-4.551, 8.167, 0, 1)
		_ClothSecondary_RoughnessRemap("ClothSecondary_Roughness Remap", Vector) = (0.783, 0.217, 0, 1)
		_ClothSecondary_DetailDiffuseBlend("ClothSecondary_Detail Diffuse Blend", Float) = 0.053
		_ClothSecondary_DetailNormalBlend("ClothSecondary_Detail Normal Blend", Float) = 0
		_ClothSecondary_DetailRoughnessBlend("ClothSecondary_Detail Roughness Blend", Float) = 1
		_ClothSecondary_Metalness("ClothSecondary_Metalness", Float) = 0
		_ClothSecondary_Iridescence("ClothSecondary_Iridescence", Float) = -1
		_ClothSecondary_Fuzz("ClothSecondary_Fuzz", Float) = 0
		_ClothSecondary_Transmission("ClothSecondary_Transmission", Float) = 0
		[HDR]_ClothSecondary_Emission("ClothSecondary_Emission", Color) = (0.144128, 0.584078, 1, 1.0)
		_WornClothSecondary_Color("WornClothSecondary_Color", Color) = (0.048507, 0.044626, 0.018239, 1.0)
		_WornClothSecondary_RoughnessRemap("WornClothSecondary_Roughness Remap", Vector) = (0.198, 0.802, 0, 1)
		_WornClothSecondary_DetailDiffuseBlend("WornClothSecondary_Detail Diffuse Blend", Float) = 0
		_WornClothSecondary_DetailNormalBlend("WornClothSecondary_Detail Normal Blend", Float) = 0
		_WornClothSecondary_DetailRoughnessBlend("WornClothSecondary_Detail Roughness Blend", Float) = 0.537
		_WornClothSecondary_Metalness("WornClothSecondary_Metalness", Float) = 0
		
		_SuitPrimary_Color("SuitPrimary_Color", Color) = (1, 1, 1, 1.0)
		_SuitPrimary_WearRemap("SuitPrimary_Wear Remap", Vector) = (-3.673016, 8.764021, 0, 0.945)
		_SuitPrimary_RoughnessRemap("SuitPrimary_Roughness Remap", Vector) = (0, 1, 0, 1)
		_SuitPrimary_DetailDiffuseBlend("SuitPrimary_Detail Diffuse Blend", Float) = 1
		_SuitPrimary_DetailNormalBlend("SuitPrimary_Detail Normal Blend", Float) = 1
		_SuitPrimary_DetailRoughnessBlend("SuitPrimary_Detail Roughness Blend", Float) = 0
		_SuitPrimary_Metalness("SuitPrimary_Metalness", Float) = 1
		_SuitPrimary_Iridescence("SuitPrimary_Iridescence", Float) = -1
		_SuitPrimary_Fuzz("SuitPrimary_Fuzz", Float) = 0
		_SuitPrimary_Transmission("SuitPrimary_Transmission", Float) = 0
		[HDR]_SuitPrimary_Emission("SuitPrimary_Emission", Color) = (0.051269, 1, 0.991102, 1.0)
		_WornSuitPrimary_Color("WornSuitPrimary_Color", Color) = (0.546756, 0.546756, 0.546756, 1.0)
		_WornSuitPrimary_RoughnessRemap("WornSuitPrimary_Roughness Remap", Vector) = (0, 1, 0, 1)
		_WornSuitPrimary_DetailDiffuseBlend("WornSuitPrimary_Detail Diffuse Blend", Float) = 0
		_WornSuitPrimary_DetailNormalBlend("WornSuitPrimary_Detail Normal Blend", Float) = 1
		_WornSuitPrimary_DetailRoughnessBlend("WornSuitPrimary_Detail Roughness Blend", Float) = 0
		_WornSuitPrimary_Metalness("WornSuitPrimary_Metalness", Float) = 1
		
		_SuitSecondary_Color("SuitSecondary_Color", Color) = (0.19953, 0, 0, 1.0)
		_SuitSecondary_WearRemap("SuitSecondary_Wear Remap", Vector) = (-4.174, 9.684, 0, 1)
		_SuitSecondary_RoughnessRemap("SuitSecondary_Roughness Remap", Vector) = (-10, 20, 0, 1)
		_SuitSecondary_DetailDiffuseBlend("SuitSecondary_Detail Diffuse Blend", Float) = 1
		_SuitSecondary_DetailNormalBlend("SuitSecondary_Detail Normal Blend", Float) = 1
		_SuitSecondary_DetailRoughnessBlend("SuitSecondary_Detail Roughness Blend", Float) = 0.209
		_SuitSecondary_Metalness("SuitSecondary_Metalness", Float) = 0
		_SuitSecondary_Iridescence("SuitSecondary_Iridescence", Float) = -1
		_SuitSecondary_Fuzz("SuitSecondary_Fuzz", Float) = 0
		_SuitSecondary_Transmission("SuitSecondary_Transmission", Float) = 0
		[HDR]_SuitSecondary_Emission("SuitSecondary_Emission", Color) = (0.144128, 0.584078, 1, 1.0)
		_WornSuitSecondary_Color("WornSuitSecondary_Color", Color) = (0.027212, 0.027212, 0.027212, 1.0)
		_WornSuitSecondary_RoughnessRemap("WornSuitSecondary_Roughness Remap", Vector) = (0, 1, 0, 1)
		_WornSuitSecondary_DetailDiffuseBlend("WornSuitSecondary_Detail Diffuse Blend", Float) = 0
		_WornSuitSecondary_DetailNormalBlend("WornSuitSecondary_Detail Normal Blend", Float) = 1
		_WornSuitSecondary_DetailRoughnessBlend("WornSuitSecondary_Detail Roughness Blend", Float) = 0
		_WornSuitSecondary_Metalness("WornSuitSecondary_Metalness", Float) = 0
    }
    SubShader
    {
        // Depth prepass
		//Pass {
		//	ZWrite On
		//	ColorMask 0
		//}
		
		Pass
		{
			Name "FORWARD"
			Tags { "LightMode" = "ForwardBase" }
			LOD 200
			Cull Off
			//ZTest Less
			//ZWrite Off
			//Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			// Vertex animation toggles!
			#pragma shader_feature VERTEXANIM_BLENDSHAPE
			#pragma shader_feature VERTEXANIM_NORMALSPACE
			#pragma shader_feature VERTEXANIM_OBJECTSPACE
			#pragma shader_feature VERTEXANIM_OBJECTSPACEX
			#pragma shader_feature VERTEXANIM_OBJECTSPACEY
			#pragma shader_feature VERTEXANIM_OBJECTSPACEZ

			// Use shader model 3.0 target, to get nicer looking lighting
			#pragma target 3.0
			
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			
			#pragma multi_compile_fwdbase nolightmap nodynlightmap novertexlight			
			
			const float PI = 3.14159265;
			
			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 slots : TEXCOORD2;
				float4 col : COLOR0;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
			};
			
			struct v2f
			{
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 slots : TEXCOORD2;
				float4 pos : SV_POSITION;
				half3 worldPos : TEXCOORD3;
				SHADOW_COORDS(4)
				half3x3 tspace : TEXCOORD5; // tangent.x, bitangent.x, normal.x
											// tangent.y, bitangent.y, normal.y
											// tangent.z, bitangent.z, normal.z
				fixed3 unimportantDiffuse : COLOR0;
				float3 worldViewDir : TEXCOORD8;
			};

			void Unity_ColorspaceConversion_RGB_Linear_float(float3 In, out float3 Out)
			{
				float3 linearRGBLo = In / 12.92;;
				float3 linearRGBHi = pow(max(abs((In + 0.055) / 1.055), 1.192092896e-07), float3(2.4, 2.4, 2.4));
				Out = float3(In <= 0.04045) ? linearRGBLo : linearRGBHi;
			}
			
			void Unity_ColorspaceConversion_RGB_Linear_float(float In, out float Out)
			{
				float linearRGBLo = In / 12.92;;
				float linearRGBHi = pow(max(abs((In + 0.055) / 1.055), 1.192092896e-07), float3(2.4, 2.4, 2.4));
				Out = In <= 0.04045 ? linearRGBLo : linearRGBHi;
			}
			
			void Unity_ColorspaceConversion_Linear_RGB_float(float3 In, out float3 Out)
			{
				float3 sRGBLo = In * 12.92;
				float3 sRGBHi = (pow(max(abs(In), 1.192092896e-07), float3(1.0 / 2.4, 1.0 / 2.4, 1.0 / 2.4)) * 1.055) - 0.055;
				Out = float3(In <= 0.0031308) ? sRGBLo : sRGBHi;
			}
			
			void Unity_ColorspaceConversion_Linear_RGB_float(float In, out float Out)
			{
				float sRGBLo = In * 12.92;
				float sRGBHi = (pow(max(abs(In), 1.192092896e-07), float3(1.0 / 2.4, 1.0 / 2.4, 1.0 / 2.4)) * 1.055) - 0.055;
				Out = In <= 0.0031308 ? sRGBLo : sRGBHi;
			}
			
			float4 Overlay (float4 cBase, float4 cBlend, float fac)
			{
				float4 cNew = cBlend * saturate(cBase * 4.0f) + saturate(cBase - 0.25f);
				cNew.a = 1.0;
				return lerp(cBase, cNew, fac);
			}
			
			float4 HardLight (float4 cBase, float4 cBlend, float fac)
			{
				float4 cNew = cBase * saturate(cBlend * 4.0f) + saturate(cBlend - 0.25f);
				cNew.a = 1.0;
				return lerp(cBase, cNew, fac);
			}
			
			float4 BlendMode_Overlay(float4 cBase, float4 cBlend)
			{
				float isLessOrEq = step(cBase, .5);
				float4 cNew = lerp(2*cBlend*cBase, 1 - (1 - 2*(cBase - .5))*(1 - cBlend), isLessOrEq);
				return cNew;
			}

			
			float Remap (float val, half4 remap)
			{
				return clamp( val * remap.y + remap.x, remap.z, remap.z + remap.w );
			}
			
			void Unity_NormalReconstructZ_float(float2 In, out float3 Out)
			{
				float reconstructZ = sqrt(1.0 - saturate(dot(In.xy, In.xy)));
				float3 normalVector = float3(In.x, In.y, reconstructZ);
				Out = normalize(normalVector);
			}
			
			uniform float _VertexAnim_Speed;
			uniform float _VertexAnim_Scale;

			v2f vert (appdata v)
			{
				v2f o;
				
				// vertex animation
				#if VERTEXANIM_BLENDSHAPE
					o.pos = UnityObjectToClipPos(v.vertex + ((v.col.gbr-0.5) * int3(-1,1,1) * cos(_Time.y) * _VertexAnim_Scale));
				#elif VERTEXANIM_OBJECTSPACE
					float str = ((cos((v.col.g + v.col.b)*PI + _Time.y * _VertexAnim_Speed)) * _VertexAnim_Scale) * v.col.r;
					#if VERTEXANIM_OBJECTSPACEX
						v.vertex.x += str;
					#endif
					#if VERTEXANIM_OBJECTSPACEY
						v.vertex.y += str;
					#endif
					#if VERTEXANIM_OBJECTSPACEZ
						v.vertex.z += str;
					#endif
					o.pos = UnityObjectToClipPos(v.vertex);
				#elif VERTEXANIM_NORMALSPACE
					o.pos = UnityObjectToClipPos(v.vertex + (((cos((v.col.g + v.col.b)*PI + _Time.y * _VertexAnim_Speed)) * _VertexAnim_Scale + _VertexAnim_Scale) * v.col.r) * normalize(v.normal));
				#else
					o.pos = UnityObjectToClipPos(v.vertex);
				#endif
				
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.slots = v.slots;
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.worldViewDir = normalize(UnityWorldSpaceViewDir(o.worldPos));
				half3 wNormal = UnityObjectToWorldNormal(v.normal);
                half3 wTangent = UnityObjectToWorldDir(v.tangent.xyz);
                // compute bitangent from cross product of normal and tangent
                half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
                half3 wBitangent = cross(wNormal, wTangent) * tangentSign;
                // output the tangent space matrix
                o.tspace[0] = half3(wTangent.x, wBitangent.x, wNormal.x);
                o.tspace[1] = half3(wTangent.y, wBitangent.y, wNormal.y);
                o.tspace[2] = half3(wTangent.z, wBitangent.z, wNormal.z);
				o.unimportantDiffuse = Shade4PointLights( unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0, unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].	rgb, unity_LightColor[3].rgb, unity_4LightAtten0 * unity_4LightAtten0, o.worldPos, wNormal);
				TRANSFER_SHADOW(o)
				return o;
			}
			
			uniform half _Maskclipvalue;
			uniform sampler2D _MainTex;
			uniform sampler2D _Gstack;
			uniform sampler2D _Normal;
			uniform sampler2D _DyeSlotTexture;
			uniform half _EnableifusingDyeSlotTexture;
			uniform sampler2D _Iridescence_Lookup;
			UNITY_DECLARE_TEX2D(_DetailDiffuse01);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailDiffuse02);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailDiffuse03);
			UNITY_DECLARE_TEX2D(_DetailNormal01);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailNormal02);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailNormal03);
			uniform half4 _Armor_DetailDiffuseTransform;
			uniform half4 _Cloth_DetailDiffuseTransform;
			uniform half4 _Suit_DetailDiffuseTransform;
			uniform half4 _Armor_DetailNormalTransform;
			uniform half4 _Cloth_DetailNormalTransform;
			uniform half4 _Suit_DetailNormalTransform;
			uniform half4 _ArmorPrimary_Color;
			uniform half4 _ArmorPrimary_WearRemap;
			uniform half4 _ArmorPrimary_RoughnessRemap;
			uniform half _ArmorPrimary_DetailDiffuseBlend;
			uniform half _ArmorPrimary_DetailNormalBlend;
			uniform half _ArmorPrimary_DetailRoughnessBlend;
			uniform half _ArmorPrimary_Metalness;
			uniform half _ArmorPrimary_Iridescence;
			uniform half _ArmorPrimary_Fuzz;
			uniform half _ArmorPrimary_Transmission;
			uniform half4 _ArmorPrimary_Emission;
			uniform half4 _WornArmorPrimary_Color;
			uniform half4 _WornArmorPrimary_RoughnessRemap;
			uniform half _WornArmorPrimary_DetailDiffuseBlend;
			uniform half _WornArmorPrimary_DetailNormalBlend;
			uniform half _WornArmorPrimary_DetailRoughnessBlend;
			uniform half _WornArmorPrimary_Metalness;
			uniform half4 _ArmorSecondary_Color;
			uniform half4 _ArmorSecondary_WearRemap;
			uniform half4 _ArmorSecondary_RoughnessRemap;
			uniform half _ArmorSecondary_DetailDiffuseBlend;
			uniform half _ArmorSecondary_DetailNormalBlend;
			uniform half _ArmorSecondary_DetailRoughnessBlend;
			uniform half _ArmorSecondary_Metalness;
			uniform half _ArmorSecondary_Iridescence;
			uniform half _ArmorSecondary_Fuzz;
			uniform half _ArmorSecondary_Transmission;
			uniform half4 _ArmorSecondary_Emission;
			uniform half4 _WornArmorSecondary_Color;
			uniform half4 _WornArmorSecondary_RoughnessRemap;
			uniform half _WornArmorSecondary_DetailDiffuseBlend;
			uniform half _WornArmorSecondary_DetailNormalBlend;
			uniform half _WornArmorSecondary_DetailRoughnessBlend;
			uniform half _WornArmorSecondary_Metalness;
			uniform half4 _ClothPrimary_Color;
			uniform half4 _ClothPrimary_WearRemap;
			uniform half4 _ClothPrimary_RoughnessRemap;
			uniform half _ClothPrimary_DetailDiffuseBlend;
			uniform half _ClothPrimary_DetailNormalBlend;
			uniform half _ClothPrimary_DetailRoughnessBlend;
			uniform half _ClothPrimary_Metalness;
			uniform half _ClothPrimary_Iridescence;
			uniform half _ClothPrimary_Fuzz;
			uniform half _ClothPrimary_Transmission;
			uniform half4 _ClothPrimary_Emission;
			uniform half4 _WornClothPrimary_Color;
			uniform half4 _WornClothPrimary_RoughnessRemap;
			uniform half _WornClothPrimary_DetailDiffuseBlend;
			uniform half _WornClothPrimary_DetailNormalBlend;
			uniform half _WornClothPrimary_DetailRoughnessBlend;
			uniform half _WornClothPrimary_Metalness;
			uniform half4 _ClothSecondary_Color;
			uniform half4 _ClothSecondary_WearRemap;
			uniform half4 _ClothSecondary_RoughnessRemap;
			uniform half _ClothSecondary_DetailDiffuseBlend;
			uniform half _ClothSecondary_DetailNormalBlend;
			uniform half _ClothSecondary_DetailRoughnessBlend;
			uniform half _ClothSecondary_Metalness;
			uniform half _ClothSecondary_Iridescence;
			uniform half _ClothSecondary_Fuzz;
			uniform half _ClothSecondary_Transmission;
			uniform half4 _ClothSecondary_Emission;
			uniform half4 _WornClothSecondary_Color;
			uniform half4 _WornClothSecondary_RoughnessRemap;
			uniform half _WornClothSecondary_DetailDiffuseBlend;
			uniform half _WornClothSecondary_DetailNormalBlend;
			uniform half _WornClothSecondary_DetailRoughnessBlend;
			uniform half _WornClothSecondary_Metalness;
			uniform half4 _SuitPrimary_Color;
			uniform half4 _SuitPrimary_WearRemap;
			uniform half4 _SuitPrimary_RoughnessRemap;
			uniform half _SuitPrimary_DetailDiffuseBlend;
			uniform half _SuitPrimary_DetailNormalBlend;
			uniform half _SuitPrimary_DetailRoughnessBlend;
			uniform half _SuitPrimary_Metalness;
			uniform half _SuitPrimary_Iridescence;
			uniform half _SuitPrimary_Fuzz;
			uniform half _SuitPrimary_Transmission;
			uniform half4 _SuitPrimary_Emission;
			uniform half4 _WornSuitPrimary_Color;
			uniform half4 _WornSuitPrimary_RoughnessRemap;
			uniform half _WornSuitPrimary_DetailDiffuseBlend;
			uniform half _WornSuitPrimary_DetailNormalBlend;
			uniform half _WornSuitPrimary_DetailRoughnessBlend;
			uniform half _WornSuitPrimary_Metalness;
			uniform half4 _SuitSecondary_Color;
			uniform half4 _SuitSecondary_WearRemap;
			uniform half4 _SuitSecondary_RoughnessRemap;
			uniform half _SuitSecondary_DetailDiffuseBlend;
			uniform half _SuitSecondary_DetailNormalBlend;
			uniform half _SuitSecondary_DetailRoughnessBlend;
			uniform half _SuitSecondary_Metalness;
			uniform half _SuitSecondary_Iridescence;
			uniform half _SuitSecondary_Fuzz;
			uniform half _SuitSecondary_Transmission;
			uniform half4 _SuitSecondary_Emission;
			uniform half4 _WornSuitSecondary_Color;
			uniform half4 _WornSuitSecondary_RoughnessRemap;
			uniform half _WornSuitSecondary_DetailDiffuseBlend;
			uniform half _WornSuitSecondary_DetailNormalBlend;
			uniform half _WornSuitSecondary_DetailRoughnessBlend;
			uniform half _WornSuitSecondary_Metalness;

			fixed4 frag (v2f i, fixed facing : VFACE) : SV_TARGET
			{
				fixed4 diff = tex2D (_MainTex, i.uv0);
				#ifdef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_RGB_Linear_float(diff.rgb, diff.rgb);
				#endif
					
				
				fixed4 gstack = tex2D (_Gstack, i.uv0);
				
				// Alpha clipping is done as early as possible to minimize extraneous processing cycles
				float transparency = i.slots.y < 0.5 ? 1 : saturate(gstack.b * 7.96875);
				clip(transparency - lerp(_Maskclipvalue, 1, _Maskclipvalue==0));
				//clip(-1);
				
				half4 dyemap = tex2D (_DyeSlotTexture, i.uv0);
				if (dyemap.a > 0.5 && _EnableifusingDyeSlotTexture)
				{
					bool red = dyemap.r > 0.5;
					bool green = dyemap.g > 0.5;
					bool blue = dyemap.b > 0.5;
					
					if (red && green && blue)
						i.slots.x = 6;
					else if(!red && blue)
						i.slots.x = 5;
					else if(red && green && !blue)
						i.slots.x = 4;
					else if(!red && green && !blue)
						i.slots.x = 3;
					else if(red && !green)
						i.slots.x = 2;
					else if(red || green)
						i.slots.x = 1;
				}
				
				half4 detailDiff;
				half4 detailNorm;
				half4 color;
				float4 wearRemap;
				float4 roughnessRemap;
				float diffBlend;
				float normBlend;
				float roughBlend;
				float metal;
				int iridescenceID;
				float fuzz;
				float transmission;
				float4 emission;
				half4 wornColor;
				float4 wornRoughRemap;
				float wornDiffBlend;
				float wornNormBlend;
				float wornRoughBlend;
				float wornMetal;
				
				
				switch(i.slots.x)
				{
				case (1):
					detailDiff = UNITY_SAMPLE_TEX2D( _DetailDiffuse01, i.uv1 * _Armor_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D( _DetailNormal01, i.uv1 * _Armor_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ArmorPrimary_Color;
					wearRemap = _ArmorPrimary_WearRemap;
					roughnessRemap = _ArmorPrimary_RoughnessRemap;
					diffBlend = _ArmorPrimary_DetailDiffuseBlend;
					normBlend = _ArmorPrimary_DetailNormalBlend;
					roughBlend = _ArmorPrimary_DetailRoughnessBlend;
					metal = _ArmorPrimary_Metalness;
					iridescenceID = _ArmorPrimary_Iridescence;
					fuzz = _ArmorPrimary_Fuzz;
					transmission = _ArmorPrimary_Transmission;
					emission = _ArmorPrimary_Emission;
					wornColor = _WornArmorPrimary_Color;
					wornRoughRemap = _WornArmorPrimary_RoughnessRemap;
					wornDiffBlend = _WornArmorPrimary_DetailDiffuseBlend;
					wornNormBlend = _WornArmorPrimary_DetailNormalBlend;
					wornRoughBlend = _WornArmorPrimary_DetailRoughnessBlend;
					wornMetal = _WornArmorPrimary_Metalness;
					break;
				case (2):
					detailDiff = UNITY_SAMPLE_TEX2D( _DetailDiffuse01, i.uv1 * _Armor_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D( _DetailNormal01, i.uv1 * _Armor_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ArmorSecondary_Color;
					wearRemap = _ArmorSecondary_WearRemap;
					roughnessRemap = _ArmorSecondary_RoughnessRemap;
					diffBlend = _ArmorSecondary_DetailDiffuseBlend;
					normBlend = _ArmorSecondary_DetailNormalBlend;
					roughBlend = _ArmorSecondary_DetailRoughnessBlend;
					metal = _ArmorSecondary_Metalness;
					iridescenceID = _ArmorSecondary_Iridescence;
					fuzz = _ArmorSecondary_Fuzz;
					transmission = _ArmorSecondary_Transmission;
					emission = _ArmorSecondary_Emission;
					wornColor = _WornArmorSecondary_Color;
					wornRoughRemap = _WornArmorSecondary_RoughnessRemap;
					wornDiffBlend = _WornArmorSecondary_DetailDiffuseBlend;
					wornNormBlend = _WornArmorSecondary_DetailNormalBlend;
					wornRoughBlend = _WornArmorSecondary_DetailRoughnessBlend;
					wornMetal = _WornArmorSecondary_Metalness;
					break;
				case(3):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse02, _DetailDiffuse01, i.uv1 * _Cloth_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal02, _DetailNormal01, i.uv1 * _Cloth_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ClothPrimary_Color;
					wearRemap = _ClothPrimary_WearRemap;
					roughnessRemap = _ClothPrimary_RoughnessRemap;
					diffBlend = _ClothPrimary_DetailDiffuseBlend;
					normBlend = _ClothPrimary_DetailNormalBlend;
					roughBlend = _ClothPrimary_DetailRoughnessBlend;
					metal = _ClothPrimary_Metalness;
					iridescenceID = _ClothPrimary_Iridescence;
					fuzz = _ClothPrimary_Fuzz;
					transmission = _ClothPrimary_Transmission;
					emission = _ClothPrimary_Emission;
					wornColor = _WornClothPrimary_Color;
					wornRoughRemap = _WornClothPrimary_RoughnessRemap;
					wornDiffBlend = _WornClothPrimary_DetailDiffuseBlend;
					wornNormBlend = _WornClothPrimary_DetailNormalBlend;
					wornRoughBlend = _WornClothPrimary_DetailRoughnessBlend;
					wornMetal = _WornClothPrimary_Metalness;
					break;
				case(4):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse02, _DetailDiffuse01, i.uv1 * _Cloth_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal02, _DetailNormal01, i.uv1 * _Cloth_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ClothSecondary_Color;
					wearRemap = _ClothSecondary_WearRemap;
					roughnessRemap = _ClothSecondary_RoughnessRemap;
					diffBlend = _ClothSecondary_DetailDiffuseBlend;
					normBlend = _ClothSecondary_DetailNormalBlend;
					roughBlend = _ClothSecondary_DetailRoughnessBlend;
					metal = _ClothSecondary_Metalness;
					iridescenceID = _ClothSecondary_Iridescence;
					fuzz = _ClothSecondary_Fuzz;
					transmission = _ClothSecondary_Transmission;
					emission = _ClothSecondary_Emission;
					wornColor = _WornClothSecondary_Color;
					wornRoughRemap = _WornClothSecondary_RoughnessRemap;
					wornDiffBlend = _WornClothSecondary_DetailDiffuseBlend;
					wornNormBlend = _WornClothSecondary_DetailNormalBlend;
					wornRoughBlend = _WornClothSecondary_DetailRoughnessBlend;
					wornMetal = _WornClothSecondary_Metalness;
					break;
				case(5):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse03, _DetailDiffuse01, i.uv1 * _Suit_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal03, _DetailNormal01, i.uv1 * _Suit_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _SuitPrimary_Color;
					wearRemap = _SuitPrimary_WearRemap;
					roughnessRemap = _SuitPrimary_RoughnessRemap;
					diffBlend = _SuitPrimary_DetailDiffuseBlend;
					normBlend = _SuitPrimary_DetailNormalBlend;
					roughBlend = _SuitPrimary_DetailRoughnessBlend;
					metal = _SuitPrimary_Metalness;
					iridescenceID = _SuitPrimary_Iridescence;
					fuzz = _SuitPrimary_Fuzz;
					transmission = _SuitPrimary_Transmission;
					emission = _SuitPrimary_Emission;
					wornColor = _WornSuitPrimary_Color;
					wornRoughRemap = _WornSuitPrimary_RoughnessRemap;
					wornDiffBlend = _WornSuitPrimary_DetailDiffuseBlend;
					wornNormBlend = _WornSuitPrimary_DetailNormalBlend;
					wornRoughBlend = _WornSuitPrimary_DetailRoughnessBlend;
					wornMetal = _WornSuitPrimary_Metalness;
					break;
				case(6):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse03, _DetailDiffuse01, i.uv1 * _Suit_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal03, _DetailNormal01, i.uv1 * _Suit_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _SuitSecondary_Color;
					wearRemap = _SuitSecondary_WearRemap;
					roughnessRemap = _SuitSecondary_RoughnessRemap;
					diffBlend = _SuitSecondary_DetailDiffuseBlend;
					normBlend = _SuitSecondary_DetailNormalBlend;
					roughBlend = _SuitSecondary_DetailRoughnessBlend;
					metal = _SuitSecondary_Metalness;
					iridescenceID = _SuitSecondary_Iridescence;
					fuzz = _SuitSecondary_Fuzz;
					transmission = _SuitSecondary_Transmission;
					emission = _SuitSecondary_Emission;
					wornColor = _WornSuitSecondary_Color;
					wornRoughRemap = _WornSuitSecondary_RoughnessRemap;
					wornDiffBlend = _WornSuitSecondary_DetailDiffuseBlend;
					wornNormBlend = _WornSuitSecondary_DetailNormalBlend;
					wornRoughBlend = _WornSuitSecondary_DetailRoughnessBlend;
					wornMetal = _WornSuitSecondary_Metalness;
					break;
				}
				
				// Finish splitting gstack
				float emit = saturate((gstack.b - 0.15686274509) * 1.18604651163);
				float undyedMetal = saturate(gstack.a * 7.96875);
				int dyemask = step(0.15686274509, gstack.a);
				float wearmask = saturate((gstack.a - 0.18823529411) * 1.23188405797);
				
				// Wear
				float mappedWear = Remap(wearmask, wearRemap);
				half4 dyeColor = lerp(wornColor, color, mappedWear);
				#ifndef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_Linear_RGB_float(dyeColor.rgb, dyeColor.rgb);
				#endif
				float dyeDiffuseBlend = lerp(wornDiffBlend, diffBlend, mappedWear);
				float dyeRoughBlend = lerp(wornRoughBlend, roughBlend, mappedWear);
				float dyeNormalBlend = lerp(wornNormBlend, normBlend, mappedWear);
				float dyeMetal = lerp(wornMetal, metal, mappedWear);
				
				// Color
				half4 diffuse = Overlay(diff, dyeColor, dyemask);
				#ifdef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_RGB_Linear_float(detailDiff.rgb, detailDiff.rgb);
				#endif
				diffuse = HardLight(diffuse, detailDiff, dyemask * dyeDiffuseBlend);
				#ifdef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_Linear_RGB_float(diffuse.rgb, diffuse.rgb);
				#endif
				
				// Roughness
				float detailedRoughness = lerp(gstack.g, Overlay(gstack.g, detailDiff.a, dyemask), dyeRoughBlend);
				float mainRough = Remap(detailedRoughness, roughnessRemap);
				float wornRough = Remap(detailedRoughness, wornRoughRemap);
				float dyeRoughness = lerp(wornRough, mainRough, mappedWear);
				dyeRoughness = dyeRoughness * lerp(0.86, fuzz * 2, step(dyeRoughness, 0));
				float roughness = 1 - lerp(gstack.g, dyeRoughness, dyemask);
				
				// Emission
				emission *= emit;
				
				// Metalness
				float metalness = lerp(undyedMetal, dyeMetal, dyemask);
				
				// Normal maps
				fixed4 normalMain = tex2D (_Normal, i.uv0);
				float cavity = normalMain.z;
				half3 tnormal = (lerp(normalMain, BlendMode_Overlay(normalMain, detailNorm), dyemask * dyeNormalBlend) * 2 - 1).xyz;
				//tnormal.z = sqrt(((tnormal.x)*(tnormal.x))+((tnormal.y)*(tnormal.y)));
				Unity_NormalReconstructZ_float(tnormal.xy, tnormal);
				tnormal.y *= -1;
				
				half3 N;
                N.x = dot(i.tspace[0], tnormal);
                N.y = dot(i.tspace[1], tnormal);
                N.z = dot(i.tspace[2], tnormal);
				
				N *= facing;
				
				// LIGHTING!!!
				half3 ambient = ShadeSH9(half4(N,1));
				
				half3 worldRefl = reflect(-i.worldViewDir, N);
				half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, worldRefl, roughness * UNITY_SPECCUBE_LOD_STEPS);
				half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR);
				
				half3 L = _WorldSpaceLightPos0.xyz;
				float3 V = normalize(_WorldSpaceCameraPos - i.worldPos);
				float3 H = normalize(L + V);
				float nDotV = dot(N,V);
				float nDotL = dot(N,L);
				
				float termVisibility = saturate(SmithBeckmannVisibilityTerm(nDotL, nDotV, roughness));
				float termDiffuse = nDotL;//saturate(DisneyDiffuse(nDotV, nDotL, dot(L,H), sqrt(roughness)));
				float termSpecular = GGXTerm(dot(N,H), roughness);
				float termFresnel = FresnelTerm(0.02, dot(lerp(N,V,roughness), V));
				
				#ifndef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_RGB_Linear_float(termVisibility, termVisibility);
					Unity_ColorspaceConversion_RGB_Linear_float(termDiffuse, termDiffuse);
					Unity_ColorspaceConversion_RGB_Linear_float(termSpecular, termSpecular);
				#endif
				
				half3 specularStrength = saturate(lerp(termFresnel, 0, metalness)) * cavity;
				
				// We do iridescence here
				fixed4 iridescenceColor = tex2D (_Iridescence_Lookup, float2(nDotV, (127.5 - iridescenceID)/128));
				diffuse *= lerp(1, iridescenceColor.a, dyemask);
				float iridescenceStrength = (1 - dot(dyeColor.rgb, half3(0.2126, 0.7152, 0.0722))) * (iridescenceID != -1) * dyemask;
				if (iridescenceID % 2 == 0)
				{
					diffuse = lerp(diffuse, iridescenceColor, iridescenceStrength);
					metalness = lerp(metalness, 1, iridescenceStrength);
					specularStrength = lerp(specularStrength, 0, dyemask);
				}
				else
				{
					specularStrength = lerp(specularStrength, iridescenceColor, iridescenceStrength);
				}
				
				fixed shadow = SHADOW_ATTENUATION(i);
				//UNITY_LIGHT_ATTENUATION(atten, 0, i.worldPos)
				
				fixed occlusionMap = gstack.r * cavity;
				fixed occlusion = diffuse * occlusionMap * (1 - occlusionMap) + occlusionMap;
				
				// Transmission
				fixed constantScattering = dot(N*-1,L) * 0.4;
				fixed forwardScattering = pow(saturate(dot(L,V)), 0.7);
				fixed transmissionDiffuseLobe = saturate(constantScattering + forwardScattering) * transmission;
				
				termDiffuse += transmissionDiffuseLobe;
				
				half3 unimportantDiffuse = Shade4PointLights( unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0, unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb, unity_4LightAtten0 * unity_4LightAtten0, i.worldPos, N);
				
				half3 final = (ambient * diffuse + skyColor * lerp(specularStrength, diffuse, metalness) + unimportantDiffuse * diffuse + (termDiffuse * diffuse + termSpecular * specularStrength + termSpecular * diffuse * metalness) * _LightColor0 * shadow) * occlusion;
				
				// Alpha blend
				if (_Maskclipvalue != 0)
					transparency = 1;
				
				return fixed4(final,transparency);
			}
			ENDCG
		}
		
		Pass
		{
			Tags { "LightMode" = "ForwardAdd" }
			LOD 200
			Cull Off
			ZWrite Off
			Blend One One

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			// Vertex animation toggles!
			#pragma shader_feature VERTEXANIM_BLENDSHAPE
			#pragma shader_feature VERTEXANIM_NORMALSPACE
			#pragma shader_feature VERTEXANIM_OBJECTSPACE
			#pragma shader_feature VERTEXANIM_OBJECTSPACEX
			#pragma shader_feature VERTEXANIM_OBJECTSPACEY
			#pragma shader_feature VERTEXANIM_OBJECTSPACEZ

			// Use shader model 3.0 target, to get nicer looking lighting
			#pragma target 3.0
			
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			
			#pragma multi_compile_fwdadd_fullshadows
			#pragma multi_compile POINT SPOT DIRECTIONAL
			
			const float PI = 3.14159265;
			
			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 slots : TEXCOORD2;
				float4 col : COLOR0;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
			};
			
			struct v2f
			{
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 slots : TEXCOORD2;
				float4 pos : SV_POSITION;
				half3 worldPos : TEXCOORD3;
				SHADOW_COORDS(4)
				half3x3 tspace : TEXCOORD5; // tangent.x, bitangent.x, normal.x
											// tangent.y, bitangent.y, normal.y
											// tangent.z, bitangent.z, normal.z
				fixed3 ambient : COLOR0;
				float3 worldViewDir : TEXCOORD8;
			};

			void Unity_ColorspaceConversion_RGB_Linear_float(float3 In, out float3 Out)
			{
				float3 linearRGBLo = In / 12.92;;
				float3 linearRGBHi = pow(max(abs((In + 0.055) / 1.055), 1.192092896e-07), float3(2.4, 2.4, 2.4));
				Out = float3(In <= 0.04045) ? linearRGBLo : linearRGBHi;
			}
			
			void Unity_ColorspaceConversion_RGB_Linear_float(float In, out float Out)
			{
				float linearRGBLo = In / 12.92;;
				float linearRGBHi = pow(max(abs((In + 0.055) / 1.055), 1.192092896e-07), float3(2.4, 2.4, 2.4));
				Out = In <= 0.04045 ? linearRGBLo : linearRGBHi;
			}
			
			void Unity_ColorspaceConversion_Linear_RGB_float(float3 In, out float3 Out)
			{
				float3 sRGBLo = In * 12.92;
				float3 sRGBHi = (pow(max(abs(In), 1.192092896e-07), float3(1.0 / 2.4, 1.0 / 2.4, 1.0 / 2.4)) * 1.055) - 0.055;
				Out = float3(In <= 0.0031308) ? sRGBLo : sRGBHi;
			}
			
			void Unity_ColorspaceConversion_Linear_RGB_float(float In, out float Out)
			{
				float sRGBLo = In * 12.92;
				float sRGBHi = (pow(max(abs(In), 1.192092896e-07), float3(1.0 / 2.4, 1.0 / 2.4, 1.0 / 2.4)) * 1.055) - 0.055;
				Out = In <= 0.0031308 ? sRGBLo : sRGBHi;
			}
			
			float4 Overlay (float4 cBase, float4 cBlend, float fac)
			{
				float4 cNew = cBlend * saturate(cBase * 4.0f) + saturate(cBase - 0.25f);
				cNew.a = 1.0;
				return lerp(cBase, cNew, fac);
			}
			
			float4 HardLight (float4 cBase, float4 cBlend, float fac)
			{
				float4 cNew = cBase * saturate(cBlend * 4.0f) + saturate(cBlend - 0.25f);
				cNew.a = 1.0;
				return lerp(cBase, cNew, fac);
			}
			
			float4 BlendMode_Overlay(float4 cBase, float4 cBlend)
			{
				float isLessOrEq = step(cBase, .5);
				float4 cNew = lerp(2*cBlend*cBase, 1 - (1 - 2*(cBase - .5))*(1 - cBlend), isLessOrEq);
				return cNew;
			}

			
			float Remap (float val, half4 remap)
			{
				return clamp( val * remap.y + remap.x, remap.z, remap.z + remap.w );
			}
			
			void Unity_NormalReconstructZ_float(float2 In, out float3 Out)
			{
				float reconstructZ = sqrt(1.0 - saturate(dot(In.xy, In.xy)));
				float3 normalVector = float3(In.x, In.y, reconstructZ);
				Out = normalize(normalVector);
			}
			
			uniform float _VertexAnim_Speed;
			uniform float _VertexAnim_Scale;

			v2f vert (appdata v)
			{
				v2f o;
				
				// vertex animation
				#if VERTEXANIM_BLENDSHAPE
					o.pos = UnityObjectToClipPos(v.vertex + ((v.col.gbr-0.5) * int3(-1,1,1) * cos(_Time.y) * _VertexAnim_Scale));
				#elif VERTEXANIM_OBJECTSPACE
					float str = ((cos((v.col.g + v.col.b)*PI + _Time.y * _VertexAnim_Speed)) * _VertexAnim_Scale) * v.col.r;
					#if VERTEXANIM_OBJECTSPACEX
						v.vertex.x += str;
					#endif
					#if VERTEXANIM_OBJECTSPACEY
						v.vertex.y += str;
					#endif
					#if VERTEXANIM_OBJECTSPACEZ
						v.vertex.z += str;
					#endif
					o.pos = UnityObjectToClipPos(v.vertex);
				#elif VERTEXANIM_NORMALSPACE
					o.pos = UnityObjectToClipPos(v.vertex + (((cos((v.col.g + v.col.b)*PI + _Time.y * _VertexAnim_Speed)) * _VertexAnim_Scale + _VertexAnim_Scale) * v.col.r) * normalize(v.normal));
				#else
					o.pos = UnityObjectToClipPos(v.vertex);
				#endif
				
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.slots = v.slots;
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.worldViewDir = normalize(UnityWorldSpaceViewDir(o.worldPos));
				half3 wNormal = UnityObjectToWorldNormal(v.normal);
                half3 wTangent = UnityObjectToWorldDir(v.tangent.xyz);
                // compute bitangent from cross product of normal and tangent
                half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
                half3 wBitangent = cross(wNormal, wTangent) * tangentSign;
                // output the tangent space matrix
                o.tspace[0] = half3(wTangent.x, wBitangent.x, wNormal.x);
                o.tspace[1] = half3(wTangent.y, wBitangent.y, wNormal.y);
                o.tspace[2] = half3(wTangent.z, wBitangent.z, wNormal.z);
				TRANSFER_SHADOW(o)
				return o;
			}
			
			uniform half _Maskclipvalue;
			uniform sampler2D _MainTex;
			uniform sampler2D _Gstack;
			uniform sampler2D _Normal;
			uniform sampler2D _DyeSlotTexture;
			uniform half _EnableifusingDyeSlotTexture;
			uniform sampler2D _Iridescence_Lookup;
			UNITY_DECLARE_TEX2D(_DetailDiffuse01);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailDiffuse02);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailDiffuse03);
			UNITY_DECLARE_TEX2D(_DetailNormal01);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailNormal02);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailNormal03);
			uniform half4 _Armor_DetailDiffuseTransform;
			uniform half4 _Cloth_DetailDiffuseTransform;
			uniform half4 _Suit_DetailDiffuseTransform;
			uniform half4 _Armor_DetailNormalTransform;
			uniform half4 _Cloth_DetailNormalTransform;
			uniform half4 _Suit_DetailNormalTransform;
			uniform half4 _ArmorPrimary_Color;
			uniform half4 _ArmorPrimary_WearRemap;
			uniform half4 _ArmorPrimary_RoughnessRemap;
			uniform half _ArmorPrimary_DetailDiffuseBlend;
			uniform half _ArmorPrimary_DetailNormalBlend;
			uniform half _ArmorPrimary_DetailRoughnessBlend;
			uniform half _ArmorPrimary_Metalness;
			uniform half _ArmorPrimary_Iridescence;
			uniform half _ArmorPrimary_Fuzz;
			uniform half _ArmorPrimary_Transmission;
			uniform half4 _ArmorPrimary_Emission;
			uniform half4 _WornArmorPrimary_Color;
			uniform half4 _WornArmorPrimary_RoughnessRemap;
			uniform half _WornArmorPrimary_DetailDiffuseBlend;
			uniform half _WornArmorPrimary_DetailNormalBlend;
			uniform half _WornArmorPrimary_DetailRoughnessBlend;
			uniform half _WornArmorPrimary_Metalness;
			uniform half4 _ArmorSecondary_Color;
			uniform half4 _ArmorSecondary_WearRemap;
			uniform half4 _ArmorSecondary_RoughnessRemap;
			uniform half _ArmorSecondary_DetailDiffuseBlend;
			uniform half _ArmorSecondary_DetailNormalBlend;
			uniform half _ArmorSecondary_DetailRoughnessBlend;
			uniform half _ArmorSecondary_Metalness;
			uniform half _ArmorSecondary_Iridescence;
			uniform half _ArmorSecondary_Fuzz;
			uniform half _ArmorSecondary_Transmission;
			uniform half4 _ArmorSecondary_Emission;
			uniform half4 _WornArmorSecondary_Color;
			uniform half4 _WornArmorSecondary_RoughnessRemap;
			uniform half _WornArmorSecondary_DetailDiffuseBlend;
			uniform half _WornArmorSecondary_DetailNormalBlend;
			uniform half _WornArmorSecondary_DetailRoughnessBlend;
			uniform half _WornArmorSecondary_Metalness;
			uniform half4 _ClothPrimary_Color;
			uniform half4 _ClothPrimary_WearRemap;
			uniform half4 _ClothPrimary_RoughnessRemap;
			uniform half _ClothPrimary_DetailDiffuseBlend;
			uniform half _ClothPrimary_DetailNormalBlend;
			uniform half _ClothPrimary_DetailRoughnessBlend;
			uniform half _ClothPrimary_Metalness;
			uniform half _ClothPrimary_Iridescence;
			uniform half _ClothPrimary_Fuzz;
			uniform half _ClothPrimary_Transmission;
			uniform half4 _ClothPrimary_Emission;
			uniform half4 _WornClothPrimary_Color;
			uniform half4 _WornClothPrimary_RoughnessRemap;
			uniform half _WornClothPrimary_DetailDiffuseBlend;
			uniform half _WornClothPrimary_DetailNormalBlend;
			uniform half _WornClothPrimary_DetailRoughnessBlend;
			uniform half _WornClothPrimary_Metalness;
			uniform half4 _ClothSecondary_Color;
			uniform half4 _ClothSecondary_WearRemap;
			uniform half4 _ClothSecondary_RoughnessRemap;
			uniform half _ClothSecondary_DetailDiffuseBlend;
			uniform half _ClothSecondary_DetailNormalBlend;
			uniform half _ClothSecondary_DetailRoughnessBlend;
			uniform half _ClothSecondary_Metalness;
			uniform half _ClothSecondary_Iridescence;
			uniform half _ClothSecondary_Fuzz;
			uniform half _ClothSecondary_Transmission;
			uniform half4 _ClothSecondary_Emission;
			uniform half4 _WornClothSecondary_Color;
			uniform half4 _WornClothSecondary_RoughnessRemap;
			uniform half _WornClothSecondary_DetailDiffuseBlend;
			uniform half _WornClothSecondary_DetailNormalBlend;
			uniform half _WornClothSecondary_DetailRoughnessBlend;
			uniform half _WornClothSecondary_Metalness;
			uniform half4 _SuitPrimary_Color;
			uniform half4 _SuitPrimary_WearRemap;
			uniform half4 _SuitPrimary_RoughnessRemap;
			uniform half _SuitPrimary_DetailDiffuseBlend;
			uniform half _SuitPrimary_DetailNormalBlend;
			uniform half _SuitPrimary_DetailRoughnessBlend;
			uniform half _SuitPrimary_Metalness;
			uniform half _SuitPrimary_Iridescence;
			uniform half _SuitPrimary_Fuzz;
			uniform half _SuitPrimary_Transmission;
			uniform half4 _SuitPrimary_Emission;
			uniform half4 _WornSuitPrimary_Color;
			uniform half4 _WornSuitPrimary_RoughnessRemap;
			uniform half _WornSuitPrimary_DetailDiffuseBlend;
			uniform half _WornSuitPrimary_DetailNormalBlend;
			uniform half _WornSuitPrimary_DetailRoughnessBlend;
			uniform half _WornSuitPrimary_Metalness;
			uniform half4 _SuitSecondary_Color;
			uniform half4 _SuitSecondary_WearRemap;
			uniform half4 _SuitSecondary_RoughnessRemap;
			uniform half _SuitSecondary_DetailDiffuseBlend;
			uniform half _SuitSecondary_DetailNormalBlend;
			uniform half _SuitSecondary_DetailRoughnessBlend;
			uniform half _SuitSecondary_Metalness;
			uniform half _SuitSecondary_Iridescence;
			uniform half _SuitSecondary_Fuzz;
			uniform half _SuitSecondary_Transmission;
			uniform half4 _SuitSecondary_Emission;
			uniform half4 _WornSuitSecondary_Color;
			uniform half4 _WornSuitSecondary_RoughnessRemap;
			uniform half _WornSuitSecondary_DetailDiffuseBlend;
			uniform half _WornSuitSecondary_DetailNormalBlend;
			uniform half _WornSuitSecondary_DetailRoughnessBlend;
			uniform half _WornSuitSecondary_Metalness;

			fixed4 frag (v2f i, fixed facing : VFACE) : SV_TARGET
			{
				fixed4 diff = tex2D (_MainTex, i.uv0);
				#ifdef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_RGB_Linear_float(diff.rgb, diff.rgb);
				#endif
					
				
				fixed4 gstack = tex2D (_Gstack, i.uv0);
				
				// Alpha clipping is done as early as possible to minimize extraneous processing cycles
				float transparency = i.slots.y < 0.5 ? 1 : saturate(gstack.b * 7.96875);
				clip(transparency - lerp(_Maskclipvalue, 1, _Maskclipvalue==0));
				
				half4 dyemap = tex2D (_DyeSlotTexture, i.uv0);
				if (dyemap.a > 0.5 && _EnableifusingDyeSlotTexture)
				{
					bool red = dyemap.r > 0.5;
					bool green = dyemap.g > 0.5;
					bool blue = dyemap.b > 0.5;
					
					if (red && green && blue)
						i.slots.x = 6;
					else if(!red && blue)
						i.slots.x = 5;
					else if(red && green && !blue)
						i.slots.x = 4;
					else if(!red && green && !blue)
						i.slots.x = 3;
					else if(red && !green)
						i.slots.x = 2;
					else if(red || green)
						i.slots.x = 1;
				}
				
				half4 detailDiff;
				half4 detailNorm;
				half4 color;
				float4 wearRemap;
				float4 roughnessRemap;
				float diffBlend;
				float normBlend;
				float roughBlend;
				float metal;
				int iridescenceID;
				float fuzz;
				float transmission;
				float4 emission;
				half4 wornColor;
				float4 wornRoughRemap;
				float wornDiffBlend;
				float wornNormBlend;
				float wornRoughBlend;
				float wornMetal;
				
				
				switch(i.slots.x)
				{
				case (1):
					detailDiff = UNITY_SAMPLE_TEX2D( _DetailDiffuse01, i.uv1 * _Armor_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D( _DetailNormal01, i.uv1 * _Armor_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ArmorPrimary_Color;
					wearRemap = _ArmorPrimary_WearRemap;
					roughnessRemap = _ArmorPrimary_RoughnessRemap;
					diffBlend = _ArmorPrimary_DetailDiffuseBlend;
					normBlend = _ArmorPrimary_DetailNormalBlend;
					roughBlend = _ArmorPrimary_DetailRoughnessBlend;
					metal = _ArmorPrimary_Metalness;
					iridescenceID = _ArmorPrimary_Iridescence;
					fuzz = _ArmorPrimary_Fuzz;
					transmission = _ArmorPrimary_Transmission;
					emission = _ArmorPrimary_Emission;
					wornColor = _WornArmorPrimary_Color;
					wornRoughRemap = _WornArmorPrimary_RoughnessRemap;
					wornDiffBlend = _WornArmorPrimary_DetailDiffuseBlend;
					wornNormBlend = _WornArmorPrimary_DetailNormalBlend;
					wornRoughBlend = _WornArmorPrimary_DetailRoughnessBlend;
					wornMetal = _WornArmorPrimary_Metalness;
					break;
				case (2):
					detailDiff = UNITY_SAMPLE_TEX2D( _DetailDiffuse01, i.uv1 * _Armor_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D( _DetailNormal01, i.uv1 * _Armor_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ArmorSecondary_Color;
					wearRemap = _ArmorSecondary_WearRemap;
					roughnessRemap = _ArmorSecondary_RoughnessRemap;
					diffBlend = _ArmorSecondary_DetailDiffuseBlend;
					normBlend = _ArmorSecondary_DetailNormalBlend;
					roughBlend = _ArmorSecondary_DetailRoughnessBlend;
					metal = _ArmorSecondary_Metalness;
					iridescenceID = _ArmorSecondary_Iridescence;
					fuzz = _ArmorSecondary_Fuzz;
					transmission = _ArmorSecondary_Transmission;
					emission = _ArmorSecondary_Emission;
					wornColor = _WornArmorSecondary_Color;
					wornRoughRemap = _WornArmorSecondary_RoughnessRemap;
					wornDiffBlend = _WornArmorSecondary_DetailDiffuseBlend;
					wornNormBlend = _WornArmorSecondary_DetailNormalBlend;
					wornRoughBlend = _WornArmorSecondary_DetailRoughnessBlend;
					wornMetal = _WornArmorSecondary_Metalness;
					break;
				case(3):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse02, _DetailDiffuse01, i.uv1 * _Cloth_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal02, _DetailNormal01, i.uv1 * _Cloth_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ClothPrimary_Color;
					wearRemap = _ClothPrimary_WearRemap;
					roughnessRemap = _ClothPrimary_RoughnessRemap;
					diffBlend = _ClothPrimary_DetailDiffuseBlend;
					normBlend = _ClothPrimary_DetailNormalBlend;
					roughBlend = _ClothPrimary_DetailRoughnessBlend;
					metal = _ClothPrimary_Metalness;
					iridescenceID = _ClothPrimary_Iridescence;
					fuzz = _ClothPrimary_Fuzz;
					transmission = _ClothPrimary_Transmission;
					emission = _ClothPrimary_Emission;
					wornColor = _WornClothPrimary_Color;
					wornRoughRemap = _WornClothPrimary_RoughnessRemap;
					wornDiffBlend = _WornClothPrimary_DetailDiffuseBlend;
					wornNormBlend = _WornClothPrimary_DetailNormalBlend;
					wornRoughBlend = _WornClothPrimary_DetailRoughnessBlend;
					wornMetal = _WornClothPrimary_Metalness;
					break;
				case(4):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse02, _DetailDiffuse01, i.uv1 * _Cloth_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal02, _DetailNormal01, i.uv1 * _Cloth_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _ClothSecondary_Color;
					wearRemap = _ClothSecondary_WearRemap;
					roughnessRemap = _ClothSecondary_RoughnessRemap;
					diffBlend = _ClothSecondary_DetailDiffuseBlend;
					normBlend = _ClothSecondary_DetailNormalBlend;
					roughBlend = _ClothSecondary_DetailRoughnessBlend;
					metal = _ClothSecondary_Metalness;
					iridescenceID = _ClothSecondary_Iridescence;
					fuzz = _ClothSecondary_Fuzz;
					transmission = _ClothSecondary_Transmission;
					emission = _ClothSecondary_Emission;
					wornColor = _WornClothSecondary_Color;
					wornRoughRemap = _WornClothSecondary_RoughnessRemap;
					wornDiffBlend = _WornClothSecondary_DetailDiffuseBlend;
					wornNormBlend = _WornClothSecondary_DetailNormalBlend;
					wornRoughBlend = _WornClothSecondary_DetailRoughnessBlend;
					wornMetal = _WornClothSecondary_Metalness;
					break;
				case(5):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse03, _DetailDiffuse01, i.uv1 * _Suit_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal03, _DetailNormal01, i.uv1 * _Suit_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _SuitPrimary_Color;
					wearRemap = _SuitPrimary_WearRemap;
					roughnessRemap = _SuitPrimary_RoughnessRemap;
					diffBlend = _SuitPrimary_DetailDiffuseBlend;
					normBlend = _SuitPrimary_DetailNormalBlend;
					roughBlend = _SuitPrimary_DetailRoughnessBlend;
					metal = _SuitPrimary_Metalness;
					iridescenceID = _SuitPrimary_Iridescence;
					fuzz = _SuitPrimary_Fuzz;
					transmission = _SuitPrimary_Transmission;
					emission = _SuitPrimary_Emission;
					wornColor = _WornSuitPrimary_Color;
					wornRoughRemap = _WornSuitPrimary_RoughnessRemap;
					wornDiffBlend = _WornSuitPrimary_DetailDiffuseBlend;
					wornNormBlend = _WornSuitPrimary_DetailNormalBlend;
					wornRoughBlend = _WornSuitPrimary_DetailRoughnessBlend;
					wornMetal = _WornSuitPrimary_Metalness;
					break;
				case(6):
					detailDiff = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailDiffuse03, _DetailDiffuse01, i.uv1 * _Suit_DetailDiffuseTransform.xy + _Armor_DetailDiffuseTransform.zw);
					detailNorm = UNITY_SAMPLE_TEX2D_SAMPLER( _DetailNormal03, _DetailNormal01, i.uv1 * _Suit_DetailNormalTransform.xy + _Armor_DetailNormalTransform.zw);
					color = _SuitSecondary_Color;
					wearRemap = _SuitSecondary_WearRemap;
					roughnessRemap = _SuitSecondary_RoughnessRemap;
					diffBlend = _SuitSecondary_DetailDiffuseBlend;
					normBlend = _SuitSecondary_DetailNormalBlend;
					roughBlend = _SuitSecondary_DetailRoughnessBlend;
					metal = _SuitSecondary_Metalness;
					iridescenceID = _SuitSecondary_Iridescence;
					fuzz = _SuitSecondary_Fuzz;
					transmission = _SuitSecondary_Transmission;
					emission = _SuitSecondary_Emission;
					wornColor = _WornSuitSecondary_Color;
					wornRoughRemap = _WornSuitSecondary_RoughnessRemap;
					wornDiffBlend = _WornSuitSecondary_DetailDiffuseBlend;
					wornNormBlend = _WornSuitSecondary_DetailNormalBlend;
					wornRoughBlend = _WornSuitSecondary_DetailRoughnessBlend;
					wornMetal = _WornSuitSecondary_Metalness;
					break;
				}
				
				// Finish splitting gstack
				float emit = saturate((gstack.b - 0.15686274509) * 1.18604651163);
				float undyedMetal = saturate(gstack.a * 7.96875);
				int dyemask = step(0.15686274509, gstack.a);
				float wearmask = saturate((gstack.a - 0.18823529411) * 1.23188405797);
				
				// Wear
				float mappedWear = Remap(wearmask, wearRemap);
				half4 dyeColor = lerp(wornColor, color, mappedWear);
				#ifndef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_Linear_RGB_float(dyeColor.rgb, dyeColor.rgb);
				#endif
				float dyeDiffuseBlend = lerp(wornDiffBlend, diffBlend, mappedWear);
				float dyeRoughBlend = lerp(wornRoughBlend, roughBlend, mappedWear);
				float dyeNormalBlend = lerp(wornNormBlend, normBlend, mappedWear);
				float dyeMetal = lerp(wornMetal, metal, mappedWear);
				
				// Color
				half4 diffuse = Overlay(diff, dyeColor, dyemask);
				#ifdef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_RGB_Linear_float(detailDiff.rgb, detailDiff.rgb);
				#endif
				diffuse = HardLight(diffuse, detailDiff, dyemask * dyeDiffuseBlend);
				#ifdef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_Linear_RGB_float(diffuse.rgb, diffuse.rgb);
				#endif
				
				// Roughness
				float detailedRoughness = lerp(gstack.g, Overlay(gstack.g, detailDiff.a, dyemask), dyeRoughBlend);
				float mainRough = Remap(detailedRoughness, roughnessRemap);
				float wornRough = Remap(detailedRoughness, wornRoughRemap);
				float dyeRoughness = lerp(wornRough, mainRough, mappedWear);
				dyeRoughness = dyeRoughness * lerp(0.86, fuzz * 2, step(dyeRoughness, 0));
				float roughness = 1 - lerp(gstack.g, dyeRoughness, dyemask);
				
				// Emission
				emission *= emit;
				
				// Metalness
				float metalness = lerp(undyedMetal, dyeMetal, dyemask);
				
				// Normal maps
				fixed4 normalMain = tex2D (_Normal, i.uv0);
				float cavity = normalMain.z;
				half3 tnormal = (lerp(normalMain, BlendMode_Overlay(normalMain, detailNorm), dyemask * dyeNormalBlend) * 2 - 1).xyz;
				//tnormal.z = sqrt(((tnormal.x)*(tnormal.x))+((tnormal.y)*(tnormal.y)));
				Unity_NormalReconstructZ_float(tnormal.xy, tnormal);
				tnormal.y *= -1;
				
				half3 N;
                N.x = dot(i.tspace[0], tnormal);
                N.y = dot(i.tspace[1], tnormal);
                N.z = dot(i.tspace[2], tnormal);
				
				N *= facing;
				
				// LIGHTING!!!
				half3 ambient = ShadeSH9(half4(N,1));
				
				half3 worldRefl = reflect(-i.worldViewDir, N);
				half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, worldRefl, roughness * UNITY_SPECCUBE_LOD_STEPS);
				half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR);
				
				#if defined(POINT) || defined(SPOT)
					half3 L = normalize(_WorldSpaceLightPos0.xyz - i.worldPos);
				#else
					half3 L = _WorldSpaceLightPos0.xyz;
				#endif
				float3 V = normalize(_WorldSpaceCameraPos - i.worldPos);
				float3 H = normalize(L + V);
				float nDotV = dot(N,V);
				float nDotL = dot(N,L);
				
				float termVisibility = saturate(SmithBeckmannVisibilityTerm(nDotL, nDotV, roughness));
				float termDiffuse = nDotL;//saturate(DisneyDiffuse(nDotV, nDotL, dot(L,H), sqrt(roughness)));
				float termSpecular = GGXTerm(dot(N,H), roughness);
				float termFresnel = FresnelTerm(0.02, dot(lerp(N,V,roughness), V));
				
				#ifndef UNITY_COLORSPACE_GAMMA
					Unity_ColorspaceConversion_RGB_Linear_float(termVisibility, termVisibility);
					Unity_ColorspaceConversion_RGB_Linear_float(termDiffuse, termDiffuse);
					Unity_ColorspaceConversion_RGB_Linear_float(termSpecular, termSpecular);
				#endif
				
				half3 specularStrength = saturate(lerp(termFresnel, 0, metalness)) * cavity;
				
				// We do iridescence here
				fixed4 iridescenceColor = tex2D (_Iridescence_Lookup, float2(nDotV, (127.5 - iridescenceID)/128));
				float iridescenceStrength = (1 - dot(dyeColor.rgb, half3(0.2126, 0.7152, 0.0722))) * (iridescenceID != -1) * dyemask;
				if (iridescenceID % 2 == 0)
				{
					diffuse = lerp(diffuse, iridescenceColor, iridescenceStrength);
					metalness = lerp(metalness, 1, iridescenceStrength);
					specularStrength = lerp(specularStrength, 0, dyemask);
				}
				else
				{
					specularStrength = lerp(specularStrength, iridescenceColor, iridescenceStrength);
				}
				
				//fixed shadow = SHADOW_ATTENUATION(i);
				UNITY_LIGHT_ATTENUATION(atten, i, i.worldPos)
				
				fixed occlusion = diffuse * gstack.r * (1 - gstack.r) + gstack.r;
				
				// Transmission
				fixed constantScattering = dot(N*-1,L) * 0.4;
				fixed forwardScattering = pow(saturate(dot(L,V)), 0.7);
				fixed transmissionDiffuseLobe = saturate(constantScattering + forwardScattering) * transmission;
				
				termDiffuse += transmissionDiffuseLobe;
				
				half3 final = (termDiffuse * diffuse + termSpecular * specularStrength + termSpecular * diffuse * metalness) * _LightColor0 * atten * occlusion;
				
				// Alpha blend
				if (_Maskclipvalue != 0)
					transparency = 1;
				
				return fixed4(final,transparency);
			}
			ENDCG
		}
		
		//UsePass "VertexLit/SHADOWCASTER"
    }
    FallBack "Standard"
}
