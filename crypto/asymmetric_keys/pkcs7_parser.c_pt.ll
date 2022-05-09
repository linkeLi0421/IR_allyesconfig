; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/pkcs7_parser.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pkcs7_free_message\22, \22a\22\09"
module asm "\09.weak\09__crc_pkcs7_free_message\09\09\09\09"
module asm "\09.long\09__crc_pkcs7_free_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_free_message:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_free_message\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_free_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pkcs7_parse_message\22, \22a\22\09"
module asm "\09.weak\09__crc_pkcs7_parse_message\09\09\09\09"
module asm "\09.long\09__crc_pkcs7_parse_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_parse_message:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_parse_message\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_parse_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pkcs7_get_content_data\22, \22a\22\09"
module asm "\09.weak\09__crc_pkcs7_get_content_data\09\09\09\09"
module asm "\09.long\09__crc_pkcs7_get_content_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_get_content_data:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_get_content_data\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_get_content_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asn1_decoder = type opaque
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i32, i64, ptr }
%struct.pkcs7_parse_context = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i8 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.asymmetric_key_id = type { i16, [0 x i8] }

@__UNIQUE_ID_description175 = internal constant [40 x i8] c"pkcs7_message.description=PKCS#7 parser\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [35 x i8] c"pkcs7_message.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [56 x i8] c"pkcs7_message.file=crypto/asymmetric_keys/pkcs7_message\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [26 x i8] c"pkcs7_message.license=GPL\00", section ".modinfo", align 1
@__kstrtab_pkcs7_free_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_free_message = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_free_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_free_message to i32), ptr @__kstrtab_pkcs7_free_message, ptr @__kstrtabns_pkcs7_free_message }, section "___ksymtab_gpl+pkcs7_free_message", align 4
@pkcs7_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__kstrtab_pkcs7_parse_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_parse_message = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_parse_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_parse_message to i32), ptr @__kstrtab_pkcs7_parse_message, ptr @__kstrtabns_pkcs7_parse_message }, section "___ksymtab_gpl+pkcs7_parse_message", align 4
@__kstrtab_pkcs7_get_content_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_get_content_data = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_get_content_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_get_content_data to i32), ptr @__kstrtab_pkcs7_get_content_data, ptr @__kstrtabns_pkcs7_get_content_data }, section "___ksymtab_gpl+pkcs7_get_content_data", align 4
@pkcs7_note_OID._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PKCS7: Unknown OID: [%lu] %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkcs7_note_OID\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"crypto/asymmetric_keys/pkcs7_parser.c\00", [58 x i8] zeroinitializer }, align 32
@pkcs7_note_OID._entry_ptr = internal global ptr @pkcs7_note_OID._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md4\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_digest_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported digest algo: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pkcs7_sig_note_digest_algo\00", [37 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_digest_algo._entry_ptr = internal global ptr @pkcs7_sig_note_digest_algo._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsa\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkcs1\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ecdsa\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x962\00", [27 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_pkey_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported pkey algo: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pkcs7_sig_note_pkey_algo\00", [39 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_pkey_algo._entry_ptr = internal global ptr @pkcs7_sig_note_pkey_algo._entry, section ".printk_index", align 4
@pkcs7_check_content_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014PKCS7: Only support pkcs7_signedData type\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pkcs7_check_content_type\00", [39 x i8] zeroinitializer }, align 32
@pkcs7_check_content_type._entry_ptr = internal global ptr @pkcs7_check_content_type._entry, section ".printk_index", align 4
@pkcs7_note_signeddata_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014PKCS7: Unsupported SignedData version\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pkcs7_note_signeddata_version\00", [34 x i8] zeroinitializer }, align 32
@pkcs7_note_signeddata_version._entry_ptr = internal global ptr @pkcs7_note_signeddata_version._entry, section ".printk_index", align 4
@pkcs7_note_signerinfo_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014PKCS7: Unsupported SignerInfo version\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pkcs7_note_signerinfo_version\00", [34 x i8] zeroinitializer }, align 32
@pkcs7_note_signerinfo_version._entry_ptr = internal global ptr @pkcs7_note_signerinfo_version._entry, section ".printk_index", align 4
@pkcs7_note_signerinfo_version._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014PKCS7: SignedData-SignerInfo version mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@pkcs7_note_signerinfo_version._entry_ptr.26 = internal global ptr @pkcs7_note_signerinfo_version._entry.24, section ".printk_index", align 4
@pkcs7_extract_cert.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pkcs7_message\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkcs7_extract_cert\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cert began with tag %02x at %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PKCS7: Cert began with tag %02x at %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@pkcs7_extract_cert.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Got cert %u for %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PKCS7: Got cert %u for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@pkcs7_extract_cert.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"- fingerprint %*phN\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PKCS7: - fingerprint %*phN\0A\00", [36 x i8] zeroinitializer }, align 32
@pkcs7_note_content._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014PKCS7: Unsupported data type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkcs7_note_content\00", [45 x i8] zeroinitializer }, align 32
@pkcs7_note_content._entry_ptr = internal global ptr @pkcs7_note_content._entry, section ".printk_index", align 4
@pkcs7_note_data.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pkcs7_note_data\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Got data\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PKCS7: Got data\0A\00", [47 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_authenticated_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014PKCS7: Mismatch between global data type (%d) and sinfo %u (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pkcs7_sig_note_authenticated_attr\00", [62 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_authenticated_attr._entry_ptr = internal global ptr @pkcs7_sig_note_authenticated_attr._entry, section ".printk_index", align 4
@pkcs7_sig_note_authenticated_attr._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014PKCS7: S/MIME Caps only allowed with Authenticode\0A\00", [43 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_authenticated_attr._entry_ptr.44 = internal global ptr @pkcs7_sig_note_authenticated_attr._entry.42, section ".printk_index", align 4
@pkcs7_sig_note_authenticated_attr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014PKCS7: Authenticode AuthAttrs only allowed with Authenticode\0A\00", [32 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_authenticated_attr._entry_ptr.47 = internal global ptr @pkcs7_sig_note_authenticated_attr._entry.45, section ".printk_index", align 4
@pkcs7_sig_note_authenticated_attr._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014PKCS7: Repeated/multivalue AuthAttrs not permitted\0A\00", [42 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_authenticated_attr._entry_ptr.50 = internal global ptr @pkcs7_sig_note_authenticated_attr._entry.48, section ".printk_index", align 4
@pkcs7_sig_note_set_of_authattrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014PKCS7: Missing required AuthAttr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pkcs7_sig_note_set_of_authattrs\00", [32 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_set_of_authattrs._entry_ptr = internal global ptr @pkcs7_sig_note_set_of_authattrs._entry, section ".printk_index", align 4
@pkcs7_sig_note_set_of_authattrs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014PKCS7: Unexpected Authenticode AuthAttr\0A\00", [53 x i8] zeroinitializer }, align 32
@pkcs7_sig_note_set_of_authattrs._entry_ptr.55 = internal global ptr @pkcs7_sig_note_set_of_authattrs._entry.53, section ".printk_index", align 4
@pkcs7_note_signed_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014PKCS7: Authenticode requires AuthAttrs\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pkcs7_note_signed_info\00", [41 x i8] zeroinitializer }, align 32
@pkcs7_note_signed_info._entry_ptr = internal global ptr @pkcs7_note_signed_info._entry, section ".printk_index", align 4
@.str.58 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pkcs7_check_authattrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014PKCS7: Inconsistently supplied authAttrs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pkcs7_check_authattrs\00", [42 x i8] zeroinitializer }, align 32
@pkcs7_check_authattrs._entry_ptr = internal global ptr @pkcs7_check_authattrs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 28, i64 29, i64 45, i64 47, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 33]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 32, i64 22, i64 23, i64 24, i64 25, i64 34, i64 35]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 214, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 231, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 234, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 237, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 240, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 243, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 246, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 249, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 252, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 269, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 270, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 277, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 278, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 281, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 297, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 334, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 374, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 377, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 392, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 413, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 414, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 450, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 468, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 495, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 524, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 544, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 555, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 571, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 577, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 658, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 671, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [41 x i8] c"../crypto/asymmetric_keys/pkcs7_parser.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 106, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__ksymtab_pkcs7_free_message, ptr @__ksymtab_pkcs7_get_content_data, ptr @__ksymtab_pkcs7_parse_message, ptr @pkcs7_check_authattrs._entry, ptr @pkcs7_check_authattrs._entry_ptr, ptr @pkcs7_check_content_type._entry, ptr @pkcs7_check_content_type._entry_ptr, ptr @pkcs7_note_OID._entry, ptr @pkcs7_note_OID._entry_ptr, ptr @pkcs7_note_content._entry, ptr @pkcs7_note_content._entry_ptr, ptr @pkcs7_note_signed_info._entry, ptr @pkcs7_note_signed_info._entry_ptr, ptr @pkcs7_note_signeddata_version._entry, ptr @pkcs7_note_signeddata_version._entry_ptr, ptr @pkcs7_note_signerinfo_version._entry, ptr @pkcs7_note_signerinfo_version._entry.24, ptr @pkcs7_note_signerinfo_version._entry_ptr, ptr @pkcs7_note_signerinfo_version._entry_ptr.26, ptr @pkcs7_sig_note_authenticated_attr._entry, ptr @pkcs7_sig_note_authenticated_attr._entry.42, ptr @pkcs7_sig_note_authenticated_attr._entry.45, ptr @pkcs7_sig_note_authenticated_attr._entry.48, ptr @pkcs7_sig_note_authenticated_attr._entry_ptr, ptr @pkcs7_sig_note_authenticated_attr._entry_ptr.44, ptr @pkcs7_sig_note_authenticated_attr._entry_ptr.47, ptr @pkcs7_sig_note_authenticated_attr._entry_ptr.50, ptr @pkcs7_sig_note_digest_algo._entry, ptr @pkcs7_sig_note_digest_algo._entry_ptr, ptr @pkcs7_sig_note_pkey_algo._entry, ptr @pkcs7_sig_note_pkey_algo._entry_ptr, ptr @pkcs7_sig_note_set_of_authattrs._entry, ptr @pkcs7_sig_note_set_of_authattrs._entry.53, ptr @pkcs7_sig_note_set_of_authattrs._entry_ptr, ptr @pkcs7_sig_note_set_of_authattrs._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_note_OID._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_digest_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_pkey_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_check_content_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_note_signeddata_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_note_signerinfo_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_note_signerinfo_version._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_note_content._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_authenticated_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_authenticated_attr._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_authenticated_attr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_authenticated_attr._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_set_of_authattrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_sig_note_set_of_authattrs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_note_signed_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkcs7_check_authattrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pkcs7_free_message(ptr noundef %pkcs7) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pkcs7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkcs7, align 4
  %tobool1.not34 = icmp eq ptr %1, null
  br i1 %tobool1.not34, label %while.cond.preheader.while.cond4.preheader_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.cond4.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.body.while.cond4.preheader_crit_edge, %while.cond.preheader.while.cond4.preheader_crit_edge
  %crl = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 1
  %2 = ptrtoint ptr %crl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crl, align 4
  %tobool5.not35 = icmp eq ptr %3, null
  br i1 %tobool5.not35, label %while.cond4.preheader.while.cond11.preheader_crit_edge, label %while.cond4.preheader.while.body6_crit_edge

while.cond4.preheader.while.body6_crit_edge:      ; preds = %while.cond4.preheader
  br label %while.body6

while.cond4.preheader.while.cond11.preheader_crit_edge: ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond11.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %4 = phi ptr [ %9, %while.body.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %pkcs7, align 4
  tail call void @x509_free_certificate(ptr noundef nonnull %4) #8
  %8 = ptrtoint ptr %pkcs7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pkcs7, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %while.body.while.cond4.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.cond4.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond4.preheader

while.cond11.preheader:                           ; preds = %while.body6.while.cond11.preheader_crit_edge, %while.cond4.preheader.while.cond11.preheader_crit_edge
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 2
  %10 = ptrtoint ptr %signed_infos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signed_infos, align 4
  %tobool12.not36 = icmp eq ptr %11, null
  br i1 %tobool12.not36, label %while.cond11.preheader.while.end17_crit_edge, label %while.cond11.preheader.pkcs7_free_signed_info.exit_crit_edge

while.cond11.preheader.pkcs7_free_signed_info.exit_crit_edge: ; preds = %while.cond11.preheader
  br label %pkcs7_free_signed_info.exit

while.cond11.preheader.while.end17_crit_edge:     ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end17

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.cond4.preheader.while.body6_crit_edge
  %12 = phi ptr [ %17, %while.body6.while.body6_crit_edge ], [ %3, %while.cond4.preheader.while.body6_crit_edge ]
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = ptrtoint ptr %crl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %crl, align 4
  tail call void @x509_free_certificate(ptr noundef nonnull %12) #8
  %16 = ptrtoint ptr %crl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crl, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %while.body6.while.cond11.preheader_crit_edge, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body6

while.body6.while.cond11.preheader_crit_edge:     ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond11.preheader

pkcs7_free_signed_info.exit:                      ; preds = %pkcs7_free_signed_info.exit.pkcs7_free_signed_info.exit_crit_edge, %while.cond11.preheader.pkcs7_free_signed_info.exit_crit_edge
  %18 = phi ptr [ %25, %pkcs7_free_signed_info.exit.pkcs7_free_signed_info.exit_crit_edge ], [ %11, %while.cond11.preheader.pkcs7_free_signed_info.exit_crit_edge ]
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = ptrtoint ptr %signed_infos to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %signed_infos, align 4
  %sig.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %18, i32 0, i32 11
  %22 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sig.i, align 8
  tail call void @public_key_signature_free(ptr noundef %23) #8
  tail call void @kfree(ptr noundef nonnull %18) #8
  %24 = ptrtoint ptr %signed_infos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signed_infos, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %pkcs7_free_signed_info.exit.while.end17_crit_edge, label %pkcs7_free_signed_info.exit.pkcs7_free_signed_info.exit_crit_edge

pkcs7_free_signed_info.exit.pkcs7_free_signed_info.exit_crit_edge: ; preds = %pkcs7_free_signed_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pkcs7_free_signed_info.exit

pkcs7_free_signed_info.exit.while.end17_crit_edge: ; preds = %pkcs7_free_signed_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end17

while.end17:                                      ; preds = %pkcs7_free_signed_info.exit.while.end17_crit_edge, %while.cond11.preheader.while.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %pkcs7) #8
  br label %if.end

if.end:                                           ; preds = %while.end17, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @x509_free_certificate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pkcs7_parse_message(ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_no_ctx_crit_edge, label %if.end

entry.out_no_ctx_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_ctx

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i66, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call7.i.i66, null
  br i1 %tobool5.not, label %if.end.out_no_msg_crit_edge, label %if.end7

if.end.out_no_msg_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_msg

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 56) #11
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %sinfo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i67, ptr %sinfo, align 4
  %tobool10.not = icmp eq ptr %call7.i.i67, null
  br i1 %tobool10.not, label %if.end7.out_no_sinfo_crit_edge, label %if.end12

if.end7.out_no_sinfo_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_sinfo

if.end12:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 48) #11
  %6 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sinfo, align 4
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i68, ptr %sig, align 8
  %9 = load ptr, ptr %sinfo, align 4
  %sig16 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %sig16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sig16, align 8
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.end12.out_no_sig_crit_edge, label %if.end19

if.end12.out_no_sig_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_sig

if.end19:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %data to i32
  %data20 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data20, align 4
  %certs = getelementptr inbounds %struct.pkcs7_parse_context, ptr %call7.i.i, i32 0, i32 3
  %ppcerts = getelementptr inbounds %struct.pkcs7_parse_context, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %ppcerts to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %certs, ptr %ppcerts, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %signed_infos = getelementptr inbounds %struct.pkcs7_message, ptr %16, i32 0, i32 2
  %ppsinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ppsinfo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %signed_infos, ptr %ppsinfo, align 8
  %call22 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @pkcs7_decoder, ptr noundef nonnull %call7.i.i, ptr noundef %data, i32 noundef %datalen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = inttoptr i32 %call22 to ptr
  br label %out

if.end25:                                         ; preds = %if.end19
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %signed_infos.i = getelementptr inbounds %struct.pkcs7_message, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %signed_infos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signed_infos.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end25.if.then29_crit_edge, label %if.end.i

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end.i:                                         ; preds = %if.end25
  %authattrs.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %authattrs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %authattrs.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %have_authattrs.i = getelementptr inbounds %struct.pkcs7_message, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %have_authattrs.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %have_authattrs.i, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %want.0.off0.i = phi i32 [ 1, %if.then2.i ], [ 0, %if.end.i.if.end3.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3.i
  %sinfo.0.in.i = phi ptr [ %22, %if.end3.i ], [ %sinfo.0.i, %for.body.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %sinfo.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %sinfo.0.i = load ptr, ptr %sinfo.0.in.i, align 8
  %tobool4.not.i = icmp eq ptr %sinfo.0.i, null
  br i1 %tobool4.not.i, label %if.end31, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %authattrs5.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %sinfo.0.i, i32 0, i32 8
  %27 = ptrtoint ptr %authattrs5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %authattrs5.i, align 4
  %tobool6.i = icmp ne ptr %28, null
  %lnot.ext.i = zext i1 %tobool6.i to i32
  %cmp.not.i = icmp eq i32 %want.0.off0.i, %lnot.ext.i
  br i1 %cmp.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.if.then29_crit_edge

for.body.i.if.then29_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then29:                                        ; preds = %for.body.i.if.then29_crit_edge, %if.end25.if.then29_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %out

if.end31:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  store ptr null, ptr %call7.i.i, align 8
  br label %out

out:                                              ; preds = %if.end31, %if.then29, %if.then23
  %msg.0 = phi ptr [ %18, %if.then23 ], [ inttoptr (i32 -22 to ptr), %if.then29 ], [ %30, %if.end31 ]
  %31 = ptrtoint ptr %certs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %certs, align 4
  %tobool35.not74 = icmp eq ptr %32, null
  br i1 %tobool35.not74, label %out.out_no_sigthread-pre-split_crit_edge, label %out.while.body_crit_edge

out.while.body_crit_edge:                         ; preds = %out
  br label %while.body

out.out_no_sigthread-pre-split_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_sigthread-pre-split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out.while.body_crit_edge
  %33 = phi ptr [ %38, %while.body.while.body_crit_edge ], [ %32, %out.while.body_crit_edge ]
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %certs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %certs, align 4
  tail call void @x509_free_certificate(ptr noundef nonnull %33) #8
  %37 = ptrtoint ptr %certs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %certs, align 4
  %tobool35.not = icmp eq ptr %38, null
  br i1 %tobool35.not, label %while.body.out_no_sigthread-pre-split_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.out_no_sigthread-pre-split_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_sigthread-pre-split

out_no_sigthread-pre-split:                       ; preds = %while.body.out_no_sigthread-pre-split_crit_edge, %out.out_no_sigthread-pre-split_crit_edge
  %39 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load ptr, ptr %sinfo, align 4
  br label %out_no_sig

out_no_sig:                                       ; preds = %out_no_sigthread-pre-split, %if.end12.out_no_sig_crit_edge
  %40 = phi ptr [ %.pr, %out_no_sigthread-pre-split ], [ %9, %if.end12.out_no_sig_crit_edge ]
  %msg.1 = phi ptr [ %msg.0, %out_no_sigthread-pre-split ], [ inttoptr (i32 -12 to ptr), %if.end12.out_no_sig_crit_edge ]
  %tobool.not.i69 = icmp eq ptr %40, null
  br i1 %tobool.not.i69, label %out_no_sig.out_no_sinfo_crit_edge, label %if.then.i

out_no_sig.out_no_sinfo_crit_edge:                ; preds = %out_no_sig
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_sinfo

if.then.i:                                        ; preds = %out_no_sig
  call void @__sanitizer_cov_trace_pc() #10
  %sig.i = getelementptr inbounds %struct.pkcs7_signed_info, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sig.i, align 8
  tail call void @public_key_signature_free(ptr noundef %42) #8
  tail call void @kfree(ptr noundef nonnull %40) #8
  br label %out_no_sinfo

out_no_sinfo:                                     ; preds = %if.then.i, %out_no_sig.out_no_sinfo_crit_edge, %if.end7.out_no_sinfo_crit_edge
  %msg.2 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end7.out_no_sinfo_crit_edge ], [ %msg.1, %out_no_sig.out_no_sinfo_crit_edge ], [ %msg.1, %if.then.i ]
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  tail call void @pkcs7_free_message(ptr noundef %44)
  br label %out_no_msg

out_no_msg:                                       ; preds = %out_no_sinfo, %if.end.out_no_msg_crit_edge
  %msg.3 = phi ptr [ %msg.2, %out_no_sinfo ], [ inttoptr (i32 -12 to ptr), %if.end.out_no_msg_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out_no_ctx

out_no_ctx:                                       ; preds = %out_no_msg, %entry.out_no_ctx_crit_edge
  %msg.4 = phi ptr [ %msg.3, %out_no_msg ], [ inttoptr (i32 -12 to ptr), %entry.out_no_ctx_crit_edge ]
  ret ptr %msg.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs7_get_content_data(ptr nocapture noundef readonly %pkcs7, ptr nocapture noundef writeonly %_data, ptr nocapture noundef writeonly %_data_len, ptr noundef writeonly %_headerlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %_data, align 4
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 6
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len, align 4
  %5 = ptrtoint ptr %_data_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %_data_len, align 4
  %tobool2.not = icmp eq ptr %_headerlen, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.then3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data_hdrlen = getelementptr inbounds %struct.pkcs7_message, ptr %pkcs7, i32 0, i32 7
  %6 = ptrtoint ptr %data_hdrlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_hdrlen, align 4
  %8 = ptrtoint ptr %_headerlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %_headerlen, align 4
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -61, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_OID(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #8
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %last_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %call)
  %cmp = icmp eq i32 %call, 98
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buffer) #8
  %1 = call ptr @memset(ptr %buffer, i32 255, i32 50)
  %call2 = call i32 @sprint_oid(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %buffer, i32 noundef 50) #8
  %2 = ptrtoint ptr %value to i32
  %data = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %sub = sub i32 %2, %4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub, ptr noundef nonnull %buffer) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buffer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_digest_algo(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 28, label %sw.bb
    i32 29, label %sw.bb1
    i32 45, label %sw.bb5
    i32 47, label %sw.bb9
    i32 48, label %sw.bb13
    i32 49, label %sw.bb17
    i32 50, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sinfo, align 4
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sig, align 8
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.3, ptr %hash_algo, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo2 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %8 = ptrtoint ptr %sinfo2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sinfo2, align 4
  %sig3 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %sig3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sig3, align 8
  %hash_algo4 = getelementptr inbounds %struct.public_key_signature, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %hash_algo4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %hash_algo4, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %13 = ptrtoint ptr %sinfo6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sinfo6, align 4
  %sig7 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %sig7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sig7, align 8
  %hash_algo8 = getelementptr inbounds %struct.public_key_signature, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %hash_algo8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.5, ptr %hash_algo8, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo10 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %18 = ptrtoint ptr %sinfo10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sinfo10, align 4
  %sig11 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %sig11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sig11, align 8
  %hash_algo12 = getelementptr inbounds %struct.public_key_signature, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %hash_algo12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.6, ptr %hash_algo12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo14 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %23 = ptrtoint ptr %sinfo14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sinfo14, align 4
  %sig15 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %sig15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sig15, align 8
  %hash_algo16 = getelementptr inbounds %struct.public_key_signature, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %hash_algo16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.7, ptr %hash_algo16, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo18 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %28 = ptrtoint ptr %sinfo18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sinfo18, align 4
  %sig19 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %sig19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sig19, align 8
  %hash_algo20 = getelementptr inbounds %struct.public_key_signature, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %hash_algo20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.8, ptr %hash_algo20, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo22 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %33 = ptrtoint ptr %sinfo22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sinfo22, align 4
  %sig23 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %sig23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sig23, align 8
  %hash_algo24 = getelementptr inbounds %struct.public_key_signature, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %hash_algo24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.9, ptr %hash_algo24, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -65, %do.end ], [ 0, %sw.bb21 ], [ 0, %sw.bb17 ], [ 0, %sw.bb13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb5 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_pkey_algo(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %do.end [
    i32 10, label %sw.bb
    i32 5, label %entry.sw.bb3_crit_edge
    i32 6, label %entry.sw.bb3_crit_edge16
    i32 7, label %entry.sw.bb3_crit_edge17
    i32 8, label %entry.sw.bb3_crit_edge18
    i32 9, label %entry.sw.bb3_crit_edge19
  ]

entry.sw.bb3_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sinfo, align 4
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sig, align 8
  %pkey_algo = getelementptr inbounds %struct.public_key_signature, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.12, ptr %pkey_algo, align 4
  %8 = load ptr, ptr %sinfo, align 4
  %sig2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %sig2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sig2, align 8
  %encoding = getelementptr inbounds %struct.public_key_signature, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %encoding to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.13, ptr %encoding, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge16, %entry.sw.bb3_crit_edge17, %entry.sw.bb3_crit_edge18, %entry.sw.bb3_crit_edge19
  %sinfo4 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %12 = ptrtoint ptr %sinfo4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sinfo4, align 4
  %sig5 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %sig5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sig5, align 8
  %pkey_algo6 = getelementptr inbounds %struct.public_key_signature, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %pkey_algo6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.14, ptr %pkey_algo6, align 4
  %17 = load ptr, ptr %sinfo4, align 4
  %sig8 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %sig8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sig8, align 8
  %encoding9 = getelementptr inbounds %struct.public_key_signature, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %encoding9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.15, ptr %encoding9, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -65, %do.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_check_content_type(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp.not = icmp eq i32 %1, 20
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_signeddata_version(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vlen)
  %cmp.not = icmp eq i32 %vlen, 1
  br i1 %cmp.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %value, align 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %version2 = getelementptr inbounds %struct.pkcs7_message, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %version2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %version2, align 4
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %1, label %if.end.do.end_crit_edge [
    i8 1, label %if.end.cleanup_crit_edge
    i8 3, label %if.end.cleanup_crit_edge4
  ]

if.end.cleanup_crit_edge4:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge4
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_signerinfo_version(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vlen)
  %cmp.not = icmp eq i32 %vlen, 1
  br i1 %cmp.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %value, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %1, label %if.end.do.end_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb7
  ]

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb:                                            ; preds = %if.end
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %version1 = getelementptr inbounds %struct.pkcs7_message, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %version1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %version1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp3.not = icmp eq i8 %6, 1
  br i1 %cmp3.not, label %if.end6, label %sw.bb.do.end18_crit_edge

sw.bb.do.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %expect_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 15
  %7 = ptrtoint ptr %expect_skid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %expect_skid, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %version9 = getelementptr inbounds %struct.pkcs7_message, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %version9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %version9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp11 = icmp eq i8 %11, 1
  br i1 %cmp11, label %sw.bb7.do.end18_crit_edge, label %if.end14

sw.bb7.do.end18_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end14:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %expect_skid15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 15
  %12 = ptrtoint ptr %expect_skid15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %expect_skid15, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %cleanup

do.end18:                                         ; preds = %sw.bb7.do.end18_crit_edge, %sw.bb.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end, %if.end14, %if.end6
  %retval.0 = phi i32 [ -22, %do.end ], [ -74, %do.end18 ], [ 0, %if.end14 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_extract_cert(ptr noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %tag to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %tag)
  %cmp.not = icmp eq i8 %tag, 48
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_extract_cert.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_extract_cert, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !141

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %context to i32
  %data = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %sub = sub i32 %0, %2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_extract_cert.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %sub) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %idx.neg = sub i32 0, %hdrlen
  %add.ptr = getelementptr i8, ptr %value, i32 %idx.neg
  %add = add i32 %vlen, %hdrlen
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %4)
  %cmp8 = icmp eq i8 %4, -128
  %add11 = add i32 %add, 2
  %spec.select = select i1 %cmp8, i32 %add11, i32 %add
  %call13 = tail call ptr @x509_cert_parse(ptr noundef %add.ptr, i32 noundef %spec.select) #8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %x509_index = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 7
  %6 = ptrtoint ptr %x509_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x509_index, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %x509_index, align 4
  %index = getelementptr inbounds %struct.x509_certificate, ptr %call13, i32 0, i32 22
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %index, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_extract_cert.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_extract_cert, %if.then30)) #8
          to label %do.body35 [label %if.then30], !srcloc !141

if.then30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 8
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %call13, i32 0, i32 5
  %11 = ptrtoint ptr %subject to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subject, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_extract_cert.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.32, i32 noundef %10, ptr noundef %12) #8
  br label %do.body35

do.body35:                                        ; preds = %if.then30, %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_extract_cert.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_extract_cert, %if.then47)) #8
          to label %do.end53 [label %if.then47], !srcloc !141

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.x509_certificate, ptr %call13, i32 0, i32 6
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %id, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  %conv48 = zext i16 %16 to i32
  %data50 = getelementptr inbounds %struct.asymmetric_key_id, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_extract_cert.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.34, i32 noundef %conv48, ptr noundef %data50) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body35
  %ppcerts = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 4
  %17 = ptrtoint ptr %ppcerts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ppcerts, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %18, align 4
  store ptr %call13, ptr %ppcerts, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then15, %if.then4, %do.body
  %retval.0 = phi i32 [ %5, %if.then15 ], [ 0, %do.end53 ], [ -74, %if.then4 ], [ -74, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x509_cert_parse(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs7_note_certificate_list(ptr noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ppcerts = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 4
  %4 = ptrtoint ptr %ppcerts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppcerts, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %5, align 4
  %certs1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 3
  %7 = ptrtoint ptr %certs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %certs1, align 4
  %9 = load ptr, ptr %context, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 4
  store ptr null, ptr %certs1, align 4
  store ptr %certs1, ptr %ppcerts, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_content(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %do.end [
    i32 19, label %entry.if.end_crit_edge
    i32 33, label %entry.if.end_crit_edge9
  ]

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge9
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %data_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %data_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_data(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkcs7_note_data.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkcs7_note_data, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkcs7_note_data.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.39) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %data = getelementptr inbounds %struct.pkcs7_message, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %data, align 4
  %3 = load ptr, ptr %context, align 4
  %data_len = getelementptr inbounds %struct.pkcs7_message, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vlen, ptr %data_len, align 4
  %5 = load ptr, ptr %context, align 4
  %data_hdrlen = getelementptr inbounds %struct.pkcs7_message, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %data_hdrlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %hdrlen, ptr %data_hdrlen, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_authenticated_attr(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %sinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sinfo1, align 4
  %last_oid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 6
  %2 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_oid, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 22, label %sw.bb
    i32 24, label %sw.bb9
    i32 23, label %sw.bb16
    i32 25, label %sw.bb26
    i32 35, label %sw.bb43
    i32 34, label %sw.bb49
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %aa_set = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %aa_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aa_set, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %aa_set, align 4
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.do.end68_crit_edge

sw.bb.do.end68_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.end:                                           ; preds = %sw.bb
  %call2 = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #8
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %11)
  %cmp.not = icmp eq i32 %call2, %11
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %11, i32 noundef %13, i32 noundef %call2) #12
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %aa_set10 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %aa_set10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aa_set10, align 4
  %or.i93 = or i32 %15, 2
  store i32 %or.i93, ptr %aa_set10, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb9.do.end68_crit_edge

sw.bb9.do.end68_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.end14:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %signing_time = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 10
  %call15 = tail call i32 @x509_decode_time(ptr noundef %signing_time, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) #8
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %aa_set17 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %aa_set17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aa_set17, align 4
  %or.i94 = or i32 %18, 4
  store i32 %or.i94, ptr %aa_set17, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb16.do.end68_crit_edge

sw.bb16.do.end68_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.end21:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %tag)
  %cmp22.not = icmp eq i8 %tag, 4
  br i1 %cmp22.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %msgdigest = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %msgdigest to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %value, ptr %msgdigest, align 8
  %msgdigest_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %msgdigest_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %vlen, ptr %msgdigest_len, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %aa_set27 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %aa_set27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aa_set27, align 4
  %or.i95 = or i32 %23, 8
  store i32 %or.i95, ptr %aa_set27, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %if.end31, label %sw.bb26.do.end68_crit_edge

sw.bb26.do.end68_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.end31:                                         ; preds = %sw.bb26
  %25 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %context, align 4
  %data_type33 = getelementptr inbounds %struct.pkcs7_message, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %data_type33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_type33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %28)
  %cmp34.not = icmp eq i32 %28, 33
  br i1 %cmp34.not, label %if.end31.cleanup_crit_edge, label %do.end39

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %aa_set44 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %aa_set44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aa_set44, align 4
  %or.i96 = or i32 %30, 16
  store i32 %or.i96, ptr %aa_set44, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %sw.bb43.authenticode_check_crit_edge, label %sw.bb43.do.end68_crit_edge

sw.bb43.do.end68_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

sw.bb43.authenticode_check_crit_edge:             ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %authenticode_check

sw.bb49:                                          ; preds = %entry
  %aa_set50 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %aa_set50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aa_set50, align 4
  %or.i97 = or i32 %33, 32
  store i32 %or.i97, ptr %aa_set50, align 4
  %34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool52.not = icmp eq i32 %34, 0
  br i1 %tobool52.not, label %sw.bb49.authenticode_check_crit_edge, label %sw.bb49.do.end68_crit_edge

sw.bb49.do.end68_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

sw.bb49.authenticode_check_crit_edge:             ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %authenticode_check

authenticode_check:                               ; preds = %sw.bb49.authenticode_check_crit_edge, %sw.bb43.authenticode_check_crit_edge
  %35 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context, align 4
  %data_type56 = getelementptr inbounds %struct.pkcs7_message, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %data_type56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_type56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %38)
  %cmp57.not = icmp eq i32 %38, 33
  br i1 %cmp57.not, label %authenticode_check.cleanup_crit_edge, label %do.end62

authenticode_check.cleanup_crit_edge:             ; preds = %authenticode_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %authenticode_check
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %cleanup

do.end68:                                         ; preds = %sw.bb49.do.end68_crit_edge, %sw.bb43.do.end68_crit_edge, %sw.bb26.do.end68_crit_edge, %sw.bb16.do.end68_crit_edge, %sw.bb9.do.end68_crit_edge, %sw.bb.do.end68_crit_edge
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end62, %authenticode_check.cleanup_crit_edge, %do.end39, %if.end31.cleanup_crit_edge, %if.end25, %if.end21.cleanup_crit_edge, %if.end14, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -129, %do.end68 ], [ -129, %do.end62 ], [ -129, %do.end39 ], [ 0, %if.end25 ], [ %call15, %if.end14 ], [ -74, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -74, %if.end21.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %authenticode_check.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_decode_time(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_set_of_authattrs(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %sinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sinfo1, align 4
  %aa_set = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %aa_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %aa_set, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %aa_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %aa_set, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %cmp.not = icmp eq i32 %10, 33
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %aa_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %aa_set, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end15_crit_edge, label %do.end12

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %sub = add i32 %hdrlen, -1
  %idx.neg = sub i32 1, %hdrlen
  %add.ptr = getelementptr i8, ptr %value, i32 %idx.neg
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %authattrs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %authattrs, align 4
  %add = add i32 %sub, %vlen
  %authattrs_len = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %authattrs_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %authattrs_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end12, %do.end
  %retval.0 = phi i32 [ -74, %do.end12 ], [ 0, %if.end15 ], [ -74, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs7_sig_note_serial(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_serial = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 9
  %0 = ptrtoint ptr %raw_serial to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %raw_serial, align 4
  %raw_serial_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 10
  %1 = ptrtoint ptr %raw_serial_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %raw_serial_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs7_sig_note_issuer(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_issuer = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %raw_issuer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %raw_issuer, align 4
  %raw_issuer_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 11
  %1 = ptrtoint ptr %raw_issuer_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %raw_issuer_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs7_sig_note_skid(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 13
  %0 = ptrtoint ptr %raw_skid to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %raw_skid, align 4
  %raw_skid_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 14
  %1 = ptrtoint ptr %raw_skid_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %raw_skid_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_signature(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %value, i32 noundef %vlen, i32 noundef 3264) #8
  %sinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sinfo, align 4
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sig, align 8
  %s = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %s, align 4
  %5 = load ptr, ptr %sinfo, align 4
  %sig2 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %sig2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sig2, align 8
  %s3 = getelementptr inbounds %struct.public_key_signature, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_size = getelementptr inbounds %struct.public_key_signature, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %s_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vlen, ptr %s_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_signed_info(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sinfo1 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %sinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sinfo1, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %data_type = getelementptr inbounds %struct.pkcs7_message, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %5)
  %cmp = icmp eq i32 %5, 33
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %authattrs = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %authattrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %authattrs, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %expect_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 15
  %8 = ptrtoint ptr %expect_skid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %expect_skid, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %raw_serial = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 9
  %10 = ptrtoint ptr %raw_serial to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %raw_serial, align 4
  %raw_serial_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 10
  %12 = ptrtoint ptr %raw_serial_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raw_serial_size, align 4
  %raw_issuer = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 12
  %14 = ptrtoint ptr %raw_issuer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %raw_issuer, align 4
  %raw_issuer_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 11
  %16 = ptrtoint ptr %raw_issuer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raw_issuer_size, align 4
  %call4 = tail call ptr @asymmetric_key_generate_id(ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17) #8
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %raw_skid = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 13
  %18 = ptrtoint ptr %raw_skid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %raw_skid, align 4
  %raw_skid_size = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 14
  %20 = ptrtoint ptr %raw_skid_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raw_skid_size, align 4
  %call5 = tail call ptr @asymmetric_key_generate_id(ptr noundef %19, i32 noundef %21, ptr noundef nonnull @.str.58, i32 noundef 0) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %kid.0 = phi ptr [ %call5, %if.else ], [ %call4, %if.then3 ]
  %cmp.i = icmp ugt ptr %kid.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %kid.0 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %sig = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sig, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %kid.0, ptr %24, align 4
  %sinfo_index = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 8
  %26 = ptrtoint ptr %sinfo_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sinfo_index, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %sinfo_index, align 4
  %index = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc, ptr %index, align 8
  %ppsinfo = getelementptr inbounds %struct.pkcs7_parse_context, ptr %context, i32 0, i32 2
  %29 = ptrtoint ptr %ppsinfo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ppsinfo, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %30, align 4
  store ptr %1, ptr %ppsinfo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 56) #11
  %33 = ptrtoint ptr %sinfo1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %sinfo1, align 4
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 48) #11
  %35 = ptrtoint ptr %sinfo1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sinfo1, align 4
  %sig21 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %sig21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i50, ptr %sig21, align 8
  %38 = load ptr, ptr %sinfo1, align 4
  %sig23 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %sig23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sig23, align 8
  %tobool24.not = icmp eq ptr %40, null
  %. = select i1 %tobool24.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end10.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi i32 [ %22, %if.then8 ], [ -74, %do.end ], [ -12, %if.end10.cleanup_crit_edge ], [ %., %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asymmetric_key_generate_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !129, !130, !131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__UNIQUE_ID_description175, !1, !"__UNIQUE_ID_description175", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author176, !3, !"__UNIQUE_ID_author176", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file177, !5, !"__UNIQUE_ID_file177", i1 false, i1 false}
!5 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license178, !5, !"__UNIQUE_ID_license178", i1 false, i1 false}
!7 = !{ptr @__ksymtab_pkcs7_free_message, !8, !"__ksymtab_pkcs7_free_message", i1 false, i1 false}
!8 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 81, i32 1}
!9 = !{ptr @__ksymtab_pkcs7_parse_message, !10, !"__ksymtab_pkcs7_parse_message", i1 false, i1 false}
!10 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 170, i32 1}
!11 = !{ptr @__ksymtab_pkcs7_get_content_data, !12, !"__ksymtab_pkcs7_get_content_data", i1 false, i1 false}
!12 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 198, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 214, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pkcs7_note_OID._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @pkcs7_note_OID._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 231, i32 32}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 234, i32 32}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 237, i32 32}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 240, i32 32}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 243, i32 32}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 246, i32 32}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 249, i32 32}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 252, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pkcs7_sig_note_digest_algo._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pkcs7_sig_note_digest_algo._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 269, i32 32}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 270, i32 31}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 277, i32 32}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 278, i32 31}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 281, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pkcs7_sig_note_pkey_algo._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pkcs7_sig_note_pkey_algo._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 297, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pkcs7_check_content_type._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pkcs7_check_content_type._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 334, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pkcs7_note_signeddata_version._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pkcs7_note_signeddata_version._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 374, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pkcs7_note_signerinfo_version._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @pkcs7_note_signerinfo_version._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 377, i32 2}
!68 = !{ptr @pkcs7_note_signerinfo_version._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pkcs7_note_signerinfo_version._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 392, i32 3}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pkcs7_extract_cert.__UNIQUE_ID_ddebug179, !71, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!75 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 413, i32 2}
!78 = !{ptr @pkcs7_extract_cert.__UNIQUE_ID_ddebug180, !77, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!79 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 414, i32 2}
!82 = !{ptr @pkcs7_extract_cert.__UNIQUE_ID_ddebug181, !81, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!83 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 450, i32 3}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pkcs7_note_content._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @pkcs7_note_content._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 468, i32 2}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pkcs7_note_data.__UNIQUE_ID_ddebug182, !90, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!93 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 495, i32 4}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pkcs7_sig_note_authenticated_attr._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pkcs7_sig_note_authenticated_attr._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 524, i32 4}
!101 = !{ptr @pkcs7_sig_note_authenticated_attr._entry.42, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pkcs7_sig_note_authenticated_attr._entry_ptr.44, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 544, i32 4}
!105 = !{ptr @pkcs7_sig_note_authenticated_attr._entry.45, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @pkcs7_sig_note_authenticated_attr._entry_ptr.47, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 555, i32 2}
!109 = !{ptr @pkcs7_sig_note_authenticated_attr._entry.48, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @pkcs7_sig_note_authenticated_attr._entry_ptr.50, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 571, i32 3}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pkcs7_sig_note_set_of_authattrs._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pkcs7_sig_note_set_of_authattrs._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 577, i32 3}
!118 = !{ptr @pkcs7_sig_note_set_of_authattrs._entry.53, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @pkcs7_sig_note_set_of_authattrs._entry_ptr.55, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 658, i32 3}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pkcs7_note_signed_info._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @pkcs7_note_signed_info._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 671, i32 8}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../crypto/asymmetric_keys/pkcs7_parser.c", i32 106, i32 2}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @pkcs7_check_authattrs._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @pkcs7_check_authattrs._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i64 2148706508, i64 2148706513, i64 2148706526, i64 2148706570, i64 2148706604, i64 2148706625}
!142 = !{i8 0, i8 2}
