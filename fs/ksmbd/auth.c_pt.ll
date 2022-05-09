; ModuleID = '/llk/IR_all_yes/fs/ksmbd/auth.c_pt.bc'
source_filename = "../fs/ksmbd/auth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.UniCaseRange = type { i16, i16, ptr }
%struct.ksmbd_crypto_ctx = type { %struct.list_head, [5 x ptr], [18 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.ksmbd_session = type { i64, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, [40 x i8], %struct.hlist_node, %struct.list_head, %struct.xarray, %struct.ida, %struct.list_head, [32 x i8], [32 x i8], [16 x i8], %struct.list_head, %struct.ksmbd_file_table, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.ksmbd_file_table = type { %struct.rwlock_t, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.ksmbd_user = type { i16, i32, i32, ptr, i32, ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.ntlmv2_resp = type <{ [16 x i8], i32, i32, i64, i64, i32 }>
%struct.authenticate_message = type { [8 x i8], i32, %struct.security_buffer, %struct.security_buffer, %struct.security_buffer, %struct.security_buffer, %struct.security_buffer, %struct.security_buffer, i32, [0 x i8] }
%struct.security_buffer = type { i16, i16, i32 }
%struct.negotiate_message = type { [8 x i8], i32, i32, %struct.security_buffer, %struct.security_buffer, [0 x i8] }
%struct.challenge_message = type { [8 x i8], i32, %struct.security_buffer, i32, [8 x i8], [8 x i8], %struct.security_buffer }
%struct.target_info = type { i16, i16, [0 x i8] }
%struct.ksmbd_spnego_authen_response = type { i32, %struct.ksmbd_login_response, i16, i16, [0 x i8] }
%struct.ksmbd_login_response = type { i32, i32, i32, [48 x i8], i16, i16, [18 x i8], [16 x i32] }
%struct.kvec = type { ptr, i32 }
%struct.derivation = type { %struct.kvec, %struct.kvec, i8 }
%struct.derivation_twin = type { %struct.derivation, %struct.derivation }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.22, %union.anon.137, %struct.atomic_t, i32 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.137 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@NEGOTIATE_GSS_HEADER = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"`^\06\06+\06\01\05\05\02\A0T0R\A0$0\22\06\09*\86H\86\F7\12\01\02\02\06\09*\86H\82\F7\12\01\02\02\06\0A+\06\01\04\01\827\02\02\0A\A3*0(\A0&\1B$not_defined_in_RFC4178@please_ignore", [32 x i8] zeroinitializer }, align 32
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_auth_ntlmv2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ksmbd: could not crypto alloc hmacmd5\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksmbd_auth_ntlmv2\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ksmbd/auth.c\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr = internal global ptr @ksmbd_auth_ntlmv2._entry, section ".printk_index", align 4
@ksmbd_auth_ntlmv2._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: could not get v2 hash rc %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr.5 = internal global ptr @ksmbd_auth_ntlmv2._entry.3, section ".printk_index", align 4
@ksmbd_auth_ntlmv2._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ksmbd: Could not set NTLMV2 Hash as a key\0A\00", [51 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr.8 = internal global ptr @ksmbd_auth_ntlmv2._entry.6, section ".printk_index", align 4
@ksmbd_auth_ntlmv2._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ksmbd: Could not init hmacmd5\0A\00", [63 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr.11 = internal global ptr @ksmbd_auth_ntlmv2._entry.9, section ".printk_index", align 4
@ksmbd_auth_ntlmv2._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ksmbd: Could not update with response\0A\00", [55 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr.14 = internal global ptr @ksmbd_auth_ntlmv2._entry.12, section ".printk_index", align 4
@ksmbd_auth_ntlmv2._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: Could not generate md5 hash\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr.17 = internal global ptr @ksmbd_auth_ntlmv2._entry.15, section ".printk_index", align 4
@ksmbd_auth_ntlmv2._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: Could not generate sess key\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_auth_ntlmv2._entry_ptr.20 = internal global ptr @ksmbd_auth_ntlmv2._entry.18, section ".printk_index", align 4
@ksmbd_decode_ntlmssp_auth_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ksmbd: negotiate blob len %d too small\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ksmbd_decode_ntlmssp_auth_blob\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_decode_ntlmssp_auth_blob._entry_ptr = internal global ptr @ksmbd_decode_ntlmssp_auth_blob._entry, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NTLMSSP\00", [24 x i8] zeroinitializer }, align 32
@ksmbd_decode_ntlmssp_auth_blob._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: blob signature incorrect %s\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_decode_ntlmssp_auth_blob._entry_ptr.26 = internal global ptr @ksmbd_decode_ntlmssp_auth_blob._entry.24, section ".printk_index", align 4
@ksmbd_decode_ntlmssp_auth_blob._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: decode_ntlmssp_authenticate_blob dname%s\0A\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_decode_ntlmssp_auth_blob._entry_ptr.29 = internal global ptr @ksmbd_decode_ntlmssp_auth_blob._entry.27, section ".printk_index", align 4
@ksmbd_decode_ntlmssp_neg_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.30, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ksmbd_decode_ntlmssp_neg_blob\00", [34 x i8] zeroinitializer }, align 32
@ksmbd_decode_ntlmssp_neg_blob._entry_ptr = internal global ptr @ksmbd_decode_ntlmssp_neg_blob._entry, section ".printk_index", align 4
@ksmbd_decode_ntlmssp_neg_blob._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.30, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_decode_ntlmssp_neg_blob._entry_ptr.32 = internal global ptr @ksmbd_decode_ntlmssp_neg_blob._entry.31, section ".printk_index", align 4
@ksmbd_build_ntlmssp_challenge_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ksmbd: NTLMSSP SecurityBufferLength %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ksmbd_build_ntlmssp_challenge_blob\00", [61 x i8] zeroinitializer }, align 32
@ksmbd_build_ntlmssp_challenge_blob._entry_ptr = internal global ptr @ksmbd_build_ntlmssp_challenge_blob._entry, section ".printk_index", align 4
@ksmbd_krb5_authenticate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: SPNEGO_AUTHEN_REQUEST failure\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ksmbd_krb5_authenticate\00", [40 x i8] zeroinitializer }, align 32
@ksmbd_krb5_authenticate._entry_ptr = internal global ptr @ksmbd_krb5_authenticate._entry, section ".printk_index", align 4
@ksmbd_krb5_authenticate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: krb5 authentication failure\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_krb5_authenticate._entry_ptr.39 = internal global ptr @ksmbd_krb5_authenticate._entry.37, section ".printk_index", align 4
@ksmbd_krb5_authenticate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: buf len %d, but blob len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ksmbd_krb5_authenticate._entry_ptr.42 = internal global ptr @ksmbd_krb5_authenticate._entry.40, section ".printk_index", align 4
@ksmbd_krb5_authenticate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: session key is too long\0A\00", [62 x i8] zeroinitializer }, align 32
@ksmbd_krb5_authenticate._entry_ptr.45 = internal global ptr @ksmbd_krb5_authenticate._entry.43, section ".printk_index", align 4
@ksmbd_krb5_authenticate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016ksmbd: login failure\0A\00", [40 x i8] zeroinitializer }, align 32
@ksmbd_krb5_authenticate._entry_ptr.48 = internal global ptr @ksmbd_krb5_authenticate._entry.46, section ".printk_index", align 4
@ksmbd_sign_smb2_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd_sign_smb2_pdu\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb2_pdu._entry_ptr = internal global ptr @ksmbd_sign_smb2_pdu._entry, section ".printk_index", align 4
@ksmbd_sign_smb2_pdu._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ksmbd: hmacsha256 init error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb2_pdu._entry_ptr.52 = internal global ptr @ksmbd_sign_smb2_pdu._entry.50, section ".printk_index", align 4
@ksmbd_sign_smb2_pdu._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: hmacsha256 update error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb2_pdu._entry_ptr.55 = internal global ptr @ksmbd_sign_smb2_pdu._entry.53, section ".printk_index", align 4
@ksmbd_sign_smb2_pdu._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ksmbd: hmacsha256 generation error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb2_pdu._entry_ptr.58 = internal global ptr @ksmbd_sign_smb2_pdu._entry.56, section ".printk_index", align 4
@ksmbd_sign_smb3_pdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: could not crypto alloc cmac\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd_sign_smb3_pdu\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb3_pdu._entry_ptr = internal global ptr @ksmbd_sign_smb3_pdu._entry, section ".printk_index", align 4
@ksmbd_sign_smb3_pdu._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ksmbd: cmaces init error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb3_pdu._entry_ptr.63 = internal global ptr @ksmbd_sign_smb3_pdu._entry.61, section ".printk_index", align 4
@ksmbd_sign_smb3_pdu._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ksmbd: cmaces update error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb3_pdu._entry_ptr.66 = internal global ptr @ksmbd_sign_smb3_pdu._entry.64, section ".printk_index", align 4
@ksmbd_sign_smb3_pdu._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: cmaces generation error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ksmbd_sign_smb3_pdu._entry_ptr.69 = internal global ptr @ksmbd_sign_smb3_pdu._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMB2AESCMAC\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SmbSign\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMBSigningKey\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMB2AESCCM\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ServerOut\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ServerIn \00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBS2CCipherKey\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBC2SCipherKey\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_gen_preauth_integrity_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ksmbd: could not alloc sha512\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ksmbd_gen_preauth_integrity_hash\00", [63 x i8] zeroinitializer }, align 32
@ksmbd_gen_preauth_integrity_hash._entry_ptr = internal global ptr @ksmbd_gen_preauth_integrity_hash._entry, section ".printk_index", align 4
@ksmbd_gen_preauth_integrity_hash._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ksmbd: could not init shashn\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_gen_preauth_integrity_hash._entry_ptr.82 = internal global ptr @ksmbd_gen_preauth_integrity_hash._entry.80, section ".printk_index", align 4
@ksmbd_gen_preauth_integrity_hash._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: could not update with n\0A\00", [62 x i8] zeroinitializer }, align 32
@ksmbd_gen_preauth_integrity_hash._entry_ptr.85 = internal global ptr @ksmbd_gen_preauth_integrity_hash._entry.83, section ".printk_index", align 4
@ksmbd_gen_preauth_integrity_hash._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_gen_preauth_integrity_hash._entry_ptr.87 = internal global ptr @ksmbd_gen_preauth_integrity_hash._entry.86, section ".printk_index", align 4
@ksmbd_gen_preauth_integrity_hash._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.79, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ksmbd: Could not generate hash err : %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ksmbd_gen_preauth_integrity_hash._entry_ptr.90 = internal global ptr @ksmbd_gen_preauth_integrity_hash._entry.88, section ".printk_index", align 4
@ksmbd_gen_sd_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ksmbd: could not alloc sha256\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksmbd_gen_sd_hash\00", [46 x i8] zeroinitializer }, align 32
@ksmbd_gen_sd_hash._entry_ptr = internal global ptr @ksmbd_gen_sd_hash._entry, section ".printk_index", align 4
@ksmbd_gen_sd_hash._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.92, ptr @.str.2, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_gen_sd_hash._entry_ptr.94 = internal global ptr @ksmbd_gen_sd_hash._entry.93, section ".printk_index", align 4
@ksmbd_gen_sd_hash._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.92, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_gen_sd_hash._entry_ptr.96 = internal global ptr @ksmbd_gen_sd_hash._entry.95, section ".printk_index", align 4
@ksmbd_gen_sd_hash._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.92, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksmbd_gen_sd_hash._entry_ptr.98 = internal global ptr @ksmbd_gen_sd_hash._entry.97, section ".printk_index", align 4
@ksmbd_crypt_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ksmbd: Could not get %scryption key\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksmbd_crypt_message\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_crypt_message._entry_ptr = internal global ptr @ksmbd_crypt_message._entry, section ".printk_index", align 4
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"de\00", [29 x i8] zeroinitializer }, align 32
@ksmbd_crypt_message._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ksmbd: crypto alloc failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ksmbd_crypt_message._entry_ptr.105 = internal global ptr @ksmbd_crypt_message._entry.103, section ".printk_index", align 4
@ksmbd_crypt_message._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.100, ptr @.str.2, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ksmbd: Failed to set aead key %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ksmbd_crypt_message._entry_ptr.108 = internal global ptr @ksmbd_crypt_message._entry.106, section ".printk_index", align 4
@ksmbd_crypt_message._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.100, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ksmbd: Failed to set authsize %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ksmbd_crypt_message._entry_ptr.111 = internal global ptr @ksmbd_crypt_message._entry.109, section ".printk_index", align 4
@ksmbd_crypt_message._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.100, ptr @.str.2, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ksmbd: Failed to init sg\0A\00", [36 x i8] zeroinitializer }, align 32
@ksmbd_crypt_message._entry_ptr.114 = internal global ptr @ksmbd_crypt_message._entry.112, section ".printk_index", align 4
@calc_ntlmv2_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: can't generate ntlmv2 hash\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calc_ntlmv2_hash\00", [47 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr = internal global ptr @calc_ntlmv2_hash._entry, section ".printk_index", align 4
@calc_ntlmv2_hash._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ksmbd: Could not set NT Hash as a key\0A\00", [55 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.119 = internal global ptr @calc_ntlmv2_hash._entry.117, section ".printk_index", align 4
@calc_ntlmv2_hash._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ksmbd: could not init hmacmd5\0A\00", [63 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.122 = internal global ptr @calc_ntlmv2_hash._entry.120, section ".printk_index", align 4
@calc_ntlmv2_hash._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: Could not update with user\0A\00", [59 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.125 = internal global ptr @calc_ntlmv2_hash._entry.123, section ".printk_index", align 4
@calc_ntlmv2_hash._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ksmbd: Could not update with domain\0A\00", [57 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.128 = internal global ptr @calc_ntlmv2_hash._entry.126, section ".printk_index", align 4
@calc_ntlmv2_hash._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.116, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@calc_ntlmv2_hash._entry_ptr.130 = internal global ptr @calc_ntlmv2_hash._entry.129, section ".printk_index", align 4
@SmbUniUpperTable = external dso_local local_unnamed_addr global [512 x i8], align 1
@SmbUniUpperRange = external dso_local local_unnamed_addr constant [0 x %struct.UniCaseRange], align 4
@ksmbd_gen_sess_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.131, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ksmbd_gen_sess_key\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_gen_sess_key._entry_ptr = internal global ptr @ksmbd_gen_sess_key._entry, section ".printk_index", align 4
@ksmbd_gen_sess_key._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: hmacmd5 set key fail error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ksmbd_gen_sess_key._entry_ptr.134 = internal global ptr @ksmbd_gen_sess_key._entry.132, section ".printk_index", align 4
@ksmbd_gen_sess_key._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ksmbd: could not init hmacmd5 error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ksmbd_gen_sess_key._entry_ptr.137 = internal global ptr @ksmbd_gen_sess_key._entry.135, section ".printk_index", align 4
@ksmbd_gen_sess_key._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ksmbd: Could not update with response error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ksmbd_gen_sess_key._entry_ptr.140 = internal global ptr @ksmbd_gen_sess_key._entry.138, section ".printk_index", align 4
@ksmbd_gen_sess_key._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.131, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: Could not generate hmacmd5 hash error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_gen_sess_key._entry_ptr.143 = internal global ptr @ksmbd_gen_sess_key._entry.141, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@generate_smb3signingkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ksmbd: dumping generated AES signing keys\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"generate_smb3signingkey\00", [40 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr = internal global ptr @generate_smb3signingkey._entry, section ".printk_index", align 4
@generate_smb3signingkey._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: Session Id    %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.148 = internal global ptr @generate_smb3signingkey._entry.146, section ".printk_index", align 4
@generate_smb3signingkey._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: Session Key   %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.151 = internal global ptr @generate_smb3signingkey._entry.149, section ".printk_index", align 4
@generate_smb3signingkey._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: Signing Key   %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@generate_smb3signingkey._entry_ptr.154 = internal global ptr @generate_smb3signingkey._entry.152, section ".printk_index", align 4
@generate_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.155, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"generate_key\00", [19 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr = internal global ptr @generate_key._entry, section ".printk_index", align 4
@generate_key._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.155, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.157 = internal global ptr @generate_key._entry.156, section ".printk_index", align 4
@generate_key._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.155, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.159 = internal global ptr @generate_key._entry.158, section ".printk_index", align 4
@generate_key._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.155, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: could not update with label\0A\00", [58 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.162 = internal global ptr @generate_key._entry.160, section ".printk_index", align 4
@generate_key._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.155, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ksmbd: could not update with zero\0A\00", [59 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.165 = internal global ptr @generate_key._entry.163, section ".printk_index", align 4
@generate_key._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.155, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: could not update with context\0A\00", [56 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.168 = internal global ptr @generate_key._entry.166, section ".printk_index", align 4
@generate_key._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.155, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: could not update with L\0A\00", [62 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.171 = internal global ptr @generate_key._entry.169, section ".printk_index", align 4
@generate_key._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.155, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_key._entry_ptr.173 = internal global ptr @generate_key._entry.172, section ".printk_index", align 4
@generate_smb3encryptionkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ksmbd: dumping generated AES encryption keys\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"generate_smb3encryptionkey\00", [37 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr = internal global ptr @generate_smb3encryptionkey._entry, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ksmbd: Cipher type   %d\0A\00", [37 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.178 = internal global ptr @generate_smb3encryptionkey._entry.176, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.175, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.180 = internal global ptr @generate_smb3encryptionkey._entry.179, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.175, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.182 = internal global ptr @generate_smb3encryptionkey._entry.181, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.175, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: ServerIn Key  %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.185 = internal global ptr @generate_smb3encryptionkey._entry.183, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.175, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: ServerOut Key %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.188 = internal global ptr @generate_smb3encryptionkey._entry.186, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.175, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.190 = internal global ptr @generate_smb3encryptionkey._entry.189, section ".printk_index", align 4
@generate_smb3encryptionkey._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.175, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generate_smb3encryptionkey._entry_ptr.192 = internal global ptr @generate_smb3encryptionkey._entry.191, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 16, i64 768, i64 1024]
@___asan_gen_.197 = private unnamed_addr constant [21 x i8] c"NEGOTIATE_GSS_HEADER\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 39, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 229, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 235, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 243, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 249, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 265, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 271, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 277, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 308, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 313, i32 34 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 314, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 334, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 378, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 384, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 492, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 506, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 511, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 517, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 524, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 531, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 571, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 583, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 592, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 599, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 622, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 634, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 643, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 650, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 786, i32 21 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 788, i32 23 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 800, i32 21 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 866, i32 22 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 868, i32 24 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 874, i32 24 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 886, i32 22 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 892, i32 22 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 915, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 921, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 927, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 933, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 939, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 955, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 961, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 967, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 973, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1096, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1106, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1122, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1128, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1145, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 134, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 142, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 148, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 172, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 195, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 201, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 87, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 95, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 101, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 109, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 115, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 772, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 773, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 774, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 776, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 679, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 691, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 697, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 705, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 711, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 719, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 729, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 735, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 840, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 841, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 842, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 843, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 847, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 849, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 852, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.654 = private constant [19 x i8] c"../fs/ksmbd/auth.c\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 854, i32 3 }
@llvm.compiler.used = appending global [224 x ptr] [ptr @calc_ntlmv2_hash._entry, ptr @calc_ntlmv2_hash._entry.117, ptr @calc_ntlmv2_hash._entry.120, ptr @calc_ntlmv2_hash._entry.123, ptr @calc_ntlmv2_hash._entry.126, ptr @calc_ntlmv2_hash._entry.129, ptr @calc_ntlmv2_hash._entry_ptr, ptr @calc_ntlmv2_hash._entry_ptr.119, ptr @calc_ntlmv2_hash._entry_ptr.122, ptr @calc_ntlmv2_hash._entry_ptr.125, ptr @calc_ntlmv2_hash._entry_ptr.128, ptr @calc_ntlmv2_hash._entry_ptr.130, ptr @generate_key._entry, ptr @generate_key._entry.156, ptr @generate_key._entry.158, ptr @generate_key._entry.160, ptr @generate_key._entry.163, ptr @generate_key._entry.166, ptr @generate_key._entry.169, ptr @generate_key._entry.172, ptr @generate_key._entry_ptr, ptr @generate_key._entry_ptr.157, ptr @generate_key._entry_ptr.159, ptr @generate_key._entry_ptr.162, ptr @generate_key._entry_ptr.165, ptr @generate_key._entry_ptr.168, ptr @generate_key._entry_ptr.171, ptr @generate_key._entry_ptr.173, ptr @generate_smb3encryptionkey._entry, ptr @generate_smb3encryptionkey._entry.176, ptr @generate_smb3encryptionkey._entry.179, ptr @generate_smb3encryptionkey._entry.181, ptr @generate_smb3encryptionkey._entry.183, ptr @generate_smb3encryptionkey._entry.186, ptr @generate_smb3encryptionkey._entry.189, ptr @generate_smb3encryptionkey._entry.191, ptr @generate_smb3encryptionkey._entry_ptr, ptr @generate_smb3encryptionkey._entry_ptr.178, ptr @generate_smb3encryptionkey._entry_ptr.180, ptr @generate_smb3encryptionkey._entry_ptr.182, ptr @generate_smb3encryptionkey._entry_ptr.185, ptr @generate_smb3encryptionkey._entry_ptr.188, ptr @generate_smb3encryptionkey._entry_ptr.190, ptr @generate_smb3encryptionkey._entry_ptr.192, ptr @generate_smb3signingkey._entry, ptr @generate_smb3signingkey._entry.146, ptr @generate_smb3signingkey._entry.149, ptr @generate_smb3signingkey._entry.152, ptr @generate_smb3signingkey._entry_ptr, ptr @generate_smb3signingkey._entry_ptr.148, ptr @generate_smb3signingkey._entry_ptr.151, ptr @generate_smb3signingkey._entry_ptr.154, ptr @ksmbd_auth_ntlmv2._entry, ptr @ksmbd_auth_ntlmv2._entry.12, ptr @ksmbd_auth_ntlmv2._entry.15, ptr @ksmbd_auth_ntlmv2._entry.18, ptr @ksmbd_auth_ntlmv2._entry.3, ptr @ksmbd_auth_ntlmv2._entry.6, ptr @ksmbd_auth_ntlmv2._entry.9, ptr @ksmbd_auth_ntlmv2._entry_ptr, ptr @ksmbd_auth_ntlmv2._entry_ptr.11, ptr @ksmbd_auth_ntlmv2._entry_ptr.14, ptr @ksmbd_auth_ntlmv2._entry_ptr.17, ptr @ksmbd_auth_ntlmv2._entry_ptr.20, ptr @ksmbd_auth_ntlmv2._entry_ptr.5, ptr @ksmbd_auth_ntlmv2._entry_ptr.8, ptr @ksmbd_build_ntlmssp_challenge_blob._entry, ptr @ksmbd_build_ntlmssp_challenge_blob._entry_ptr, ptr @ksmbd_crypt_message._entry, ptr @ksmbd_crypt_message._entry.103, ptr @ksmbd_crypt_message._entry.106, ptr @ksmbd_crypt_message._entry.109, ptr @ksmbd_crypt_message._entry.112, ptr @ksmbd_crypt_message._entry_ptr, ptr @ksmbd_crypt_message._entry_ptr.105, ptr @ksmbd_crypt_message._entry_ptr.108, ptr @ksmbd_crypt_message._entry_ptr.111, ptr @ksmbd_crypt_message._entry_ptr.114, ptr @ksmbd_decode_ntlmssp_auth_blob._entry, ptr @ksmbd_decode_ntlmssp_auth_blob._entry.24, ptr @ksmbd_decode_ntlmssp_auth_blob._entry.27, ptr @ksmbd_decode_ntlmssp_auth_blob._entry_ptr, ptr @ksmbd_decode_ntlmssp_auth_blob._entry_ptr.26, ptr @ksmbd_decode_ntlmssp_auth_blob._entry_ptr.29, ptr @ksmbd_decode_ntlmssp_neg_blob._entry, ptr @ksmbd_decode_ntlmssp_neg_blob._entry.31, ptr @ksmbd_decode_ntlmssp_neg_blob._entry_ptr, ptr @ksmbd_decode_ntlmssp_neg_blob._entry_ptr.32, ptr @ksmbd_gen_preauth_integrity_hash._entry, ptr @ksmbd_gen_preauth_integrity_hash._entry.80, ptr @ksmbd_gen_preauth_integrity_hash._entry.83, ptr @ksmbd_gen_preauth_integrity_hash._entry.86, ptr @ksmbd_gen_preauth_integrity_hash._entry.88, ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr, ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.82, ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.85, ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.87, ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.90, ptr @ksmbd_gen_sd_hash._entry, ptr @ksmbd_gen_sd_hash._entry.93, ptr @ksmbd_gen_sd_hash._entry.95, ptr @ksmbd_gen_sd_hash._entry.97, ptr @ksmbd_gen_sd_hash._entry_ptr, ptr @ksmbd_gen_sd_hash._entry_ptr.94, ptr @ksmbd_gen_sd_hash._entry_ptr.96, ptr @ksmbd_gen_sd_hash._entry_ptr.98, ptr @ksmbd_gen_sess_key._entry, ptr @ksmbd_gen_sess_key._entry.132, ptr @ksmbd_gen_sess_key._entry.135, ptr @ksmbd_gen_sess_key._entry.138, ptr @ksmbd_gen_sess_key._entry.141, ptr @ksmbd_gen_sess_key._entry_ptr, ptr @ksmbd_gen_sess_key._entry_ptr.134, ptr @ksmbd_gen_sess_key._entry_ptr.137, ptr @ksmbd_gen_sess_key._entry_ptr.140, ptr @ksmbd_gen_sess_key._entry_ptr.143, ptr @ksmbd_krb5_authenticate._entry, ptr @ksmbd_krb5_authenticate._entry.37, ptr @ksmbd_krb5_authenticate._entry.40, ptr @ksmbd_krb5_authenticate._entry.43, ptr @ksmbd_krb5_authenticate._entry.46, ptr @ksmbd_krb5_authenticate._entry_ptr, ptr @ksmbd_krb5_authenticate._entry_ptr.39, ptr @ksmbd_krb5_authenticate._entry_ptr.42, ptr @ksmbd_krb5_authenticate._entry_ptr.45, ptr @ksmbd_krb5_authenticate._entry_ptr.48, ptr @ksmbd_sign_smb2_pdu._entry, ptr @ksmbd_sign_smb2_pdu._entry.50, ptr @ksmbd_sign_smb2_pdu._entry.53, ptr @ksmbd_sign_smb2_pdu._entry.56, ptr @ksmbd_sign_smb2_pdu._entry_ptr, ptr @ksmbd_sign_smb2_pdu._entry_ptr.52, ptr @ksmbd_sign_smb2_pdu._entry_ptr.55, ptr @ksmbd_sign_smb2_pdu._entry_ptr.58, ptr @ksmbd_sign_smb3_pdu._entry, ptr @ksmbd_sign_smb3_pdu._entry.61, ptr @ksmbd_sign_smb3_pdu._entry.64, ptr @ksmbd_sign_smb3_pdu._entry.67, ptr @ksmbd_sign_smb3_pdu._entry_ptr, ptr @ksmbd_sign_smb3_pdu._entry_ptr.63, ptr @ksmbd_sign_smb3_pdu._entry_ptr.66, ptr @ksmbd_sign_smb3_pdu._entry_ptr.69, ptr @NEGOTIATE_GSS_HEADER, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.184, ptr @.str.187], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NEGOTIATE_GSS_HEADER to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_auth_ntlmv2._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_decode_ntlmssp_auth_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_decode_ntlmssp_auth_blob._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_decode_ntlmssp_auth_blob._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_decode_ntlmssp_neg_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_decode_ntlmssp_neg_blob._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_build_ntlmssp_challenge_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_krb5_authenticate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_krb5_authenticate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_krb5_authenticate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_krb5_authenticate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_krb5_authenticate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb2_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb2_pdu._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb2_pdu._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb2_pdu._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb3_pdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb3_pdu._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb3_pdu._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_sign_smb3_pdu._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_preauth_integrity_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_preauth_integrity_hash._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_preauth_integrity_hash._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_preauth_integrity_hash._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_preauth_integrity_hash._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sd_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sd_hash._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sd_hash._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sd_hash._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypt_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypt_message._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypt_message._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypt_message._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_crypt_message._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_ntlmv2_hash._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sess_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sess_key._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sess_key._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sess_key._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gen_sess_key._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3signingkey._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_key._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_smb3encryptionkey._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ksmbd_copy_gss_neg_header(ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @NEGOTIATE_GSS_HEADER, i32 96)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_auth_ntlmv2(ptr noundef %sess, ptr nocapture noundef readonly %ntlmv2, i32 noundef %blen, ptr noundef %domain_name, ptr nocapture noundef readonly %cryptkey) local_unnamed_addr #1 align 64 {
entry:
  %ntlmv2_hash = alloca [16 x i8], align 1
  %ntlmv2_rsp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ntlmv2_hash) #10
  %0 = call ptr @memset(ptr %ntlmv2_hash, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ntlmv2_rsp) #10
  %1 = call ptr @memset(ptr %ntlmv2_rsp, i32 255, i32 16)
  %call = tail call ptr @ksmbd_crypto_ctx_find_hmacmd5() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call.i = tail call ptr @ksmbd_crypto_ctx_find_hmacmd5() #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %3 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.body11_crit_edge, label %do.end.i

do.body.i.do.body11_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #13
  br label %do.body11

if.end7.i:                                        ; preds = %if.end7
  %desc.i = getelementptr inbounds %struct.ksmbd_crypto_ctx, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %user.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %8 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user.i, align 8
  %passkey.i.i = getelementptr inbounds %struct.ksmbd_user, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %passkey.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %passkey.i.i, align 4
  %call9.i = tail call i32 @crypto_shash_setkey(ptr noundef %7, ptr noundef %11, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end24.i, label %do.body12.i

do.body12.i:                                      ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %12 = load i32, ptr @ksmbd_debug_types, align 4
  %and13.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.calc_ntlmv2_hash.exit_crit_edge, label %do.body12.i.out.sink.split.i_crit_edge

do.body12.i.out.sink.split.i_crit_edge:           ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

do.body12.i.calc_ntlmv2_hash.exit_crit_edge:      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end24.i:                                       ; preds = %if.end7.i
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_shash_init.exit.i, label %if.end24.i.do.body30.i_crit_edge

if.end24.i.do.body30.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30.i

crypto_shash_init.exit.i:                         ; preds = %if.end24.i
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 -256
  %21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = tail call i32 %22(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool28.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool28.not.i, label %if.end42.i, label %crypto_shash_init.exit.i.do.body30.i_crit_edge

crypto_shash_init.exit.i.do.body30.i_crit_edge:   ; preds = %crypto_shash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30.i

do.body30.i:                                      ; preds = %crypto_shash_init.exit.i.do.body30.i_crit_edge, %if.end24.i.do.body30.i_crit_edge
  %retval.0.i202.i = phi i32 [ %call3.i.i, %crypto_shash_init.exit.i.do.body30.i_crit_edge ], [ -126, %if.end24.i.do.body30.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %23 = load i32, ptr @ksmbd_debug_types, align 4
  %and31.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.calc_ntlmv2_hash.exit_crit_edge, label %do.body30.i.out.sink.split.i_crit_edge

do.body30.i.out.sink.split.i_crit_edge:           ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

do.body30.i.calc_ntlmv2_hash.exit_crit_edge:      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end42.i:                                       ; preds = %crypto_shash_init.exit.i
  %24 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user.i, align 8
  %name.i.i = getelementptr inbounds %struct.ksmbd_user, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i.i, align 4
  %call45.i = tail call i32 @strlen(ptr noundef %27) #14
  %mul.i = shl i32 %call45.i, 1
  %add.i = add i32 %mul.i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #15
  %tobool47.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool47.not.i, label %if.end42.i.calc_ntlmv2_hash.exit_crit_edge, label %if.end49.i

if.end42.i.calc_ntlmv2_hash.exit_crit_edge:       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end49.i:                                       ; preds = %if.end42.i
  %28 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %user.i, align 8
  %name.i167.i = getelementptr inbounds %struct.ksmbd_user, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %name.i167.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i167.i, align 4
  %conn.i = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %32 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn.i, align 4
  %local_nls.i = getelementptr inbounds %struct.ksmbd_conn, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %local_nls.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %local_nls.i, align 4
  %call52.i = tail call i32 @smb_strtoUTF16(ptr noundef nonnull %call9.i.i.i, ptr noundef %31, i32 noundef %call45.i, ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp.i = icmp slt i32 %call52.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call52.i, i32 %call45.i)
  %cmp53.i = icmp sgt i32 %call52.i, %call45.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp53.i
  br i1 %or.cond.i, label %if.end49.i.calc_ntlmv2_hash.exit_crit_edge, label %if.end55.i

if.end49.i.calc_ntlmv2_hash.exit_crit_edge:       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end55.i:                                       ; preds = %if.end49.i
  %36 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not3.i.i = icmp eq i16 %37, 0
  br i1 %tobool.not3.i.i, label %if.end55.i.UniStrupr.exit.i_crit_edge, label %if.end55.i.while.body.i.i_crit_edge

if.end55.i.while.body.i.i_crit_edge:              ; preds = %if.end55.i
  br label %while.body.i.i

if.end55.i.UniStrupr.exit.i_crit_edge:            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %UniStrupr.exit.i

while.body.i.i:                                   ; preds = %UniToupper.exit.i.i.while.body.i.i_crit_edge, %if.end55.i.while.body.i.i_crit_edge
  %38 = phi i16 [ %53, %UniToupper.exit.i.i.while.body.i.i_crit_edge ], [ %37, %if.end55.i.while.body.i.i_crit_edge ]
  %up.04.i.i = phi ptr [ %incdec.ptr.i.i, %UniToupper.exit.i.i.while.body.i.i_crit_edge ], [ %call9.i.i.i, %if.end55.i.while.body.i.i_crit_edge ]
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #10
  %conv.i.i.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %39)
  %cmp.i.i168.i = icmp ult i16 %39, 512
  br i1 %cmp.i.i168.i, label %if.then.i.i169.i, label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %while.body.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @SmbUniUpperRange to i32))
  %40 = load i16, ptr @SmbUniUpperRange, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not40.i.i.i = icmp eq i16 %40, 0
  br i1 %tobool.not40.i.i.i, label %while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %UniToupper.exit.i.i

if.then.i.i169.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr [512 x i8], ptr @SmbUniUpperTable, i32 0, i32 %conv.i.i.i
  br label %cleanup.sink.split.i.i.i

while.body.i.i.i:                                 ; preds = %if.end25.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %41 = phi i16 [ %47, %if.end25.i.i.i.while.body.i.i.i_crit_edge ], [ %40, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %rp.041.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end25.i.i.i.while.body.i.i.i_crit_edge ], [ @SmbUniUpperRange, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %39)
  %cmp8.i.i.i = icmp ugt i16 %41, %39
  br i1 %cmp8.i.i.i, label %while.body.i.i.i.UniToupper.exit.i.i_crit_edge, label %if.end11.i.i.i

while.body.i.i.i.UniToupper.exit.i.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %UniToupper.exit.i.i

if.end11.i.i.i:                                   ; preds = %while.body.i.i.i
  %end.i.i.i = getelementptr inbounds %struct.UniCaseRange, ptr %rp.041.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %end.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %39)
  %cmp14.not.i.i.i = icmp ult i16 %43, %39
  br i1 %cmp14.not.i.i.i, label %if.end25.i.i.i, label %if.then16.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv7.le.i.i.i = zext i16 %41 to i32
  %table.i.i.i = getelementptr inbounds %struct.UniCaseRange, ptr %rp.041.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %table.i.i.i, align 4
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv7.le.i.i.i
  %arrayidx21.i.i.i = getelementptr i8, ptr %45, i32 %sub.i.i.i
  br label %cleanup.sink.split.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end11.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.UniCaseRange, ptr %rp.041.i.i.i, i32 1
  %46 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %incdec.ptr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq i16 %47, 0
  br i1 %tobool.not.i.i.i, label %if.end25.i.i.i.UniToupper.exit.i.i_crit_edge, label %if.end25.i.i.i.while.body.i.i.i_crit_edge

if.end25.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end25.i.i.i.UniToupper.exit.i.i_crit_edge:     ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %UniToupper.exit.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.then16.i.i.i, %if.then.i.i169.i
  %arrayidx21.sink.i.i.i = phi ptr [ %arrayidx21.i.i.i, %if.then16.i.i.i ], [ %arrayidx.i.i.i, %if.then.i.i169.i ]
  %48 = ptrtoint ptr %arrayidx21.sink.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx21.sink.i.i.i, align 1
  %conv22.i.i.i = sext i8 %49 to i16
  %add23.i.i.i = add i16 %39, %conv22.i.i.i
  br label %UniToupper.exit.i.i

UniToupper.exit.i.i:                              ; preds = %cleanup.sink.split.i.i.i, %if.end25.i.i.i.UniToupper.exit.i.i_crit_edge, %while.body.i.i.i.UniToupper.exit.i.i_crit_edge, %while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %39, %while.cond.preheader.i.i.i.UniToupper.exit.i.i_crit_edge ], [ %add23.i.i.i, %cleanup.sink.split.i.i.i ], [ %39, %while.body.i.i.i.UniToupper.exit.i.i_crit_edge ], [ %39, %if.end25.i.i.i.UniToupper.exit.i.i_crit_edge ]
  %50 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.i.i) #10
  %51 = ptrtoint ptr %up.04.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %up.04.i.i, align 2
  %incdec.ptr.i.i = getelementptr i16, ptr %up.04.i.i, i32 1
  %52 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %incdec.ptr.i.i, align 2
  %tobool.not.i170.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i170.i, label %UniToupper.exit.i.i.UniStrupr.exit.i_crit_edge, label %UniToupper.exit.i.i.while.body.i.i_crit_edge

UniToupper.exit.i.i.while.body.i.i_crit_edge:     ; preds = %UniToupper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

UniToupper.exit.i.i.UniStrupr.exit.i_crit_edge:   ; preds = %UniToupper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %UniStrupr.exit.i

UniStrupr.exit.i:                                 ; preds = %UniToupper.exit.i.i.UniStrupr.exit.i_crit_edge, %if.end55.i.UniStrupr.exit.i_crit_edge
  %54 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc.i, align 4
  %mul59.i = shl i32 %call52.i, 1
  %call60.i = tail call i32 @crypto_shash_update(ptr noundef %55, ptr noundef nonnull %call9.i.i.i, i32 noundef %mul59.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end75.i, label %do.body63.i

do.body63.i:                                      ; preds = %UniStrupr.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %56 = load i32, ptr @ksmbd_debug_types, align 4
  %and64.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.body63.i.calc_ntlmv2_hash.exit_crit_edge, label %do.body63.i.out.sink.split.i_crit_edge

do.body63.i.out.sink.split.i_crit_edge:           ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

do.body63.i.calc_ntlmv2_hash.exit_crit_edge:      ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end75.i:                                       ; preds = %UniStrupr.exit.i
  %call76.i = tail call i32 @strlen(ptr noundef %domain_name) #14
  %mul77.i = shl i32 %call76.i, 1
  %add78.i = add i32 %mul77.i, 2
  %call9.i.i196.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add78.i, i32 noundef 3520) #15
  %tobool80.not.i = icmp eq ptr %call9.i.i196.i, null
  br i1 %tobool80.not.i, label %if.end75.i.calc_ntlmv2_hash.exit_crit_edge, label %if.end82.i

if.end75.i.calc_ntlmv2_hash.exit_crit_edge:       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end82.i:                                       ; preds = %if.end75.i
  %57 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %conn.i, align 4
  %local_nls84.i = getelementptr inbounds %struct.ksmbd_conn, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %local_nls84.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %local_nls84.i, align 4
  %call85.i = tail call i32 @smb_strtoUTF16(ptr noundef nonnull %call9.i.i196.i, ptr noundef %domain_name, i32 noundef %call76.i, ptr noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call85.i, i32 %call76.i)
  %cmp88.i = icmp sgt i32 %call85.i, %call76.i
  %or.cond166.i = select i1 %cmp86.i, i1 true, i1 %cmp88.i
  br i1 %or.cond166.i, label %if.end82.i.calc_ntlmv2_hash.exit_crit_edge, label %if.end90.i

if.end82.i.calc_ntlmv2_hash.exit_crit_edge:       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end90.i:                                       ; preds = %if.end82.i
  %61 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %desc.i, align 4
  %mul93.i = shl nuw i32 %call85.i, 1
  %call94.i = tail call i32 @crypto_shash_update(ptr noundef %62, ptr noundef nonnull %call9.i.i196.i, i32 noundef %mul93.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %if.end109.i, label %do.body97.i

do.body97.i:                                      ; preds = %if.end90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %63 = load i32, ptr @ksmbd_debug_types, align 4
  %and98.i = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %do.body97.i.calc_ntlmv2_hash.exit_crit_edge, label %do.body97.i.out.sink.split.i_crit_edge

do.body97.i.out.sink.split.i_crit_edge:           ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

do.body97.i.calc_ntlmv2_hash.exit_crit_edge:      ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

if.end109.i:                                      ; preds = %if.end90.i
  %64 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc.i, align 4
  %call112.i = call i32 @crypto_shash_final(ptr noundef %65, ptr noundef nonnull %ntlmv2_hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.end109.i.calc_ntlmv2_hash.exit_crit_edge, label %do.body115.i

if.end109.i.calc_ntlmv2_hash.exit_crit_edge:      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

do.body115.i:                                     ; preds = %if.end109.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %66 = load i32, ptr @ksmbd_debug_types, align 4
  %and116.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %do.body115.i.calc_ntlmv2_hash.exit_crit_edge, label %do.body115.i.out.sink.split.i_crit_edge

do.body115.i.out.sink.split.i_crit_edge:          ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

do.body115.i.calc_ntlmv2_hash.exit_crit_edge:     ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_ntlmv2_hash.exit

out.sink.split.i:                                 ; preds = %do.body115.i.out.sink.split.i_crit_edge, %do.body97.i.out.sink.split.i_crit_edge, %do.body63.i.out.sink.split.i_crit_edge, %do.body30.i.out.sink.split.i_crit_edge, %do.body12.i.out.sink.split.i_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.118, %do.body12.i.out.sink.split.i_crit_edge ], [ @.str.121, %do.body30.i.out.sink.split.i_crit_edge ], [ @.str.124, %do.body63.i.out.sink.split.i_crit_edge ], [ @.str.127, %do.body97.i.out.sink.split.i_crit_edge ], [ @.str.16, %do.body115.i.out.sink.split.i_crit_edge ]
  %uniname.0.ph.i = phi ptr [ null, %do.body12.i.out.sink.split.i_crit_edge ], [ null, %do.body30.i.out.sink.split.i_crit_edge ], [ %call9.i.i.i, %do.body63.i.out.sink.split.i_crit_edge ], [ %call9.i.i.i, %do.body97.i.out.sink.split.i_crit_edge ], [ %call9.i.i.i, %do.body115.i.out.sink.split.i_crit_edge ]
  %domain.0.ph.i = phi ptr [ null, %do.body12.i.out.sink.split.i_crit_edge ], [ null, %do.body30.i.out.sink.split.i_crit_edge ], [ null, %do.body63.i.out.sink.split.i_crit_edge ], [ %call9.i.i196.i, %do.body97.i.out.sink.split.i_crit_edge ], [ %call9.i.i196.i, %do.body115.i.out.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call9.i, %do.body12.i.out.sink.split.i_crit_edge ], [ %retval.0.i202.i, %do.body30.i.out.sink.split.i_crit_edge ], [ %call60.i, %do.body63.i.out.sink.split.i_crit_edge ], [ %call94.i, %do.body97.i.out.sink.split.i_crit_edge ], [ %call112.i, %do.body115.i.out.sink.split.i_crit_edge ]
  %call123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink.i) #13
  br label %calc_ntlmv2_hash.exit

calc_ntlmv2_hash.exit:                            ; preds = %out.sink.split.i, %do.body115.i.calc_ntlmv2_hash.exit_crit_edge, %if.end109.i.calc_ntlmv2_hash.exit_crit_edge, %do.body97.i.calc_ntlmv2_hash.exit_crit_edge, %if.end82.i.calc_ntlmv2_hash.exit_crit_edge, %if.end75.i.calc_ntlmv2_hash.exit_crit_edge, %do.body63.i.calc_ntlmv2_hash.exit_crit_edge, %if.end49.i.calc_ntlmv2_hash.exit_crit_edge, %if.end42.i.calc_ntlmv2_hash.exit_crit_edge, %do.body30.i.calc_ntlmv2_hash.exit_crit_edge, %do.body12.i.calc_ntlmv2_hash.exit_crit_edge
  %uniname.0.i = phi ptr [ null, %do.body12.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %do.body30.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %do.body63.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %do.body97.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %do.body115.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %if.end109.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %if.end42.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %if.end49.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %if.end75.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i.i, %if.end82.i.calc_ntlmv2_hash.exit_crit_edge ], [ %uniname.0.ph.i, %out.sink.split.i ]
  %domain.0.i = phi ptr [ null, %do.body12.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %do.body30.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %do.body63.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i196.i, %do.body97.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i196.i, %do.body115.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i196.i, %if.end109.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %if.end42.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %if.end49.i.calc_ntlmv2_hash.exit_crit_edge ], [ null, %if.end75.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call9.i.i196.i, %if.end82.i.calc_ntlmv2_hash.exit_crit_edge ], [ %domain.0.ph.i, %out.sink.split.i ]
  %ret.0.i = phi i32 [ %call9.i, %do.body12.i.calc_ntlmv2_hash.exit_crit_edge ], [ %retval.0.i202.i, %do.body30.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call60.i, %do.body63.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call94.i, %do.body97.i.calc_ntlmv2_hash.exit_crit_edge ], [ %call112.i, %do.body115.i.calc_ntlmv2_hash.exit_crit_edge ], [ 0, %if.end109.i.calc_ntlmv2_hash.exit_crit_edge ], [ -12, %if.end42.i.calc_ntlmv2_hash.exit_crit_edge ], [ -22, %if.end49.i.calc_ntlmv2_hash.exit_crit_edge ], [ -12, %if.end75.i.calc_ntlmv2_hash.exit_crit_edge ], [ -22, %if.end82.i.calc_ntlmv2_hash.exit_crit_edge ], [ %ret.0.ph.i, %out.sink.split.i ]
  call void @kfree(ptr noundef %uniname.0.i) #10
  call void @kfree(ptr noundef %domain.0.i) #10
  call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool9.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool9.not, label %if.end23, label %calc_ntlmv2_hash.exit.do.body11_crit_edge

calc_ntlmv2_hash.exit.do.body11_crit_edge:        ; preds = %calc_ntlmv2_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

do.body11:                                        ; preds = %calc_ntlmv2_hash.exit.do.body11_crit_edge, %do.end.i, %do.body.i.do.body11_crit_edge
  %retval.0.i158 = phi i32 [ %ret.0.i, %calc_ntlmv2_hash.exit.do.body11_crit_edge ], [ -12, %do.end.i ], [ -12, %do.body.i.do.body11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %67 = load i32, ptr @ksmbd_debug_types, align 4
  %and12 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.out_crit_edge, label %do.end17

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i158) #13
  br label %out

if.end23:                                         ; preds = %calc_ntlmv2_hash.exit
  %desc = getelementptr inbounds %struct.ksmbd_crypto_ctx, ptr %call, i32 0, i32 1
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %call25 = call i32 @crypto_shash_setkey(ptr noundef %71, ptr noundef nonnull %ntlmv2_hash, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end40, label %do.body28

do.body28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %72 = load i32, ptr @ksmbd_debug_types, align 4
  %and29 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.out_crit_edge, label %do.end34

do.body28.out_crit_edge:                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %out

if.end40:                                         ; preds = %if.end23
  %73 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %desc, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base.i.i.i, align 128
  %and.i149 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i150, label %crypto_shash_init.exit, label %if.end40.do.body46_crit_edge

if.end40.do.body46_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

crypto_shash_init.exit:                           ; preds = %if.end40
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %76, i32 0, i32 2, i32 3
  %79 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %80, i32 -256
  %81 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %82(ptr noundef %74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool44.not = icmp eq i32 %call3.i, 0
  br i1 %tobool44.not, label %if.end58, label %crypto_shash_init.exit.do.body46_crit_edge

crypto_shash_init.exit.do.body46_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

do.body46:                                        ; preds = %crypto_shash_init.exit.do.body46_crit_edge, %if.end40.do.body46_crit_edge
  %retval.0.i151161 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body46_crit_edge ], [ -126, %if.end40.do.body46_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %83 = load i32, ptr @ksmbd_debug_types, align 4
  %and47 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.out_crit_edge, label %do.end52

do.body46.out_crit_edge:                          ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %out

if.end58:                                         ; preds = %crypto_shash_init.exit
  %add = add i32 %blen, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool60.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool60.not, label %if.end58.out_crit_edge, label %if.end62

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end62:                                         ; preds = %if.end58
  %84 = ptrtoint ptr %cryptkey to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %cryptkey, align 1
  %86 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 8
  %blob_signature = getelementptr inbounds %struct.ntlmv2_resp, ptr %ntlmv2, i32 0, i32 1
  %87 = call ptr @memcpy(ptr %add.ptr, ptr %blob_signature, i32 %blen)
  %88 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %desc, align 4
  %call65 = call i32 @crypto_shash_update(ptr noundef %89, ptr noundef nonnull %call9.i.i, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end80, label %do.body68

do.body68:                                        ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %90 = load i32, ptr @ksmbd_debug_types, align 4
  %and69 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.out_crit_edge, label %do.end74

do.body68.out_crit_edge:                          ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %out

if.end80:                                         ; preds = %if.end62
  %91 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %desc, align 4
  %call84 = call i32 @crypto_shash_final(ptr noundef %92, ptr noundef nonnull %ntlmv2_rsp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end99, label %do.body87

do.body87:                                        ; preds = %if.end80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %93 = load i32, ptr @ksmbd_debug_types, align 4
  %and88 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.out_crit_edge, label %do.end93

do.body87.out_crit_edge:                          ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %out

if.end99:                                         ; preds = %if.end80
  %call102 = call fastcc i32 @ksmbd_gen_sess_key(ptr noundef %sess, ptr noundef nonnull %ntlmv2_hash, ptr noundef nonnull %ntlmv2_rsp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end117, label %do.body105

do.body105:                                       ; preds = %if.end99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %94 = load i32, ptr @ksmbd_debug_types, align 4
  %and106 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.out_crit_edge, label %do.end111

do.body105.out_crit_edge:                         ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %out

if.end117:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %ntlmv2, ptr noundef nonnull dereferenceable(16) %ntlmv2_rsp, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %out

out:                                              ; preds = %if.end117, %do.end111, %do.body105.out_crit_edge, %do.end93, %do.body87.out_crit_edge, %do.end74, %do.body68.out_crit_edge, %if.end58.out_crit_edge, %do.end52, %do.body46.out_crit_edge, %do.end34, %do.body28.out_crit_edge, %do.end17, %do.body11.out_crit_edge
  %rc.0 = phi i32 [ %retval.0.i158, %do.end17 ], [ %retval.0.i158, %do.body11.out_crit_edge ], [ %call25, %do.end34 ], [ %call25, %do.body28.out_crit_edge ], [ %retval.0.i151161, %do.end52 ], [ %retval.0.i151161, %do.body46.out_crit_edge ], [ %call65, %do.end74 ], [ %call65, %do.body68.out_crit_edge ], [ %call84, %do.end93 ], [ %call84, %do.body87.out_crit_edge ], [ %call102, %do.end111 ], [ %call102, %do.body105.out_crit_edge ], [ -12, %if.end58.out_crit_edge ], [ %spec.select, %if.end117 ]
  %construct.0 = phi ptr [ null, %do.end17 ], [ null, %do.body11.out_crit_edge ], [ null, %do.end34 ], [ null, %do.body28.out_crit_edge ], [ null, %do.end52 ], [ null, %do.body46.out_crit_edge ], [ %call9.i.i, %do.end74 ], [ %call9.i.i, %do.body68.out_crit_edge ], [ %call9.i.i, %do.end93 ], [ %call9.i.i, %do.body87.out_crit_edge ], [ %call9.i.i, %do.end111 ], [ %call9.i.i, %do.body105.out_crit_edge ], [ null, %if.end58.out_crit_edge ], [ %call9.i.i, %if.end117 ]
  call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call) #10
  call void @kfree(ptr noundef %construct.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ntlmv2_rsp) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ntlmv2_hash) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_hmacmd5() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksmbd_gen_sess_key(ptr noundef %sess, ptr noundef %hash, ptr noundef %hmac) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksmbd_crypto_ctx_find_hmacmd5() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %desc = getelementptr inbounds %struct.ksmbd_crypto_ctx, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call8 = tail call i32 @crypto_shash_setkey(ptr noundef %4, ptr noundef %hash, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end23, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %5 = load i32, ptr @ksmbd_debug_types, align 4
  %and12 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.out_crit_edge, label %do.end17

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %call8) #13
  br label %out

if.end23:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end23.do.body29_crit_edge

if.end23.do.body29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

crypto_shash_init.exit:                           ; preds = %if.end23
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 -256
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %15(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool27.not = icmp eq i32 %call3.i, 0
  br i1 %tobool27.not, label %if.end41, label %crypto_shash_init.exit.do.body29_crit_edge

crypto_shash_init.exit.do.body29_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.body29:                                        ; preds = %crypto_shash_init.exit.do.body29_crit_edge, %if.end23.do.body29_crit_edge
  %retval.0.i94 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body29_crit_edge ], [ -126, %if.end23.do.body29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %16 = load i32, ptr @ksmbd_debug_types, align 4
  %and30 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.out_crit_edge, label %do.end35

do.body29.out_crit_edge:                          ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %retval.0.i94) #13
  br label %out

if.end41:                                         ; preds = %crypto_shash_init.exit
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc, align 4
  %call44 = tail call i32 @crypto_shash_update(ptr noundef %18, ptr noundef %hmac, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end59, label %do.body47

do.body47:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %19 = load i32, ptr @ksmbd_debug_types, align 4
  %and48 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.out_crit_edge, label %do.end53

do.body47.out_crit_edge:                          ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %call44) #13
  br label %out

if.end59:                                         ; preds = %if.end41
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %sess_key = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 10
  %call62 = tail call i32 @crypto_shash_final(ptr noundef %21, ptr noundef %sess_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end59.out_crit_edge, label %do.body65

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body65:                                        ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and66 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.out_crit_edge, label %do.end71

do.body65.out_crit_edge:                          ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %call62) #13
  br label %out

out:                                              ; preds = %do.end71, %do.body65.out_crit_edge, %if.end59.out_crit_edge, %do.end53, %do.body47.out_crit_edge, %do.end35, %do.body29.out_crit_edge, %do.end17, %do.body11.out_crit_edge
  %rc.0 = phi i32 [ %call8, %do.end17 ], [ %call8, %do.body11.out_crit_edge ], [ %retval.0.i94, %do.end35 ], [ %retval.0.i94, %do.body29.out_crit_edge ], [ %call44, %do.end53 ], [ %call44, %do.body47.out_crit_edge ], [ %call62, %do.end71 ], [ %call62, %do.body65.out_crit_edge ], [ 0, %if.end59.out_crit_edge ]
  tail call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_release_crypto_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_decode_ntlmssp_auth_blob(ptr noundef %authblob, i32 noundef %blob_len, ptr nocapture noundef readonly %conn, ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %blob_len)
  %cmp = icmp ult i32 %blob_len, 64
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup90_crit_edge, label %do.end

do.body.cleanup90_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %blob_len) #13
  br label %cleanup90

if.end5:                                          ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %authblob, ptr noundef nonnull dereferenceable(8) @.str.23, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.end23, label %do.body9

do.body9:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and10 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.cleanup90_crit_edge, label %do.end15

do.body9.cleanup90_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %authblob) #13
  br label %cleanup90

if.end23:                                         ; preds = %if.end5
  %NtChallengeResponse = getelementptr inbounds %struct.authenticate_message, ptr %authblob, i32 0, i32 3
  %BufferOffset = getelementptr inbounds %struct.authenticate_message, ptr %authblob, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %BufferOffset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %BufferOffset, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %NtChallengeResponse to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %NtChallengeResponse, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %DomainName = getelementptr inbounds %struct.authenticate_message, ptr %authblob, i32 0, i32 4
  %BufferOffset25 = getelementptr inbounds %struct.authenticate_message, ptr %authblob, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %BufferOffset25 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %BufferOffset25, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %DomainName to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %DomainName, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = sext i32 %blob_len to i64
  %conv28 = zext i32 %10 to i64
  %conv29 = zext i16 %13 to i64
  %add = add nuw nsw i64 %conv29, %conv28
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp30 = icmp ugt i64 %add, %conv
  br i1 %cmp30, label %if.end23.cleanup90_crit_edge, label %lor.lhs.false

if.end23.cleanup90_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

lor.lhs.false:                                    ; preds = %if.end23
  %conv33 = zext i32 %4 to i64
  %conv34 = zext i16 %7 to i64
  %add35 = add nuw nsw i64 %conv34, %conv33
  call void @__sanitizer_cov_trace_cmp8(i64 %add35, i64 %conv)
  %cmp36 = icmp ugt i64 %add35, %conv
  br i1 %cmp36, label %lor.lhs.false.cleanup90_crit_edge, label %if.end39

lor.lhs.false.cleanup90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end39:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %authblob, i32 %10
  %conv40 = zext i16 %13 to i32
  %local_nls = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 9
  %14 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %local_nls, align 4
  %call41 = tail call ptr @smb_strndup_from_utf16(ptr noundef %add.ptr, i32 noundef %conv40, i1 noundef zeroext true, ptr noundef %15) #10
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %do.body46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call41 to i32
  br label %cleanup90

do.body46:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %17 = load i32, ptr @ksmbd_debug_types, align 4
  %and47 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end57_crit_edge, label %do.end52

do.body46.do.end57_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %call41) #13
  br label %do.end57

do.end57:                                         ; preds = %do.end52, %do.body46.do.end57_crit_edge
  %add.ptr58 = getelementptr i8, ptr %authblob, i32 %4
  %conv59 = zext i16 %7 to i32
  %sub = add nsw i32 %conv59, -16
  %cryptkey = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 25, i32 4
  %call61 = tail call i32 @ksmbd_auth_ntlmv2(ptr noundef %sess, ptr noundef %add.ptr58, i32 noundef %sub, ptr noundef %call41, ptr noundef %cryptkey)
  tail call void @kfree(ptr noundef %call41) #10
  %client_flags = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %client_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %client_flags, align 4
  %and63 = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.end57.cleanup90_crit_edge, label %if.then65

do.end57.cleanup90_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.then65:                                        ; preds = %do.end57
  %SessionKey = getelementptr inbounds %struct.authenticate_message, ptr %authblob, i32 0, i32 7
  %BufferOffset66 = getelementptr inbounds %struct.authenticate_message, ptr %authblob, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %BufferOffset66 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %BufferOffset66, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %SessionKey to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %SessionKey, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv69 = zext i16 %25 to i32
  %conv71 = zext i32 %22 to i64
  %conv72 = zext i16 %25 to i64
  %add73 = add nuw nsw i64 %conv72, %conv71
  call void @__sanitizer_cov_trace_cmp8(i64 %add73, i64 %conv)
  %cmp74 = icmp ugt i64 %add73, %conv
  br i1 %cmp74, label %if.then65.cleanup90_crit_edge, label %if.end77

if.then65.cleanup90_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end77:                                         ; preds = %if.then65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 1032) #17
  %tobool79.not = icmp eq ptr %call7.i, null
  br i1 %tobool79.not, label %if.end77.cleanup90_crit_edge, label %cleanup

if.end77.cleanup90_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

cleanup:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %sess_key = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 10
  %call83 = tail call i32 @cifs_arc4_setkey(ptr noundef nonnull %call7.i, ptr noundef %sess_key, i32 noundef 16) #10
  %add.ptr86 = getelementptr i8, ptr %authblob, i32 %22
  tail call void @cifs_arc4_crypt(ptr noundef nonnull %call7.i, ptr noundef %sess_key, ptr noundef %add.ptr86, i32 noundef %conv69) #10
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i) #10
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup, %if.end77.cleanup90_crit_edge, %if.then65.cleanup90_crit_edge, %do.end57.cleanup90_crit_edge, %if.then43, %lor.lhs.false.cleanup90_crit_edge, %if.end23.cleanup90_crit_edge, %do.end15, %do.body9.cleanup90_crit_edge, %do.end, %do.body.cleanup90_crit_edge
  %retval.1 = phi i32 [ %16, %if.then43 ], [ -22, %do.end ], [ -22, %do.body.cleanup90_crit_edge ], [ -22, %do.end15 ], [ -22, %do.body9.cleanup90_crit_edge ], [ -22, %lor.lhs.false.cleanup90_crit_edge ], [ -22, %if.end23.cleanup90_crit_edge ], [ %call61, %cleanup ], [ %call61, %do.end57.cleanup90_crit_edge ], [ -12, %if.end77.cleanup90_crit_edge ], [ -22, %if.then65.cleanup90_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smb_strndup_from_utf16(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_decode_ntlmssp_neg_blob(ptr noundef %negblob, i32 noundef %blob_len, ptr nocapture noundef writeonly %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %blob_len)
  %cmp = icmp ult i32 %blob_len, 32
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %blob_len) #13
  br label %return

if.end4:                                          ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %negblob, ptr noundef nonnull dereferenceable(8) @.str.23, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %if.end20, label %do.body8

do.body8:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and9 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.return_crit_edge, label %do.end13

do.body8.return_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %negblob) #13
  br label %return

if.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %NegotiateFlags = getelementptr inbounds %struct.negotiate_message, ptr %negblob, i32 0, i32 2
  %2 = ptrtoint ptr %NegotiateFlags to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %NegotiateFlags, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %client_flags = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 25, i32 1
  %5 = ptrtoint ptr %client_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %client_flags, align 4
  br label %return

return:                                           ; preds = %if.end20, %do.end13, %do.body8.return_crit_edge, %do.end, %do.body.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %do.body.return_crit_edge ], [ -22, %do.end ], [ -22, %do.body8.return_crit_edge ], [ -22, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_build_ntlmssp_challenge_blob(ptr nocapture noundef writeonly %chgblob, ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client_flags = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %client_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_flags, align 4
  %2 = ptrtoint ptr %chgblob to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 5644220127996235776, ptr %chgblob, align 1
  %MessageType = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 1
  %3 = ptrtoint ptr %MessageType to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 33554432, ptr %MessageType, align 1
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %1, -1610612736
  %or2 = or i32 %and1, 8520209
  %flags.0 = select i1 %tobool.not, i32 8520193, i32 %or2
  %4 = and i32 %1, 32772
  %5 = or i32 %4, %flags.0
  %use_spnego = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 33
  %6 = ptrtoint ptr %use_spnego to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %use_spnego, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %and13 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %bf.cast.not, i1 true, i1 %tobool14.not
  %or16 = or i32 %5, 524288
  %flags.3 = select i1 %or.cond, i32 %5, i32 %or16
  %and18 = and i32 %1, 1073741824
  %7 = or i32 %flags.3, %and18
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %NegotiateFlags = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 3
  %9 = ptrtoint ptr %NegotiateFlags to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %NegotiateFlags, align 1
  %call = tail call ptr @ksmbd_netbios_name() #10
  %call23 = tail call i32 @strlen(ptr noundef %call) #16
  %mul = shl i32 %call23, 1
  %add = add i32 %mul, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool25.not = icmp eq ptr %call9.i, null
  br i1 %tobool25.not, label %entry.cleanup_crit_edge, label %if.end27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %entry
  %call28 = tail call ptr @ksmbd_netbios_name() #10
  %local_nls = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 9
  %10 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local_nls, align 4
  %call29 = tail call i32 @smb_strtoUTF16(ptr noundef nonnull %call9.i, ptr noundef %call28, i32 noundef %call23, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %call23)
  %cmp30 = icmp sgt i32 %call29, %call23
  %or.cond147 = select i1 %cmp, i1 true, i1 %cmp30
  br i1 %or.cond147, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %mul33 = shl nuw i32 %call29, 1
  %add34 = add i32 %mul33, 48
  %conv = trunc i32 %mul33 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %TargetName = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 2
  %13 = ptrtoint ptr %TargetName to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %TargetName, align 1
  %MaximumLength = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %MaximumLength to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %12, ptr %MaximumLength, align 1
  %BufferOffset = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %BufferOffset to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 805306368, ptr %BufferOffset, align 1
  %cryptkey = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 25, i32 4
  tail call void @get_random_bytes(ptr noundef %cryptkey, i32 noundef 8) #10
  %Challenge = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 4
  %16 = ptrtoint ptr %cryptkey to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %cryptkey, align 4
  %18 = ptrtoint ptr %Challenge to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %Challenge, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %add34)
  %TargetInfoArray = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 6
  %BufferOffset44 = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %BufferOffset44 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %BufferOffset44, align 1
  %add.ptr = getelementptr i8, ptr %chgblob, i32 48
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %call9.i, i32 %mul33)
  %22 = ptrtoint ptr %TargetInfoArray to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 0, ptr %TargetInfoArray, align 1
  %tinfo.0151 = getelementptr i8, ptr %add.ptr, i32 %mul33
  %23 = shl i32 %call29, 3
  %24 = ptrtoint ptr %tinfo.0151 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 256, ptr %tinfo.0151, align 1
  %Length52 = getelementptr inbounds %struct.target_info, ptr %tinfo.0151, i32 0, i32 1
  %25 = ptrtoint ptr %Length52 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %12, ptr %Length52, align 1
  %Content = getelementptr %struct.target_info, ptr %tinfo.0151, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %Content, ptr %call9.i, i32 %mul33)
  %tinfo.0 = getelementptr i8, ptr %Content, i32 %mul33
  %27 = ptrtoint ptr %tinfo.0 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 512, ptr %tinfo.0, align 1
  %Length52.1 = getelementptr inbounds %struct.target_info, ptr %tinfo.0, i32 0, i32 1
  %28 = ptrtoint ptr %Length52.1 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %12, ptr %Length52.1, align 1
  %Content.1 = getelementptr %struct.target_info, ptr %tinfo.0, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %Content.1, ptr %call9.i, i32 %mul33)
  %tinfo.0.1 = getelementptr i8, ptr %Content.1, i32 %mul33
  %30 = ptrtoint ptr %tinfo.0.1 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 768, ptr %tinfo.0.1, align 1
  %Length52.2 = getelementptr inbounds %struct.target_info, ptr %tinfo.0.1, i32 0, i32 1
  %31 = ptrtoint ptr %Length52.2 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %12, ptr %Length52.2, align 1
  %Content.2 = getelementptr %struct.target_info, ptr %tinfo.0.1, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %Content.2, ptr %call9.i, i32 %mul33)
  %tinfo.0.2 = getelementptr i8, ptr %Content.2, i32 %mul33
  %33 = ptrtoint ptr %tinfo.0.2 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 1024, ptr %tinfo.0.2, align 1
  %Length52.3 = getelementptr inbounds %struct.target_info, ptr %tinfo.0.2, i32 0, i32 1
  %34 = ptrtoint ptr %Length52.3 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %12, ptr %Length52.3, align 1
  %Content.3 = getelementptr %struct.target_info, ptr %tinfo.0.2, i32 0, i32 2
  %35 = call ptr @memcpy(ptr %Content.3, ptr %call9.i, i32 %mul33)
  %tinfo.0.3 = getelementptr i8, ptr %Content.3, i32 %mul33
  %36 = ptrtoint ptr %tinfo.0.3 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 0, ptr %tinfo.0.3, align 1
  %Length59 = getelementptr inbounds %struct.target_info, ptr %tinfo.0.3, i32 0, i32 1
  %37 = ptrtoint ptr %Length59 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 0, ptr %Length59, align 1
  %add60 = add i32 %23, 20
  %conv61 = trunc i32 %add60 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv61)
  %39 = ptrtoint ptr %TargetInfoArray to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %TargetInfoArray, align 1
  %MaximumLength66 = getelementptr inbounds %struct.challenge_message, ptr %chgblob, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %MaximumLength66 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %38, ptr %MaximumLength66, align 1
  %add67 = add i32 %add60, %add34
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %41 = load i32, ptr @ksmbd_debug_types, align 4
  %and68 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end32.cleanup_crit_edge, label %do.end

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %add67) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end32.cleanup_crit_edge, %if.then31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then31 ], [ -12, %entry.cleanup_crit_edge ], [ %add67, %do.end ], [ %add67, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_netbios_name() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb_strtoUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_krb5_authenticate(ptr nocapture noundef writeonly %sess, ptr noundef %in_blob, i32 noundef %in_len, ptr nocapture noundef writeonly %out_blob, ptr nocapture noundef %out_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksmbd_ipc_spnego_authen_request(ptr noundef %in_blob, i32 noundef %in_len) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  %login_response = getelementptr inbounds %struct.ksmbd_spnego_authen_response, ptr %call, i32 0, i32 1
  %status = getelementptr inbounds %struct.ksmbd_spnego_authen_response, ptr %call, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %status, align 4
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool10.not = icmp eq i16 %3, 0
  br i1 %tobool10.not, label %do.body12, label %if.end24

do.body12:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %4 = load i32, ptr @ksmbd_debug_types, align 4
  %and13 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.out_crit_edge, label %do.end18

do.body12.out_crit_edge:                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %out

if.end24:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_len, align 4
  %spnego_blob_len = getelementptr inbounds %struct.ksmbd_spnego_authen_response, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %spnego_blob_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %spnego_blob_len, align 2
  %conv25 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv25)
  %cmp.not = icmp sgt i32 %6, %conv25
  br i1 %cmp.not, label %if.end42, label %do.body28

do.body28:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %9 = load i32, ptr @ksmbd_debug_types, align 4
  %and29 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.out_crit_edge, label %do.end34

do.body28.out_crit_edge:                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %6, i32 noundef %conv25) #13
  br label %out

if.end42:                                         ; preds = %if.end24
  %session_key_len = getelementptr inbounds %struct.ksmbd_spnego_authen_response, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %session_key_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %session_key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %11)
  %cmp44 = icmp ugt i16 %11, 40
  br i1 %cmp44, label %do.body47, label %if.end59

do.body47:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %12 = load i32, ptr @ksmbd_debug_types, align 4
  %and48 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.out_crit_edge, label %do.end53

do.body47.out_crit_edge:                          ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %out

if.end59:                                         ; preds = %if.end42
  %call61 = tail call ptr @ksmbd_alloc_user(ptr noundef %login_response) #10
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %do.body64, label %if.end76

do.body64:                                        ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %13 = load i32, ptr @ksmbd_debug_types, align 4
  %and65 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.out_crit_edge, label %do.end70

do.body64.out_crit_edge:                          ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %out

if.end76:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %user77 = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 1
  %14 = ptrtoint ptr %user77 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call61, ptr %user77, align 8
  %sess_key = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 10
  %payload = getelementptr inbounds %struct.ksmbd_spnego_authen_response, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %session_key_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %session_key_len, align 4
  %conv80 = zext i16 %16 to i32
  %17 = call ptr @memcpy(ptr %sess_key, ptr %payload, i32 %conv80)
  %18 = load i16, ptr %session_key_len, align 4
  %conv84 = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %payload, i32 %conv84
  %19 = ptrtoint ptr %spnego_blob_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %spnego_blob_len, align 2
  %conv86 = zext i16 %20 to i32
  %21 = call ptr @memcpy(ptr %out_blob, ptr %add.ptr, i32 %conv86)
  %22 = load i16, ptr %spnego_blob_len, align 2
  %conv88 = zext i16 %22 to i32
  %23 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv88, ptr %out_len, align 4
  br label %out

out:                                              ; preds = %if.end76, %do.end70, %do.body64.out_crit_edge, %do.end53, %do.body47.out_crit_edge, %do.end34, %do.body28.out_crit_edge, %do.end18, %do.body12.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end76 ], [ -1, %do.end18 ], [ -1, %do.body12.out_crit_edge ], [ -22, %do.end34 ], [ -22, %do.body28.out_crit_edge ], [ -22, %do.end53 ], [ -22, %do.body47.out_crit_edge ], [ -12, %do.end70 ], [ -12, %do.body64.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_ipc_spnego_authen_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_alloc_user(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_sign_smb2_pdu(ptr nocapture noundef readnone %conn, ptr noundef %key, ptr nocapture noundef readonly %iov, i32 noundef %n_vec, ptr noundef %sig) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksmbd_crypto_ctx_find_hmacsha256() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ksmbd_crypto_ctx, ptr %call, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call8 = tail call i32 @crypto_shash_setkey(ptr noundef %4, ptr noundef %key, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end11.do.body17_crit_edge

if.end11.do.body17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

crypto_shash_init.exit:                           ; preds = %if.end11
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %14(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool15.not = icmp eq i32 %call3.i, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %crypto_shash_init.exit.do.body17_crit_edge

crypto_shash_init.exit.do.body17_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

for.cond.preheader:                               ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vec)
  %cmp89 = icmp sgt i32 %n_vec, 0
  br i1 %cmp89, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body17:                                        ; preds = %crypto_shash_init.exit.do.body17_crit_edge, %if.end11.do.body17_crit_edge
  %retval.0.i88 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body17_crit_edge ], [ -126, %if.end11.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %15 = load i32, ptr @ksmbd_debug_types, align 4
  %and18 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.out_crit_edge, label %do.end23

do.body17.out_crit_edge:                          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %retval.0.i88) #13
  br label %out

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %n_vec
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %arrayidx32 = getelementptr %struct.kvec, ptr %iov, i32 %i.090
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx32, align 4
  %iov_len = getelementptr %struct.kvec, ptr %iov, i32 %i.090, i32 1
  %20 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len, align 4
  %call34 = tail call i32 @crypto_shash_update(ptr noundef %17, ptr noundef %19, i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond, label %do.body37

do.body37:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and38 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.out_crit_edge, label %do.end43

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call34) #13
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call52 = tail call i32 @crypto_shash_final(ptr noundef %24, ptr noundef %sig) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.end.out_crit_edge, label %do.body55

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body55:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %25 = load i32, ptr @ksmbd_debug_types, align 4
  %and56 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.out_crit_edge, label %do.end61

do.body55.out_crit_edge:                          ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call52) #13
  br label %out

out:                                              ; preds = %do.end61, %do.body55.out_crit_edge, %for.end.out_crit_edge, %do.end43, %do.body37.out_crit_edge, %do.end23, %do.body17.out_crit_edge, %if.end7.out_crit_edge
  %rc.0 = phi i32 [ %call8, %if.end7.out_crit_edge ], [ %retval.0.i88, %do.end23 ], [ %retval.0.i88, %do.body17.out_crit_edge ], [ %call34, %do.end43 ], [ %call34, %do.body37.out_crit_edge ], [ %call52, %do.end61 ], [ %call52, %do.body55.out_crit_edge ], [ 0, %for.end.out_crit_edge ]
  tail call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_hmacsha256() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_sign_smb3_pdu(ptr nocapture noundef readnone %conn, ptr noundef %key, ptr nocapture noundef readonly %iov, i32 noundef %n_vec, ptr noundef %sig) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksmbd_crypto_ctx_find_cmacaes() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ksmbd_crypto_ctx, ptr %call, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call8 = tail call i32 @crypto_shash_setkey(ptr noundef %4, ptr noundef %key, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end11.do.body17_crit_edge

if.end11.do.body17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

crypto_shash_init.exit:                           ; preds = %if.end11
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %14(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool15.not = icmp eq i32 %call3.i, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %crypto_shash_init.exit.do.body17_crit_edge

crypto_shash_init.exit.do.body17_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

for.cond.preheader:                               ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vec)
  %cmp89 = icmp sgt i32 %n_vec, 0
  br i1 %cmp89, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body17:                                        ; preds = %crypto_shash_init.exit.do.body17_crit_edge, %if.end11.do.body17_crit_edge
  %retval.0.i88 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body17_crit_edge ], [ -126, %if.end11.do.body17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %15 = load i32, ptr @ksmbd_debug_types, align 4
  %and18 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.out_crit_edge, label %do.end23

do.body17.out_crit_edge:                          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %retval.0.i88) #13
  br label %out

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %n_vec
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %arrayidx32 = getelementptr %struct.kvec, ptr %iov, i32 %i.090
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx32, align 4
  %iov_len = getelementptr %struct.kvec, ptr %iov, i32 %i.090, i32 1
  %20 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len, align 4
  %call34 = tail call i32 @crypto_shash_update(ptr noundef %17, ptr noundef %19, i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond, label %do.body37

do.body37:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and38 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.out_crit_edge, label %do.end43

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call34) #13
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call52 = tail call i32 @crypto_shash_final(ptr noundef %24, ptr noundef %sig) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.end.out_crit_edge, label %do.body55

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body55:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %25 = load i32, ptr @ksmbd_debug_types, align 4
  %and56 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.out_crit_edge, label %do.end61

do.body55.out_crit_edge:                          ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call52) #13
  br label %out

out:                                              ; preds = %do.end61, %do.body55.out_crit_edge, %for.end.out_crit_edge, %do.end43, %do.body37.out_crit_edge, %do.end23, %do.body17.out_crit_edge, %if.end7.out_crit_edge
  %rc.0 = phi i32 [ %call8, %if.end7.out_crit_edge ], [ %retval.0.i88, %do.end23 ], [ %retval.0.i88, %do.body17.out_crit_edge ], [ %call34, %do.end43 ], [ %call34, %do.body37.out_crit_edge ], [ %call52, %do.end61 ], [ %call52, %do.body55.out_crit_edge ], [ 0, %for.end.out_crit_edge ]
  tail call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_cmacaes() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gen_smb30_signingkey(ptr noundef %sess, ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  %d = alloca %struct.derivation, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %d) #10
  %0 = getelementptr inbounds i8, ptr %d, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.70, ptr %d, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %d, i32 0, i32 1
  %3 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %iov_len, align 4
  %context = getelementptr inbounds %struct.derivation, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.71, ptr %context, align 4
  %iov_len4 = getelementptr inbounds %struct.derivation, ptr %d, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %iov_len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %iov_len4, align 4
  %binding = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 47
  %6 = ptrtoint ptr %binding to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %binding, align 4, !range !314
  %binding5 = getelementptr inbounds %struct.derivation, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %binding5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %binding5, align 4
  %call = call fastcc i32 @generate_smb3signingkey(ptr noundef %sess, ptr noundef %conn, ptr noundef nonnull %d)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %d) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generate_smb3signingkey(ptr noundef %sess, ptr noundef %conn, ptr nocapture noundef readonly %signing) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_chann_list(ptr noundef %sess, ptr noundef %conn) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn1 = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %dialect = getelementptr inbounds %struct.ksmbd_conn, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dialect to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dialect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %3)
  %cmp = icmp ugt i16 %3, 767
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %binding = getelementptr inbounds %struct.derivation, ptr %signing, i32 0, i32 2
  %4 = ptrtoint ptr %binding to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %binding, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %smb3signingkey6 = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 18
  br label %if.end8

if.end8:                                          ; preds = %if.else, %land.lhs.true.if.end8_crit_edge
  %key.0 = phi ptr [ %smb3signingkey6, %if.else ], [ %call, %land.lhs.true.if.end8_crit_edge ]
  %context = getelementptr inbounds %struct.derivation, ptr %signing, i32 0, i32 1
  %6 = ptrtoint ptr %signing to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %signing, align 4
  %7 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt86 = getelementptr inbounds [2 x i32], ptr %signing, i32 0, i32 1
  %8 = ptrtoint ptr %.elt86 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack87 = load i32, ptr %.elt86, align 4
  %9 = insertvalue [2 x i32] %7, i32 %.unpack87, 1
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack88 = load i32, ptr %context, align 4
  %11 = insertvalue [2 x i32] undef, i32 %.unpack88, 0
  %.elt89 = getelementptr inbounds %struct.derivation, ptr %signing, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %.elt89 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack90 = load i32, ptr %.elt89, align 4
  %13 = insertvalue [2 x i32] %11, i32 %.unpack90, 1
  %call9 = tail call fastcc i32 @generate_key(ptr noundef %sess, [2 x i32] %9, [2 x i32] %13, ptr noundef %key.0, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn1, align 4
  %dialect14 = getelementptr inbounds %struct.ksmbd_conn, ptr %15, i32 0, i32 36
  %16 = ptrtoint ptr %dialect14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dialect14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %17)
  %cmp16 = icmp ugt i16 %17, 767
  br i1 %cmp16, label %land.lhs.true18, label %if.end12.if.then22_crit_edge

if.end12.if.then22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

land.lhs.true18:                                  ; preds = %if.end12
  %binding19 = getelementptr inbounds %struct.derivation, ptr %signing, i32 0, i32 2
  %18 = ptrtoint ptr %binding19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %binding19, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.then22_crit_edge, label %land.lhs.true18.do.body_crit_edge

land.lhs.true18.do.body_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true18.if.then22_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %land.lhs.true18.if.then22_crit_edge, %if.end12.if.then22_crit_edge
  %20 = call ptr @memcpy(ptr %call, ptr %key.0, i32 16)
  br label %do.body

do.body:                                          ; preds = %if.then22, %land.lhs.true18.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %21 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body.do.body33_crit_edge, label %do.end

do.body.do.body33_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #13
  br label %do.body33

do.body33:                                        ; preds = %do.end, %do.body.do.body33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and34 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.body45_crit_edge, label %do.end39

do.body33.do.body45_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %sess to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sess, align 8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i64 noundef %24) #13
  br label %do.body45

do.body45:                                        ; preds = %do.end39, %do.body33.do.body45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %25 = load i32, ptr @ksmbd_debug_types, align 4
  %and46 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.do.body58_crit_edge, label %do.end51

do.body45.do.body58_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %sess_key = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 10
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef 16, ptr noundef %sess_key) #13
  br label %do.body58

do.body58:                                        ; preds = %do.end51, %do.body45.do.body58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %26 = load i32, ptr @ksmbd_debug_types, align 4
  %and59 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.cleanup_crit_edge, label %do.end64

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef 16, ptr noundef %key.0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.body58.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %do.end64 ], [ 0, %do.body58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gen_smb311_signingkey(ptr noundef %sess, ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  %d = alloca %struct.derivation, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %d) #10
  %0 = getelementptr inbounds i8, ptr %d, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.72, ptr %d, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %d, i32 0, i32 1
  %3 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 14, ptr %iov_len, align 4
  %binding = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 47
  %4 = ptrtoint ptr %binding to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %binding, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %sess to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sess, align 8
  %call = tail call ptr @ksmbd_preauth_session_lookup(ptr noundef %conn, i64 noundef %7) #10
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup15_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %Preauth_HashValue5 = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 9
  %8 = ptrtoint ptr %Preauth_HashValue5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %Preauth_HashValue5, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then.if.end8_crit_edge
  %call.sink = phi ptr [ %9, %if.else ], [ %call, %if.then.if.end8_crit_edge ]
  %context = getelementptr inbounds %struct.derivation, ptr %d, i32 0, i32 1
  %10 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.sink, ptr %context, align 4
  %iov_len10 = getelementptr inbounds %struct.derivation, ptr %d, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %iov_len10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %iov_len10, align 4
  %12 = ptrtoint ptr %binding to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %binding, align 4, !range !314
  %binding13 = getelementptr inbounds %struct.derivation, ptr %d, i32 0, i32 2
  %14 = ptrtoint ptr %binding13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %binding13, align 4
  %call14 = call fastcc i32 @generate_smb3signingkey(ptr noundef %sess, ptr noundef %conn, ptr noundef nonnull %d)
  br label %cleanup15

cleanup15:                                        ; preds = %if.end8, %if.then.cleanup15_crit_edge
  %retval.1 = phi i32 [ %call14, %if.end8 ], [ -2, %if.then.cleanup15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %d) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_preauth_session_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gen_smb30_encryptionkey(ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  %twin = alloca %struct.derivation_twin, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %twin) #10
  %0 = getelementptr inbounds i8, ptr %twin, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %twin to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.73, ptr %twin, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %twin, i32 0, i32 1
  %3 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 11, ptr %iov_len, align 4
  %context = getelementptr inbounds %struct.derivation, ptr %twin, i32 0, i32 1
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.74, ptr %context, align 4
  %iov_len4 = getelementptr inbounds %struct.derivation, ptr %twin, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %iov_len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %iov_len4, align 4
  %decryption = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1
  %6 = ptrtoint ptr %decryption to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.73, ptr %decryption, align 4
  %iov_len8 = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %iov_len8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %iov_len8, align 4
  %context9 = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %context9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.75, ptr %context9, align 4
  %iov_len12 = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %iov_len12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %iov_len12, align 4
  %call = call fastcc i32 @generate_smb3encryptionkey(ptr noundef %sess, ptr noundef nonnull %twin)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %twin) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generate_smb3encryptionkey(ptr noundef %sess, ptr nocapture noundef readonly %ptwin) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.derivation, ptr %ptwin, i32 0, i32 1
  %smb3encryptionkey = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 16
  %0 = ptrtoint ptr %ptwin to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %ptwin, align 4
  %1 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt139 = getelementptr inbounds [2 x i32], ptr %ptwin, i32 0, i32 1
  %2 = ptrtoint ptr %.elt139 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack140 = load i32, ptr %.elt139, align 4
  %3 = insertvalue [2 x i32] %1, i32 %.unpack140, 1
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack141 = load i32, ptr %context, align 4
  %5 = insertvalue [2 x i32] undef, i32 %.unpack141, 0
  %.elt142 = getelementptr inbounds %struct.derivation, ptr %ptwin, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %.elt142 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack143 = load i32, ptr %.elt142, align 4
  %7 = insertvalue [2 x i32] %5, i32 %.unpack143, 1
  %call = tail call fastcc i32 @generate_key(ptr noundef %sess, [2 x i32] %3, [2 x i32] %7, ptr noundef %smb3encryptionkey, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %decryption = getelementptr inbounds %struct.derivation_twin, ptr %ptwin, i32 0, i32 1
  %context4 = getelementptr inbounds %struct.derivation_twin, ptr %ptwin, i32 0, i32 1, i32 1
  %smb3decryptionkey = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 17
  %8 = ptrtoint ptr %decryption to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack144 = load i32, ptr %decryption, align 4
  %9 = insertvalue [2 x i32] undef, i32 %.unpack144, 0
  %.elt145 = getelementptr inbounds %struct.derivation_twin, ptr %ptwin, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %.elt145 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack146 = load i32, ptr %.elt145, align 4
  %11 = insertvalue [2 x i32] %9, i32 %.unpack146, 1
  %12 = ptrtoint ptr %context4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack147 = load i32, ptr %context4, align 4
  %13 = insertvalue [2 x i32] undef, i32 %.unpack147, 0
  %.elt148 = getelementptr inbounds %struct.derivation_twin, ptr %ptwin, i32 0, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %.elt148 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack149 = load i32, ptr %.elt148, align 4
  %15 = insertvalue [2 x i32] %13, i32 %.unpack149, 1
  %call6 = tail call fastcc i32 @generate_key(ptr noundef %sess, [2 x i32] %11, [2 x i32] %15, ptr noundef %smb3decryptionkey, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %16 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.body17_crit_edge, label %do.end

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #13
  br label %do.body17

do.body17:                                        ; preds = %do.end, %do.body.do.body17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %17 = load i32, ptr @ksmbd_debug_types, align 4
  %and18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.do.body29_crit_edge, label %do.end23

do.body17.do.body29_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %conn = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %18 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn, align 4
  %cipher_type = getelementptr inbounds %struct.ksmbd_conn, ptr %19, i32 0, i32 42
  %20 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cipher_type, align 4
  %conv = zext i16 %21 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %conv) #13
  br label %do.body29

do.body29:                                        ; preds = %do.end23, %do.body17.do.body29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %22 = load i32, ptr @ksmbd_debug_types, align 4
  %and30 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.body41_crit_edge, label %do.end35

do.body29.do.body41_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %sess to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sess, align 8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i64 noundef %24) #13
  br label %do.body41

do.body41:                                        ; preds = %do.end35, %do.body29.do.body41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %25 = load i32, ptr @ksmbd_debug_types, align 4
  %and42 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.end53_crit_edge, label %do.end47

do.body41.do.end53_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %sess_key = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 10
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef 16, ptr noundef %sess_key) #13
  br label %do.end53

do.end53:                                         ; preds = %do.end47, %do.body41.do.end53_crit_edge
  %conn54 = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %26 = ptrtoint ptr %conn54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn54, align 4
  %cipher_type55 = getelementptr inbounds %struct.ksmbd_conn, ptr %27, i32 0, i32 42
  %28 = ptrtoint ptr %cipher_type55 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cipher_type55, align 4
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i16 %29, label %do.body92 [
    i16 768, label %do.end53.do.body64_crit_edge
    i16 1024, label %do.end53.do.body64_crit_edge150
  ]

do.end53.do.body64_crit_edge150:                  ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

do.end53.do.body64_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

do.body64:                                        ; preds = %do.end53.do.body64_crit_edge, %do.end53.do.body64_crit_edge150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %31 = load i32, ptr @ksmbd_debug_types, align 4
  %and65 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.do.body78_crit_edge, label %do.end70

do.body64.do.body78_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef 32, ptr noundef %smb3encryptionkey) #13
  br label %do.body78

do.body78:                                        ; preds = %do.end70, %do.body64.do.body78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %32 = load i32, ptr @ksmbd_debug_types, align 4
  %and79 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.body78.cleanup.sink.split_crit_edge

do.body78.cleanup.sink.split_crit_edge:           ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body92:                                        ; preds = %do.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %33 = load i32, ptr @ksmbd_debug_types, align 4
  %and93 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.do.body106_crit_edge, label %do.end98

do.body92.do.body106_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body106

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef 16, ptr noundef %smb3encryptionkey) #13
  br label %do.body106

do.body106:                                       ; preds = %do.end98, %do.body92.do.body106_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %34 = load i32, ptr @ksmbd_debug_types, align 4
  %and107 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.cleanup_crit_edge, label %do.body106.cleanup.sink.split_crit_edge

do.body106.cleanup.sink.split_crit_edge:          ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body106.cleanup_crit_edge:                     ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body106.cleanup.sink.split_crit_edge, %do.body78.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 32, %do.body78.cleanup.sink.split_crit_edge ], [ 16, %do.body106.cleanup.sink.split_crit_edge ]
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %.sink, ptr noundef %smb3decryptionkey) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body106.cleanup_crit_edge, %do.body78.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ 0, %do.body106.cleanup_crit_edge ], [ 0, %do.body78.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gen_smb311_encryptionkey(ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  %twin = alloca %struct.derivation_twin, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %twin) #10
  %0 = getelementptr inbounds i8, ptr %twin, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %twin to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.76, ptr %twin, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %twin, i32 0, i32 1
  %3 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %iov_len, align 4
  %Preauth_HashValue = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 9
  %4 = ptrtoint ptr %Preauth_HashValue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Preauth_HashValue, align 8
  %context = getelementptr inbounds %struct.derivation, ptr %twin, i32 0, i32 1
  %6 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %context, align 4
  %iov_len4 = getelementptr inbounds %struct.derivation, ptr %twin, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %iov_len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %iov_len4, align 4
  %decryption = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1
  %8 = ptrtoint ptr %decryption to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.77, ptr %decryption, align 4
  %iov_len8 = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %iov_len8, align 4
  %context10 = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %context10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %context10, align 4
  %iov_len13 = getelementptr inbounds %struct.derivation_twin, ptr %twin, i32 0, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %iov_len13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %iov_len13, align 4
  %call = call fastcc i32 @generate_smb3encryptionkey(ptr noundef %sess, ptr noundef nonnull %twin)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %twin) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gen_preauth_integrity_hash(ptr nocapture noundef readonly %conn, ptr noundef %buf, ptr noundef %pi_hash) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf, align 4
  %and.i = and i32 %1, 16777215
  %preauth_info = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 28
  %2 = ptrtoint ptr %preauth_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %preauth_info, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %cmp.not = icmp eq i16 %5, 256
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @ksmbd_crypto_ctx_find_sha512() #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %6 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.ksmbd_crypto_ctx, ptr %call3, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i.i, align 128
  %and.i99 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end12.do.body16_crit_edge

if.end12.do.body16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

crypto_shash_init.exit:                           ; preds = %if.end12
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -256
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %16(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool14.not = icmp eq i32 %call3.i, 0
  br i1 %tobool14.not, label %if.end28, label %crypto_shash_init.exit.do.body16_crit_edge

crypto_shash_init.exit.do.body16_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.body16:                                        ; preds = %crypto_shash_init.exit.do.body16_crit_edge, %if.end12.do.body16_crit_edge
  %retval.0.i102 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body16_crit_edge ], [ -126, %if.end12.do.body16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %17 = load i32, ptr @ksmbd_debug_types, align 4
  %and17 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.out_crit_edge, label %do.end22

do.body16.out_crit_edge:                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  br label %out

if.end28:                                         ; preds = %crypto_shash_init.exit
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call i32 @crypto_shash_update(ptr noundef %19, ptr noundef %pi_hash, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end46, label %do.body34

do.body34:                                        ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %20 = load i32, ptr @ksmbd_debug_types, align 4
  %and35 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.out_crit_edge, label %do.end40

do.body34.out_crit_edge:                          ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #13
  br label %out

if.end46:                                         ; preds = %if.end28
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call49 = tail call i32 @crypto_shash_update(ptr noundef %22, ptr noundef %add.ptr.i, i32 noundef %and.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end64, label %do.body52

do.body52:                                        ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %23 = load i32, ptr @ksmbd_debug_types, align 4
  %and53 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.out_crit_edge, label %do.end58

do.body52.out_crit_edge:                          ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #13
  br label %out

if.end64:                                         ; preds = %if.end46
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call67 = tail call i32 @crypto_shash_final(ptr noundef %25, ptr noundef %pi_hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end64.out_crit_edge, label %do.body70

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body70:                                        ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %26 = load i32, ptr @ksmbd_debug_types, align 4
  %and71 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.out_crit_edge, label %do.end76

do.body70.out_crit_edge:                          ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call67) #13
  br label %out

out:                                              ; preds = %do.end76, %do.body70.out_crit_edge, %if.end64.out_crit_edge, %do.end58, %do.body52.out_crit_edge, %do.end40, %do.body34.out_crit_edge, %do.end22, %do.body16.out_crit_edge
  %rc.0 = phi i32 [ %retval.0.i102, %do.end22 ], [ %retval.0.i102, %do.body16.out_crit_edge ], [ %call31, %do.end40 ], [ %call31, %do.body34.out_crit_edge ], [ %call49, %do.end58 ], [ %call49, %do.body52.out_crit_edge ], [ %call67, %do.end76 ], [ %call67, %do.body70.out_crit_edge ], [ 0, %if.end64.out_crit_edge ]
  tail call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_sha512() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gen_sd_hash(ptr nocapture noundef readnone %conn, ptr noundef %sd_buf, i32 noundef %len, ptr noundef %pi_hash) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ksmbd_crypto_ctx_find_sha256() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %0 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ksmbd_crypto_ctx, ptr %call, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end7.do.body11_crit_edge

if.end7.do.body11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

crypto_shash_init.exit:                           ; preds = %if.end7
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -256
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %10(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool9.not = icmp eq i32 %call3.i, 0
  br i1 %tobool9.not, label %if.end23, label %crypto_shash_init.exit.do.body11_crit_edge

crypto_shash_init.exit.do.body11_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

do.body11:                                        ; preds = %crypto_shash_init.exit.do.body11_crit_edge, %if.end7.do.body11_crit_edge
  %retval.0.i71 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body11_crit_edge ], [ -126, %if.end7.do.body11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %11 = load i32, ptr @ksmbd_debug_types, align 4
  %and12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.out_crit_edge, label %do.end17

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #13
  br label %out

if.end23:                                         ; preds = %crypto_shash_init.exit
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call26 = tail call i32 @crypto_shash_update(ptr noundef %13, ptr noundef %sd_buf, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end41, label %do.body29

do.body29:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %14 = load i32, ptr @ksmbd_debug_types, align 4
  %and30 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.out_crit_edge, label %do.end35

do.body29.out_crit_edge:                          ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #13
  br label %out

if.end41:                                         ; preds = %if.end23
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call44 = tail call i32 @crypto_shash_final(ptr noundef %16, ptr noundef %pi_hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end41.out_crit_edge, label %do.body47

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body47:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %17 = load i32, ptr @ksmbd_debug_types, align 4
  %and48 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.out_crit_edge, label %do.end53

do.body47.out_crit_edge:                          ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call44) #13
  br label %out

out:                                              ; preds = %do.end53, %do.body47.out_crit_edge, %if.end41.out_crit_edge, %do.end35, %do.body29.out_crit_edge, %do.end17, %do.body11.out_crit_edge
  %rc.0 = phi i32 [ %retval.0.i71, %do.end17 ], [ %retval.0.i71, %do.body11.out_crit_edge ], [ %call26, %do.end35 ], [ %call26, %do.body29.out_crit_edge ], [ %call44, %do.end53 ], [ %call44, %do.body47.out_crit_edge ], [ 0, %if.end41.out_crit_edge ]
  tail call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_sha256() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_crypt_message(ptr noundef %conn, ptr nocapture noundef readonly %iov, i32 noundef %nvec, i32 noundef %enc) local_unnamed_addr #1 align 64 {
entry:
  %nr_entries.i = alloca [3 x i32], align 4
  %sign = alloca [16 x i8], align 1
  %key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iov, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sign) #10
  %2 = call ptr @memset(ptr %sign, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #10
  %OriginalMessageSize = getelementptr i8, ptr %1, i32 40
  %3 = call ptr @memset(ptr %key, i32 255, i32 32)
  %4 = ptrtoint ptr %OriginalMessageSize to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %OriginalMessageSize, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %SessionId = getelementptr i8, ptr %1, i32 48
  %7 = ptrtoint ptr %SessionId to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %SessionId, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %call.i = tail call ptr @ksmbd_session_lookup_all(ptr noundef %conn, i64 noundef %9) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc)
  %tobool2.not = icmp eq i32 %enc, 0
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %tobool2.not, ptr @.str.102, ptr @.str.101
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull %cond) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %smb3encryptionkey.i = getelementptr inbounds %struct.ksmbd_session, ptr %call.i, i32 0, i32 16
  %smb3decryptionkey.i = getelementptr inbounds %struct.ksmbd_session, ptr %call.i, i32 0, i32 17
  %cond.i = select i1 %tobool2.not, ptr %smb3decryptionkey.i, ptr %smb3encryptionkey.i
  %10 = call ptr @memcpy(ptr %key, ptr %cond.i, i32 32)
  %cipher_type = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 42
  %11 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cipher_type, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.193)
  switch i16 %12, label %if.else [
    i16 512, label %if.end.if.then9_crit_edge
    i16 1024, label %if.end.if.then9_crit_edge259
  ]

if.end.if.then9_crit_edge259:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.if.then9_crit_edge259
  %call10 = tail call ptr @ksmbd_crypto_ctx_find_gcm() #10
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call ptr @ksmbd_crypto_ctx_find_ccm() #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %ctx.0 = phi ptr [ %call10, %if.then9 ], [ %call11, %if.else ]
  %tobool13.not = icmp eq ptr %ctx.0, null
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cipher_type, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.194)
  switch i16 %15, label %if.else32 [
    i16 512, label %if.end20.if.then30_crit_edge
    i16 1024, label %if.end20.if.then30_crit_edge260
  ]

if.end20.if.then30_crit_edge260:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.end20.if.then30_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %if.end20.if.then30_crit_edge, %if.end20.if.then30_crit_edge260
  %arrayidx31 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx.0, i32 0, i32 2, i32 16
  br label %if.end35

if.else32:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx34 = getelementptr %struct.ksmbd_crypto_ctx, ptr %ctx.0, i32 0, i32 2, i32 17
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then30
  %tfm.0.in = phi ptr [ %arrayidx31, %if.then30 ], [ %arrayidx34, %if.else32 ]
  %17 = ptrtoint ptr %tfm.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %tfm.0 = load ptr, ptr %tfm.0.in, align 4
  %18 = add i16 %15, -768
  %switch.and = and i16 %18, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %19 = select i1 %switch.selectcmp, i32 32, i32 16
  %call50 = call i32 @crypto_aead_setkey(ptr noundef %tfm.0, ptr noundef nonnull %key, i32 noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool52.not = icmp eq i32 %call50, 0
  br i1 %tobool52.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %call50) #13
  br label %free_ctx

if.end59:                                         ; preds = %if.end35
  %call60 = call i32 @crypto_aead_setauthsize(ptr noundef %tfm.0, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end8.i.i, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %call60) #13
  br label %free_ctx

if.end8.i.i:                                      ; preds = %if.end59
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm.0, i32 0, i32 1
  %20 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %21, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i180 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i180, label %if.end8.i.i.free_ctx_crit_edge, label %if.end72, !prof !315

if.end8.i.i.free_ctx_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ctx

if.end72:                                         ; preds = %if.end8.i.i
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm.0, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  br i1 %tobool2.not, label %if.then74, label %if.end72.if.end76_crit_edge

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %Signature = getelementptr i8, ptr %1, i32 8
  %23 = call ptr @memcpy(ptr %sign, ptr %Signature, i32 16)
  %add = add i32 %6, 16
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72.if.end76_crit_edge
  %crypt_len.0 = phi i32 [ %6, %if.end72.if.end76_crit_edge ], [ %add, %if.then74 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nr_entries.i) #10
  %24 = call ptr @memset(ptr %nr_entries.i, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvec)
  %tobool.not.i182 = icmp eq i32 %nvec, 0
  br i1 %tobool.not.i182, label %if.end76.ksmbd_init_sg.exit.thread_crit_edge, label %for.cond.preheader.i

if.end76.ksmbd_init_sg.exit.thread_crit_edge:     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %ksmbd_init_sg.exit.thread

for.cond.preheader.i:                             ; preds = %if.end76
  %sub.i = add i32 %nvec, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp184.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp184.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %total_entries.0187.i = phi i32 [ %add16.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0185.i = phi i32 [ %add.i183, %if.end14.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i183 = add nuw i32 %i.0185.i, 1
  %arrayidx.i = getelementptr %struct.kvec, ptr %iov, i32 %add.i183
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call.i184 = call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #10
  br i1 %call.i184, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %26 to i32
  %iov_len.i = getelementptr %struct.kvec, ptr %iov, i32 %add.i183, i32 1
  %28 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iov_len.i, align 4
  %add7.i = add i32 %27, 4095
  %sub9.i = add i32 %add7.i, %29
  %shr.i = lshr i32 %sub9.i, 12
  %shr10.i = lshr i32 %27, 12
  %sub11.i = sub nsw i32 %shr.i, %shr10.i
  %arrayidx12.i = getelementptr [3 x i32], ptr %nr_entries.i, i32 0, i32 %i.0185.i
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub11.i, ptr %arrayidx12.i, align 4
  br label %if.end14.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13.i = getelementptr [3 x i32], ptr %nr_entries.i, i32 0, i32 %i.0185.i
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx13.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %arrayidx13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then4.i
  %arrayidx15.i = getelementptr [3 x i32], ptr %nr_entries.i, i32 0, i32 %i.0185.i
  %33 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx15.i, align 4
  %add16.i = add i32 %34, %total_entries.0187.i
  %exitcond.not.i = icmp eq i32 %add.i183, %sub.i
  br i1 %exitcond.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end14.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %total_entries.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add16.i, %if.end14.i.for.end.i_crit_edge ]
  %add18.i = add i32 %total_entries.0.lcssa.i, 2
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add18.i, i32 20) #10
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %for.end.i.ksmbd_init_sg.exit.thread_crit_edge, label %if.end7.i.i, !prof !315

for.end.i.ksmbd_init_sg.exit.thread_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ksmbd_init_sg.exit.thread

if.end7.i.i:                                      ; preds = %for.end.i
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #15
  %tobool20.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool20.not.i, label %if.end7.i.i.ksmbd_init_sg.exit.thread_crit_edge, label %if.end22.i

if.end7.i.i.ksmbd_init_sg.exit.thread_crit_edge:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ksmbd_init_sg.exit.thread

if.end22.i:                                       ; preds = %if.end7.i.i
  call void @sg_init_table(ptr noundef nonnull %call8.i.i, i32 noundef %add18.i) #10
  %38 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iov, align 4
  %add.ptr.i189 = getelementptr i8, ptr %39, i32 24
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i189) #10
  br i1 %call.i.i, label %if.then.i.i190, label %if.else.i.i

if.then.i.i190:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = call ptr @vmalloc_to_page(ptr noundef %add.ptr.i189) #10
  br label %if.end.i126.i

if.else.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %add.ptr.i189 to i32
  %sub.i.i = add i32 %41, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %40, i32 %shr.i.i
  br label %if.end.i126.i

if.end.i126.i:                                    ; preds = %if.else.i.i, %if.then.i.i190
  %addr.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i190 ], [ %add.ptr.i.i, %if.else.i.i ]
  %42 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call8.i.i, align 128
  %44 = ptrtoint ptr %addr.0.i.i to i32
  %and2.i.i.i.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i125.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i125.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !316

do.body5.i.i.i.i:                                 ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.body11.i.i.i.i:                                ; preds = %if.end.i126.i
  %and.i.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %smb2_sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !316

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

smb2_sg_set_buf.exit.i:                           ; preds = %do.body11.i.i.i.i
  %45 = ptrtoint ptr %add.ptr.i189 to i32
  %and.i.i = and i32 %45, 4095
  %and.i.i.i.i = and i32 %43, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %44
  %46 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i.i.i, ptr %call8.i.i, align 128
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32, ptr %length.i.i.i, align 8
  br i1 %cmp184.not.i, label %smb2_sg_set_buf.exit.i.for.end71.i_crit_edge, label %smb2_sg_set_buf.exit.i.for.body30.i_crit_edge

smb2_sg_set_buf.exit.i.for.body30.i_crit_edge:    ; preds = %smb2_sg_set_buf.exit.i
  br label %for.body30.i

smb2_sg_set_buf.exit.i.for.end71.i_crit_edge:     ; preds = %smb2_sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71.i

for.body30.i:                                     ; preds = %if.end68.i.for.body30.i_crit_edge, %smb2_sg_set_buf.exit.i.for.body30.i_crit_edge
  %sg_idx.0200.i = phi i32 [ %sg_idx.4.i, %if.end68.i.for.body30.i_crit_edge ], [ 1, %smb2_sg_set_buf.exit.i.for.body30.i_crit_edge ]
  %i.1199.i = phi i32 [ %add31.i, %if.end68.i.for.body30.i_crit_edge ], [ 0, %smb2_sg_set_buf.exit.i.for.body30.i_crit_edge ]
  %add31.i = add nuw i32 %i.1199.i, 1
  %arrayidx32.i = getelementptr %struct.kvec, ptr %iov, i32 %add31.i
  %49 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx32.i, align 4
  %iov_len36.i = getelementptr %struct.kvec, ptr %iov, i32 %add31.i, i32 1
  %51 = ptrtoint ptr %iov_len36.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iov_len36.i, align 4
  %call37.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %50) #10
  br i1 %call37.i, label %if.then38.i, label %if.else59.i

if.then38.i:                                      ; preds = %for.body30.i
  %53 = ptrtoint ptr %50 to i32
  %and.i = and i32 %53, 4095
  %arrayidx40.i = getelementptr [3 x i32], ptr %nr_entries.i, i32 0, i32 %i.1199.i
  %54 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp41189.i = icmp slt i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool44.not190.i = icmp eq i32 %52, 0
  %or.cond191.i = select i1 %cmp41189.i, i1 true, i1 %tobool44.not190.i
  br i1 %or.cond191.i, label %if.then38.i.if.end68.i_crit_edge, label %if.end46.preheader.i

if.then38.i.if.end68.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

if.end46.preheader.i:                             ; preds = %if.then38.i
  %sub43.peel.i = sub nuw nsw i32 4096, %and.i
  %56 = call i32 @llvm.umin.i32(i32 %sub43.peel.i, i32 %52) #10
  %inc50.peel.i = add i32 %sg_idx.0200.i, 1
  %arrayidx51.peel.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0200.i
  %call52.peel.i = call ptr @vmalloc_to_page(ptr noundef %50) #10
  %57 = ptrtoint ptr %arrayidx51.peel.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx51.peel.i, align 4
  %59 = ptrtoint ptr %call52.peel.i to i32
  %and2.i.i.peel.i = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.peel.i)
  %tobool.not.i.i.peel.i = icmp eq i32 %and2.i.i.peel.i, 0
  br i1 %tobool.not.i.i.peel.i, label %do.body11.i.i.peel.i, label %if.end46.preheader.i.do.body5.i.i.i_crit_edge, !prof !316

if.end46.preheader.i.do.body5.i.i.i_crit_edge:    ; preds = %if.end46.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i

do.body11.i.i.peel.i:                             ; preds = %if.end46.preheader.i
  %and.i.i.i127.peel.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i127.peel.i)
  %tobool.i.not.i.i.peel.i = icmp eq i32 %and.i.i.i127.peel.i, 0
  br i1 %tobool.i.not.i.i.peel.i, label %for.inc56.peel.i, label %do.body11.i.i.peel.i.do.body19.i.i.i_crit_edge, !prof !316

do.body11.i.i.peel.i.do.body19.i.i.i_crit_edge:   ; preds = %do.body11.i.i.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i

for.inc56.peel.i:                                 ; preds = %do.body11.i.i.peel.i
  %and.i.i.peel.i = and i32 %58, 3
  %or.i.i.peel.i = or i32 %and.i.i.peel.i, %59
  %60 = ptrtoint ptr %arrayidx51.peel.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i.peel.i, ptr %arrayidx51.peel.i, align 4
  %offset1.i.peel.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0200.i, i32 1
  %61 = ptrtoint ptr %offset1.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i, ptr %offset1.i.peel.i, align 4
  %length.i.peel.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0200.i, i32 2
  %62 = ptrtoint ptr %length.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %56, ptr %length.i.peel.i, align 4
  %sub55.peel.i = sub i32 %52, %56
  %63 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp41.peel.i = icmp slt i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55.peel.i)
  %tobool44.not.peel.i = icmp eq i32 %sub55.peel.i, 0
  %or.cond.peel.i = select i1 %cmp41.peel.i, i1 true, i1 %tobool44.not.peel.i
  br i1 %or.cond.peel.i, label %for.inc56.peel.i.if.end68.i_crit_edge, label %if.end46.peel.next.i

for.inc56.peel.i.if.end68.i_crit_edge:            ; preds = %for.inc56.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

if.end46.peel.next.i:                             ; preds = %for.inc56.peel.i
  %add.ptr54.peel.i = getelementptr i8, ptr %50, i32 %56
  br label %if.end46.i

if.end46.i:                                       ; preds = %for.inc56.i.if.end46.i_crit_edge, %if.end46.peel.next.i
  %j.0195.i = phi i32 [ %inc57.i, %for.inc56.i.if.end46.i_crit_edge ], [ 1, %if.end46.peel.next.i ]
  %len.0194.i = phi i32 [ %sub55.i, %for.inc56.i.if.end46.i_crit_edge ], [ %sub55.peel.i, %if.end46.peel.next.i ]
  %data.0193.i = phi ptr [ %add.ptr54.i, %for.inc56.i.if.end46.i_crit_edge ], [ %add.ptr54.peel.i, %if.end46.peel.next.i ]
  %sg_idx.1192.i = phi i32 [ %inc50.i, %for.inc56.i.if.end46.i_crit_edge ], [ %inc50.peel.i, %if.end46.peel.next.i ]
  %65 = call i32 @llvm.umin.i32(i32 %len.0194.i, i32 4096) #10
  %inc50.i = add i32 %sg_idx.1192.i, 1
  %arrayidx51.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.1192.i
  %call52.i = call ptr @vmalloc_to_page(ptr noundef %data.0193.i) #10
  %66 = ptrtoint ptr %data.0193.i to i32
  %and53.i = and i32 %66, 4095
  %67 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx51.i, align 4
  %69 = ptrtoint ptr %call52.i to i32
  %and2.i.i.i = and i32 %69, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i191 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i191, label %do.body11.i.i.i, label %if.end46.i.do.body5.i.i.i_crit_edge, !prof !316

if.end46.i.do.body5.i.i.i_crit_edge:              ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %if.end46.i.do.body5.i.i.i_crit_edge, %if.end46.preheader.i.do.body5.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end46.i
  %and.i.i.i127.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i127.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i127.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc56.i, label %do.body11.i.i.i.do.body19.i.i.i_crit_edge, !prof !316

do.body11.i.i.i.do.body19.i.i.i_crit_edge:        ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19.i.i.i

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i.do.body19.i.i.i_crit_edge, %do.body11.i.i.peel.i.do.body19.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

for.inc56.i:                                      ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %68, 3
  %or.i.i.i = or i32 %and.i.i.i, %69
  %70 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i.i.i, ptr %arrayidx51.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.1192.i, i32 1
  %71 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and53.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.1192.i, i32 2
  %72 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %65, ptr %length.i.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %data.0193.i, i32 %65
  %sub55.i = sub i32 %len.0194.i, %65
  %inc57.i = add nuw nsw i32 %j.0195.i, 1
  %73 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc57.i, i32 %74)
  %cmp41.i = icmp sge i32 %inc57.i, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55.i)
  %tobool44.not.i = icmp eq i32 %sub55.i, 0
  %or.cond.i = select i1 %cmp41.i, i1 true, i1 %tobool44.not.i
  br i1 %or.cond.i, label %for.inc56.i.if.end68.i_crit_edge, label %for.inc56.i.if.end46.i_crit_edge, !llvm.loop !319

for.inc56.i.if.end46.i_crit_edge:                 ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

for.inc56.i.if.end68.i_crit_edge:                 ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

if.else59.i:                                      ; preds = %for.body30.i
  %inc60.i = add i32 %sg_idx.0200.i, 1
  %arrayidx61.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0200.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %75 = load ptr, ptr @mem_map, align 4
  %76 = ptrtoint ptr %50 to i32
  %sub62.i = add i32 %76, 1073741824
  %shr63.i = lshr i32 %sub62.i, 12
  %add.ptr66.i = getelementptr %struct.page, ptr %75, i32 %shr63.i
  %and67.i = and i32 %76, 4095
  %77 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx61.i, align 4
  %79 = ptrtoint ptr %add.ptr66.i to i32
  %and2.i.i128.i = and i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i128.i)
  %tobool.not.i.i129.i = icmp eq i32 %and2.i.i128.i, 0
  br i1 %tobool.not.i.i129.i, label %do.body11.i.i133.i, label %do.body5.i.i130.i, !prof !316

do.body5.i.i130.i:                                ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.body11.i.i133.i:                               ; preds = %if.else59.i
  %and.i.i.i131.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i131.i)
  %tobool.i.not.i.i132.i = icmp eq i32 %and.i.i.i131.i, 0
  br i1 %tobool.i.not.i.i132.i, label %sg_set_page.exit139.i, label %do.body19.i.i134.i, !prof !316

do.body19.i.i134.i:                               ; preds = %do.body11.i.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

sg_set_page.exit139.i:                            ; preds = %do.body11.i.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i135.i = and i32 %78, 3
  %or.i.i136.i = or i32 %and.i.i135.i, %79
  %80 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i.i136.i, ptr %arrayidx61.i, align 4
  %offset1.i137.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0200.i, i32 1
  %81 = ptrtoint ptr %offset1.i137.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and67.i, ptr %offset1.i137.i, align 4
  %length.i138.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0200.i, i32 2
  %82 = ptrtoint ptr %length.i138.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %52, ptr %length.i138.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %sg_set_page.exit139.i, %for.inc56.i.if.end68.i_crit_edge, %for.inc56.peel.i.if.end68.i_crit_edge, %if.then38.i.if.end68.i_crit_edge
  %sg_idx.4.i = phi i32 [ %inc60.i, %sg_set_page.exit139.i ], [ %sg_idx.0200.i, %if.then38.i.if.end68.i_crit_edge ], [ %inc50.peel.i, %for.inc56.peel.i.if.end68.i_crit_edge ], [ %inc50.i, %for.inc56.i.if.end68.i_crit_edge ]
  %exitcond207.not.i = icmp eq i32 %add31.i, %sub.i
  br i1 %exitcond207.not.i, label %if.end68.i.for.end71.i_crit_edge, label %if.end68.i.for.body30.i_crit_edge

if.end68.i.for.body30.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30.i

if.end68.i.for.end71.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71.i

for.end71.i:                                      ; preds = %if.end68.i.for.end71.i_crit_edge, %smb2_sg_set_buf.exit.i.for.end71.i_crit_edge
  %sg_idx.0.lcssa.i = phi i32 [ 1, %smb2_sg_set_buf.exit.i.for.end71.i_crit_edge ], [ %sg_idx.4.i, %if.end68.i.for.end71.i_crit_edge ]
  %arrayidx72.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0.lcssa.i
  %call.i140.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %sign) #10
  br i1 %call.i140.i, label %if.then.i142.i, label %if.else.i146.i

if.then.i142.i:                                   ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i141.i = call ptr @vmalloc_to_page(ptr noundef nonnull %sign) #10
  br label %if.end.i150.i

if.else.i146.i:                                   ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %83 = load ptr, ptr @mem_map, align 4
  %84 = ptrtoint ptr %sign to i32
  %sub.i143.i = add i32 %84, 1073741824
  %shr.i144.i = lshr i32 %sub.i143.i, 12
  %add.ptr.i145.i = getelementptr %struct.page, ptr %83, i32 %shr.i144.i
  br label %if.end.i150.i

if.end.i150.i:                                    ; preds = %if.else.i146.i, %if.then.i142.i
  %addr.0.i147.i = phi ptr [ %call1.i141.i, %if.then.i142.i ], [ %add.ptr.i145.i, %if.else.i146.i ]
  %85 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx72.i, align 4
  %87 = ptrtoint ptr %addr.0.i147.i to i32
  %and2.i.i.i148.i = and i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i148.i)
  %tobool.not.i.i.i149.i = icmp eq i32 %and2.i.i.i148.i, 0
  br i1 %tobool.not.i.i.i149.i, label %do.body11.i.i.i154.i, label %do.body5.i.i.i151.i, !prof !316

do.body5.i.i.i151.i:                              ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !317
  unreachable

do.body11.i.i.i154.i:                             ; preds = %if.end.i150.i
  %and.i.i.i.i152.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i152.i)
  %tobool.i.not.i.i.i153.i = icmp eq i32 %and.i.i.i.i152.i, 0
  br i1 %tobool.i.not.i.i.i153.i, label %ksmbd_init_sg.exit, label %do.body19.i.i.i155.i, !prof !316

do.body19.i.i.i155.i:                             ; preds = %do.body11.i.i.i154.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

ksmbd_init_sg.exit.thread:                        ; preds = %if.end7.i.i.ksmbd_init_sg.exit.thread_crit_edge, %for.end.i.ksmbd_init_sg.exit.thread_crit_edge, %if.end76.ksmbd_init_sg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nr_entries.i) #10
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #13
  br label %free_req

ksmbd_init_sg.exit:                               ; preds = %do.body11.i.i.i154.i
  %88 = ptrtoint ptr %sign to i32
  %and.i156.i = and i32 %88, 4095
  %and.i.i.i157.i = and i32 %86, 3
  %or.i.i.i158.i = or i32 %and.i.i.i157.i, %87
  %89 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or.i.i.i158.i, ptr %arrayidx72.i, align 4
  %offset1.i.i159.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0.lcssa.i, i32 1
  %90 = ptrtoint ptr %offset1.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and.i156.i, ptr %offset1.i.i159.i, align 4
  %length.i.i160.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %sg_idx.0.lcssa.i, i32 2
  %91 = ptrtoint ptr %length.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16, ptr %length.i.i160.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nr_entries.i) #10
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm.0, i32 0, i32 3, i32 3
  %92 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %93, i32 -104
  %94 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ivsize.i.i, align 8
  %call9.i.i218 = call noalias align 128 ptr @__kmalloc(i32 noundef %95, i32 noundef 3520) #15
  %tobool89.not = icmp eq ptr %call9.i.i218, null
  br i1 %tobool89.not, label %ksmbd_init_sg.exit.free_sg_crit_edge, label %if.end91

ksmbd_init_sg.exit.free_sg_crit_edge:             ; preds = %ksmbd_init_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sg

if.end91:                                         ; preds = %ksmbd_init_sg.exit
  %96 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %cipher_type, align 4
  %98 = zext i16 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.195)
  switch i16 %97, label %if.else103 [
    i16 512, label %if.end91.if.then101_crit_edge
    i16 1024, label %if.end91.if.then101_crit_edge261
  ]

if.end91.if.then101_crit_edge261:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.end91.if.then101_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.then101:                                       ; preds = %if.end91.if.then101_crit_edge, %if.end91.if.then101_crit_edge261
  %Nonce = getelementptr i8, ptr %1, i32 24
  %99 = call ptr @memcpy(ptr %call9.i.i218, ptr %Nonce, i32 12)
  br label %if.end107

if.else103:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %call9.i.i218 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %call9.i.i218, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i218, i32 1
  %Nonce105 = getelementptr i8, ptr %1, i32 24
  %101 = call ptr @memcpy(ptr %add.ptr, ptr %Nonce105, i32 11)
  br label %if.end107

if.end107:                                        ; preds = %if.else103, %if.then101
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call8.i.i, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %103 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call8.i.i, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %crypt_len.0, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call9.i.i218, ptr %iv4.i, align 32
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 32, ptr %assoclen1.i, align 8
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %109 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 512, ptr %flags4.i, align 4
  br i1 %tobool2.not, label %if.end113.thread, label %if.end113

if.end113.thread:                                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %call112 = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i.i) #10
  br label %free_iv

if.end113:                                        ; preds = %if.end107
  %call110 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool114.not.not = icmp eq i32 %call110, 0
  br i1 %tobool114.not.not, label %if.then118, label %if.end113.free_iv_crit_edge

if.end113.free_iv_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_iv

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %Signature119 = getelementptr i8, ptr %1, i32 8
  %110 = call ptr @memcpy(ptr %Signature119, ptr %sign, i32 16)
  br label %free_iv

free_iv:                                          ; preds = %if.then118, %if.end113.free_iv_crit_edge, %if.end113.thread
  %rc.1236 = phi i32 [ %call112, %if.end113.thread ], [ %call110, %if.end113.free_iv_crit_edge ], [ 0, %if.then118 ]
  call void @kfree(ptr noundef nonnull %call9.i.i218) #10
  br label %free_sg

free_sg:                                          ; preds = %free_iv, %ksmbd_init_sg.exit.free_sg_crit_edge
  %rc.2 = phi i32 [ %rc.1236, %free_iv ], [ -12, %ksmbd_init_sg.exit.free_sg_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %free_req

free_req:                                         ; preds = %free_sg, %ksmbd_init_sg.exit.thread
  %rc.3 = phi i32 [ %rc.2, %free_sg ], [ -12, %ksmbd_init_sg.exit.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %free_ctx

free_ctx:                                         ; preds = %free_req, %if.end8.i.i.free_ctx_crit_edge, %do.end65, %do.end56
  %rc.4 = phi i32 [ %call50, %do.end56 ], [ %call60, %do.end65 ], [ %rc.3, %free_req ], [ -12, %if.end8.i.i.free_ctx_crit_edge ]
  call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %ctx.0) #10
  br label %cleanup

cleanup:                                          ; preds = %free_ctx, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.4, %free_ctx ], [ -12, %do.end17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sign) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_gcm() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_crypto_ctx_find_ccm() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_chann_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generate_key(ptr noundef %sess, [2 x i32] %label.coerce, [2 x i32] %context.coerce, ptr nocapture noundef writeonly %key, i32 noundef %key_size) unnamed_addr #1 align 64 {
entry:
  %zero = alloca i8, align 1
  %i = alloca [4 x i8], align 4
  %L128 = alloca [4 x i8], align 4
  %L256 = alloca [4 x i8], align 4
  %prfhash = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %label.coerce.fca.0.extract = extractvalue [2 x i32] %label.coerce, 0
  %0 = inttoptr i32 %label.coerce.fca.0.extract to ptr
  %label.coerce.fca.1.extract = extractvalue [2 x i32] %label.coerce, 1
  %context.coerce.fca.0.extract = extractvalue [2 x i32] %context.coerce, 0
  %1 = inttoptr i32 %context.coerce.fca.0.extract to ptr
  %context.coerce.fca.1.extract = extractvalue [2 x i32] %context.coerce, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero) #10
  %2 = ptrtoint ptr %zero to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %zero, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #10
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %L128) #10
  %4 = ptrtoint ptr %L128 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %L128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %L256) #10
  %5 = ptrtoint ptr %L256 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %L256, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prfhash) #10
  %6 = call ptr @memset(ptr %prfhash, i32 0, i32 32)
  %7 = call ptr @memset(ptr %key, i32 0, i32 %key_size)
  %call = tail call ptr @ksmbd_crypto_ctx_find_hmacsha256() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %8 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ksmbd_crypto_ctx, ptr %call, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %sess_key = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 10
  %call10 = tail call i32 @crypto_shash_setkey(ptr noundef %12, ptr noundef %sess_key, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.smb3signkey_ret_crit_edge

if.end8.smb3signkey_ret_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

if.end13:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end13.do.body19_crit_edge

if.end13.do.body19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

crypto_shash_init.exit:                           ; preds = %if.end13
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 -256
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %22(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool17.not = icmp eq i32 %call3.i, 0
  br i1 %tobool17.not, label %if.end31, label %crypto_shash_init.exit.do.body19_crit_edge

crypto_shash_init.exit.do.body19_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

do.body19:                                        ; preds = %crypto_shash_init.exit.do.body19_crit_edge, %if.end13.do.body19_crit_edge
  %retval.0.i190 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body19_crit_edge ], [ -126, %if.end13.do.body19_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %23 = load i32, ptr @ksmbd_debug_types, align 4
  %and20 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.smb3signkey_ret_crit_edge, label %do.end25

do.body19.smb3signkey_ret_crit_edge:              ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %retval.0.i190) #13
  br label %smb3signkey_ret

if.end31:                                         ; preds = %crypto_shash_init.exit
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call35 = call i32 @crypto_shash_update(ptr noundef %25, ptr noundef nonnull %i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end50, label %do.body38

do.body38:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %26 = load i32, ptr @ksmbd_debug_types, align 4
  %and39 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.smb3signkey_ret_crit_edge, label %do.end44

do.body38.smb3signkey_ret_crit_edge:              ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #13
  br label %smb3signkey_ret

if.end50:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call53 = call i32 @crypto_shash_update(ptr noundef %28, ptr noundef %0, i32 noundef %label.coerce.fca.1.extract) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end68, label %do.body56

do.body56:                                        ; preds = %if.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %29 = load i32, ptr @ksmbd_debug_types, align 4
  %and57 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.smb3signkey_ret_crit_edge, label %do.end62

do.body56.smb3signkey_ret_crit_edge:              ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #13
  br label %smb3signkey_ret

if.end68:                                         ; preds = %if.end50
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call71 = call i32 @crypto_shash_update(ptr noundef %31, ptr noundef nonnull %zero, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end86, label %do.body74

do.body74:                                        ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %32 = load i32, ptr @ksmbd_debug_types, align 4
  %and75 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.smb3signkey_ret_crit_edge, label %do.end80

do.body74.smb3signkey_ret_crit_edge:              ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #13
  br label %smb3signkey_ret

if.end86:                                         ; preds = %if.end68
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call91 = call i32 @crypto_shash_update(ptr noundef %34, ptr noundef %1, i32 noundef %context.coerce.fca.1.extract) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end106, label %do.body94

do.body94:                                        ; preds = %if.end86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %35 = load i32, ptr @ksmbd_debug_types, align 4
  %and95 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body94.smb3signkey_ret_crit_edge, label %do.end100

do.body94.smb3signkey_ret_crit_edge:              ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #12
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #13
  br label %smb3signkey_ret

if.end106:                                        ; preds = %if.end86
  %conn = getelementptr inbounds %struct.ksmbd_session, ptr %sess, i32 0, i32 2
  %36 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conn, align 4
  %cipher_type = getelementptr inbounds %struct.ksmbd_conn, ptr %37, i32 0, i32 42
  %38 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cipher_type, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.196)
  switch i16 %39, label %if.else [
    i16 768, label %if.end106.if.end122_crit_edge
    i16 1024, label %if.end106.if.end122_crit_edge191
  ]

if.end106.if.end122_crit_edge191:                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.end106.if.end122_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.else:                                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.end106.if.end122_crit_edge, %if.end106.if.end122_crit_edge191
  %L128.sink = phi ptr [ %L128, %if.else ], [ %L256, %if.end106.if.end122_crit_edge ], [ %L256, %if.end106.if.end122_crit_edge191 ]
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %call121 = call i32 @crypto_shash_update(ptr noundef %42, ptr noundef nonnull %L128.sink, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool123.not = icmp eq i32 %call121, 0
  br i1 %tobool123.not, label %if.end137, label %do.body125

do.body125:                                       ; preds = %if.end122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %43 = load i32, ptr @ksmbd_debug_types, align 4
  %and126 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body125.smb3signkey_ret_crit_edge, label %do.end131

do.body125.smb3signkey_ret_crit_edge:             ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #13
  br label %smb3signkey_ret

if.end137:                                        ; preds = %if.end122
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %call140 = call i32 @crypto_shash_final(ptr noundef %45, ptr noundef nonnull %prfhash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end155, label %do.body143

do.body143:                                       ; preds = %if.end137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %46 = load i32, ptr @ksmbd_debug_types, align 4
  %and144 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.smb3signkey_ret_crit_edge, label %do.end149

do.body143.smb3signkey_ret_crit_edge:             ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #12
  br label %smb3signkey_ret

do.end149:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #12
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %call140) #13
  br label %smb3signkey_ret

if.end155:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %47 = call ptr @memcpy(ptr %key, ptr %prfhash, i32 %key_size)
  br label %smb3signkey_ret

smb3signkey_ret:                                  ; preds = %if.end155, %do.end149, %do.body143.smb3signkey_ret_crit_edge, %do.end131, %do.body125.smb3signkey_ret_crit_edge, %do.end100, %do.body94.smb3signkey_ret_crit_edge, %do.end80, %do.body74.smb3signkey_ret_crit_edge, %do.end62, %do.body56.smb3signkey_ret_crit_edge, %do.end44, %do.body38.smb3signkey_ret_crit_edge, %do.end25, %do.body19.smb3signkey_ret_crit_edge, %if.end8.smb3signkey_ret_crit_edge
  %rc.1 = phi i32 [ %call10, %if.end8.smb3signkey_ret_crit_edge ], [ %retval.0.i190, %do.end25 ], [ %retval.0.i190, %do.body19.smb3signkey_ret_crit_edge ], [ %call35, %do.end44 ], [ %call35, %do.body38.smb3signkey_ret_crit_edge ], [ %call53, %do.end62 ], [ %call53, %do.body56.smb3signkey_ret_crit_edge ], [ %call71, %do.end80 ], [ %call71, %do.body74.smb3signkey_ret_crit_edge ], [ %call91, %do.end100 ], [ %call91, %do.body94.smb3signkey_ret_crit_edge ], [ %call121, %do.end131 ], [ %call121, %do.body125.smb3signkey_ret_crit_edge ], [ %call140, %do.end149 ], [ %call140, %do.body143.smb3signkey_ret_crit_edge ], [ 0, %if.end155 ]
  call void @ksmbd_release_crypto_ctx(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %smb3signkey_ret, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %smb3signkey_ret ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prfhash) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %L256) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %L128) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_session_lookup_all(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !304}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/auth.c", i32 229, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_auth_ntlmv2._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/auth.c", i32 235, i32 3}
!8 = !{ptr @ksmbd_auth_ntlmv2._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/auth.c", i32 243, i32 3}
!12 = !{ptr @ksmbd_auth_ntlmv2._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/auth.c", i32 249, i32 3}
!16 = !{ptr @ksmbd_auth_ntlmv2._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/auth.c", i32 265, i32 3}
!20 = !{ptr @ksmbd_auth_ntlmv2._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/auth.c", i32 271, i32 3}
!24 = !{ptr @ksmbd_auth_ntlmv2._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ksmbd/auth.c", i32 277, i32 3}
!28 = !{ptr @ksmbd_auth_ntlmv2._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ksmbd_auth_ntlmv2._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ksmbd/auth.c", i32 308, i32 3}
!32 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ksmbd_decode_ntlmssp_auth_blob._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ksmbd_decode_ntlmssp_auth_blob._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ksmbd/auth.c", i32 313, i32 34}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/auth.c", i32 314, i32 3}
!39 = !{ptr @ksmbd_decode_ntlmssp_auth_blob._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ksmbd_decode_ntlmssp_auth_blob._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ksmbd/auth.c", i32 334, i32 2}
!43 = !{ptr @ksmbd_decode_ntlmssp_auth_blob._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ksmbd_decode_ntlmssp_auth_blob._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ksmbd/auth.c", i32 378, i32 3}
!47 = !{ptr @ksmbd_decode_ntlmssp_neg_blob._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ksmbd_decode_ntlmssp_neg_blob._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ksmbd_decode_ntlmssp_neg_blob._entry.31, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../fs/ksmbd/auth.c", i32 384, i32 3}
!51 = !{ptr @ksmbd_decode_ntlmssp_neg_blob._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ksmbd/auth.c", i32 492, i32 2}
!54 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ksmbd_build_ntlmssp_challenge_blob._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ksmbd_build_ntlmssp_challenge_blob._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ksmbd/auth.c", i32 506, i32 3}
!59 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ksmbd_krb5_authenticate._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ksmbd_krb5_authenticate._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ksmbd/auth.c", i32 511, i32 3}
!64 = !{ptr @ksmbd_krb5_authenticate._entry.37, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ksmbd_krb5_authenticate._entry_ptr.39, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ksmbd/auth.c", i32 517, i32 3}
!68 = !{ptr @ksmbd_krb5_authenticate._entry.40, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ksmbd_krb5_authenticate._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ksmbd/auth.c", i32 524, i32 3}
!72 = !{ptr @ksmbd_krb5_authenticate._entry.43, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ksmbd_krb5_authenticate._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ksmbd/auth.c", i32 531, i32 3}
!76 = !{ptr @ksmbd_krb5_authenticate._entry.46, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ksmbd_krb5_authenticate._entry_ptr.48, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ksmbd/auth.c", i32 571, i32 3}
!80 = !{ptr @ksmbd_sign_smb2_pdu._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ksmbd_sign_smb2_pdu._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ksmbd/auth.c", i32 583, i32 3}
!84 = !{ptr @ksmbd_sign_smb2_pdu._entry.50, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ksmbd_sign_smb2_pdu._entry_ptr.52, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ksmbd/auth.c", i32 592, i32 4}
!88 = !{ptr @ksmbd_sign_smb2_pdu._entry.53, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ksmbd_sign_smb2_pdu._entry_ptr.55, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ksmbd/auth.c", i32 599, i32 3}
!92 = !{ptr @ksmbd_sign_smb2_pdu._entry.56, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ksmbd_sign_smb2_pdu._entry_ptr.58, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ksmbd/auth.c", i32 622, i32 3}
!96 = !{ptr @.str.60, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ksmbd_sign_smb3_pdu._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ksmbd_sign_smb3_pdu._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ksmbd/auth.c", i32 634, i32 3}
!101 = !{ptr @ksmbd_sign_smb3_pdu._entry.61, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ksmbd_sign_smb3_pdu._entry_ptr.63, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ksmbd/auth.c", i32 643, i32 4}
!105 = !{ptr @ksmbd_sign_smb3_pdu._entry.64, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ksmbd_sign_smb3_pdu._entry_ptr.66, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.68, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ksmbd/auth.c", i32 650, i32 3}
!109 = !{ptr @ksmbd_sign_smb3_pdu._entry.67, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ksmbd_sign_smb3_pdu._entry_ptr.69, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.70, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ksmbd/auth.c", i32 786, i32 21}
!113 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ksmbd/auth.c", i32 788, i32 23}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ksmbd/auth.c", i32 800, i32 21}
!117 = !{ptr @.str.73, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ksmbd/auth.c", i32 866, i32 22}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ksmbd/auth.c", i32 868, i32 24}
!121 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ksmbd/auth.c", i32 874, i32 24}
!123 = !{ptr @.str.76, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ksmbd/auth.c", i32 886, i32 22}
!125 = !{ptr @.str.77, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ksmbd/auth.c", i32 892, i32 22}
!127 = !{ptr @.str.78, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ksmbd/auth.c", i32 915, i32 3}
!129 = !{ptr @.str.79, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.81, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ksmbd/auth.c", i32 921, i32 3}
!134 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry.80, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.82, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.84, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ksmbd/auth.c", i32 927, i32 3}
!138 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry.83, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.85, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry.86, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../fs/ksmbd/auth.c", i32 933, i32 3}
!142 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.87, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.89, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ksmbd/auth.c", i32 939, i32 3}
!145 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry.88, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ksmbd_gen_preauth_integrity_hash._entry_ptr.90, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.91, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ksmbd/auth.c", i32 955, i32 3}
!149 = !{ptr @.str.92, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ksmbd_gen_sd_hash._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ksmbd_gen_sd_hash._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @ksmbd_gen_sd_hash._entry.93, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../fs/ksmbd/auth.c", i32 961, i32 3}
!154 = !{ptr @ksmbd_gen_sd_hash._entry_ptr.94, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @ksmbd_gen_sd_hash._entry.95, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../fs/ksmbd/auth.c", i32 967, i32 3}
!157 = !{ptr @ksmbd_gen_sd_hash._entry_ptr.96, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @ksmbd_gen_sd_hash._entry.97, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../fs/ksmbd/auth.c", i32 973, i32 3}
!160 = !{ptr @ksmbd_gen_sd_hash._entry_ptr.98, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.99, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ksmbd/auth.c", i32 1096, i32 3}
!163 = !{ptr @.str.100, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ksmbd_crypt_message._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ksmbd_crypt_message._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.101, !162, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.102, !162, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.104, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ksmbd/auth.c", i32 1106, i32 3}
!170 = !{ptr @ksmbd_crypt_message._entry.103, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @ksmbd_crypt_message._entry_ptr.105, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.107, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ksmbd/auth.c", i32 1122, i32 3}
!174 = !{ptr @ksmbd_crypt_message._entry.106, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @ksmbd_crypt_message._entry_ptr.108, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.110, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ksmbd/auth.c", i32 1128, i32 3}
!178 = !{ptr @ksmbd_crypt_message._entry.109, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ksmbd_crypt_message._entry_ptr.111, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.113, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ksmbd/auth.c", i32 1145, i32 3}
!182 = !{ptr @ksmbd_crypt_message._entry.112, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ksmbd_crypt_message._entry_ptr.114, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @NEGOTIATE_GSS_HEADER, !185, !"NEGOTIATE_GSS_HEADER", i1 false, i1 false}
!185 = !{!"../fs/ksmbd/auth.c", i32 39, i32 13}
!186 = !{ptr @.str.115, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ksmbd/auth.c", i32 134, i32 3}
!188 = !{ptr @.str.116, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @calc_ntlmv2_hash._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @calc_ntlmv2_hash._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.118, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ksmbd/auth.c", i32 142, i32 3}
!193 = !{ptr @calc_ntlmv2_hash._entry.117, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @calc_ntlmv2_hash._entry_ptr.119, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.121, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ksmbd/auth.c", i32 148, i32 3}
!197 = !{ptr @calc_ntlmv2_hash._entry.120, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @calc_ntlmv2_hash._entry_ptr.122, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.124, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ksmbd/auth.c", i32 172, i32 3}
!201 = !{ptr @calc_ntlmv2_hash._entry.123, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @calc_ntlmv2_hash._entry_ptr.125, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.127, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ksmbd/auth.c", i32 195, i32 3}
!205 = !{ptr @calc_ntlmv2_hash._entry.126, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @calc_ntlmv2_hash._entry_ptr.128, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @calc_ntlmv2_hash._entry.129, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../fs/ksmbd/auth.c", i32 201, i32 3}
!209 = !{ptr @calc_ntlmv2_hash._entry_ptr.130, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.131, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ksmbd/auth.c", i32 87, i32 3}
!212 = !{ptr @ksmbd_gen_sess_key._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ksmbd_gen_sess_key._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.133, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ksmbd/auth.c", i32 95, i32 3}
!216 = !{ptr @ksmbd_gen_sess_key._entry.132, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @ksmbd_gen_sess_key._entry_ptr.134, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.136, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/ksmbd/auth.c", i32 101, i32 3}
!220 = !{ptr @ksmbd_gen_sess_key._entry.135, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @ksmbd_gen_sess_key._entry_ptr.137, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.139, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/ksmbd/auth.c", i32 109, i32 3}
!224 = !{ptr @ksmbd_gen_sess_key._entry.138, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @ksmbd_gen_sess_key._entry_ptr.140, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.142, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/ksmbd/auth.c", i32 115, i32 3}
!228 = !{ptr @ksmbd_gen_sess_key._entry.141, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @ksmbd_gen_sess_key._entry_ptr.143, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.144, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/ksmbd/auth.c", i32 772, i32 2}
!232 = !{ptr @.str.145, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @generate_smb3signingkey._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @generate_smb3signingkey._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.147, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ksmbd/auth.c", i32 773, i32 2}
!237 = !{ptr @generate_smb3signingkey._entry.146, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @generate_smb3signingkey._entry_ptr.148, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.150, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ksmbd/auth.c", i32 774, i32 2}
!241 = !{ptr @generate_smb3signingkey._entry.149, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @generate_smb3signingkey._entry_ptr.151, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.153, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ksmbd/auth.c", i32 776, i32 2}
!245 = !{ptr @generate_smb3signingkey._entry.152, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @generate_smb3signingkey._entry_ptr.154, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.155, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ksmbd/auth.c", i32 679, i32 3}
!249 = !{ptr @generate_key._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @generate_key._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @generate_key._entry.156, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../fs/ksmbd/auth.c", i32 691, i32 3}
!253 = !{ptr @generate_key._entry_ptr.157, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @generate_key._entry.158, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../fs/ksmbd/auth.c", i32 697, i32 3}
!256 = !{ptr @generate_key._entry_ptr.159, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.161, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ksmbd/auth.c", i32 705, i32 3}
!259 = !{ptr @generate_key._entry.160, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @generate_key._entry_ptr.162, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.164, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ksmbd/auth.c", i32 711, i32 3}
!263 = !{ptr @generate_key._entry.163, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @generate_key._entry_ptr.165, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.167, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ksmbd/auth.c", i32 719, i32 3}
!267 = !{ptr @generate_key._entry.166, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @generate_key._entry_ptr.168, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.170, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ksmbd/auth.c", i32 729, i32 3}
!271 = !{ptr @generate_key._entry.169, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @generate_key._entry_ptr.171, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @generate_key._entry.172, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../fs/ksmbd/auth.c", i32 735, i32 3}
!275 = !{ptr @generate_key._entry_ptr.173, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.174, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ksmbd/auth.c", i32 840, i32 2}
!278 = !{ptr @.str.175, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @generate_smb3encryptionkey._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @generate_smb3encryptionkey._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.177, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/ksmbd/auth.c", i32 841, i32 2}
!283 = !{ptr @generate_smb3encryptionkey._entry.176, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @generate_smb3encryptionkey._entry_ptr.178, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @generate_smb3encryptionkey._entry.179, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../fs/ksmbd/auth.c", i32 842, i32 2}
!287 = !{ptr @generate_smb3encryptionkey._entry_ptr.180, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @generate_smb3encryptionkey._entry.181, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../fs/ksmbd/auth.c", i32 843, i32 2}
!290 = !{ptr @generate_smb3encryptionkey._entry_ptr.182, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.184, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ksmbd/auth.c", i32 847, i32 3}
!293 = !{ptr @generate_smb3encryptionkey._entry.183, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @generate_smb3encryptionkey._entry_ptr.185, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.187, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ksmbd/auth.c", i32 849, i32 3}
!297 = !{ptr @generate_smb3encryptionkey._entry.186, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @generate_smb3encryptionkey._entry_ptr.188, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @generate_smb3encryptionkey._entry.189, !300, !"_entry", i1 false, i1 false}
!300 = !{!"../fs/ksmbd/auth.c", i32 852, i32 3}
!301 = !{ptr @generate_smb3encryptionkey._entry_ptr.190, !300, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @generate_smb3encryptionkey._entry.191, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../fs/ksmbd/auth.c", i32 854, i32 3}
!304 = !{ptr @generate_smb3encryptionkey._entry_ptr.192, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{i8 0, i8 2}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{!"branch_weights", i32 2000, i32 1}
!317 = !{i64 2154744021, i64 2154744513, i64 2154744058, i64 2154744114, i64 2154744148, i64 2154744172, i64 2154744213, i64 2154744234, i64 2154744262, i64 2154744296}
!318 = !{i64 2154745631, i64 2154746123, i64 2154745668, i64 2154745724, i64 2154745758, i64 2154745782, i64 2154745823, i64 2154745844, i64 2154745872, i64 2154745906}
!319 = distinct !{!319, !320}
!320 = !{!"llvm.loop.peeled.count", i32 1}
