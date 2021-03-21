#include "sys_sec_crypto_native.h"

// clang-format off

static const CLR_RT_MethodHandler method_lookup[] =
{
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    Library_sys_sec_crypto_native_System_Security_Cryptography_SHA256::NativeComputeHash___SZARRAY_U1__SZARRAY_U1__I4__I4,
    Library_sys_sec_crypto_native_System_Security_Cryptography_SHA256::NativeDispose___VOID__BOOLEAN,
    NULL,
    NULL,
    Library_sys_sec_crypto_native_System_Security_Cryptography_SHA256::NativeCreate___STATIC__SystemSecurityCryptographySHA256,
};

const CLR_RT_NativeAssemblyData g_CLR_AssemblyNative_System_Security_Cryptography =
{
    "System.Security.Cryptography",
    0x9E927536,
    method_lookup,
    { 100, 0, 0, 0 }
};

// clang-format on
