; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/pkcs7_verify.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_verify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pkcs7_verify\22, \22a\22\09"
module asm "\09.weak\09__crc_pkcs7_verify\09\09\09\09"
module asm "\09.long\09__crc_pkcs7_verify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_verify\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i32, i64, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.asymmetric_key_id = type { i16, [0 x i8] }

@hash_algo_name = external dso_local constant [20 x ptr], align 4
@pkcs7_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014PKCS7: Invalid module sig (not pkcs7-data)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pkcs7_verify\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"crypto/asymmetric_keys/pkcs7_verify.c\00", [58 x i8] zeroinitializer }, align 32
@pkcs7_verify._entry_ptr = internal global ptr @pkcs7_verify._entry, section ".printk_index", align 4
@pkcs7_verify._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014PKCS7: Invalid module sig (has authattrs)\0A\00", [51 x i8] zeroinitializer }, align 32
@pkcs7_verify._entry_ptr.5 = internal global ptr @pkcs7_verify._entry.3, section ".printk_index", align 4
@pkcs7_verify._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014PKCS7: Invalid firmware sig (not pkcs7-data)\0A\00", [48 x i8] zeroinitializer }, align 32
@pkcs7_verify._entry_ptr.8 = internal global ptr @pkcs7_verify._entry.6, section ".printk_index", align 4
@pkcs7_verify._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014PKCS7: Invalid firmware sig (missing authattrs)\0A\00", [45 x i8] zeroinitializer }, align 32
@pkcs7_verify._entry_ptr.11 = internal global ptr @pkcs7_verify._entry.9, section ".printk_index", align 4
@pkcs7_verify._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014PKCS7: Invalid kexec sig (not Authenticode)\0A\00", [49 x i8] zeroinitializer }, align 32
@pkcs7_verify._entry_ptr.14 = internal global ptr @pkcs7_verify._entry.12, section ".printk_index", align 4
@pkcs7_verify._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014PKCS7: Invalid unspecified sig (not pkcs7-data)\0A\00", [45 x i8] zeroinitializer }, align 32
@pkcs7_verify._entry_ptr.17 = internal global ptr @pkcs7_verify._entry.15, section ".printk_index", align 4
@__kstrtab_pkcs7_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_verify to i32), ptr @__kstrtab_pkcs7_verify, ptr @__kstrtabns_pkcs7_verify }, section "___ksymtab_gpl+pkcs7_verify", align 4
@pkcs7_supply_detached_data.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pkcs7_message\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pkcs7_supply_detached_data\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Data already supplied\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PKCS7: Data already supplied\0A\00", [34 x i8] zeroinitializer }, align 32
@pkcs7_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014PKCS7: Sig %u: No messageDigest\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pkcs7_digest\00", [19 x i8] zeroinitializer }, align 32
@pkcs7_digest._entry_ptr = internal global ptr @pkcs7_digest._entry, section ".printk_index", align 4
@pkcs7_digest.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sig %u: Invalid digest size (%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PKCS7: Sig %u: Invalid digest size (%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@pkcs7_digest.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sig %u: Message digest doesn't match\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PKCS7: Sig %u: Message digest doesn't match\0A\00", [51 x i8] zeroinitializer }, align 32
@pkcs7_verify_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014PKCS7: Message signed outside of X.509 validity window\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pkcs7_verify_one\00", [47 x i8] zeroinitializer }, align 32
@pkcs7_verify_one._entry_ptr = internal global ptr @pkcs7_verify_one._entry, section ".printk_index", align 4
@pkcs7_find_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014PKCS7: Sig %u: X.509 algo and PKCS#7 sig algo don't match\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkcs7_find_key\00", [17 x i8] zeroinitializer }, align 32
@pkcs7_find_key._entry_ptr = internal global ptr @pkcs7_find_key._entry, section ".printk_index", align 4
@pkcs7_find_key.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Sig %u: Issuing X.509 cert not found (#%*phN)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"PKCS7: Sig %u: Issuing X.509 cert not found (#%*phN)\0A\00", [42 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug161 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pkcs7_verify_sig_chain\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verify %s: %*phN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PKCS7: verify %s: %*phN\0A\00", [39 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug162 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"- blacklisted\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PKCS7: - blacklisted\0A\00", [42 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"- issuer %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PKCS7: - issuer %s\0A\00", [44 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug164 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.41, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"- authkeyid.id %*phN\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PKCS7: - authkeyid.id %*phN\0A\00", [35 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug165 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.43, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"- authkeyid.skid %*phN\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PKCS7: - authkeyid.skid %*phN\0A\00", [33 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug166 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.45, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"- self-signed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PKCS7: - self-signed\0A\00", [42 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.47, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"- want %*phN\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PKCS7: - want %*phN\0A\00", [43 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.49, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"- cmp [%u] %*phN\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PKCS7: - cmp [%u] %*phN\0A\00", [39 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.47, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.49, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.51, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"- top\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PKCS7: - top\0A\00", [18 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.34, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014PKCS7: Sig %u: X.509 chain contains auth-skid nonmatch (%u->%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain._entry_ptr = internal global ptr @pkcs7_verify_sig_chain._entry, section ".printk_index", align 4
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.54, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"- subject %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PKCS7: - subject %s\0A\00", [43 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.34, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014PKCS7: Sig %u: X.509 chain contains loop\0A\00", [52 x i8] zeroinitializer }, align 32
@pkcs7_verify_sig_chain._entry_ptr.58 = internal global ptr @pkcs7_verify_sig_chain._entry.56, section ".printk_index", align 4
@pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.2, ptr @.str.45, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 415, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 419, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 425, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 429, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 435, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 442, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 490, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 76, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 82, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 90, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 357, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 178, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 190, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 213, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 225, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 232, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 235, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 238, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 250, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 259, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 261, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 280, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 289, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 294, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [41 x i8] c"../crypto/asymmetric_keys/pkcs7_verify.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 296, i32 4 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__ksymtab_pkcs7_verify, ptr @pkcs7_digest._entry, ptr @pkcs7_digest._entry_ptr, ptr @pkcs7_find_key._entry, ptr @pkcs7_find_key._entry_ptr, ptr @pkcs7_verify._entry, ptr @pkcs7_verify._entry.12, ptr @pkcs7_verify._entry.15, ptr @pkcs7_verify._entry.3, ptr @pkcs7_verify._entry.6, ptr @pkcs7_verify._entry.9, ptr @pkcs7_verify._entry_ptr, ptr @pkcs7_verify._entry_ptr.11, ptr @pkcs7_verify._entry_ptr.14, ptr @pkcs7_verify._entry_ptr.17, ptr @pkcs7_verify._entry_ptr.5, ptr @pkcs7_verify._entry_ptr.8, ptr @pkcs7_verify_one._entry, ptr @pkcs7_verify_one._entry_ptr, ptr @pkcs7_verify_sig_chain._entry, ptr @pkcs7_verify_sig_chain._entry.56, ptr @pkcs7_verify_sig_chain._entry_ptr, ptr @pkcs7_verify_sig_chain._entry_ptr.58, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_find_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify_sig_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_verify_sig_chain._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_get_digest(ptr nocapture noundef readonly %pkcs7, ptr nocapture noundef writeonly %buf, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %hash_algo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 2
  %0 = ptrtoint ptr %signed_infos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signed_infos, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @pkcs7_digest(ptr noundef %pkcs7, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sig, align 8
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %digest, align 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %buf, align 4
  %9 = load ptr, ptr %sig, align 8
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %digest_size, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len, align 4
  %13 = load ptr, ptr %sig, align 8
  %hash_algo6 = getelementptr inbounds %struct.public_key_signature, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %hash_algo6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hash_algo6, align 4
  %call7 = tail call i32 @match_string(ptr noundef nonnull @hash_algo_name, i32 noundef 20, ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call7, ptr %hash_algo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %lor.lhs.false.cleanup_crit_edge ], [ -74, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkcs7_digest(ptr nocapture noundef readonly %pkcs7, ptr nocapture noundef readonly %sinfo) unnamed_addr #0 align 64 {
entry:
  %tag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sig1 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 11
  %0 = ptrtoint ptr %sig1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sig1, align 8
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %digest, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup99_crit_edge

entry.cleanup99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup99

if.end:                                           ; preds = %entry
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_algo, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup99_crit_edge, label %if.end5

if.end.cleanup99_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup99

if.end5:                                          ; preds = %if.end
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #7
  %cmp.i150 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, i32 -65, i32 %6
  br label %cleanup99

if.end12:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 128
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %10, i32 -128
  %11 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digestsize.i, align 128
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %digest_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %digest_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #10
  %14 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %digest, align 4
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.end12.error_no_desc_crit_edge, label %if.end8.i.i

if.end12.error_no_desc_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_no_desc

if.end8.i.i:                                      ; preds = %if.end12
  %add = add i32 %8, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool23.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool23.not, label %if.end8.i.i.error_no_desc_crit_edge, label %if.end25

if.end8.i.i.error_no_desc_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_no_desc

if.end25:                                         ; preds = %if.end8.i.i
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %call9.i.i, align 128
  %data = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 6
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len, align 4
  %20 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %digest, align 4
  %call28 = tail call i32 @crypto_shash_digest(ptr noundef nonnull %call9.i.i, ptr noundef %17, i32 noundef %19, ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end25.error_crit_edge, label %if.end31

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end31:                                         ; preds = %if.end25
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 8
  %22 = ptrtoint ptr %authattrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %authattrs, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %if.end31.error_crit_edge, label %if.then34

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then34:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tag) #7
  %msgdigest = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 5
  %24 = ptrtoint ptr %msgdigest to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msgdigest, align 8
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %do.end, label %if.end39

do.end:                                           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %27) #11
  br label %cleanup.thread

if.end39:                                         ; preds = %if.then34
  %msgdigest_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 6
  %28 = ptrtoint ptr %msgdigest_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msgdigest_len, align 4
  %30 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %digest_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp41.not = icmp eq i32 %29, %31
  br i1 %cmp41.not, label %if.end55, label %do.body43

do.body43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_digest.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_digest, %if.then49)) #7
          to label %cleanup [label %if.then49], !srcloc !125

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %index50 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  %32 = ptrtoint ptr %index50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index50, align 8
  %34 = ptrtoint ptr %msgdigest_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msgdigest_len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_digest.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.25, i32 noundef %33, i32 noundef %35) #7
  br label %cleanup.thread

if.end55:                                         ; preds = %if.end39
  %36 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %digest, align 4
  %bcmp = tail call i32 @bcmp(ptr %37, ptr nonnull %25, i32 %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp60.not = icmp eq i32 %bcmp, 0
  br i1 %cmp60.not, label %if.end79, label %do.body62

do.body62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_digest.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_digest, %if.then74)) #7
          to label %cleanup [label %if.then74], !srcloc !125

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %index75 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  %38 = ptrtoint ptr %index75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index75, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_digest.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.27, i32 noundef %39) #7
  br label %cleanup.thread

if.end79:                                         ; preds = %if.end55
  %40 = call ptr @memset(ptr %37, i32 0, i32 %29)
  %41 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end79.cleanup.thread_crit_edge

if.end79.cleanup.thread_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

crypto_shash_init.exit:                           ; preds = %if.end79
  %__crt_alg.i.i154 = getelementptr inbounds %struct.crypto_shash, ptr %42, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %__crt_alg.i.i154 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__crt_alg.i.i154, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 -256
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %48(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp83 = icmp slt i32 %call3.i, 0
  br i1 %cmp83, label %crypto_shash_init.exit.cleanup.thread_crit_edge, label %if.end85

crypto_shash_init.exit.cleanup.thread_crit_edge:  ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end85:                                         ; preds = %crypto_shash_init.exit
  %49 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 49, ptr %tag, align 1
  %call86 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %tag, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.cleanup.thread_crit_edge, label %if.end89

if.end85.cleanup.thread_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end89:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %authattrs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %authattrs, align 4
  %authattrs_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 7
  %52 = ptrtoint ptr %authattrs_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %authattrs_len, align 8
  %54 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %digest, align 4
  %call92 = call i32 @crypto_shash_finup(ptr noundef nonnull %call9.i.i, ptr noundef %51, i32 noundef %53, ptr noundef %55) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end89, %if.end85.cleanup.thread_crit_edge, %crypto_shash_init.exit.cleanup.thread_crit_edge, %if.end79.cleanup.thread_crit_edge, %if.then74, %if.then49, %do.end
  %ret.0.ph = phi i32 [ %call86, %if.end85.cleanup.thread_crit_edge ], [ %call3.i, %crypto_shash_init.exit.cleanup.thread_crit_edge ], [ -129, %if.then74 ], [ -74, %if.then49 ], [ -129, %do.end ], [ -126, %if.end79.cleanup.thread_crit_edge ], [ %call92, %if.end89 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tag) #7
  br label %error

cleanup:                                          ; preds = %do.body62, %do.body43
  %ret.0 = phi i32 [ -74, %do.body43 ], [ -129, %do.body62 ]
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tag) #7
  br label %error

error:                                            ; preds = %cleanup, %cleanup.thread, %if.end31.error_crit_edge, %if.end25.error_crit_edge
  %ret.1 = phi i32 [ %call28, %if.end25.error_crit_edge ], [ %ret.0, %cleanup ], [ %call28, %if.end31.error_crit_edge ], [ %ret.0.ph, %cleanup.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %error_no_desc

error_no_desc:                                    ; preds = %error, %if.end8.i.i.error_no_desc_crit_edge, %if.end12.error_no_desc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %error ], [ -12, %if.end8.i.i.error_no_desc_crit_edge ], [ -12, %if.end12.error_no_desc_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #7
  br label %cleanup99

cleanup99:                                        ; preds = %error_no_desc, %if.then9, %if.end.cleanup99_crit_edge, %entry.cleanup99_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_no_desc ], [ 0, %entry.cleanup99_crit_edge ], [ -65, %if.end.cleanup99_crit_edge ], [ %spec.select, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_verify(ptr nocapture noundef readonly %pkcs7, i32 noundef %usage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %usage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %usage, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb28
    i32 5, label %sw.bb38
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 5
  %1 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %2)
  %cmp.not = icmp eq i32 %2, 19
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.bb
  %have_authattrs = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 4
  %3 = ptrtoint ptr %have_authattrs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %have_authattrs, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %data_type10 = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 5
  %5 = ptrtoint ptr %data_type10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %6)
  %cmp11.not = icmp eq i32 %6, 19
  br i1 %cmp11.not, label %if.end18, label %sw.bb9.cleanup.sink.split_crit_edge

sw.bb9.cleanup.sink.split_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end18:                                         ; preds = %sw.bb9
  %have_authattrs19 = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 4
  %7 = ptrtoint ptr %have_authattrs19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %have_authattrs19, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool20.not = icmp eq i8 %8, 0
  br i1 %tobool20.not, label %if.end18.cleanup.sink.split_crit_edge, label %if.end18.sw.epilog_crit_edge

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %entry
  %data_type29 = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 5
  %9 = ptrtoint ptr %data_type29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_type29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %cmp30.not = icmp eq i32 %10, 33
  br i1 %cmp30.not, label %sw.bb28.sw.epilog_crit_edge, label %sw.bb28.cleanup.sink.split_crit_edge

sw.bb28.cleanup.sink.split_crit_edge:             ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %data_type39 = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 5
  %11 = ptrtoint ptr %data_type39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_type39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %12)
  %cmp40.not = icmp eq i32 %12, 19
  br i1 %cmp40.not, label %sw.bb38.sw.epilog_crit_edge, label %sw.bb38.cleanup.sink.split_crit_edge

sw.bb38.cleanup.sink.split_crit_edge:             ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38.sw.epilog_crit_edge, %sw.bb28.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 2
  %13 = ptrtoint ptr %signed_infos to i32
  call void @__asan_load4_noabort(i32 %13)
  %sinfo.086 = load ptr, ptr %signed_infos, align 4
  %tobool48.not87 = icmp eq ptr %sinfo.086, null
  br i1 %tobool48.not87, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %sinfo.090 = phi ptr [ %sinfo.0, %for.inc.for.body_crit_edge ], [ %sinfo.086, %sw.epilog.for.body_crit_edge ]
  %actual_ret.088 = phi i32 [ %actual_ret.1, %for.inc.for.body_crit_edge ], [ -65, %sw.epilog.for.body_crit_edge ]
  %call.i = tail call fastcc i32 @pkcs7_digest(ptr noundef %pkcs7, ptr noundef nonnull %sinfo.090) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.pkcs7_verify_one.exit_crit_edge, label %if.end.i

for.body.pkcs7_verify_one.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %pkcs7_verify_one.exit

if.end.i:                                         ; preds = %for.body
  tail call fastcc void @pkcs7_find_key(ptr noundef %pkcs7, ptr noundef nonnull %sinfo.090) #7
  %signer.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 1
  %14 = ptrtoint ptr %signer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signer.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %pkcs7_verify_one.exit.thread, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %aa_set.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 9
  %16 = ptrtoint ptr %aa_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %aa_set.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not.i = icmp eq i32 %18, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end20.i_crit_edge, label %if.then10.i

if.end6.i.if.end20.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then10.i:                                      ; preds = %if.end6.i
  %signing_time.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 10
  %19 = ptrtoint ptr %signing_time.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %signing_time.i, align 8
  %valid_from.i = getelementptr inbounds %struct.x509_certificate, ptr %15, i32 0, i32 8
  %21 = ptrtoint ptr %valid_from.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %valid_from.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp12.i = icmp slt i64 %20, %22
  br i1 %cmp12.i, label %if.then10.i.pkcs7_verify_one.exit.thread92_crit_edge, label %lor.lhs.false.i

if.then10.i.pkcs7_verify_one.exit.thread92_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pkcs7_verify_one.exit.thread92

lor.lhs.false.i:                                  ; preds = %if.then10.i
  %valid_to.i = getelementptr inbounds %struct.x509_certificate, ptr %15, i32 0, i32 9
  %23 = ptrtoint ptr %valid_to.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %valid_to.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %24)
  %cmp15.i = icmp sgt i64 %20, %24
  br i1 %cmp15.i, label %lor.lhs.false.i.pkcs7_verify_one.exit.thread92_crit_edge, label %lor.lhs.false.i.if.end20.i_crit_edge

lor.lhs.false.i.if.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

lor.lhs.false.i.pkcs7_verify_one.exit.thread92_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pkcs7_verify_one.exit.thread92

if.end20.i:                                       ; preds = %lor.lhs.false.i.if.end20.i_crit_edge, %if.end6.i.if.end20.i_crit_edge
  %pub.i = getelementptr inbounds %struct.x509_certificate, ptr %15, i32 0, i32 2
  %25 = ptrtoint ptr %pub.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pub.i, align 8
  %sig.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 11
  %27 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sig.i, align 8
  %call22.i = tail call i32 @public_key_verify_signature(ptr noundef %26, ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end20.i.pkcs7_verify_one.exit_crit_edge, label %if.end25.i

if.end20.i.pkcs7_verify_one.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pkcs7_verify_one.exit

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call fastcc i32 @pkcs7_verify_sig_chain(ptr noundef %pkcs7, ptr noundef nonnull %sinfo.090) #7
  br label %pkcs7_verify_one.exit

pkcs7_verify_one.exit:                            ; preds = %if.end25.i, %if.end20.i.pkcs7_verify_one.exit_crit_edge, %for.body.pkcs7_verify_one.exit_crit_edge
  %retval.0.i = phi i32 [ %call27.i, %if.end25.i ], [ %call.i, %for.body.pkcs7_verify_one.exit_crit_edge ], [ %call22.i, %if.end20.i.pkcs7_verify_one.exit_crit_edge ]
  %blacklisted = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 4
  %29 = ptrtoint ptr %blacklisted to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %blacklisted, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool50.not = icmp eq i8 %30, 0
  br i1 %tobool50.not, label %if.end55, label %pkcs7_verify_one.exit.if.then51_crit_edge

pkcs7_verify_one.exit.if.then51_crit_edge:        ; preds = %pkcs7_verify_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

pkcs7_verify_one.exit.thread92:                   ; preds = %lor.lhs.false.i.pkcs7_verify_one.exit.thread92_crit_edge, %if.then10.i.pkcs7_verify_one.exit.thread92_crit_edge
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  %blacklisted94 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 4
  %31 = ptrtoint ptr %blacklisted94 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %blacklisted94, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool50.not95 = icmp eq i8 %32, 0
  br i1 %tobool50.not95, label %pkcs7_verify_one.exit.thread92.cleanup_crit_edge, label %pkcs7_verify_one.exit.thread92.if.then51_crit_edge

pkcs7_verify_one.exit.thread92.if.then51_crit_edge: ; preds = %pkcs7_verify_one.exit.thread92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

pkcs7_verify_one.exit.thread92.cleanup_crit_edge: ; preds = %pkcs7_verify_one.exit.thread92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pkcs7_verify_one.exit.thread:                     ; preds = %if.end.i
  %blacklisted81 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 4
  %33 = ptrtoint ptr %blacklisted81 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %blacklisted81, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool50.not82 = icmp eq i8 %34, 0
  br i1 %tobool50.not82, label %pkcs7_verify_one.exit.thread.for.inc_crit_edge, label %pkcs7_verify_one.exit.thread.if.then51_crit_edge

pkcs7_verify_one.exit.thread.if.then51_crit_edge: ; preds = %pkcs7_verify_one.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

pkcs7_verify_one.exit.thread.for.inc_crit_edge:   ; preds = %pkcs7_verify_one.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then51:                                        ; preds = %pkcs7_verify_one.exit.thread.if.then51_crit_edge, %pkcs7_verify_one.exit.thread92.if.then51_crit_edge, %pkcs7_verify_one.exit.if.then51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %actual_ret.088)
  %cmp52 = icmp eq i32 %actual_ret.088, -65
  %spec.store.select = select i1 %cmp52, i32 -129, i32 %actual_ret.088
  br label %for.inc

if.end55:                                         ; preds = %pkcs7_verify_one.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp56 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp56, label %if.then57, label %if.end55.for.inc_crit_edge

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %retval.0.i)
  %cmp58 = icmp eq i32 %retval.0.i, -65
  br i1 %cmp58, label %if.then59, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %unsupported_crypto = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.090, i32 0, i32 3
  %35 = ptrtoint ptr %unsupported_crypto to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %unsupported_crypto, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then59, %if.end55.for.inc_crit_edge, %if.then51, %pkcs7_verify_one.exit.thread.for.inc_crit_edge
  %actual_ret.1 = phi i32 [ %spec.store.select, %if.then51 ], [ %actual_ret.088, %if.then59 ], [ 0, %if.end55.for.inc_crit_edge ], [ 0, %pkcs7_verify_one.exit.thread.for.inc_crit_edge ]
  %36 = ptrtoint ptr %sinfo.090 to i32
  call void @__asan_load4_noabort(i32 %36)
  %sinfo.0 = load ptr, ptr %sinfo.090, align 4
  %tobool48.not = icmp eq ptr %sinfo.0, null
  br i1 %tobool48.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb38.cleanup.sink.split_crit_edge, %sw.bb28.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %sw.bb9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str, %sw.bb.cleanup.sink.split_crit_edge ], [ @.str.4, %if.end.cleanup.sink.split_crit_edge ], [ @.str.7, %sw.bb9.cleanup.sink.split_crit_edge ], [ @.str.10, %if.end18.cleanup.sink.split_crit_edge ], [ @.str.13, %sw.bb28.cleanup.sink.split_crit_edge ], [ @.str.16, %sw.bb38.cleanup.sink.split_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %pkcs7_verify_one.exit.thread92.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -65, %sw.epilog.cleanup_crit_edge ], [ -129, %cleanup.sink.split ], [ -129, %pkcs7_verify_one.exit.thread92.cleanup_crit_edge ], [ %retval.0.i, %if.then57.cleanup_crit_edge ], [ %actual_ret.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_supply_detached_data(ptr nocapture noundef %pkcs7, ptr noundef %data, i32 noundef %datalen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 8
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_supply_detached_data.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_supply_detached_data, %if.then5)) #7
          to label %return [label %if.then5], !srcloc !125

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_supply_detached_data.__UNIQUE_ID_ddebug174, ptr noundef nonnull @.str.21) #7
  br label %return

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data1, align 4
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 6
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %datalen, ptr %data_len, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %if.then5 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkcs7_find_key(ptr nocapture noundef readonly %pkcs7, ptr nocapture noundef %sinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %x509.03 = load ptr, ptr %pkcs7, align 4
  %tobool.not4 = icmp eq ptr %x509.03, null
  br i1 %tobool.not4, label %entry.do.body9_crit_edge, label %for.body.lr.ph

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

for.body.lr.ph:                                   ; preds = %entry
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 11
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %x509.05 = phi ptr [ %x509.03, %for.body.lr.ph ], [ %x509.0, %for.inc.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.x509_certificate, ptr %x509.05, i32 0, i32 6
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %id, align 8
  %3 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sig, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %2, ptr noundef %6) #7
  br i1 %call, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %x509.05, i32 0, i32 2
  %7 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pub, align 8
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pkey_algo, align 4
  %11 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sig, align 8
  %pkey_algo3 = getelementptr inbounds %struct.public_key_signature, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %pkey_algo3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkey_algo3, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %16) #11
  br label %for.inc

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %signer = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 1
  %17 = ptrtoint ptr %signer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %x509.05, ptr %signer, align 4
  br label %cleanup

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %x509.05 to i32
  call void @__asan_load4_noabort(i32 %18)
  %x509.0 = load ptr, ptr %x509.05, align 4
  %tobool.not = icmp eq ptr %x509.0, null
  br i1 %tobool.not, label %for.inc.do.body9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.body9:                                         ; preds = %for.inc.do.body9_crit_edge, %entry.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_find_key.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_find_key, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !125

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %index16 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  %19 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index16, align 8
  %sig17 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 11
  %21 = ptrtoint ptr %sig17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sig17, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %conv = zext i16 %26 to i32
  %data = getelementptr inbounds %struct.asymmetric_key_id, ptr %24, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_find_key.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.33, i32 noundef %20, i32 noundef %conv, ptr noundef %data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body9, %if.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @public_key_verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkcs7_verify_sig_chain(ptr nocapture noundef readonly %pkcs7, ptr nocapture noundef %sinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %signer = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 1
  %0 = ptrtoint ptr %signer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signer, align 4
  %2 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0475 = load ptr, ptr %pkcs7, align 4
  %tobool.not476 = icmp eq ptr %p.0475, null
  br i1 %tobool.not476, label %entry.for.cond1.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.0477 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.0475, %entry.for.body_crit_edge ]
  %seen = getelementptr inbounds %struct.x509_certificate, ptr %p.0477, i32 0, i32 23
  %3 = ptrtoint ptr %seen to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %seen, align 4
  %4 = ptrtoint ptr %p.0477 to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.0 = load ptr, ptr %p.0477, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %for.body.for.cond1.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  br label %for.cond1

for.cond1:                                        ; preds = %if.end336, %for.cond1.preheader
  %x509.0 = phi ptr [ %p.4, %if.end336 ], [ %1, %for.cond1.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug161, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #9
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 5
  %5 = ptrtoint ptr %subject to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subject, align 4
  %raw_serial_size = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 15
  %7 = ptrtoint ptr %raw_serial_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %raw_serial_size, align 4
  %raw_serial = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 14
  %9 = ptrtoint ptr %raw_serial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %raw_serial, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug161, ptr noundef nonnull @.str.36, ptr noundef %6, i32 noundef %8, ptr noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %for.cond1
  %seen6 = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 23
  %11 = ptrtoint ptr %seen6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %seen6, align 4
  %blacklisted = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 28
  %12 = ptrtoint ptr %blacklisted to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blacklisted, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end33, label %if.then8

if.then8:                                         ; preds = %do.end
  %blacklisted9 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 4
  %14 = ptrtoint ptr %blacklisted9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %blacklisted9, align 1
  %15 = ptrtoint ptr %signer to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.1481 = load ptr, ptr %signer, align 4
  %cmp.not482 = icmp eq ptr %p.1481, %x509.0
  br i1 %cmp.not482, label %if.then8.do.body17_crit_edge, label %if.then8.for.body12_crit_edge

if.then8.for.body12_crit_edge:                    ; preds = %if.then8
  br label %for.body12

if.then8.do.body17_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %if.then8.for.body12_crit_edge
  %p.1483 = phi ptr [ %p.1, %for.body12.for.body12_crit_edge ], [ %p.1481, %if.then8.for.body12_crit_edge ]
  %blacklisted13 = getelementptr inbounds %struct.x509_certificate, ptr %p.1483, i32 0, i32 28
  %16 = ptrtoint ptr %blacklisted13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %blacklisted13, align 1
  %signer15 = getelementptr inbounds %struct.x509_certificate, ptr %p.1483, i32 0, i32 1
  %17 = ptrtoint ptr %signer15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.1 = load ptr, ptr %signer15, align 4
  %cmp.not = icmp eq ptr %p.1, %x509.0
  br i1 %cmp.not, label %for.body12.do.body17_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.body12.do.body17_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body17:                                        ; preds = %for.body12.do.body17_crit_edge, %if.then8.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug162, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !125

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug162, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.end33:                                         ; preds = %do.end
  %unsupported_key = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 26
  %18 = ptrtoint ptr %unsupported_key to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unsupported_key, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  br i1 %tobool34.not, label %do.body37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body37:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then49)) #7
          to label %do.end52 [label %if.then49], !srcloc !125

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %issuer = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 4
  %20 = ptrtoint ptr %issuer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %issuer, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug163, ptr noundef nonnull @.str.40, ptr noundef %21) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body37
  %sig53 = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 3
  %22 = ptrtoint ptr %sig53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sig53, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool54.not = icmp eq ptr %25, null
  br i1 %tobool54.not, label %do.end52.if.end76_crit_edge, label %do.body56

do.end52.if.end76_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.body56:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug164, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then68)) #7
          to label %if.end76 [label %if.then68], !srcloc !125

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 2
  %conv = zext i16 %29 to i32
  %data = getelementptr inbounds %struct.asymmetric_key_id, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug164, ptr noundef nonnull @.str.42, i32 noundef %conv, ptr noundef %data) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then68, %do.body56, %do.end52.if.end76_crit_edge
  %arrayidx78 = getelementptr [3 x ptr], ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx78, align 4
  %tobool79.not = icmp eq ptr %31, null
  br i1 %tobool79.not, label %if.end76.if.end105_crit_edge, label %do.body81

if.end76.if.end105_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

do.body81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug165, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then93)) #7
          to label %if.end105 [label %if.then93], !srcloc !125

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx78, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  %conv97 = zext i16 %35 to i32
  %data100 = getelementptr inbounds %struct.asymmetric_key_id, ptr %33, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug165, ptr noundef nonnull @.str.44, i32 noundef %conv97, ptr noundef %data100) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then93, %do.body81, %if.end76.if.end105_crit_edge
  %self_signed = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 25
  %36 = ptrtoint ptr %self_signed to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %self_signed, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool106.not = icmp eq i8 %37, 0
  br i1 %tobool106.not, label %if.end128, label %if.then107

if.then107:                                       ; preds = %if.end105
  %unsupported_sig = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 27
  %38 = ptrtoint ptr %unsupported_sig to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %unsupported_sig, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool108.not = icmp eq i8 %39, 0
  br i1 %tobool108.not, label %if.end110, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end110:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %signer111 = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 1
  %40 = ptrtoint ptr %signer111 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %x509.0, ptr %signer111, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug166, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then124)) #7
          to label %cleanup [label %if.then124], !srcloc !125

if.then124:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug166, ptr noundef nonnull @.str.46) #7
  br label %cleanup

if.end128:                                        ; preds = %if.end105
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %23, align 4
  %tobool131.not = icmp eq ptr %42, null
  br i1 %tobool131.not, label %if.else, label %do.body133

do.body133:                                       ; preds = %if.end128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then145)) #7
          to label %for.cond154 [label %if.then145], !srcloc !125

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %conv147 = zext i16 %44 to i32
  %data148 = getelementptr inbounds %struct.asymmetric_key_id, ptr %42, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.48, i32 noundef %conv147, ptr noundef %data148) #7
  br label %for.cond154

for.cond154:                                      ; preds = %do.end177.for.cond154_crit_edge, %if.then145, %do.body133
  %p.2.in = phi ptr [ %p.2, %do.end177.for.cond154_crit_edge ], [ %pkcs7, %do.body133 ], [ %pkcs7, %if.then145 ]
  %45 = ptrtoint ptr %p.2.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %p.2 = load ptr, ptr %p.2.in, align 4
  %tobool155.not = icmp eq ptr %p.2, null
  br i1 %tobool155.not, label %for.cond154.do.body250_crit_edge, label %do.body157

for.cond154.do.body250_crit_edge:                 ; preds = %for.cond154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body250

do.body157:                                       ; preds = %for.cond154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then169)) #7
          to label %do.end177 [label %if.then169], !srcloc !125

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.x509_certificate, ptr %p.2, i32 0, i32 22
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 8
  %id = getelementptr inbounds %struct.x509_certificate, ptr %p.2, i32 0, i32 6
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %id, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %conv171 = zext i16 %51 to i32
  %data173 = getelementptr inbounds %struct.asymmetric_key_id, ptr %49, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.50, i32 noundef %47, i32 noundef %conv171, ptr noundef %data173) #7
  br label %do.end177

do.end177:                                        ; preds = %if.then169, %do.body157
  %id178 = getelementptr inbounds %struct.x509_certificate, ptr %p.2, i32 0, i32 6
  %52 = ptrtoint ptr %id178 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %id178, align 8
  %call179 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %53, ptr noundef nonnull %42) #7
  br i1 %call179, label %found_issuer_check_skid, label %do.end177.for.cond154_crit_edge

do.end177.for.cond154_crit_edge:                  ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond154

if.else:                                          ; preds = %if.end128
  %54 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx78, align 4
  %tobool187.not = icmp eq ptr %55, null
  br i1 %tobool187.not, label %if.else.do.body250_crit_edge, label %if.then188

if.else.do.body250_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body250

if.then188:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then203)) #7
          to label %do.end210 [label %if.then203], !srcloc !125

if.then203:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 2
  %conv205 = zext i16 %57 to i32
  %data206 = getelementptr inbounds %struct.asymmetric_key_id, ptr %55, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.48, i32 noundef %conv205, ptr noundef %data206) #7
  br label %do.end210

do.end210:                                        ; preds = %if.then203, %if.then188
  %58 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %p.3478 = load ptr, ptr %pkcs7, align 4
  %tobool213.not479 = icmp eq ptr %p.3478, null
  br i1 %tobool213.not479, label %do.end210.do.body250_crit_edge, label %do.end210.for.body214_crit_edge

do.end210.for.body214_crit_edge:                  ; preds = %do.end210
  br label %for.body214

do.end210.do.body250_crit_edge:                   ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body250

for.body214:                                      ; preds = %for.inc245.for.body214_crit_edge, %do.end210.for.body214_crit_edge
  %p.3480 = phi ptr [ %p.3, %for.inc245.for.body214_crit_edge ], [ %p.3478, %do.end210.for.body214_crit_edge ]
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %p.3480, i32 0, i32 7
  %59 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skid, align 4
  %tobool215.not = icmp eq ptr %60, null
  br i1 %tobool215.not, label %for.body214.for.inc245_crit_edge, label %do.body218

for.body214.for.inc245_crit_edge:                 ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc245

do.body218:                                       ; preds = %for.body214
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then230)) #7
          to label %do.end240 [label %if.then230], !srcloc !125

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #9
  %index231 = getelementptr inbounds %struct.x509_certificate, ptr %p.3480, i32 0, i32 22
  %61 = ptrtoint ptr %index231 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index231, align 8
  %63 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skid, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 2
  %conv234 = zext i16 %66 to i32
  %data236 = getelementptr inbounds %struct.asymmetric_key_id, ptr %64, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.50, i32 noundef %62, i32 noundef %conv234, ptr noundef %data236) #7
  br label %do.end240

do.end240:                                        ; preds = %if.then230, %do.body218
  %67 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skid, align 4
  %call242 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %68, ptr noundef nonnull %55) #7
  br i1 %call242, label %do.end240.do.body283_crit_edge, label %do.end240.for.inc245_crit_edge

do.end240.for.inc245_crit_edge:                   ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc245

do.end240.do.body283_crit_edge:                   ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

for.inc245:                                       ; preds = %do.end240.for.inc245_crit_edge, %for.body214.for.inc245_crit_edge
  %69 = ptrtoint ptr %p.3480 to i32
  call void @__asan_load4_noabort(i32 %69)
  %p.3 = load ptr, ptr %p.3480, align 4
  %tobool213.not = icmp eq ptr %p.3, null
  br i1 %tobool213.not, label %for.inc245.do.body250_crit_edge, label %for.inc245.for.body214_crit_edge

for.inc245.for.body214_crit_edge:                 ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body214

for.inc245.do.body250_crit_edge:                  ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body250

do.body250:                                       ; preds = %for.inc245.do.body250_crit_edge, %do.end210.do.body250_crit_edge, %if.else.do.body250_crit_edge, %for.cond154.do.body250_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then262)) #7
          to label %cleanup [label %if.then262], !srcloc !125

if.then262:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.52) #7
  br label %cleanup

found_issuer_check_skid:                          ; preds = %do.end177
  %70 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx78, align 4
  %tobool268.not = icmp eq ptr %71, null
  br i1 %tobool268.not, label %found_issuer_check_skid.do.body283_crit_edge, label %land.lhs.true

found_issuer_check_skid.do.body283_crit_edge:     ; preds = %found_issuer_check_skid
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

land.lhs.true:                                    ; preds = %found_issuer_check_skid
  %skid269 = getelementptr inbounds %struct.x509_certificate, ptr %p.2, i32 0, i32 7
  %72 = ptrtoint ptr %skid269 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skid269, align 4
  %call272 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %73, ptr noundef nonnull %71) #7
  br i1 %call272, label %land.lhs.true.do.body283_crit_edge, label %do.end276

land.lhs.true.do.body283_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body283

do.end276:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %index278 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  %74 = ptrtoint ptr %index278 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index278, align 8
  %index279 = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 22
  %76 = ptrtoint ptr %index279 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index279, align 8
  %index280 = getelementptr inbounds %struct.x509_certificate, ptr %p.2, i32 0, i32 22
  %78 = ptrtoint ptr %index280 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %index280, align 8
  %call281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %75, i32 noundef %77, i32 noundef %79) #11
  br label %cleanup

do.body283:                                       ; preds = %land.lhs.true.do.body283_crit_edge, %found_issuer_check_skid.do.body283_crit_edge, %do.end240.do.body283_crit_edge
  %p.4 = phi ptr [ %p.2, %land.lhs.true.do.body283_crit_edge ], [ %p.2, %found_issuer_check_skid.do.body283_crit_edge ], [ %p.3480, %do.end240.do.body283_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then295)) #7
          to label %do.end299 [label %if.then295], !srcloc !125

if.then295:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #9
  %subject296 = getelementptr inbounds %struct.x509_certificate, ptr %p.4, i32 0, i32 5
  %80 = ptrtoint ptr %subject296 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %subject296, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.55, ptr noundef %81) #7
  br label %do.end299

do.end299:                                        ; preds = %if.then295, %do.body283
  %seen300 = getelementptr inbounds %struct.x509_certificate, ptr %p.4, i32 0, i32 23
  %82 = ptrtoint ptr %seen300 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %seen300, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool301.not = icmp eq i8 %83, 0
  br i1 %tobool301.not, label %if.end309, label %do.end305

do.end305:                                        ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #9
  %index307 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo, i32 0, i32 2
  %84 = ptrtoint ptr %index307 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index307, align 8
  %call308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %85) #11
  br label %cleanup

if.end309:                                        ; preds = %do.end299
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %p.4, i32 0, i32 2
  %86 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pub, align 8
  %88 = ptrtoint ptr %sig53 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sig53, align 4
  %call311 = tail call i32 @public_key_verify_signature(ptr noundef %87, ptr noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %cmp312 = icmp slt i32 %call311, 0
  br i1 %cmp312, label %if.end309.cleanup_crit_edge, label %if.end315

if.end309.cleanup_crit_edge:                      ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end315:                                        ; preds = %if.end309
  %signer316 = getelementptr inbounds %struct.x509_certificate, ptr %x509.0, i32 0, i32 1
  %90 = ptrtoint ptr %signer316 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %p.4, ptr %signer316, align 4
  %cmp317 = icmp eq ptr %x509.0, %p.4
  br i1 %cmp317, label %do.body320, label %if.end336

do.body320:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_verify_sig_chain, %if.then332)) #7
          to label %cleanup [label %if.then332], !srcloc !125

if.then332:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.46) #7
  br label %cleanup

if.end336:                                        ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 309) #7
  br label %for.cond1

cleanup:                                          ; preds = %if.then332, %do.body320, %if.end309.cleanup_crit_edge, %do.end305, %do.end276, %if.then262, %do.body250, %if.then124, %if.end110, %if.then107.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then29, %do.body17
  %retval.0 = phi i32 [ 0, %do.end305 ], [ -129, %do.end276 ], [ 0, %if.then29 ], [ 0, %if.then124 ], [ 0, %if.then262 ], [ 0, %if.then332 ], [ 0, %if.then107.cleanup_crit_edge ], [ 0, %do.body17 ], [ 0, %if.end110 ], [ 0, %do.body250 ], [ 0, %do.body320 ], [ 0, %if.end33.cleanup_crit_edge ], [ %call311, %if.end309.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 415, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pkcs7_verify._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pkcs7_verify._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 419, i32 4}
!8 = !{ptr @pkcs7_verify._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @pkcs7_verify._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 425, i32 4}
!12 = !{ptr @pkcs7_verify._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @pkcs7_verify._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 429, i32 4}
!16 = !{ptr @pkcs7_verify._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @pkcs7_verify._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 435, i32 4}
!20 = !{ptr @pkcs7_verify._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @pkcs7_verify._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 442, i32 4}
!24 = !{ptr @pkcs7_verify._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pkcs7_verify._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_pkcs7_verify, !27, !"__ksymtab_pkcs7_verify", i1 false, i1 false}
!27 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 471, i32 1}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 490, i32 3}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pkcs7_supply_detached_data.__UNIQUE_ID_ddebug174, !29, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!33 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 76, i32 4}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pkcs7_digest._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pkcs7_digest._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 82, i32 4}
!41 = !{ptr @pkcs7_digest.__UNIQUE_ID_ddebug158, !40, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!42 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 90, i32 4}
!45 = !{ptr @pkcs7_digest.__UNIQUE_ID_ddebug159, !44, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!46 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 357, i32 4}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pkcs7_verify_one._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pkcs7_verify_one._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 178, i32 4}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pkcs7_find_key._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @pkcs7_find_key._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 190, i32 2}
!59 = !{ptr @pkcs7_find_key.__UNIQUE_ID_ddebug160, !58, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!60 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 213, i32 3}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug161, !62, !"__UNIQUE_ID_ddebug161", i1 false, i1 false}
!65 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 225, i32 4}
!68 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug162, !67, !"__UNIQUE_ID_ddebug162", i1 false, i1 false}
!69 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 232, i32 3}
!72 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug163, !71, !"__UNIQUE_ID_ddebug163", i1 false, i1 false}
!73 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 235, i32 4}
!76 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug164, !75, !"__UNIQUE_ID_ddebug164", i1 false, i1 false}
!77 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 238, i32 4}
!80 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug165, !79, !"__UNIQUE_ID_ddebug165", i1 false, i1 false}
!81 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 250, i32 4}
!84 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug166, !83, !"__UNIQUE_ID_ddebug166", i1 false, i1 false}
!85 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 259, i32 4}
!88 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug167, !87, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!89 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 261, i32 5}
!92 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug168, !91, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!93 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug169, !95, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!95 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 268, i32 4}
!96 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug170, !97, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!97 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 272, i32 5}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 280, i32 3}
!100 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug171, !99, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!101 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 289, i32 4}
!104 = !{ptr @pkcs7_verify_sig_chain._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @pkcs7_verify_sig_chain._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 294, i32 3}
!108 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug172, !107, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!109 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 296, i32 4}
!112 = !{ptr @pkcs7_verify_sig_chain._entry.56, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @pkcs7_verify_sig_chain._entry_ptr.58, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @pkcs7_verify_sig_chain.__UNIQUE_ID_ddebug173, !115, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!115 = !{!"../crypto/asymmetric_keys/pkcs7_verify.c", i32 305, i32 4}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2148703117, i64 2148703122, i64 2148703135, i64 2148703179, i64 2148703213, i64 2148703234}
!126 = !{i8 0, i8 2}
