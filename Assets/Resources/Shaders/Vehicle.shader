Shader "SanAndreasUnity/Vehicle"
{
    Properties
    {
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
        _MaskTex ("Mask (A)", 2D) = "white" {}
        _NoiseTex ("Noise (A)", 2D) = "white" {}
        
        _Metallic ("Metallic", Range(0.0, 1.0)) = 0
        _Smoothness ("Smoothness", Range(0.0, 1.0)) = 0
        _Color ("Color", Color) = (1, 1, 1, 1)

        _CarColorIndex ("Car Color Index", Range(0, 8)) = 0

        _CarColor ("Car Color", Color) = (1, 1, 1, 1)
        _CarEmission ("Car Emission", Range(0, 10)) = 0

        _AlphaCutoff ("Alpha Cutoff", Range(0.0, 1.0)) = 0.5
    }

    SubShader
    {
        Tags {
            "RenderType" = "Opaque"
            "Queue" = "Geometry"
        }

        LOD 200
        Cull Off
        
        CGPROGRAM

        #pragma surface surf Standard addshadow alphatest:_AlphaCutoff
        #pragma target 3.0

        #define VEHICLE

        #include "Shared.cginc"

        ENDCG
    } 

    FallBack "Diffuse"
}
