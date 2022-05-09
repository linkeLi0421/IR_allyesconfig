; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_mech.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_mech.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gss_api_mech = type { %struct.list_head, ptr, %struct.rpcsec_gss_oid, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.gss_api_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pf_desc = type { i32, i32, i32, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gss_krb5_enctype = type { i32, i32, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.krb5_ctx = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.atomic_t, %struct.atomic64_t, i64, %struct.xdr_netobj, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__UNIQUE_ID_alias280 = internal constant [40 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-krb5\00", section ".modinfo", align 1
@__UNIQUE_ID_alias281 = internal constant [41 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-krb5i\00", section ".modinfo", align 1
@__UNIQUE_ID_alias282 = internal constant [41 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-krb5p\00", section ".modinfo", align 1
@__UNIQUE_ID_alias283 = internal constant [42 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-390003\00", section ".modinfo", align 1
@__UNIQUE_ID_alias284 = internal constant [42 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-390004\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [42 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-390005\00", section ".modinfo", align 1
@__UNIQUE_ID_alias286 = internal constant [56 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-1.2.840.113554.1.2.2\00", section ".modinfo", align 1
@gss_kerberos_mech = internal global { %struct.gss_api_mech, [60 x i8] } { %struct.gss_api_mech { %struct.list_head zeroinitializer, ptr null, %struct.rpcsec_gss_oid { i32 9, [32 x i8] c"*\86H\86\F7\12\01\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, ptr @.str, ptr @gss_kerberos_ops, i32 3, ptr @gss_kerberos_pfs, ptr @.str.1 }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file287 = internal constant [57 x i8] c"rpcsec_gss_krb5.file=net/sunrpc/auth_gss/rpcsec_gss_krb5\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [28 x i8] c"rpcsec_gss_krb5.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rpcsec_gss_krb5__289_653_init_kerberos_module6 = internal global ptr @init_kerberos_module, section ".initcall6.init", align 4
@__exitcall_cleanup_kerberos_module = internal global ptr @cleanup_kerberos_module, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"krb5\00", [27 x i8] zeroinitializer }, align 32
@gss_kerberos_ops = internal constant { %struct.gss_api_ops, [40 x i8] } { %struct.gss_api_ops { ptr @gss_import_sec_context_kerberos, ptr @gss_get_mic_kerberos, ptr @gss_verify_mic_kerberos, ptr @gss_wrap_kerberos, ptr @gss_unwrap_kerberos, ptr @gss_delete_sec_context_kerberos }, [40 x i8] zeroinitializer }, align 32
@gss_kerberos_pfs = internal global { [3 x %struct.pf_desc], [44 x i8] } { [3 x %struct.pf_desc] [%struct.pf_desc { i32 390003, i32 0, i32 1, ptr @.str, ptr null, ptr null, i8 0 }, %struct.pf_desc { i32 390004, i32 0, i32 2, ptr @.str.49, ptr null, ptr null, i8 1 }, %struct.pf_desc { i32 390005, i32 0, i32 3, ptr @.str.50, ptr null, ptr null, i8 1 }], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"18,17,16\00", [23 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@gss_import_sec_context_kerberos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RPC:       %s: returning %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gss_import_sec_context_kerberos\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/sunrpc/auth_gss/gss_krb5_mech.c\00", [60 x i8] zeroinitializer }, align 32
@gss_import_sec_context_kerberos._entry_ptr = internal global ptr @gss_import_sec_context_kerberos._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@supported_gss_krb5_enctypes = internal constant { [3 x %struct.gss_krb5_enctype], [52 x i8] } { [3 x %struct.gss_krb5_enctype] [%struct.gss_krb5_enctype { i32 6, i32 12, ptr @.str.5, ptr @.str.6, ptr @.str.7, i16 4, i16 2, i32 8, i32 8, i32 20, i32 1, i32 21, i32 24, ptr @krb5_encrypt, ptr @krb5_decrypt, ptr @gss_krb5_des3_make_key, ptr null, ptr null }, %struct.gss_krb5_enctype { i32 17, i32 15, ptr @.str.8, ptr @.str.9, ptr @.str.7, i16 -1, i16 -1, i32 16, i32 16, i32 12, i32 1, i32 16, i32 16, ptr @krb5_encrypt, ptr @krb5_decrypt, ptr @gss_krb5_aes_make_key, ptr @gss_krb5_aes_encrypt, ptr @gss_krb5_aes_decrypt }, %struct.gss_krb5_enctype { i32 18, i32 16, ptr @.str.10, ptr @.str.9, ptr @.str.7, i16 -1, i16 -1, i32 16, i32 16, i32 12, i32 1, i32 32, i32 32, ptr @krb5_encrypt, ptr @krb5_decrypt, ptr @gss_krb5_aes_make_key, ptr @gss_krb5_aes_encrypt, ptr @gss_krb5_aes_decrypt }], [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"des3-hmac-sha1\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbc(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hmac(sha1)\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aes128-cts\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cts(cbc(aes))\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aes256-cts\00", [21 x i8] zeroinitializer }, align 32
@get_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014gss_kerberos_mech: unsupported encryption key algorithm %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get_key\00", [24 x i8] zeroinitializer }, align 32
@get_key._entry_ptr = internal global ptr @get_key._entry, section ".printk_index", align 4
@get_key._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014gss_kerberos_mech: unable to initialize crypto algorithm %s\0A\00", [33 x i8] zeroinitializer }, align 32
@get_key._entry_ptr.15 = internal global ptr @get_key._entry.13, section ".printk_index", align 4
@get_key._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014gss_kerberos_mech: error setting key for crypto algorithm %s\0A\00", [32 x i8] zeroinitializer }, align 32
@get_key._entry_ptr.18 = internal global ptr @get_key._entry.16, section ".printk_index", align 4
@gss_import_v2_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: seq_send64 %llx, seq_send %x overflow?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gss_import_v2_context\00", [42 x i8] zeroinitializer }, align 32
@gss_import_v2_context._entry_ptr = internal global ptr @gss_import_v2_context._entry, section ".printk_index", align 4
@gss_import_v2_context._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"gss_kerberos_mech: unsupported krb5 enctype %u\0A\00", [48 x i8] zeroinitializer }, align 32
@gss_import_v2_context._entry_ptr.23 = internal global ptr @gss_import_v2_context._entry.21, section ".printk_index", align 4
@context_derive_keys_des3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Error %d deriving cksum key\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"context_derive_keys_des3\00", [39 x i8] zeroinitializer }, align 32
@context_derive_keys_des3._entry_ptr = internal global ptr @context_derive_keys_des3._entry, section ".printk_index", align 4
@context_v2_alloc_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"gss_kerberos_mech: unable to initialize crypto algorithm %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"context_v2_alloc_cipher\00", [40 x i8] zeroinitializer }, align 32
@context_v2_alloc_cipher._entry_ptr = internal global ptr @context_v2_alloc_cipher._entry, section ".printk_index", align 4
@context_v2_alloc_cipher._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"gss_kerberos_mech: error setting key for crypto algorithm %s\0A\00", [34 x i8] zeroinitializer }, align 32
@context_v2_alloc_cipher._entry_ptr.30 = internal global ptr @context_v2_alloc_cipher._entry.28, section ".printk_index", align 4
@context_derive_keys_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error %d deriving initiator_seal key\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"context_derive_keys_new\00", [40 x i8] zeroinitializer }, align 32
@context_derive_keys_new._entry_ptr = internal global ptr @context_derive_keys_new._entry, section ".printk_index", align 4
@context_derive_keys_new._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error %d deriving acceptor_seal key\0A\00", [55 x i8] zeroinitializer }, align 32
@context_derive_keys_new._entry_ptr.35 = internal global ptr @context_derive_keys_new._entry.33, section ".printk_index", align 4
@context_derive_keys_new._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error %d deriving initiator_sign key\0A\00", [54 x i8] zeroinitializer }, align 32
@context_derive_keys_new._entry_ptr.38 = internal global ptr @context_derive_keys_new._entry.36, section ".printk_index", align 4
@context_derive_keys_new._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.4, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error %d deriving acceptor_sign key\0A\00", [55 x i8] zeroinitializer }, align 32
@context_derive_keys_new._entry_ptr.41 = internal global ptr @context_derive_keys_new._entry.39, section ".printk_index", align 4
@context_derive_keys_new._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.4, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Error %d deriving initiator_integ key\0A\00", [53 x i8] zeroinitializer }, align 32
@context_derive_keys_new._entry_ptr.44 = internal global ptr @context_derive_keys_new._entry.42, section ".printk_index", align 4
@context_derive_keys_new._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.4, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error %d deriving acceptor_integ key\0A\00", [54 x i8] zeroinitializer }, align 32
@context_derive_keys_new._entry_ptr.47 = internal global ptr @context_derive_keys_new._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krb5i\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krb5p\00", [26 x i8] zeroinitializer }, align 32
@init_kerberos_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to register kerberos gss mechanism!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_kerberos_module\00", [43 x i8] zeroinitializer }, align 32
@init_kerberos_module._entry_ptr = internal global ptr @init_kerberos_module._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 17, i64 18]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"gss_kerberos_mech\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 627, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 628, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"gss_kerberos_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 587, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"gss_kerberos_pfs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 596, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 634, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 569, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"supported_gss_krb5_enctypes\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 32, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 62, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 63, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 64, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 83, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 84, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 106, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 169, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 180, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 186, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 492, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 505, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 341, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 288, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 293, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 375, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 390, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 405, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 415, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 425, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 435, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 444, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 607, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 614, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [39 x i8] c"../net/sunrpc/auth_gss/gss_krb5_mech.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 643, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias280, ptr @__UNIQUE_ID_alias281, ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_alias283, ptr @__UNIQUE_ID_alias284, ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_alias286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_cleanup_kerberos_module, ptr @__initcall__kmod_rpcsec_gss_krb5__289_653_init_kerberos_module6, ptr @cleanup_kerberos_module, ptr @context_derive_keys_des3._entry, ptr @context_derive_keys_des3._entry_ptr, ptr @context_derive_keys_new._entry, ptr @context_derive_keys_new._entry.33, ptr @context_derive_keys_new._entry.36, ptr @context_derive_keys_new._entry.39, ptr @context_derive_keys_new._entry.42, ptr @context_derive_keys_new._entry.45, ptr @context_derive_keys_new._entry_ptr, ptr @context_derive_keys_new._entry_ptr.35, ptr @context_derive_keys_new._entry_ptr.38, ptr @context_derive_keys_new._entry_ptr.41, ptr @context_derive_keys_new._entry_ptr.44, ptr @context_derive_keys_new._entry_ptr.47, ptr @context_v2_alloc_cipher._entry, ptr @context_v2_alloc_cipher._entry.28, ptr @context_v2_alloc_cipher._entry_ptr, ptr @context_v2_alloc_cipher._entry_ptr.30, ptr @get_key._entry, ptr @get_key._entry.13, ptr @get_key._entry.16, ptr @get_key._entry_ptr, ptr @get_key._entry_ptr.15, ptr @get_key._entry_ptr.18, ptr @gss_import_sec_context_kerberos._entry, ptr @gss_import_sec_context_kerberos._entry_ptr, ptr @gss_import_v2_context._entry, ptr @gss_import_v2_context._entry.21, ptr @gss_import_v2_context._entry_ptr, ptr @gss_import_v2_context._entry_ptr.23, ptr @init_kerberos_module._entry, ptr @init_kerberos_module._entry_ptr, ptr @gss_kerberos_mech, ptr @.str, ptr @gss_kerberos_ops, ptr @gss_kerberos_pfs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @supported_gss_krb5_enctypes, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_kerberos_mech to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_kerberos_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_kerberos_pfs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_import_sec_context_kerberos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_gss_krb5_enctypes to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_key._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_import_v2_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_import_v2_context._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_des3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_v2_alloc_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_v2_alloc_cipher._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_new._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_new._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_new._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_new._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_derive_keys_new._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_kerberos_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_kerberos_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gss_mech_unregister(ptr noundef nonnull @gss_kerberos_mech) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_kerberos_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gss_mech_register(ptr noundef nonnull @gss_kerberos_mech) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_import_sec_context_kerberos(ptr noundef %p, i32 noundef %len, ptr nocapture noundef writeonly %ctx_id, ptr noundef writeonly %endtime, i32 noundef %gfp_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 %len
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !132

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_mask, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 328) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %len)
  %cmp1 = icmp eq i32 %len, 85
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 4
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr
  %cmp1.i.i = icmp ult ptr %add.ptr.i.i, %p
  %spec.select.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %spec.select.i.i, label %if.then2.gss_import_v1_context.exit_crit_edge, label %simple_get_bytes.exit.i, !prof !133

if.then2.gss_import_v1_context.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %gss_import_v1_context.exit

simple_get_bytes.exit.i:                          ; preds = %if.then2
  %2 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %p, align 1
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call7.i.i, align 8
  %cmp.i108.i = icmp ugt ptr %add.ptr.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.i, label %simple_get_bytes.exit.i.gss_import_v1_context.exit_crit_edge, label %if.then5.i

simple_get_bytes.exit.i.gss_import_v1_context.exit_crit_edge: ; preds = %simple_get_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gss_import_v1_context.exit

if.then5.i:                                       ; preds = %simple_get_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %enctype.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %enctype.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %enctype.i, align 4
  %gk5e.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gk5e.i, align 4
  br label %gss_import_v1_context.exit

gss_import_v1_context.exit:                       ; preds = %if.then5.i, %simple_get_bytes.exit.i.gss_import_v1_context.exit_crit_edge, %if.then2.gss_import_v1_context.exit_crit_edge
  %p.addr.2.i = phi ptr [ %add.ptr.i.i, %simple_get_bytes.exit.i.gss_import_v1_context.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then5.i ], [ inttoptr (i32 -14 to ptr), %if.then2.gss_import_v1_context.exit_crit_edge ]
  %7 = ptrtoint ptr %p.addr.2.i to i32
  br label %if.end5

if.else:                                          ; preds = %if.end
  br i1 %spec.select.i.i, label %if.else.out_err.i_crit_edge, label %simple_get_bytes.exit.i41, !prof !133

if.else.out_err.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

simple_get_bytes.exit.i41:                        ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %p, align 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags.i, align 8
  %cmp.i143.i = icmp ugt ptr %add.ptr.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143.i, label %simple_get_bytes.exit.i41.out_err.i_crit_edge, label %if.end.i

simple_get_bytes.exit.i41.out_err.i_crit_edge:    ; preds = %simple_get_bytes.exit.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end.i:                                         ; preds = %simple_get_bytes.exit.i41
  %and.i = and i32 %9, 1
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %call7.i.i, align 8
  %add.ptr.i144.i = getelementptr i8, ptr %p, i32 8
  %cmp.i145.i = icmp ugt ptr %add.ptr.i144.i, %add.ptr
  %cmp1.i146.i = icmp ult ptr %add.ptr.i144.i, %add.ptr.i.i
  %spec.select.i147.i = or i1 %cmp1.i146.i, %cmp.i145.i
  br i1 %spec.select.i147.i, label %if.end.i.out_err.i_crit_edge, label %simple_get_bytes.exit150.i, !prof !133

if.end.i.out_err.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

simple_get_bytes.exit150.i:                       ; preds = %if.end.i
  %cmp.i151.i = icmp ugt ptr %add.ptr.i144.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151.i, label %simple_get_bytes.exit150.i.out_err.i_crit_edge, label %if.end6.i

simple_get_bytes.exit150.i.out_err.i_crit_edge:   ; preds = %simple_get_bytes.exit150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end6.i:                                        ; preds = %simple_get_bytes.exit150.i
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %time32.0.copyload.i = load i32, ptr %add.ptr.i.i, align 1
  %conv.i = zext i32 %time32.0.copyload.i to i64
  %endtime.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %endtime.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %endtime.i, align 8
  %add.ptr.i152.i = getelementptr i8, ptr %p, i32 16
  %cmp.i153.i = icmp ugt ptr %add.ptr.i152.i, %add.ptr
  %cmp1.i154.i = icmp ult ptr %add.ptr.i152.i, %add.ptr.i144.i
  %spec.select.i155.i = or i1 %cmp1.i154.i, %cmp.i153.i
  br i1 %spec.select.i155.i, label %if.end6.i.out_err.i_crit_edge, label %simple_get_bytes.exit158.i, !prof !133

if.end6.i.out_err.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

simple_get_bytes.exit158.i:                       ; preds = %if.end6.i
  %14 = ptrtoint ptr %add.ptr.i144.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %seq_send64.0.copyload.i = load i64, ptr %add.ptr.i144.i, align 1
  %cmp.i159.i = icmp ugt ptr %add.ptr.i152.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159.i, label %simple_get_bytes.exit158.i.out_err.i_crit_edge, label %if.end10.i

simple_get_bytes.exit158.i.out_err.i_crit_edge:   ; preds = %simple_get_bytes.exit158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end10.i:                                       ; preds = %simple_get_bytes.exit158.i
  %seq_send6411.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seq_send6411.i, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %seq_send6411.i, i64 noundef %seq_send64.0.copyload.i) #6
  %seq_send.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 12
  %conv12.i = trunc i64 %seq_send64.0.copyload.i to i32
  %call.i.i140.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seq_send.i, i32 noundef 4) #6
  %15 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %conv12.i, ptr %seq_send.i, align 8
  %call.i.i141.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %seq_send.i, i32 noundef 4) #6
  %16 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %seq_send.i, align 8
  %conv15.i = sext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %seq_send64.0.copyload.i, i64 %conv15.i)
  %cmp.not.i = icmp eq i64 %seq_send64.0.copyload.i, %conv15.i
  br i1 %cmp.not.i, label %if.end30.i, label %do.body.i

do.body.i:                                        ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %18 = load i32, ptr @rpc_debug, align 4
  %and18.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not.i, label %do.body.i.out_err.i_crit_edge, label %do.end.i, !prof !132

do.body.i.out_err.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i142.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %seq_send.i, i32 noundef 4) #6
  %19 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %seq_send.i, align 8
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i64 noundef %seq_send64.0.copyload.i, i32 noundef %20) #9
  br label %out_err.i

if.end30.i:                                       ; preds = %if.end10.i
  %enctype.i42 = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 1
  %add.ptr.i160.i = getelementptr i8, ptr %p, i32 20
  %cmp.i161.i = icmp ugt ptr %add.ptr.i160.i, %add.ptr
  %cmp1.i162.i = icmp ult ptr %add.ptr.i160.i, %add.ptr.i152.i
  %spec.select.i163.i = or i1 %cmp1.i162.i, %cmp.i161.i
  br i1 %spec.select.i163.i, label %if.end30.i.out_err.i_crit_edge, label %simple_get_bytes.exit166.i, !prof !133

if.end30.i.out_err.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

simple_get_bytes.exit166.i:                       ; preds = %if.end30.i
  %21 = ptrtoint ptr %add.ptr.i152.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr.i152.i, align 1
  %23 = ptrtoint ptr %enctype.i42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %enctype.i42, align 4
  %cmp.i167.i = icmp ugt ptr %add.ptr.i160.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.i, label %simple_get_bytes.exit166.i.out_err.i_crit_edge, label %if.end34.i

simple_get_bytes.exit166.i.out_err.i_crit_edge:   ; preds = %simple_get_bytes.exit166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end34.i:                                       ; preds = %simple_get_bytes.exit166.i
  %24 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.body47.i [
    i32 16, label %if.end40.thread.i
    i32 6, label %if.end34.i.if.end67.i_crit_edge
    i32 17, label %cleanup.fold.split.i.i
    i32 18, label %cleanup.fold.split8.i.i
  ]

if.end34.i.if.end67.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

if.end40.thread.i:                                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %enctype.i42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %enctype.i42, align 4
  br label %if.end67.i

cleanup.fold.split.i.i:                           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

cleanup.fold.split8.i.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i

do.body47.i:                                      ; preds = %if.end34.i
  %gk5e.i43 = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %gk5e.i43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %gk5e.i43, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %27 = load i32, ptr @rpc_debug, align 4
  %and48.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body47.i.out_err.i_crit_edge, label %do.end59.i, !prof !132

do.body47.i.out_err.i_crit_edge:                  ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

do.end59.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %22) #9
  br label %out_err.i

if.end67.i:                                       ; preds = %cleanup.fold.split8.i.i, %cleanup.fold.split.i.i, %if.end40.thread.i, %if.end34.i.if.end67.i_crit_edge
  %retval.0.i168.ph.i = phi ptr [ @supported_gss_krb5_enctypes, %if.end40.thread.i ], [ getelementptr inbounds ([3 x %struct.gss_krb5_enctype], ptr @supported_gss_krb5_enctypes, i32 0, i32 2), %cleanup.fold.split8.i.i ], [ getelementptr inbounds ([3 x %struct.gss_krb5_enctype], ptr @supported_gss_krb5_enctypes, i32 0, i32 1), %cleanup.fold.split.i.i ], [ @supported_gss_krb5_enctypes, %if.end34.i.if.end67.i_crit_edge ]
  %gk5e191.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %gk5e191.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i168.ph.i, ptr %gk5e191.i, align 4
  %keylength.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %retval.0.i168.ph.i, i32 0, i32 12
  %29 = ptrtoint ptr %keylength.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %keylength.i, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %add.ptr.i160.i, i32 %30
  %cmp.i170.i = icmp ugt ptr %add.ptr.i169.i, %add.ptr
  %cmp1.i171.i = icmp ult ptr %add.ptr.i169.i, %add.ptr.i160.i
  %spec.select.i172.i = or i1 %cmp.i170.i, %cmp1.i171.i
  br i1 %spec.select.i172.i, label %if.end67.i.out_err.i_crit_edge, label %simple_get_bytes.exit175.i, !prof !133

if.end67.i.out_err.i_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

simple_get_bytes.exit175.i:                       ; preds = %if.end67.i
  %Ksess.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 10
  %31 = call ptr @memcpy(ptr %Ksess.i, ptr %add.ptr.i160.i, i32 %30)
  %cmp.i176.i = icmp ugt ptr %add.ptr.i169.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176.i, label %simple_get_bytes.exit175.i.out_err.i_crit_edge, label %if.end72.i

simple_get_bytes.exit175.i.out_err.i_crit_edge:   ; preds = %simple_get_bytes.exit175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end72.i:                                       ; preds = %simple_get_bytes.exit175.i
  %cmp73.not.i = icmp eq ptr %add.ptr.i169.i, %add.ptr
  br i1 %cmp73.not.i, label %if.end77.i, label %if.end72.i.out_err.i_crit_edge

if.end72.i.out_err.i_crit_edge:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end77.i:                                       ; preds = %if.end72.i
  %32 = load i32, ptr getelementptr inbounds (%struct.gss_api_mech, ptr @gss_kerberos_mech, i32 0, i32 2), align 4
  %call78.i = tail call ptr @kmemdup(ptr noundef getelementptr inbounds (%struct.gss_api_mech, ptr @gss_kerberos_mech, i32 0, i32 2, i32 1), i32 noundef %32, i32 noundef %gfp_mask) #6
  %data.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call78.i, ptr %data.i, align 4
  %cmp81.i = icmp eq ptr %call78.i, null
  br i1 %cmp81.i, label %if.end77.i.out_err.i_crit_edge, label %if.end91.i, !prof !133

if.end77.i.out_err.i_crit_edge:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end91.i:                                       ; preds = %if.end77.i
  %mech_used.i = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 15
  %34 = load i32, ptr getelementptr inbounds (%struct.gss_api_mech, ptr @gss_kerberos_mech, i32 0, i32 2), align 4
  %35 = ptrtoint ptr %mech_used.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mech_used.i, align 8
  %36 = ptrtoint ptr %enctype.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enctype.i42, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %37, label %if.end91.i.if.else11_crit_edge [
    i32 6, label %sw.bb.i
    i32 17, label %if.end91.i.sw.bb95.i_crit_edge
    i32 18, label %if.end91.i.sw.bb95.i_crit_edge48
  ]

if.end91.i.sw.bb95.i_crit_edge48:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb95.i

if.end91.i.sw.bb95.i_crit_edge:                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb95.i

if.end91.i.if.else11_crit_edge:                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else11

sw.bb.i:                                          ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  %call94.i = tail call fastcc i32 @context_derive_keys_des3(ptr noundef nonnull %call7.i.i, i32 noundef %gfp_mask) #6
  br label %if.end5

sw.bb95.i:                                        ; preds = %if.end91.i.sw.bb95.i_crit_edge, %if.end91.i.sw.bb95.i_crit_edge48
  %call96.i = tail call fastcc i32 @context_derive_keys_new(ptr noundef nonnull %call7.i.i, i32 noundef %gfp_mask) #6
  br label %if.end5

out_err.i:                                        ; preds = %if.end77.i.out_err.i_crit_edge, %if.end72.i.out_err.i_crit_edge, %simple_get_bytes.exit175.i.out_err.i_crit_edge, %if.end67.i.out_err.i_crit_edge, %do.end59.i, %do.body47.i.out_err.i_crit_edge, %simple_get_bytes.exit166.i.out_err.i_crit_edge, %if.end30.i.out_err.i_crit_edge, %do.end.i, %do.body.i.out_err.i_crit_edge, %simple_get_bytes.exit158.i.out_err.i_crit_edge, %if.end6.i.out_err.i_crit_edge, %simple_get_bytes.exit150.i.out_err.i_crit_edge, %if.end.i.out_err.i_crit_edge, %simple_get_bytes.exit.i41.out_err.i_crit_edge, %if.else.out_err.i_crit_edge
  %p.addr.0.i = phi ptr [ %add.ptr.i.i, %simple_get_bytes.exit.i41.out_err.i_crit_edge ], [ %add.ptr.i144.i, %simple_get_bytes.exit150.i.out_err.i_crit_edge ], [ %add.ptr.i152.i, %simple_get_bytes.exit158.i.out_err.i_crit_edge ], [ %add.ptr.i160.i, %simple_get_bytes.exit166.i.out_err.i_crit_edge ], [ %add.ptr.i169.i, %simple_get_bytes.exit175.i.out_err.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %do.body.i.out_err.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end59.i ], [ inttoptr (i32 -22 to ptr), %do.body47.i.out_err.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end72.i.out_err.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end77.i.out_err.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.else.out_err.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end.i.out_err.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end6.i.out_err.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end30.i.out_err.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end67.i.out_err.i_crit_edge ]
  %39 = ptrtoint ptr %p.addr.0.i to i32
  br label %if.end5

if.end5:                                          ; preds = %out_err.i, %sw.bb95.i, %sw.bb.i, %gss_import_v1_context.exit
  %ret.0 = phi i32 [ %7, %gss_import_v1_context.exit ], [ %39, %out_err.i ], [ %call96.i, %sw.bb95.i ], [ %call94.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp6 = icmp eq i32 %ret.0, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.else11_crit_edge

if.end5.if.else11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else11

if.then7:                                         ; preds = %if.end5
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %ctx_id, i32 0, i32 1
  %40 = ptrtoint ptr %internal_ctx_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %internal_ctx_id, align 4
  %tobool.not = icmp eq ptr %endtime, null
  br i1 %tobool.not, label %if.then7.do.body_crit_edge, label %if.then8

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %endtime9 = getelementptr inbounds %struct.krb5_ctx, ptr %call7.i.i, i32 0, i32 14
  %41 = ptrtoint ptr %endtime9 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %endtime9, align 8
  %43 = ptrtoint ptr %endtime to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %endtime, align 8
  br label %do.body

if.else11:                                        ; preds = %if.end5.if.else11_crit_edge, %if.end91.i.if.else11_crit_edge
  %ret.047 = phi i32 [ %ret.0, %if.end5.if.else11_crit_edge ], [ -22, %if.end91.i.if.else11_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %do.body

do.body:                                          ; preds = %if.else11, %if.then8, %if.then7.do.body_crit_edge
  %ret.046 = phi i32 [ %ret.047, %if.else11 ], [ 0, %if.then8 ], [ 0, %if.then7.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %44 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !132

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %ret.046) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kzalloc.exit.cleanup_crit_edge ], [ %ret.046, %do.end ], [ %ret.046, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_get_mic_kerberos(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_verify_mic_kerberos(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_wrap_kerberos(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_unwrap_kerberos(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_delete_sec_context_kerberos(ptr noundef %internal_ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i.i) #6
  %enc = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 4
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc, align 8
  %base.i.i.i8 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i.i8) #6
  %acceptor_enc = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 6
  %4 = ptrtoint ptr %acceptor_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acceptor_enc, align 8
  %base.i.i.i9 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i.i9) #6
  %initiator_enc = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 7
  %6 = ptrtoint ptr %initiator_enc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %initiator_enc, align 4
  %base.i.i.i10 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %7, ptr noundef %base.i.i.i10) #6
  %acceptor_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 8
  %8 = ptrtoint ptr %acceptor_enc_aux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acceptor_enc_aux, align 8
  %base.i.i.i11 = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %base.i.i.i11) #6
  %initiator_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 9
  %10 = ptrtoint ptr %initiator_enc_aux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %initiator_enc_aux, align 4
  %base.i.i.i12 = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i.i12) #6
  %data = getelementptr inbounds %struct.krb5_ctx, ptr %internal_ctx, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %13) #6
  tail call void @kfree(ptr noundef %internal_ctx) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_encrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_krb5_des3_make_key(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_krb5_aes_make_key(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_krb5_aes_encrypt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_krb5_aes_decrypt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @context_derive_keys_des3(ptr noundef %ctx, i32 noundef %gfp_mask) unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.xdr_netobj, align 4
  %keyin = alloca %struct.xdr_netobj, align 4
  %keyout = alloca %struct.xdr_netobj, align 4
  %cdata = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  %0 = getelementptr inbounds %struct.xdr_netobj, ptr %c, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyin) #6
  %1 = getelementptr inbounds %struct.xdr_netobj, ptr %keyin, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyout) #6
  %2 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cdata) #6
  %4 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 4
  %8 = call ptr @memset(ptr %cdata, i32 255, i32 5)
  %9 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %c, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cdata, ptr %0, align 4
  %Ksess = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %Ksess, ptr %1, align 4
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 3
  %12 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gk5e, align 4
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %keylength, align 4
  %16 = ptrtoint ptr %keyin to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %keyin, align 4
  %17 = ptrtoint ptr %keyout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %keyout, align 4
  %encrypt_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %encrypt_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encrypt_name, align 4
  %call = call fastcc ptr @context_v2_alloc_cipher(ptr noundef %ctx, ptr noundef %19, ptr noundef %Ksess)
  %seq = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 5
  %20 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %seq, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gk5e, align 4
  %encrypt_name12 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %encrypt_name12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encrypt_name12, align 4
  %call15 = call fastcc ptr @context_v2_alloc_cipher(ptr noundef %ctx, ptr noundef %24, ptr noundef %Ksess)
  %enc = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 4
  %25 = ptrtoint ptr %enc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %enc, align 8
  %cmp17 = icmp eq ptr %call15, null
  br i1 %cmp17, label %if.end.out_free_seq_crit_edge, label %if.end19

if.end.out_free_seq_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_seq

if.end19:                                         ; preds = %if.end
  %26 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %cdata, align 1
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %4, align 1
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %5, align 1
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 23, ptr %6, align 1
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -103, ptr %7, align 1
  %cksum = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 11
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cksum, ptr %2, align 4
  %32 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gk5e, align 4
  %call24 = call i32 @krb5_derive_key(ptr noundef %33, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %34 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body.out_free_enc_crit_edge, label %do.end, !prof !132

do.body.out_free_enc_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_enc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call24) #9
  br label %out_free_enc

out_free_enc:                                     ; preds = %do.end, %do.body.out_free_enc_crit_edge
  %35 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %36, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %36, ptr noundef %base.i.i.i) #6
  br label %out_free_seq

out_free_seq:                                     ; preds = %out_free_enc, %if.end.out_free_seq_crit_edge
  %37 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seq, align 4
  %base.i.i.i59 = getelementptr inbounds %struct.crypto_skcipher, ptr %38, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %38, ptr noundef %base.i.i.i59) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_seq, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %out_free_seq ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cdata) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyout) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyin) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @context_derive_keys_new(ptr noundef %ctx, i32 noundef %gfp_mask) unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.xdr_netobj, align 4
  %keyin = alloca %struct.xdr_netobj, align 4
  %keyout = alloca %struct.xdr_netobj, align 4
  %cdata = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #6
  %0 = getelementptr inbounds %struct.xdr_netobj, ptr %c, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyin) #6
  %1 = getelementptr inbounds %struct.xdr_netobj, ptr %keyin, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keyout) #6
  %2 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cdata) #6
  %3 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 1
  %4 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 2
  %5 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 3
  %6 = getelementptr inbounds [5 x i8], ptr %cdata, i32 0, i32 4
  %7 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %c, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cdata, ptr %0, align 4
  %Ksess = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %Ksess, ptr %1, align 4
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gk5e, align 4
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %keylength, align 4
  %14 = ptrtoint ptr %keyin to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %keyin, align 4
  %15 = ptrtoint ptr %keyout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %keyout, align 4
  %16 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cdata, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %3, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 24, ptr %5, align 1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -86, ptr %6, align 1
  %initiator_seal = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 18
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %initiator_seal, ptr %2, align 4
  %call = call i32 @krb5_derive_key(ptr noundef %11, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end19, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %22 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !132

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %call) #9
  br label %cleanup

if.end19:                                         ; preds = %entry
  %23 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gk5e, align 4
  %encrypt_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %encrypt_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %encrypt_name, align 4
  %call23 = call fastcc ptr @context_v2_alloc_cipher(ptr noundef %ctx, ptr noundef %26, ptr noundef %initiator_seal)
  %initiator_enc = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 7
  %27 = ptrtoint ptr %initiator_enc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call23, ptr %initiator_enc, align 4
  %cmp = icmp eq ptr %call23, null
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end26

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %cdata, align 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %3, align 1
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %4, align 1
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 22, ptr %5, align 1
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -86, ptr %6, align 1
  %acceptor_seal = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 19
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %acceptor_seal, ptr %2, align 4
  %34 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gk5e, align 4
  %call31 = call i32 @krb5_derive_key(ptr noundef %35, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end52, label %do.body34

do.body34:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %36 = load i32, ptr @rpc_debug, align 4
  %and35 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.out_free_initiator_enc_crit_edge, label %do.end46, !prof !132

do.body34.out_free_initiator_enc_crit_edge:       ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_initiator_enc

do.end46:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %call31) #9
  br label %out_free_initiator_enc

if.end52:                                         ; preds = %if.end26
  %37 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gk5e, align 4
  %encrypt_name54 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %encrypt_name54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %encrypt_name54, align 4
  %call57 = call fastcc ptr @context_v2_alloc_cipher(ptr noundef %ctx, ptr noundef %40, ptr noundef %acceptor_seal)
  %acceptor_enc = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 6
  %41 = ptrtoint ptr %acceptor_enc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call57, ptr %acceptor_enc, align 8
  %cmp59 = icmp eq ptr %call57, null
  br i1 %cmp59, label %if.end52.out_free_initiator_enc_crit_edge, label %if.end61

if.end52.out_free_initiator_enc_crit_edge:        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_initiator_enc

if.end61:                                         ; preds = %if.end52
  %42 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cdata, align 1
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %3, align 1
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %4, align 1
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 25, ptr %5, align 1
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -103, ptr %6, align 1
  %initiator_sign = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 16
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %initiator_sign, ptr %2, align 4
  %48 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gk5e, align 4
  %call66 = call i32 @krb5_derive_key(ptr noundef %49, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end87, label %do.body69

do.body69:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %50 = load i32, ptr @rpc_debug, align 4
  %and70 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.out_free_acceptor_enc_crit_edge, label %do.end81, !prof !132

do.body69.out_free_acceptor_enc_crit_edge:        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_acceptor_enc

do.end81:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, i32 noundef %call66) #9
  br label %out_free_acceptor_enc

if.end87:                                         ; preds = %if.end61
  %51 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %cdata, align 1
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %3, align 1
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %4, align 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 23, ptr %5, align 1
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -103, ptr %6, align 1
  %acceptor_sign = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 17
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %acceptor_sign, ptr %2, align 4
  %57 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gk5e, align 4
  %call92 = call i32 @krb5_derive_key(ptr noundef %58, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end113, label %do.body95

do.body95:                                        ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %59 = load i32, ptr @rpc_debug, align 4
  %and96 = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body95.out_free_acceptor_enc_crit_edge, label %do.end107, !prof !132

do.body95.out_free_acceptor_enc_crit_edge:        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_acceptor_enc

do.end107:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32, i32 noundef %call92) #9
  br label %out_free_acceptor_enc

if.end113:                                        ; preds = %if.end87
  %60 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %cdata, align 1
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %3, align 1
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %4, align 1
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 24, ptr %5, align 1
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 85, ptr %6, align 1
  %initiator_integ = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 20
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %initiator_integ, ptr %2, align 4
  %66 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gk5e, align 4
  %call118 = call i32 @krb5_derive_key(ptr noundef %67, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end139, label %do.body121

do.body121:                                       ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %68 = load i32, ptr @rpc_debug, align 4
  %and122 = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body121.out_free_acceptor_enc_crit_edge, label %do.end133, !prof !132

do.body121.out_free_acceptor_enc_crit_edge:       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_acceptor_enc

do.end133:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i32 noundef %call118) #9
  br label %out_free_acceptor_enc

if.end139:                                        ; preds = %if.end113
  %69 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %cdata, align 1
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %3, align 1
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %4, align 1
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 22, ptr %5, align 1
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 85, ptr %6, align 1
  %acceptor_integ = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 21
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %acceptor_integ, ptr %2, align 4
  %75 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gk5e, align 4
  %call144 = call i32 @krb5_derive_key(ptr noundef %76, ptr noundef nonnull %keyin, ptr noundef nonnull %keyout, ptr noundef nonnull %c, i32 noundef %gfp_mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end165, label %do.body147

do.body147:                                       ; preds = %if.end139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %77 = load i32, ptr @rpc_debug, align 4
  %and148 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.out_free_acceptor_enc_crit_edge, label %do.end159, !prof !132

do.body147.out_free_acceptor_enc_crit_edge:       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_acceptor_enc

do.end159:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.32, i32 noundef %call144) #9
  br label %out_free_acceptor_enc

if.end165:                                        ; preds = %if.end139
  %enctype = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 1
  %78 = ptrtoint ptr %enctype to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %enctype, align 4
  %.off = add i32 %79, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end165.cleanup_crit_edge

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end165
  %call168 = call fastcc ptr @context_v2_alloc_cipher(ptr noundef %ctx, ptr noundef nonnull @.str.48, ptr noundef %initiator_seal)
  %initiator_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 9
  %80 = ptrtoint ptr %initiator_enc_aux to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call168, ptr %initiator_enc_aux, align 4
  %cmp170 = icmp eq ptr %call168, null
  br i1 %cmp170, label %sw.bb.out_free_acceptor_enc_crit_edge, label %if.end172

sw.bb.out_free_acceptor_enc_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_acceptor_enc

if.end172:                                        ; preds = %sw.bb
  %call175 = call fastcc ptr @context_v2_alloc_cipher(ptr noundef %ctx, ptr noundef nonnull @.str.48, ptr noundef %acceptor_seal)
  %acceptor_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 8
  %81 = ptrtoint ptr %acceptor_enc_aux to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call175, ptr %acceptor_enc_aux, align 8
  %cmp177 = icmp eq ptr %call175, null
  br i1 %cmp177, label %if.then178, label %if.end172.cleanup_crit_edge

if.end172.cleanup_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then178:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %initiator_enc_aux to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %initiator_enc_aux, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %83, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %83, ptr noundef %base.i.i.i) #6
  br label %out_free_acceptor_enc

out_free_acceptor_enc:                            ; preds = %if.then178, %sw.bb.out_free_acceptor_enc_crit_edge, %do.end159, %do.body147.out_free_acceptor_enc_crit_edge, %do.end133, %do.body121.out_free_acceptor_enc_crit_edge, %do.end107, %do.body95.out_free_acceptor_enc_crit_edge, %do.end81, %do.body69.out_free_acceptor_enc_crit_edge
  %84 = ptrtoint ptr %acceptor_enc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %acceptor_enc, align 8
  %base.i.i.i259 = getelementptr inbounds %struct.crypto_skcipher, ptr %85, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %85, ptr noundef %base.i.i.i259) #6
  br label %out_free_initiator_enc

out_free_initiator_enc:                           ; preds = %out_free_acceptor_enc, %if.end52.out_free_initiator_enc_crit_edge, %do.end46, %do.body34.out_free_initiator_enc_crit_edge
  %86 = ptrtoint ptr %initiator_enc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %initiator_enc, align 4
  %base.i.i.i260 = getelementptr inbounds %struct.crypto_skcipher, ptr %87, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %87, ptr noundef %base.i.i.i260) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_initiator_enc, %if.end172.cleanup_crit_edge, %if.end165.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end165.cleanup_crit_edge ], [ 0, %if.end172.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %out_free_initiator_enc ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cdata) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyout) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keyin) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @context_v2_alloc_cipher(ptr nocapture noundef readonly %ctx, ptr noundef %cname, ptr noundef %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef %cname, i32 noundef 0, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !132

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %cname) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %gk5e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gk5e, align 4
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %keylength to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %keylength, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %call, ptr noundef %key, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.body13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body13:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and14 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end30_crit_edge, label %do.end25, !prof !132

do.body13.do.end30_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end25:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %cname) #9
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.body13.do.end30_crit_edge
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end30 ], [ null, %do.end ], [ null, %do.body.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_derive_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_mech_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__UNIQUE_ID_alias280, !1, !"__UNIQUE_ID_alias280", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 619, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias281, !3, !"__UNIQUE_ID_alias281", i1 false, i1 false}
!3 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 620, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias282, !5, !"__UNIQUE_ID_alias282", i1 false, i1 false}
!5 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 621, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias283, !7, !"__UNIQUE_ID_alias283", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 622, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias284, !9, !"__UNIQUE_ID_alias284", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 623, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias285, !11, !"__UNIQUE_ID_alias285", i1 false, i1 false}
!11 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 624, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias286, !13, !"__UNIQUE_ID_alias286", i1 false, i1 false}
!13 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 625, i32 1}
!14 = !{ptr @__UNIQUE_ID_file287, !15, !"__UNIQUE_ID_file287", i1 false, i1 false}
!15 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 652, i32 1}
!16 = !{ptr @__UNIQUE_ID_license288, !15, !"__UNIQUE_ID_license288", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_rpcsec_gss_krb5__289_653_init_kerberos_module6, !18, !"__initcall__kmod_rpcsec_gss_krb5__289_653_init_kerberos_module6", i1 false, i1 false}
!18 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 653, i32 1}
!19 = !{ptr @__exitcall_cleanup_kerberos_module, !20, !"__exitcall_cleanup_kerberos_module", i1 false, i1 false}
!20 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 654, i32 1}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 628, i32 13}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 634, i32 24}
!25 = !{ptr @gss_kerberos_mech, !26, !"gss_kerberos_mech", i1 false, i1 false}
!26 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 627, i32 28}
!27 = !{ptr @gss_kerberos_ops, !28, !"gss_kerberos_ops", i1 false, i1 false}
!28 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 587, i32 33}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 569, i32 2}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @gss_import_sec_context_kerberos._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @gss_import_sec_context_kerberos._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 62, i32 12}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 63, i32 20}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 64, i32 18}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 83, i32 12}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 84, i32 20}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 106, i32 12}
!47 = !{ptr @supported_gss_krb5_enctypes, !48, !"supported_gss_krb5_enctypes", i1 false, i1 false}
!48 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 32, i32 38}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 169, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @get_key._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @get_key._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 180, i32 3}
!56 = !{ptr @get_key._entry.13, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @get_key._entry_ptr.15, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 186, i32 3}
!60 = !{ptr @get_key._entry.16, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @get_key._entry_ptr.18, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 492, i32 3}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gss_import_v2_context._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @gss_import_v2_context._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 505, i32 3}
!69 = !{ptr @gss_import_v2_context._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @gss_import_v2_context._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 341, i32 3}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @context_derive_keys_des3._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @context_derive_keys_des3._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 288, i32 3}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @context_v2_alloc_cipher._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @context_v2_alloc_cipher._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 293, i32 3}
!83 = !{ptr @context_v2_alloc_cipher._entry.28, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @context_v2_alloc_cipher._entry_ptr.30, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 375, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @context_derive_keys_new._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @context_derive_keys_new._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 390, i32 3}
!92 = !{ptr @context_derive_keys_new._entry.33, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @context_derive_keys_new._entry_ptr.35, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 405, i32 3}
!96 = !{ptr @context_derive_keys_new._entry.36, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @context_derive_keys_new._entry_ptr.38, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 415, i32 3}
!100 = !{ptr @context_derive_keys_new._entry.39, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @context_derive_keys_new._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 425, i32 3}
!104 = !{ptr @context_derive_keys_new._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @context_derive_keys_new._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 435, i32 3}
!108 = !{ptr @context_derive_keys_new._entry.45, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @context_derive_keys_new._entry_ptr.47, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 444, i32 33}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 607, i32 11}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 614, i32 11}
!116 = !{ptr @gss_kerberos_pfs, !117, !"gss_kerberos_pfs", i1 false, i1 false}
!117 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 596, i32 23}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/sunrpc/auth_gss/gss_krb5_mech.c", i32 643, i32 3}
!120 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @init_kerberos_module._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @init_kerberos_module._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{!"auto-init"}
