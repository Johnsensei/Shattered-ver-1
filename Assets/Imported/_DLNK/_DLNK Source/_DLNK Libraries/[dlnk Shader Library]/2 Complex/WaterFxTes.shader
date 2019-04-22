// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:DLNK Shaders/Advanced/WaterFx2,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9614,x:32953,y:32769,varname:node_9614,prsc:2|diff-8716-OUT,spec-3093-OUT,gloss-5886-OUT,normal-3910-OUT,alpha-9781-OUT,refract-9401-OUT,disp-6255-OUT,tess-7181-OUT;n:type:ShaderForge.SFN_Lerp,id:8101,x:32425,y:32651,varname:node_8101,prsc:2|A-2224-RGB,B-2874-RGB,T-7299-OUT;n:type:ShaderForge.SFN_Tex2d,id:2224,x:32137,y:32303,ptovrint:True,ptlb:Water Texture A,ptin:_MainTexture,varname:_MainTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9a8034cfbd49c8549966870ff3ea5e90,ntxv:2,isnm:False|UVIN-4749-OUT;n:type:ShaderForge.SFN_Tex2d,id:2874,x:31985,y:32303,ptovrint:False,ptlb:Water Texture B,ptin:_WaterTextureB,varname:_WaterTextureB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2246b990bbf6b4c4c8768111fae00c62,ntxv:0,isnm:False|UVIN-8067-OUT;n:type:ShaderForge.SFN_Tex2d,id:64,x:30999,y:33378,varname:mask1,prsc:2,ntxv:0,isnm:False|UVIN-4749-OUT,TEX-8044-TEX;n:type:ShaderForge.SFN_SwitchProperty,id:7299,x:31377,y:33301,ptovrint:False,ptlb:Use Main Tex Alpha,ptin:_UseMainTexAlpha,varname:_UseMainTexAlpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4274-OUT,B-2224-A;n:type:ShaderForge.SFN_Tex2d,id:2325,x:32157,y:32548,ptovrint:False,ptlb:Water A Gloss,ptin:_WaterAGloss,varname:_WaterAGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4749-OUT;n:type:ShaderForge.SFN_Tex2d,id:1360,x:31985,y:32548,ptovrint:False,ptlb:Water B Gloss,ptin:_WaterBGloss,varname:_WaterBGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8067-OUT;n:type:ShaderForge.SFN_Lerp,id:9597,x:32703,y:32887,varname:node_9597,prsc:2|A-2325-R,B-4530-OUT,T-7299-OUT;n:type:ShaderForge.SFN_Multiply,id:5886,x:32703,y:32998,varname:node_5886,prsc:2|A-9597-OUT,B-2696-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2696,x:32541,y:33152,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:3093,x:32703,y:32822,varname:node_3093,prsc:2,v1:0;n:type:ShaderForge.SFN_Panner,id:5537,x:31226,y:32330,varname:node_5537,prsc:2,spu:1,spv:0|UVIN-9747-UVOUT,DIST-891-OUT;n:type:ShaderForge.SFN_Panner,id:3278,x:31226,y:32684,varname:node_3278,prsc:2,spu:1,spv:0|UVIN-9747-UVOUT,DIST-2856-OUT;n:type:ShaderForge.SFN_TexCoord,id:9747,x:31069,y:32155,varname:node_9747,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:3152,x:30644,y:32732,ptovrint:False,ptlb:Velocity A,ptin:_VelocityA,varname:_VelocityA,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:9097,x:30644,y:32853,ptovrint:False,ptlb:Velocity B,ptin:_VelocityB,varname:_VelocityB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Tex2d,id:1167,x:31843,y:32915,ptovrint:False,ptlb:Normal A,ptin:_NormalA,varname:_NormalA,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:937e3dbbd615b4d42a348fe95eb4d892,ntxv:3,isnm:True|UVIN-4749-OUT;n:type:ShaderForge.SFN_Tex2d,id:2996,x:31843,y:33153,ptovrint:False,ptlb:Normal B,ptin:_NormalB,varname:_NormalB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c5ab9bde27313f24f8dd917f31a18abb,ntxv:3,isnm:True|UVIN-8067-OUT;n:type:ShaderForge.SFN_Lerp,id:988,x:32048,y:33042,varname:node_988,prsc:2|A-1167-RGB,B-2996-RGB,T-7299-OUT;n:type:ShaderForge.SFN_Lerp,id:3910,x:32220,y:33042,varname:node_3910,prsc:2|A-988-OUT,B-7923-OUT,T-7507-OUT;n:type:ShaderForge.SFN_Vector3,id:7923,x:32048,y:33172,varname:node_7923,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:7507,x:32048,y:33319,ptovrint:False,ptlb:Bump Smooth,ptin:_BumpSmooth,varname:_BumpSmooth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:7318,x:32484,y:33338,varname:node_7318,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3910-OUT;n:type:ShaderForge.SFN_Multiply,id:9401,x:32688,y:33291,varname:node_9401,prsc:2|A-7318-OUT,B-5992-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5992,x:32562,y:33544,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:_Refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2961,x:32665,y:32440,varname:node_2961,prsc:2|A-7299-OUT,B-9105-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9105,x:32665,y:32578,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:_Opacity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:9781,x:32840,y:32510,varname:node_9781,prsc:2|IN-8602-OUT;n:type:ShaderForge.SFN_Time,id:3322,x:30928,y:33139,varname:node_3322,prsc:2;n:type:ShaderForge.SFN_Sin,id:8844,x:31152,y:33251,varname:node_8844,prsc:2|IN-3322-TSL;n:type:ShaderForge.SFN_Add,id:7452,x:31152,y:33081,varname:node_7452,prsc:2|A-3322-T,B-8844-OUT;n:type:ShaderForge.SFN_Depth,id:8104,x:32447,y:32267,varname:node_8104,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2484,x:32749,y:32255,varname:node_2484,prsc:2|A-8104-OUT,B-4498-OUT,C-610-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4498,x:32582,y:32200,ptovrint:False,ptlb:Depth Focus,ptin:_DepthFocus,varname:_DepthFocus,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:610,x:32582,y:32321,varname:node_610,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:8602,x:32840,y:32386,varname:node_8602,prsc:2|A-2484-OUT,B-2961-OUT;n:type:ShaderForge.SFN_Multiply,id:6255,x:32185,y:33593,varname:node_6255,prsc:2|A-3154-OUT,B-3670-OUT,C-7405-OUT;n:type:ShaderForge.SFN_NormalVector,id:3670,x:32185,y:33724,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:17,x:31835,y:33537,varname:_Depth1,prsc:2,ntxv:0,isnm:False|UVIN-4749-OUT,TEX-2091-TEX;n:type:ShaderForge.SFN_ValueProperty,id:7405,x:32185,y:33890,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:_Depth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:8532,x:32725,y:33165,varname:node_8532,prsc:2|IN-5886-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2091,x:31660,y:33655,ptovrint:True,ptlb:Height Map,ptin:_HeightMap,varname:_HeightMap,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:117,x:30641,y:32349,ptovrint:False,ptlb:Velocity X,ptin:_VelocityX,varname:_VelocityX,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:7110,x:31835,y:33714,varname:_node_5929,prsc:2,ntxv:0,isnm:False|UVIN-8067-OUT,TEX-2091-TEX;n:type:ShaderForge.SFN_ValueProperty,id:2181,x:30641,y:32463,ptovrint:False,ptlb:Velocity Y,ptin:_VelocityY,varname:_VelocityY,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:4749,x:31553,y:32407,varname:node_4749,prsc:2|A-5673-OUT,B-4919-OUT;n:type:ShaderForge.SFN_Append,id:8067,x:31552,y:32740,varname:node_8067,prsc:2|A-6435-OUT,B-9782-OUT;n:type:ShaderForge.SFN_Panner,id:2933,x:31226,y:32471,varname:node_2933,prsc:2,spu:0,spv:1|UVIN-9747-UVOUT,DIST-1185-OUT;n:type:ShaderForge.SFN_Panner,id:8235,x:31226,y:32821,varname:node_8235,prsc:2,spu:0,spv:1|UVIN-9747-UVOUT,DIST-8607-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6435,x:31383,y:32684,varname:node_6435,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3278-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9782,x:31383,y:32821,varname:node_9782,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8235-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:5673,x:31381,y:32330,varname:node_5673,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5537-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4919,x:31381,y:32471,varname:node_4919,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2933-UVOUT;n:type:ShaderForge.SFN_Multiply,id:891,x:31069,y:32330,varname:node_891,prsc:2|A-117-OUT,B-3322-T,C-3152-OUT;n:type:ShaderForge.SFN_Multiply,id:1185,x:31069,y:32471,varname:node_1185,prsc:2|A-2181-OUT,B-3322-T,C-3152-OUT;n:type:ShaderForge.SFN_Multiply,id:2856,x:31069,y:32694,varname:node_2856,prsc:2|A-117-OUT,B-7452-OUT,C-9097-OUT;n:type:ShaderForge.SFN_Multiply,id:8607,x:31069,y:32831,varname:node_8607,prsc:2|A-2181-OUT,B-7452-OUT,C-9097-OUT;n:type:ShaderForge.SFN_Lerp,id:3154,x:32021,y:33638,varname:node_3154,prsc:2|A-17-R,B-7110-R,T-7299-OUT;n:type:ShaderForge.SFN_Multiply,id:4530,x:32541,y:32901,varname:node_4530,prsc:2|A-1360-R,B-3818-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3818,x:32541,y:33032,ptovrint:False,ptlb:Secondary Gloss,ptin:_SecondaryGloss,varname:_SecondaryGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8716,x:32612,y:32689,varname:node_8716,prsc:2|A-8101-OUT,B-4872-RGB;n:type:ShaderForge.SFN_Color,id:4872,x:32137,y:32083,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6121324,c2:0.6473123,c3:0.75,c4:1;n:type:ShaderForge.SFN_Slider,id:7181,x:32765,y:33469,ptovrint:False,ptlb:Tessellation,ptin:_Tessellation,varname:_Tessellation,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:20;n:type:ShaderForge.SFN_ValueProperty,id:892,x:31177,y:33652,ptovrint:False,ptlb:Mask mult,ptin:_Maskmult,varname:_Maskmult,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7544,x:31177,y:33477,varname:node_7544,prsc:2|A-64-R,B-892-OUT,C-6475-R,D-2590-OUT;n:type:ShaderForge.SFN_Tex2d,id:6475,x:30999,y:33566,varname:mask2,prsc:2,ntxv:0,isnm:False|UVIN-8067-OUT,TEX-8044-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8044,x:30823,y:33463,ptovrint:True,ptlb:Mask,ptin:_DetailMask,varname:_DetailMask,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:7497,x:31060,y:32600,ptovrint:False,ptlb:Velocity X_copy,ptin:_VelocityX_copy,varname:_VelocityX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:4274,x:31377,y:33477,varname:node_4274,prsc:2|IN-7544-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2590,x:31153,y:33823,ptovrint:False,ptlb:Invert Mask,ptin:_InvertMask,varname:_InvertMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-103-OUT,B-6287-OUT;n:type:ShaderForge.SFN_Vector1,id:103,x:30938,y:33870,varname:node_103,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6287,x:30938,y:33935,varname:node_6287,prsc:2,v1:-1;proporder:4872-2224-2874-8044-2590-892-7299-2325-1360-2696-3818-3152-9097-1167-2996-7507-5992-9105-4498-2091-7181-7405-117-2181;pass:END;sub:END;*/

Shader "DLNK Shaders/Complex/WaterFxTes" {
    Properties {
        _MainColor ("Main Color", Color) = (0.6121324,0.6473123,0.75,1)
        _MainTexture ("Water Texture A", 2D) = "black" {}
        _WaterTextureB ("Water Texture B", 2D) = "white" {}
        _DetailMask ("Mask", 2D) = "white" {}
        [MaterialToggle] _InvertMask ("Invert Mask", Float ) = 1
        _Maskmult ("Mask mult", Float ) = 0.5
        [MaterialToggle] _UseMainTexAlpha ("Use Main Tex Alpha", Float ) = 0
        _WaterAGloss ("Water A Gloss", 2D) = "white" {}
        _WaterBGloss ("Water B Gloss", 2D) = "white" {}
        _Gloss ("Gloss", Float ) = 1
        _SecondaryGloss ("Secondary Gloss", Float ) = 0.5
        _VelocityA ("Velocity A", Float ) = 0.1
        _VelocityB ("Velocity B", Float ) = 0.2
        _NormalA ("Normal A", 2D) = "bump" {}
        _NormalB ("Normal B", 2D) = "bump" {}
        _BumpSmooth ("Bump Smooth", Float ) = 0
        _Refraction ("Refraction", Float ) = 1
        _Opacity ("Opacity", Float ) = 1
        _DepthFocus ("Depth Focus", Float ) = 1
        _HeightMap ("Height Map", 2D) = "white" {}
        _Tessellation ("Tessellation", Range(1, 20)) = 1
        _Depth ("Depth", Float ) = 0
        _VelocityX ("Velocity X", Float ) = 1
        _VelocityY ("Velocity Y", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone 
            #pragma target 5.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _WaterTextureB; uniform float4 _WaterTextureB_ST;
            uniform fixed _UseMainTexAlpha;
            uniform sampler2D _WaterAGloss; uniform float4 _WaterAGloss_ST;
            uniform sampler2D _WaterBGloss; uniform float4 _WaterBGloss_ST;
            uniform float _Gloss;
            uniform float _VelocityA;
            uniform float _VelocityB;
            uniform sampler2D _NormalA; uniform float4 _NormalA_ST;
            uniform sampler2D _NormalB; uniform float4 _NormalB_ST;
            uniform float _BumpSmooth;
            uniform float _Refraction;
            uniform float _Opacity;
            uniform float _DepthFocus;
            uniform float _Depth;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _VelocityX;
            uniform float _VelocityY;
            uniform float _SecondaryGloss;
            uniform float4 _MainColor;
            uniform float _Tessellation;
            uniform float _Maskmult;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform fixed _InvertMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3322 = _Time + _TimeEditor;
                    float2 node_4749 = float2((v.texcoord0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                    float4 _Depth1 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_4749, _HeightMap),0.0,0));
                    float node_7452 = (node_3322.g+sin(node_3322.r));
                    float2 node_8067 = float2((v.texcoord0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                    float4 _node_5929 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8067, _HeightMap),0.0,0));
                    float4 mask1 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_4749, _DetailMask),0.0,0));
                    float4 mask2 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_8067, _DetailMask),0.0,0));
                    float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(node_4749, _MainTexture),0.0,0));
                    float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                    v.vertex.xyz += (lerp(_Depth1.r,_node_5929.r,_UseMainTexAlpha_var)*v.normal*_Depth);
                }
                float Tessellation(TessVertex v){
                    return _Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3322 = _Time + _TimeEditor;
                float2 node_4749 = float2((i.uv0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(i.uv0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                float3 _NormalA_var = UnpackNormal(tex2D(_NormalA,TRANSFORM_TEX(node_4749, _NormalA)));
                float node_7452 = (node_3322.g+sin(node_3322.r));
                float2 node_8067 = float2((i.uv0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(i.uv0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                float3 _NormalB_var = UnpackNormal(tex2D(_NormalB,TRANSFORM_TEX(node_8067, _NormalB)));
                float4 mask1 = tex2D(_DetailMask,TRANSFORM_TEX(node_4749, _DetailMask));
                float4 mask2 = tex2D(_DetailMask,TRANSFORM_TEX(node_8067, _DetailMask));
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_4749, _MainTexture));
                float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                float3 node_3910 = lerp(lerp(_NormalA_var.rgb,_NormalB_var.rgb,_UseMainTexAlpha_var),float3(0,0,1),_BumpSmooth);
                float3 normalLocal = node_3910;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_3910.rg*_Refraction);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _WaterAGloss_var = tex2D(_WaterAGloss,TRANSFORM_TEX(node_4749, _WaterAGloss));
                float4 _WaterBGloss_var = tex2D(_WaterBGloss,TRANSFORM_TEX(node_8067, _WaterBGloss));
                float node_5886 = (lerp(_WaterAGloss_var.r,(_WaterBGloss_var.r*_SecondaryGloss),_UseMainTexAlpha_var)*_Gloss);
                float gloss = node_5886;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _WaterTextureB_var = tex2D(_WaterTextureB,TRANSFORM_TEX(node_8067, _WaterTextureB));
                float3 diffuseColor = (lerp(_MainTexture_var.rgb,_WaterTextureB_var.rgb,_UseMainTexAlpha_var)*_MainColor.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,saturate(((partZ*_DepthFocus*0.1)+(_UseMainTexAlpha_var*_Opacity)))),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone 
            #pragma target 5.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _WaterTextureB; uniform float4 _WaterTextureB_ST;
            uniform fixed _UseMainTexAlpha;
            uniform sampler2D _WaterAGloss; uniform float4 _WaterAGloss_ST;
            uniform sampler2D _WaterBGloss; uniform float4 _WaterBGloss_ST;
            uniform float _Gloss;
            uniform float _VelocityA;
            uniform float _VelocityB;
            uniform sampler2D _NormalA; uniform float4 _NormalA_ST;
            uniform sampler2D _NormalB; uniform float4 _NormalB_ST;
            uniform float _BumpSmooth;
            uniform float _Refraction;
            uniform float _Opacity;
            uniform float _DepthFocus;
            uniform float _Depth;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _VelocityX;
            uniform float _VelocityY;
            uniform float _SecondaryGloss;
            uniform float4 _MainColor;
            uniform float _Tessellation;
            uniform float _Maskmult;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform fixed _InvertMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                LIGHTING_COORDS(9,10)
                UNITY_FOG_COORDS(11)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3322 = _Time + _TimeEditor;
                    float2 node_4749 = float2((v.texcoord0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                    float4 _Depth1 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_4749, _HeightMap),0.0,0));
                    float node_7452 = (node_3322.g+sin(node_3322.r));
                    float2 node_8067 = float2((v.texcoord0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                    float4 _node_5929 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8067, _HeightMap),0.0,0));
                    float4 mask1 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_4749, _DetailMask),0.0,0));
                    float4 mask2 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_8067, _DetailMask),0.0,0));
                    float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(node_4749, _MainTexture),0.0,0));
                    float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                    v.vertex.xyz += (lerp(_Depth1.r,_node_5929.r,_UseMainTexAlpha_var)*v.normal*_Depth);
                }
                float Tessellation(TessVertex v){
                    return _Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3322 = _Time + _TimeEditor;
                float2 node_4749 = float2((i.uv0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(i.uv0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                float3 _NormalA_var = UnpackNormal(tex2D(_NormalA,TRANSFORM_TEX(node_4749, _NormalA)));
                float node_7452 = (node_3322.g+sin(node_3322.r));
                float2 node_8067 = float2((i.uv0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(i.uv0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                float3 _NormalB_var = UnpackNormal(tex2D(_NormalB,TRANSFORM_TEX(node_8067, _NormalB)));
                float4 mask1 = tex2D(_DetailMask,TRANSFORM_TEX(node_4749, _DetailMask));
                float4 mask2 = tex2D(_DetailMask,TRANSFORM_TEX(node_8067, _DetailMask));
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_4749, _MainTexture));
                float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                float3 node_3910 = lerp(lerp(_NormalA_var.rgb,_NormalB_var.rgb,_UseMainTexAlpha_var),float3(0,0,1),_BumpSmooth);
                float3 normalLocal = node_3910;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_3910.rg*_Refraction);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _WaterAGloss_var = tex2D(_WaterAGloss,TRANSFORM_TEX(node_4749, _WaterAGloss));
                float4 _WaterBGloss_var = tex2D(_WaterBGloss,TRANSFORM_TEX(node_8067, _WaterBGloss));
                float node_5886 = (lerp(_WaterAGloss_var.r,(_WaterBGloss_var.r*_SecondaryGloss),_UseMainTexAlpha_var)*_Gloss);
                float gloss = node_5886;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _WaterTextureB_var = tex2D(_WaterTextureB,TRANSFORM_TEX(node_8067, _WaterTextureB));
                float3 diffuseColor = (lerp(_MainTexture_var.rgb,_WaterTextureB_var.rgb,_UseMainTexAlpha_var)*_MainColor.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * saturate(((partZ*_DepthFocus*0.1)+(_UseMainTexAlpha_var*_Opacity))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform fixed _UseMainTexAlpha;
            uniform float _VelocityA;
            uniform float _VelocityB;
            uniform float _Depth;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _VelocityX;
            uniform float _VelocityY;
            uniform float _Tessellation;
            uniform float _Maskmult;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform fixed _InvertMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3322 = _Time + _TimeEditor;
                    float2 node_4749 = float2((v.texcoord0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                    float4 _Depth1 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_4749, _HeightMap),0.0,0));
                    float node_7452 = (node_3322.g+sin(node_3322.r));
                    float2 node_8067 = float2((v.texcoord0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                    float4 _node_5929 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8067, _HeightMap),0.0,0));
                    float4 mask1 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_4749, _DetailMask),0.0,0));
                    float4 mask2 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_8067, _DetailMask),0.0,0));
                    float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(node_4749, _MainTexture),0.0,0));
                    float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                    v.vertex.xyz += (lerp(_Depth1.r,_node_5929.r,_UseMainTexAlpha_var)*v.normal*_Depth);
                }
                float Tessellation(TessVertex v){
                    return _Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _WaterTextureB; uniform float4 _WaterTextureB_ST;
            uniform fixed _UseMainTexAlpha;
            uniform sampler2D _WaterAGloss; uniform float4 _WaterAGloss_ST;
            uniform sampler2D _WaterBGloss; uniform float4 _WaterBGloss_ST;
            uniform float _Gloss;
            uniform float _VelocityA;
            uniform float _VelocityB;
            uniform float _Depth;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _VelocityX;
            uniform float _VelocityY;
            uniform float _SecondaryGloss;
            uniform float4 _MainColor;
            uniform float _Tessellation;
            uniform float _Maskmult;
            uniform sampler2D _DetailMask; uniform float4 _DetailMask_ST;
            uniform fixed _InvertMask;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3322 = _Time + _TimeEditor;
                    float2 node_4749 = float2((v.texcoord0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                    float4 _Depth1 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_4749, _HeightMap),0.0,0));
                    float node_7452 = (node_3322.g+sin(node_3322.r));
                    float2 node_8067 = float2((v.texcoord0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(v.texcoord0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                    float4 _node_5929 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8067, _HeightMap),0.0,0));
                    float4 mask1 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_4749, _DetailMask),0.0,0));
                    float4 mask2 = tex2Dlod(_DetailMask,float4(TRANSFORM_TEX(node_8067, _DetailMask),0.0,0));
                    float4 _MainTexture_var = tex2Dlod(_MainTexture,float4(TRANSFORM_TEX(node_4749, _MainTexture),0.0,0));
                    float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                    v.vertex.xyz += (lerp(_Depth1.r,_node_5929.r,_UseMainTexAlpha_var)*v.normal*_Depth);
                }
                float Tessellation(TessVertex v){
                    return _Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 node_3322 = _Time + _TimeEditor;
                float2 node_4749 = float2((i.uv0+(_VelocityX*node_3322.g*_VelocityA)*float2(1,0)).r,(i.uv0+(_VelocityY*node_3322.g*_VelocityA)*float2(0,1)).g);
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_4749, _MainTexture));
                float node_7452 = (node_3322.g+sin(node_3322.r));
                float2 node_8067 = float2((i.uv0+(_VelocityX*node_7452*_VelocityB)*float2(1,0)).r,(i.uv0+(_VelocityY*node_7452*_VelocityB)*float2(0,1)).g);
                float4 _WaterTextureB_var = tex2D(_WaterTextureB,TRANSFORM_TEX(node_8067, _WaterTextureB));
                float4 mask1 = tex2D(_DetailMask,TRANSFORM_TEX(node_4749, _DetailMask));
                float4 mask2 = tex2D(_DetailMask,TRANSFORM_TEX(node_8067, _DetailMask));
                float _UseMainTexAlpha_var = lerp( saturate((mask1.r*_Maskmult*mask2.r*lerp( 1.0, (-1.0), _InvertMask ))), _MainTexture_var.a, _UseMainTexAlpha );
                float3 diffColor = (lerp(_MainTexture_var.rgb,_WaterTextureB_var.rgb,_UseMainTexAlpha_var)*_MainColor.rgb);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float4 _WaterAGloss_var = tex2D(_WaterAGloss,TRANSFORM_TEX(node_4749, _WaterAGloss));
                float4 _WaterBGloss_var = tex2D(_WaterBGloss,TRANSFORM_TEX(node_8067, _WaterBGloss));
                float node_5886 = (lerp(_WaterAGloss_var.r,(_WaterBGloss_var.r*_SecondaryGloss),_UseMainTexAlpha_var)*_Gloss);
                float roughness = 1.0 - node_5886;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "DLNK Shaders/Advanced/WaterFx2"
    CustomEditor "ShaderForgeMaterialInspector"
}
