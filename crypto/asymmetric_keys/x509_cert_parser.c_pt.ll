; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/x509_cert_parser.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/x509_cert_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+x509_free_certificate\22, \22a\22\09"
module asm "\09.weak\09__crc_x509_free_certificate\09\09\09\09"
module asm "\09.long\09__crc_x509_free_certificate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_x509_free_certificate:\09\09\09\09\09"
module asm "\09.asciz \09\22x509_free_certificate\22\09\09\09\09\09"
module asm "__kstrtabns_x509_free_certificate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+x509_cert_parse\22, \22a\22\09"
module asm "\09.weak\09__crc_x509_cert_parse\09\09\09\09"
module asm "\09.long\09__crc_x509_cert_parse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_x509_cert_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22x509_cert_parse\22\09\09\09\09\09"
module asm "__kstrtabns_x509_cert_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+x509_decode_time\22, \22a\22\09"
module asm "\09.weak\09__crc_x509_decode_time\09\09\09\09"
module asm "\09.long\09__crc_x509_decode_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_x509_decode_time:\09\09\09\09\09"
module asm "\09.asciz \09\22x509_decode_time\22\09\09\09\09\09"
module asm "__kstrtabns_x509_decode_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asn1_decoder = type opaque
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.x509_parse_context = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.asymmetric_key_id = type { i16, [0 x i8] }

@__kstrtab_x509_free_certificate = external dso_local constant [0 x i8], align 1
@__kstrtabns_x509_free_certificate = external dso_local constant [0 x i8], align 1
@__ksymtab_x509_free_certificate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @x509_free_certificate to i32), ptr @__kstrtab_x509_free_certificate, ptr @__kstrtabns_x509_free_certificate }, section "___ksymtab_gpl+x509_free_certificate", align 4
@x509_decoder = external dso_local constant %struct.asn1_decoder, align 1
@x509_akid_decoder = external dso_local constant %struct.asn1_decoder, align 1
@x509_cert_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014X.509: Couldn't decode AuthKeyIdentifier\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"x509_cert_parse\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"crypto/asymmetric_keys/x509_cert_parser.c\00", [54 x i8] zeroinitializer }, align 32
@x509_cert_parse._entry_ptr = internal global ptr @x509_cert_parse._entry, section ".printk_index", align 4
@__kstrtab_x509_cert_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_x509_cert_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_x509_cert_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @x509_cert_parse to i32), ptr @__kstrtab_x509_cert_parse, ptr @__kstrtabns_x509_cert_parse }, section "___ksymtab_gpl+x509_cert_parse", align 4
@x509_note_OID.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"x509_key_parser\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"x509_note_OID\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown OID: [%lu] %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"X.509: Unknown OID: [%lu] %s\0A\00", [34 x i8] zeroinitializer }, align 32
@x509_note_tbs_certificate.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"x509_note_tbs_certificate\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"x509_note_tbs_certificate(,%zu,%02x,%ld,%zu)!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"X.509: x509_note_tbs_certificate(,%zu,%02x,%ld,%zu)!\0A\00", [42 x i8] zeroinitializer }, align 32
@x509_note_pkey_algo.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x509_note_pkey_algo\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PubKey Algo: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"X.509: PubKey Algo: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md4\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"streebog256\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"streebog512\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm3\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsa\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkcs1\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecrdsa\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm2\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ecdsa\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x962\00", [27 x i8] zeroinitializer }, align 32
@x509_note_signature.__UNIQUE_ID_ddebug161 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x509_note_signature\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Signature type: %u size %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"X.509: Signature type: %u size %zu\0A\00", [60 x i8] zeroinitializer }, align 32
@x509_note_signature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014X.509: Got cert with pkey (%u) and sig (%u) algorithm OIDs\0A\00", [34 x i8] zeroinitializer }, align 32
@x509_note_signature._entry_ptr = internal global ptr @x509_note_signature._entry, section ".printk_index", align 4
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecdsa-nist-p192\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecdsa-nist-p256\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecdsa-nist-p384\00", [16 x i8] zeroinitializer }, align 32
@x509_process_extension.__UNIQUE_ID_ddebug162 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"x509_process_extension\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Extension: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"X.509: Extension: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@x509_process_extension.__UNIQUE_ID_ddebug163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subjkeyid %*phN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"X.509: subjkeyid %*phN\0A\00", [40 x i8] zeroinitializer }, align 32
@x509_decode_time.month_lengths = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", [20 x i8] zeroinitializer }, align 32
@x509_decode_time.__UNIQUE_ID_ddebug164 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"x509_decode_time\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Got unsupported time [tag %02x]: '%*phN'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"X.509: Got unsupported time [tag %02x]: '%*phN'\0A\00", [47 x i8] zeroinitializer }, align 32
@x509_decode_time.__UNIQUE_ID_ddebug165 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Got invalid time [tag %02x]: '%*phN'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"X.509: Got invalid time [tag %02x]: '%*phN'\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_x509_decode_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_x509_decode_time = external dso_local constant [0 x i8], align 1
@__ksymtab_x509_decode_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @x509_decode_time to i32), ptr @__kstrtab_x509_decode_time, ptr @__kstrtabns_x509_decode_time }, section "___ksymtab_gpl+x509_decode_time", align 4
@x509_akid_note_kid.__UNIQUE_ID_ddebug166 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x509_akid_note_kid\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AKID: keyid: %*phN\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"X.509: AKID: keyid: %*phN\0A\00", [37 x i8] zeroinitializer }, align 32
@x509_akid_note_kid.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"authkeyid %*phN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"X.509: authkeyid %*phN\0A\00", [40 x i8] zeroinitializer }, align 32
@x509_akid_note_name.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x509_akid_note_name\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AKID: name: %*phN\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"X.509: AKID: name: %*phN\0A\00", [38 x i8] zeroinitializer }, align 32
@x509_akid_note_serial.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"x509_akid_note_serial\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AKID: serial: %*phN\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"X.509: AKID: serial: %*phN\0A\00", [36 x i8] zeroinitializer }, align 32
@x509_akid_note_serial.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.55, ptr @.str.2, ptr @.str.50, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 82, i64 83, i64 93]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 51, i64 56]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 10, i64 78, i64 79]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 46, i64 91]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 71]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 23, i64 24]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 99, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 165, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 181, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 198, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 207, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 211, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 215, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 219, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 223, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 227, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 251, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 255, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 259, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 264, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 265, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 269, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 270, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 274, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 279, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 280, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 294, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 297, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 450, i32 49 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 518, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 521, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 524, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 556, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 573, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"month_lengths\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 609, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 672, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 676, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 708, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 716, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 730, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [45 x i8] c"../crypto/asymmetric_keys/x509_cert_parser.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 747, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__ksymtab_x509_cert_parse, ptr @__ksymtab_x509_decode_time, ptr @__ksymtab_x509_free_certificate, ptr @x509_cert_parse._entry, ptr @x509_cert_parse._entry_ptr, ptr @x509_note_signature._entry, ptr @x509_note_signature._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @x509_decode_time.month_lengths, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x509_cert_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x509_note_signature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x509_decode_time.month_lengths to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x509_free_certificate(ptr noundef %cert) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cert, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 2
  %0 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pub, align 8
  tail call void @public_key_free(ptr noundef %1) #10
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 3
  %2 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sig, align 4
  tail call void @public_key_signature_free(ptr noundef %3) #10
  %issuer = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 4
  %4 = ptrtoint ptr %issuer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %issuer, align 8
  tail call void @kfree(ptr noundef %5) #10
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 5
  %6 = ptrtoint ptr %subject to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subject, align 4
  tail call void @kfree(ptr noundef %7) #10
  %id = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id, align 8
  tail call void @kfree(ptr noundef %9) #10
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %cert, i32 0, i32 7
  %10 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skid, align 4
  tail call void @kfree(ptr noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %cert) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @x509_cert_parse(ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.error_no_cert_crit_edge, label %if.end

entry.error_no_cert_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_no_cert

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #13
  %pub = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i112, ptr %pub, align 8
  %tobool3.not = icmp eq ptr %call7.i.i112, null
  br i1 %tobool3.not, label %if.end.x509_free_certificate.exit_crit_edge, label %if.end5

if.end.x509_free_certificate.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %x509_free_certificate.exit

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #13
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i113, ptr %sig, align 4
  %tobool8.not = icmp eq ptr %call7.i.i113, null
  br i1 %tobool8.not, label %if.end5.x509_free_certificate.exit_crit_edge, label %if.end10

if.end5.x509_free_certificate.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %x509_free_certificate.exit

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #13
  %tobool12.not = icmp eq ptr %call7.i.i114, null
  br i1 %tobool12.not, label %if.end10.x509_free_certificate.exit_crit_edge, label %if.end14

if.end10.x509_free_certificate.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %x509_free_certificate.exit

if.end14:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %call7.i.i114 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %call7.i.i114, align 8
  %7 = ptrtoint ptr %data to i32
  %data16 = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 1
  %8 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %data16, align 4
  %call17 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @x509_decoder, ptr noundef nonnull %call7.i.i114, ptr noundef %data, i32 noundef %datalen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end14.error_decode_crit_edge, label %if.end19

if.end14.error_decode_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_decode

if.end19:                                         ; preds = %if.end14
  %raw_akid = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 18
  %9 = ptrtoint ptr %raw_akid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %raw_akid, align 8
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %if.end19.if.end29_crit_edge, label %if.then21

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then21:                                        ; preds = %if.end19
  %raw_akid_size = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 17
  %11 = ptrtoint ptr %raw_akid_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raw_akid_size, align 4
  %call23 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @x509_akid_decoder, ptr noundef nonnull %call7.i.i114, ptr noundef nonnull %10, i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %error_decode

if.end29:                                         ; preds = %if.then21.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %key = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 3
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key, align 4
  %key_size = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 4
  %15 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key_size, align 8
  %call30 = tail call ptr @kmemdup(ptr noundef %14, i32 noundef %16, i32 noundef 3264) #10
  %17 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pub, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30, ptr %18, align 4
  %20 = load ptr, ptr %pub, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool35.not = icmp eq ptr %22, null
  br i1 %tobool35.not, label %if.end29.error_decode_crit_edge, label %if.end37

if.end29.error_decode_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_decode

if.end37:                                         ; preds = %if.end29
  %23 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_size, align 8
  %keylen = getelementptr inbounds %struct.public_key, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %keylen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %keylen, align 4
  %params = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 5
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %params, align 4
  %params_size = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 6
  %28 = ptrtoint ptr %params_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %params_size, align 8
  %call40 = tail call ptr @kmemdup(ptr noundef %27, i32 noundef %29, i32 noundef 3264) #10
  %30 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pub, align 8
  %params42 = getelementptr inbounds %struct.public_key, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %params42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call40, ptr %params42, align 4
  %33 = load ptr, ptr %pub, align 8
  %params44 = getelementptr inbounds %struct.public_key, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %params44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params44, align 4
  %tobool45.not = icmp eq ptr %35, null
  br i1 %tobool45.not, label %if.end37.error_decode_crit_edge, label %if.end47

if.end37.error_decode_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_decode

if.end47:                                         ; preds = %if.end37
  %36 = ptrtoint ptr %params_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %params_size, align 8
  %paramlen = getelementptr inbounds %struct.public_key, ptr %33, i32 0, i32 4
  %38 = ptrtoint ptr %paramlen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %paramlen, align 4
  %key_algo = getelementptr inbounds %struct.x509_parse_context, ptr %call7.i.i114, i32 0, i32 7
  %39 = ptrtoint ptr %key_algo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key_algo, align 4
  %41 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pub, align 8
  %algo = getelementptr inbounds %struct.public_key, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %algo, align 4
  %call51 = tail call i32 @x509_get_sig_params(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end47.error_decode_crit_edge, label %if.end54

if.end47.error_decode_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_decode

if.end54:                                         ; preds = %if.end47
  %raw_serial = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 14
  %44 = ptrtoint ptr %raw_serial to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %raw_serial, align 8
  %raw_serial_size = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 15
  %46 = ptrtoint ptr %raw_serial_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %raw_serial_size, align 4
  %raw_issuer = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 17
  %48 = ptrtoint ptr %raw_issuer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %raw_issuer, align 4
  %raw_issuer_size = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %raw_issuer_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %raw_issuer_size, align 8
  %call55 = tail call ptr @asymmetric_key_generate_id(ptr noundef %45, i32 noundef %47, ptr noundef %49, i32 noundef %51) #10
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %call55 to i32
  br label %error_decode

if.end59:                                         ; preds = %if.end54
  %id = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call55, ptr %id, align 8
  %call60 = tail call i32 @x509_check_for_self_signed(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.error_decode_crit_edge, label %if.end63

if.end59.error_decode_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_decode

if.end63:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i114) #10
  br label %cleanup

error_decode:                                     ; preds = %if.end59.error_decode_crit_edge, %if.then57, %if.end47.error_decode_crit_edge, %if.end37.error_decode_crit_edge, %if.end29.error_decode_crit_edge, %do.end, %if.end14.error_decode_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end14.error_decode_crit_edge ], [ %call23, %do.end ], [ %call51, %if.end47.error_decode_crit_edge ], [ %52, %if.then57 ], [ %call60, %if.end59.error_decode_crit_edge ], [ -12, %if.end37.error_decode_crit_edge ], [ -12, %if.end29.error_decode_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i114) #10
  br label %x509_free_certificate.exit

x509_free_certificate.exit:                       ; preds = %error_decode, %if.end10.x509_free_certificate.exit_crit_edge, %if.end5.x509_free_certificate.exit_crit_edge, %if.end.x509_free_certificate.exit_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_decode ], [ -12, %if.end10.x509_free_certificate.exit_crit_edge ], [ -12, %if.end5.x509_free_certificate.exit_crit_edge ], [ -12, %if.end.x509_free_certificate.exit_crit_edge ]
  %54 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pub, align 8
  tail call void @public_key_free(ptr noundef %55) #10
  %sig.i = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sig.i, align 4
  tail call void @public_key_signature_free(ptr noundef %57) #10
  %issuer.i = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %issuer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %issuer.i, align 8
  tail call void @kfree(ptr noundef %59) #10
  %subject.i = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %subject.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %subject.i, align 4
  tail call void @kfree(ptr noundef %61) #10
  %id.i = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %id.i, align 8
  tail call void @kfree(ptr noundef %63) #10
  %skid.i = getelementptr inbounds %struct.x509_certificate, ptr %call7.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %skid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skid.i, align 4
  tail call void @kfree(ptr noundef %65) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %error_no_cert

error_no_cert:                                    ; preds = %x509_free_certificate.exit, %entry.error_no_cert_crit_edge
  %ret.2 = phi i32 [ %ret.1, %x509_free_certificate.exit ], [ -12, %entry.error_no_cert_crit_edge ]
  %66 = inttoptr i32 %ret.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error_no_cert, %if.end63
  %retval.0 = phi ptr [ %66, %error_no_cert ], [ %call7.i.i, %if.end63 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_get_sig_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asymmetric_key_generate_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_check_for_self_signed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_OID(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #10
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %last_oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %call)
  %cmp = icmp eq i32 %call, 98
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buffer) #10
  %1 = call ptr @memset(ptr %buffer, i32 255, i32 50)
  %call2 = call i32 @sprint_oid(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %buffer, i32 noundef 50) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_note_OID.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_note_OID, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !127

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %value to i32
  %data = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %sub = sub i32 %2, %4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_note_OID.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.6, i32 noundef %sub, ptr noundef nonnull %buffer) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buffer) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_tbs_certificate(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_note_tbs_certificate.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_note_tbs_certificate, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %tag to i32
  %0 = ptrtoint ptr %value to i32
  %data = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %sub = sub i32 %0, %2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_note_tbs_certificate.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.9, i32 noundef %hdrlen, i32 noundef %conv, i32 noundef %sub, i32 noundef %vlen) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %idx.neg = sub i32 0, %hdrlen
  %add.ptr = getelementptr i8, ptr %value, i32 %idx.neg
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %tbs = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %tbs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %tbs, align 8
  %add = add i32 %vlen, %hdrlen
  %6 = load ptr, ptr %context, align 4
  %tbs_size = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %tbs_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %tbs_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_pkey_algo(ptr noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readnone %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_note_pkey_algo.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_note_pkey_algo, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_note_pkey_algo.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.12, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %last_oid3 = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %2 = ptrtoint ptr %last_oid3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_oid3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end.cleanup_crit_edge [
    i32 93, label %do.end.cleanup.sink.split_crit_edge
    i32 83, label %sw.bb49
    i32 13, label %do.end.rsa_pkcs1_crit_edge
    i32 14, label %sw.bb5
    i32 15, label %sw.bb9
    i32 16, label %sw.bb13
    i32 17, label %sw.bb17
    i32 18, label %sw.bb21
    i32 5, label %do.end.ecdsa_crit_edge
    i32 6, label %sw.bb29
    i32 7, label %sw.bb33
    i32 8, label %sw.bb37
    i32 9, label %sw.bb41
    i32 82, label %do.end.ecrdsa_crit_edge
  ]

do.end.ecrdsa_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecrdsa

do.end.ecdsa_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecdsa

do.end.rsa_pkcs1_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsa_pkcs1

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsa_pkcs1

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsa_pkcs1

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsa_pkcs1

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsa_pkcs1

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rsa_pkcs1

sw.bb29:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecdsa

sw.bb33:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecdsa

sw.bb37:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecdsa

sw.bb41:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecdsa

sw.bb49:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecrdsa

rsa_pkcs1:                                        ; preds = %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %do.end.rsa_pkcs1_crit_edge
  %.str.18.sink = phi ptr [ @.str.18, %sw.bb21 ], [ @.str.17, %sw.bb17 ], [ @.str.16, %sw.bb13 ], [ @.str.15, %sw.bb9 ], [ @.str.14, %sw.bb5 ], [ @.str.13, %do.end.rsa_pkcs1_crit_edge ]
  br label %cleanup.sink.split

ecrdsa:                                           ; preds = %sw.bb49, %do.end.ecrdsa_crit_edge
  %.str.20.sink = phi ptr [ @.str.20, %sw.bb49 ], [ @.str.19, %do.end.ecrdsa_crit_edge ]
  br label %cleanup.sink.split

ecdsa:                                            ; preds = %sw.bb41, %sw.bb37, %sw.bb33, %sw.bb29, %do.end.ecdsa_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %sw.bb41 ], [ @.str.16, %sw.bb37 ], [ @.str.15, %sw.bb33 ], [ @.str.18, %sw.bb29 ], [ @.str.14, %do.end.ecdsa_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ecdsa, %ecrdsa, %rsa_pkcs1, %do.end.cleanup.sink.split_crit_edge
  %.str.17.sink.sink = phi ptr [ %.str.17.sink, %ecdsa ], [ %.str.20.sink, %ecrdsa ], [ %.str.18.sink, %rsa_pkcs1 ], [ @.str.21, %do.end.cleanup.sink.split_crit_edge ]
  %.str.27.sink = phi ptr [ @.str.27, %ecdsa ], [ @.str.24, %ecrdsa ], [ @.str.22, %rsa_pkcs1 ], [ @.str.26, %do.end.cleanup.sink.split_crit_edge ]
  %.str.28.sink = phi ptr [ @.str.28, %ecdsa ], [ @.str.25, %ecrdsa ], [ @.str.23, %rsa_pkcs1 ], [ @.str.25, %do.end.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %sig43 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %sig43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sig43, align 4
  %hash_algo44 = getelementptr inbounds %struct.public_key_signature, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %hash_algo44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.str.17.sink.sink, ptr %hash_algo44, align 4
  %10 = load ptr, ptr %context, align 4
  %sig79 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %sig79 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sig79, align 4
  %pkey_algo80 = getelementptr inbounds %struct.public_key_signature, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %pkey_algo80 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.str.27.sink, ptr %pkey_algo80, align 4
  %14 = load ptr, ptr %context, align 4
  %sig82 = getelementptr inbounds %struct.x509_certificate, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %sig82 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sig82, align 4
  %encoding83 = getelementptr inbounds %struct.public_key_signature, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %encoding83 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.str.28.sink, ptr %encoding83, align 4
  %18 = ptrtoint ptr %last_oid3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_oid3, align 4
  %algo_oid85 = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 9
  %20 = ptrtoint ptr %algo_oid85 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %algo_oid85, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -65, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_signature(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_note_signature.__UNIQUE_ID_ddebug161, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_note_signature, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_note_signature.__UNIQUE_ID_ddebug161, ptr noundef nonnull @.str.31, i32 noundef %1, i32 noundef %vlen) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %last_oid3 = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %2 = ptrtoint ptr %last_oid3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_oid3, align 4
  %algo_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 9
  %4 = ptrtoint ptr %algo_oid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algo_oid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end12, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %3) #14
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sig, align 4
  %pkey_algo = getelementptr inbounds %struct.public_key_signature, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkey_algo, align 4
  %call13 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(4) @.str.22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end12.if.then32_crit_edge, label %lor.lhs.false

if.end12.if.then32_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end12
  %call18 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(7) @.str.24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false20

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %call24 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(4) @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %lor.lhs.false20.if.then32_crit_edge, label %lor.lhs.false26

lor.lhs.false20.if.then32_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call30 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(6) @.str.27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %lor.lhs.false26.if.then32_crit_edge, label %lor.lhs.false26.if.end39_crit_edge

lor.lhs.false26.if.end39_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

lor.lhs.false26.if.then32_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false26.if.then32_crit_edge, %lor.lhs.false20.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %if.end12.if.then32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %cmp33 = icmp eq i32 %vlen, 0
  br i1 %cmp33, label %if.then32.cleanup_crit_edge, label %lor.lhs.false34

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false34:                                  ; preds = %if.then32
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp35.not = icmp eq i8 %13, 0
  br i1 %cmp35.not, label %if.end38, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i8, ptr %value, i32 1
  %dec = add i32 %vlen, -1
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %lor.lhs.false26.if.end39_crit_edge
  %vlen.addr.0 = phi i32 [ %dec, %if.end38 ], [ %vlen, %lor.lhs.false26.if.end39_crit_edge ]
  %value.addr.0 = phi ptr [ %incdec.ptr, %if.end38 ], [ %value, %lor.lhs.false26.if.end39_crit_edge ]
  %raw_sig = getelementptr inbounds %struct.x509_certificate, ptr %7, i32 0, i32 13
  %14 = ptrtoint ptr %raw_sig to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %value.addr.0, ptr %raw_sig, align 4
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 4
  %raw_sig_size = getelementptr inbounds %struct.x509_certificate, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %raw_sig_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %vlen.addr.0, ptr %raw_sig_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %lor.lhs.false34.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %if.end39 ], [ -74, %lor.lhs.false34.cleanup_crit_edge ], [ -74, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_note_serial(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %raw_serial = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %raw_serial to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %raw_serial, align 8
  %3 = load ptr, ptr %context, align 4
  %raw_serial_size = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %raw_serial_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vlen, ptr %raw_serial_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_extract_name_segment(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 51, label %sw.bb
    i32 56, label %sw.bb2
    i32 21, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %vlen to i8
  %cn_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 12
  %3 = ptrtoint ptr %cn_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %cn_size, align 2
  %4 = ptrtoint ptr %value to i32
  %data = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %sub = sub i32 %4, %6
  %conv1 = trunc i32 %sub to i16
  %cn_offset = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 15
  %7 = ptrtoint ptr %cn_offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %cn_offset, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv3 = trunc i32 %vlen to i8
  %o_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 11
  %8 = ptrtoint ptr %o_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %o_size, align 1
  %9 = ptrtoint ptr %value to i32
  %data4 = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 1
  %10 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data4, align 4
  %sub5 = sub i32 %9, %11
  %conv6 = trunc i32 %sub5 to i16
  %o_offset = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 14
  %12 = ptrtoint ptr %o_offset to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6, ptr %o_offset, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv8 = trunc i32 %vlen to i8
  %email_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 13
  %13 = ptrtoint ptr %email_size to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %email_size, align 1
  %14 = ptrtoint ptr %value to i32
  %data9 = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 1
  %15 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data9, align 4
  %sub10 = sub i32 %14, %16
  %conv11 = trunc i32 %sub10 to i16
  %email_offset = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 16
  %17 = ptrtoint ptr %email_offset to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv11, ptr %email_offset, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_issuer(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %raw_issuer = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %raw_issuer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %raw_issuer, align 4
  %3 = load ptr, ptr %context, align 4
  %raw_issuer_size = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %raw_issuer_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vlen, ptr %raw_issuer_size, align 8
  %5 = load ptr, ptr %context, align 4
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sig, align 4
  %arrayidx = getelementptr [3 x ptr], ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call ptr @asymmetric_key_generate_id(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull @.str.33, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %sig7 = getelementptr inbounds %struct.x509_certificate, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %sig7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sig7, align 4
  %arrayidx9 = getelementptr [3 x ptr], ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %arrayidx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  %issuer = getelementptr inbounds %struct.x509_certificate, ptr %17, i32 0, i32 4
  %call12 = tail call fastcc i32 @x509_fabricate_name(ptr noundef %context, ptr noundef %issuer)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4
  %retval.0 = phi i32 [ %call12, %if.end10 ], [ %10, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @x509_fabricate_name(ptr nocapture noundef %ctx, ptr nocapture noundef %_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data1, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_name, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cn_size = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 12
  %5 = ptrtoint ptr %cn_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cn_size, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  %o_size = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 11
  %7 = ptrtoint ptr %o_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %o_size, align 1
  br i1 %tobool2.not, label %land.lhs.true, label %land.lhs.true13

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.then110_crit_edge

land.lhs.true.if.then110_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

land.lhs.true4:                                   ; preds = %land.lhs.true
  %email_size = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 13
  %9 = ptrtoint ptr %email_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %email_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.then6, label %if.else107

if.then6:                                         ; preds = %land.lhs.true4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 1) #13
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call7.i, align 8
  br label %done

land.lhs.true13:                                  ; preds = %if.end
  %conv15 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  %cn_offset104 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 15
  %13 = ptrtoint ptr %cn_offset104 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cn_offset104, align 2
  %conv105 = zext i16 %14 to i32
  %add.ptr106 = getelementptr i8, ptr %2, i32 %conv105
  br i1 %tobool16.not, label %land.lhs.true13.single_component_crit_edge, label %if.then17

land.lhs.true13.single_component_crit_edge:       ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %single_component

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp.not = icmp ult i8 %6, %8
  br i1 %cmp.not, label %if.then17.if.end38_crit_edge, label %land.lhs.true26

if.then17.if.end38_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true26:                                  ; preds = %if.then17
  %o_offset = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 14
  %15 = ptrtoint ptr %o_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %o_offset, align 4
  %conv30 = zext i16 %16 to i32
  %add.ptr31 = getelementptr i8, ptr %2, i32 %conv30
  %bcmp1 = tail call i32 @bcmp(ptr %add.ptr106, ptr %add.ptr31, i32 %conv15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %cmp35 = icmp eq i32 %bcmp1, 0
  br i1 %cmp35, label %land.lhs.true26.single_component_crit_edge, label %land.lhs.true26.if.end38_crit_edge

land.lhs.true26.if.end38_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true26.single_component_crit_edge:       ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %single_component

if.end38:                                         ; preds = %land.lhs.true26.if.end38_crit_edge, %if.then17.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp41 = icmp ugt i8 %6, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp46 = icmp ugt i8 %8, 6
  %or.cond = select i1 %cmp41, i1 %cmp46, i1 false
  br i1 %or.cond, label %land.lhs.true48, label %if.end38.if.end8.i_crit_edge

if.end38.if.end8.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true48:                                  ; preds = %if.end38
  %o_offset52 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 14
  %17 = ptrtoint ptr %o_offset52 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %o_offset52, align 4
  %conv53 = zext i16 %18 to i32
  %add.ptr54 = getelementptr i8, ptr %2, i32 %conv53
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(7) %add.ptr106, ptr noundef dereferenceable(7) %add.ptr54, i32 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp56 = icmp eq i32 %bcmp, 0
  br i1 %cmp56, label %land.lhs.true48.single_component_crit_edge, label %land.lhs.true48.if.end8.i_crit_edge

land.lhs.true48.if.end8.i_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true48.single_component_crit_edge:       ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %single_component

if.end8.i:                                        ; preds = %land.lhs.true48.if.end8.i_crit_edge, %if.end38.if.end8.i_crit_edge
  %conv63 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv63, 2
  %add64 = add nuw nsw i32 %add, %conv15
  %add65 = add nuw nsw i32 %add64, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add65, i32 noundef 3264) #16
  %tobool67.not = icmp eq ptr %call9.i, null
  br i1 %tobool67.not, label %if.end8.i.cleanup_crit_edge, label %if.end69

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %o_offset70 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 14
  %19 = ptrtoint ptr %o_offset70 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %o_offset70, align 4
  %conv71 = zext i16 %20 to i32
  %add.ptr72 = getelementptr i8, ptr %2, i32 %conv71
  %21 = ptrtoint ptr %o_size to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %o_size, align 1
  %conv74 = zext i8 %22 to i32
  %23 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr72, i32 %conv74)
  %arrayidx78 = getelementptr i8, ptr %call9.i, i32 %conv74
  %24 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 58, ptr %arrayidx78, align 1
  %add81 = add nuw nsw i32 %conv74, 1
  %arrayidx82 = getelementptr i8, ptr %call9.i, i32 %add81
  %25 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 32, ptr %arrayidx82, align 1
  %add.ptr86 = getelementptr i8, ptr %arrayidx78, i32 2
  %26 = ptrtoint ptr %cn_offset104 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cn_offset104, align 2
  %conv88 = zext i16 %27 to i32
  %add.ptr89 = getelementptr i8, ptr %2, i32 %conv88
  %28 = ptrtoint ptr %cn_size to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cn_size, align 2
  %conv91 = zext i8 %29 to i32
  %30 = call ptr @memcpy(ptr %add.ptr86, ptr %add.ptr89, i32 %conv91)
  %add94 = add nuw nsw i32 %conv74, 2
  %add97 = add nuw nsw i32 %add94, %conv91
  %arrayidx98 = getelementptr i8, ptr %call9.i, i32 %add97
  %31 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx98, align 1
  br label %done

if.else107:                                       ; preds = %land.lhs.true4
  %32 = ptrtoint ptr %o_size to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %o_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool109.not = icmp eq i8 %.pr, 0
  br i1 %tobool109.not, label %if.else116, label %if.else107.if.then110_crit_edge

if.else107.if.then110_crit_edge:                  ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.then110:                                       ; preds = %if.else107.if.then110_crit_edge, %land.lhs.true.if.then110_crit_edge
  %33 = phi i8 [ %.pr, %if.else107.if.then110_crit_edge ], [ %8, %land.lhs.true.if.then110_crit_edge ]
  %o_offset113 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 14
  br label %single_component.sink.split

if.else116:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  %email_size117 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 13
  %34 = ptrtoint ptr %email_size117 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %email_size117, align 1
  %email_offset = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 16
  br label %single_component.sink.split

single_component.sink.split:                      ; preds = %if.else116, %if.then110
  %o_offset113.sink = phi ptr [ %o_offset113, %if.then110 ], [ %email_offset, %if.else116 ]
  %namesize.0.in.ph = phi i8 [ %33, %if.then110 ], [ %35, %if.else116 ]
  %36 = ptrtoint ptr %o_offset113.sink to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %o_offset113.sink, align 4
  %conv114 = zext i16 %37 to i32
  %add.ptr115 = getelementptr i8, ptr %2, i32 %conv114
  br label %single_component

single_component:                                 ; preds = %single_component.sink.split, %land.lhs.true48.single_component_crit_edge, %land.lhs.true26.single_component_crit_edge, %land.lhs.true13.single_component_crit_edge
  %name.0 = phi ptr [ %add.ptr106, %land.lhs.true26.single_component_crit_edge ], [ %add.ptr106, %land.lhs.true48.single_component_crit_edge ], [ %add.ptr106, %land.lhs.true13.single_component_crit_edge ], [ %add.ptr115, %single_component.sink.split ]
  %namesize.0.in = phi i8 [ %6, %land.lhs.true26.single_component_crit_edge ], [ %6, %land.lhs.true48.single_component_crit_edge ], [ %6, %land.lhs.true13.single_component_crit_edge ], [ %namesize.0.in.ph, %single_component.sink.split ]
  %namesize.0 = zext i8 %namesize.0.in to i32
  %add124 = add nuw nsw i32 %namesize.0, 1
  %call9.i14 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add124, i32 noundef 3264) #16
  %tobool126.not = icmp eq ptr %call9.i14, null
  br i1 %tobool126.not, label %single_component.cleanup_crit_edge, label %if.end128

single_component.cleanup_crit_edge:               ; preds = %single_component
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end128:                                        ; preds = %single_component
  call void @__sanitizer_cov_trace_pc() #12
  %38 = call ptr @memcpy(ptr %call9.i14, ptr %name.0, i32 %namesize.0)
  %arrayidx129 = getelementptr i8, ptr %call9.i14, i32 %namesize.0
  %39 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx129, align 1
  br label %done

done:                                             ; preds = %if.end128, %if.end69, %if.end9
  %buffer.0 = phi ptr [ %call9.i14, %if.end128 ], [ %call9.i, %if.end69 ], [ %call7.i, %if.end9 ]
  %40 = ptrtoint ptr %_name to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buffer.0, ptr %_name, align 4
  %41 = ptrtoint ptr %cn_size to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %cn_size, align 2
  %o_size131 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 11
  %42 = ptrtoint ptr %o_size131 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %o_size131, align 1
  %email_size132 = getelementptr inbounds %struct.x509_parse_context, ptr %ctx, i32 0, i32 13
  %43 = ptrtoint ptr %email_size132 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %email_size132, align 1
  br label %cleanup

cleanup:                                          ; preds = %done, %single_component.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -12, %single_component.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_subject(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %raw_subject = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %raw_subject to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %value, ptr %raw_subject, align 8
  %3 = load ptr, ptr %context, align 4
  %raw_subject_size = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %raw_subject_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vlen, ptr %raw_subject_size, align 4
  %5 = load ptr, ptr %context, align 4
  %subject = getelementptr inbounds %struct.x509_certificate, ptr %5, i32 0, i32 5
  %call = tail call fastcc i32 @x509_fabricate_name(ptr noundef %context, ptr noundef %subject)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_note_params(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %raw_subject = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %raw_subject to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw_subject, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %key = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 3
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg = sub i32 0, %hdrlen
  %add.ptr = getelementptr i8, ptr %value, i32 %idx.neg
  %params = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 5
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %params, align 4
  %add = add i32 %vlen, %hdrlen
  %params_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 6
  %7 = ptrtoint ptr %params_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %params_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_extract_key_data(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %oid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oid) #10
  %0 = ptrtoint ptr %oid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oid, align 4, !annotation !128
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %1 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_oid, align 4
  %key_algo = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 7
  %3 = ptrtoint ptr %key_algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %key_algo, align 4
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 10, label %entry.sw.epilog24_crit_edge
    i32 78, label %entry.sw.bb2_crit_edge
    i32 79, label %entry.sw.bb2_crit_edge45
    i32 2, label %sw.bb6
  ]

entry.sw.bb2_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.epilog24_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge45
  br label %sw.epilog24

sw.bb6:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 5
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 4
  %params_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 6
  %7 = ptrtoint ptr %params_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params_size, align 4
  %call = call i32 @parse_OID(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %oid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb6
  %9 = ptrtoint ptr %oid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oid, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 91, label %if.end.sw.epilog24_crit_edge
    i32 3, label %sw.bb11
    i32 4, label %sw.bb15
    i32 46, label %sw.bb19
  ]

if.end.sw.epilog24_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb19, %sw.bb15, %sw.bb11, %if.end.sw.epilog24_crit_edge, %sw.bb2, %entry.sw.epilog24_crit_edge
  %.str.26.sink = phi ptr [ @.str.34, %sw.bb11 ], [ @.str.35, %sw.bb15 ], [ @.str.36, %sw.bb19 ], [ @.str.24, %sw.bb2 ], [ @.str.22, %entry.sw.epilog24_crit_edge ], [ @.str.26, %if.end.sw.epilog24_crit_edge ]
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  %pub9 = getelementptr inbounds %struct.x509_certificate, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pub9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pub9, align 8
  %pkey_algo10 = getelementptr inbounds %struct.public_key, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %pkey_algo10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.str.26.sink, ptr %pkey_algo10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlen)
  %cmp25 = icmp eq i32 %vlen, 0
  br i1 %cmp25, label %sw.epilog24.cleanup_crit_edge, label %lor.lhs.false

sw.epilog24.cleanup_crit_edge:                    ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog24
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp26.not = icmp eq i8 %18, 0
  br i1 %cmp26.not, label %if.end29, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %value, i32 1
  %key = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 3
  %19 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %key, align 4
  %sub = add i32 %vlen, -1
  %key_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 4
  %20 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %key_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %lor.lhs.false.cleanup_crit_edge, %sw.epilog24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -74, %sw.bb6.cleanup_crit_edge ], [ -65, %if.end.cleanup_crit_edge ], [ -65, %entry.cleanup_crit_edge ], [ -74, %lor.lhs.false.cleanup_crit_edge ], [ -74, %sw.epilog24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oid) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_OID(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_process_extension(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_process_extension.__UNIQUE_ID_ddebug162, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_process_extension, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_oid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %last_oid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_oid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_process_extension.__UNIQUE_ID_ddebug162, ptr noundef nonnull @.str.39, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %last_oid3 = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 8
  %2 = ptrtoint ptr %last_oid3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_oid3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %3, label %do.end.cleanup_crit_edge [
    i32 64, label %if.then4
    i32 71, label %if.then49
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %do.end
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %skid = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %skid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skid, align 4
  %tobool5.not = icmp ne ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %vlen)
  %cmp6 = icmp ult i32 %vlen, 3
  %or.cond = or i1 %cmp6, %tobool5.not
  br i1 %or.cond, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp9.not = icmp eq i8 %10, 4
  br i1 %cmp9.not, label %lor.lhs.false11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end8
  %arrayidx12 = getelementptr i8, ptr %value, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %sub = add i32 %vlen, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv13)
  %cmp14.not = icmp eq i32 %sub, %conv13
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false11
  %add.ptr = getelementptr i8, ptr %value, i32 2
  %raw_skid_size = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 20
  %13 = ptrtoint ptr %raw_skid_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv13, ptr %raw_skid_size, align 8
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context, align 4
  %raw_skid = getelementptr inbounds %struct.x509_certificate, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %raw_skid to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %raw_skid, align 4
  %call21 = tail call ptr @asymmetric_key_generate_id(ptr noundef %add.ptr, i32 noundef %conv13, ptr noundef nonnull @.str.33, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  %skid27 = getelementptr inbounds %struct.x509_certificate, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %skid27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %skid27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_process_extension.__UNIQUE_ID_ddebug163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_process_extension, %if.then40)) #10
          to label %cleanup [label %if.then40], !srcloc !127

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call21 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %call21, align 2
  %conv41 = zext i16 %22 to i32
  %data = getelementptr inbounds %struct.asymmetric_key_id, ptr %call21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_process_extension.__UNIQUE_ID_ddebug163, ptr noundef nonnull @.str.41, i32 noundef %conv41, ptr noundef %data) #10
  br label %cleanup

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %raw_akid = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 18
  %23 = ptrtoint ptr %raw_akid to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %value, ptr %raw_akid, align 4
  %raw_akid_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 17
  %24 = ptrtoint ptr %raw_akid_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %vlen, ptr %raw_akid_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.then40, %if.end25, %if.then23, %lor.lhs.false11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then23 ], [ 0, %if.then49 ], [ -74, %if.then4.cleanup_crit_edge ], [ -74, %lor.lhs.false11.cleanup_crit_edge ], [ -74, %if.end8.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_decode_time(ptr nocapture noundef writeonly %_t, i32 %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %tag to i32
  %0 = zext i8 %tag to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %tag, label %entry.do.body_crit_edge [
    i8 23, label %if.then
    i8 24, label %if.then43
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %vlen)
  %cmp2.not = icmp eq i32 %vlen, 13
  br i1 %cmp2.not, label %if.end, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %if.then
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1
  %sub = add i8 %2, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub)
  %cmp9 = icmp ugt i8 %sub, 9
  br i1 %cmp9, label %if.end.do.body383_crit_edge, label %cleanup.cont

if.end.do.body383_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont:                                     ; preds = %if.end
  %arrayidx15 = getelementptr i8, ptr %value, i32 1
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx15, align 1
  %sub17 = add i8 %4, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub17)
  %cmp20 = icmp ugt i8 %sub17, 9
  br i1 %cmp20, label %cleanup.cont.do.body383_crit_edge, label %cleanup.cont32

cleanup.cont.do.body383_crit_edge:                ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont32:                                   ; preds = %cleanup.cont
  %conv19 = zext i8 %sub17 to i32
  %conv8 = zext i8 %sub to i32
  %mul = mul nuw nsw i32 %conv8, 10
  %add = add nuw nsw i32 %mul, %conv19
  %add.ptr = getelementptr i8, ptr %value, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %add)
  %cmp33 = icmp ugt i32 %add, 49
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %cleanup.cont32
  call void @__sanitizer_cov_trace_pc() #12
  %add36 = add nuw nsw i32 %add, 1900
  br label %if.end134

if.else:                                          ; preds = %cleanup.cont32
  call void @__sanitizer_cov_trace_pc() #12
  %add37 = add nuw nsw i32 %add, 2000
  br label %if.end134

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %vlen)
  %cmp44.not = icmp eq i32 %vlen, 15
  br i1 %cmp44.not, label %if.end47, label %if.then43.do.body_crit_edge

if.then43.do.body_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end47:                                         ; preds = %if.then43
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value, align 1
  %sub52 = add i8 %6, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub52)
  %cmp55 = icmp ugt i8 %sub52, 9
  br i1 %cmp55, label %if.end47.do.body383_crit_edge, label %cleanup.cont62

if.end47.do.body383_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont62:                                   ; preds = %if.end47
  %arrayidx66 = getelementptr i8, ptr %value, i32 1
  %7 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx66, align 1
  %sub68 = add i8 %8, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub68)
  %cmp71 = icmp ugt i8 %sub68, 9
  br i1 %cmp71, label %cleanup.cont62.do.body383_crit_edge, label %cleanup83.thread

cleanup.cont62.do.body383_crit_edge:              ; preds = %cleanup.cont62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup83.thread:                                 ; preds = %cleanup.cont62
  %conv70 = zext i8 %sub68 to i32
  %conv54 = zext i8 %sub52 to i32
  %mul64 = mul nuw nsw i32 %conv54, 10
  %add80 = add nuw nsw i32 %mul64, %conv70
  %add.ptr81 = getelementptr i8, ptr %value, i32 2
  %mul86 = mul nuw nsw i32 %add80, 100
  %9 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr81, align 1
  %sub91 = add i8 %10, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub91)
  %cmp94 = icmp ugt i8 %sub91, 9
  br i1 %cmp94, label %cleanup83.thread.do.body383_crit_edge, label %cleanup.cont101

cleanup83.thread.do.body383_crit_edge:            ; preds = %cleanup83.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont101:                                  ; preds = %cleanup83.thread
  %arrayidx105 = getelementptr i8, ptr %value, i32 3
  %11 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx105, align 1
  %sub107 = add i8 %12, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub107)
  %cmp110 = icmp ugt i8 %sub107, 9
  br i1 %cmp110, label %cleanup.cont101.do.body383_crit_edge, label %cleanup122.thread

cleanup.cont101.do.body383_crit_edge:             ; preds = %cleanup.cont101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup122.thread:                                ; preds = %cleanup.cont101
  %conv109 = zext i8 %sub107 to i32
  %conv93 = zext i8 %sub91 to i32
  %mul103 = mul nuw nsw i32 %conv93, 10
  %add.ptr120 = getelementptr i8, ptr %value, i32 4
  %add119 = add nuw nsw i32 %mul103, %mul86
  %add125 = add nuw nsw i32 %add119, %conv109
  %13 = add nsw i32 %add125, -1950
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %13)
  %14 = icmp ult i32 %13, 100
  br i1 %14, label %cleanup122.thread.do.body383_crit_edge, label %cleanup122.thread.if.end134_crit_edge

cleanup122.thread.if.end134_crit_edge:            ; preds = %cleanup122.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

cleanup122.thread.do.body383_crit_edge:           ; preds = %cleanup122.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

if.end134:                                        ; preds = %cleanup122.thread.if.end134_crit_edge, %if.else, %if.then35
  %year.0 = phi i32 [ %add36, %if.then35 ], [ %add37, %if.else ], [ %add125, %cleanup122.thread.if.end134_crit_edge ]
  %p.3 = phi ptr [ %add.ptr, %if.then35 ], [ %add.ptr, %if.else ], [ %add.ptr120, %cleanup122.thread.if.end134_crit_edge ]
  %15 = ptrtoint ptr %p.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p.3, align 1
  %sub139 = add i8 %16, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub139)
  %cmp142 = icmp ugt i8 %sub139, 9
  br i1 %cmp142, label %if.end134.do.body383_crit_edge, label %cleanup.cont149

if.end134.do.body383_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont149:                                  ; preds = %if.end134
  %arrayidx153 = getelementptr i8, ptr %p.3, i32 1
  %17 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx153, align 1
  %sub155 = add i8 %18, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub155)
  %cmp158 = icmp ugt i8 %sub155, 9
  br i1 %cmp158, label %cleanup.cont149.do.body383_crit_edge, label %cleanup170.thread

cleanup.cont149.do.body383_crit_edge:             ; preds = %cleanup.cont149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup170.thread:                                ; preds = %cleanup.cont149
  %conv157 = zext i8 %sub155 to i32
  %conv141 = zext i8 %sub139 to i32
  %mul151 = mul nuw nsw i32 %conv141, 10
  %add167 = add nuw nsw i32 %mul151, %conv157
  %add.ptr168 = getelementptr i8, ptr %p.3, i32 2
  %19 = ptrtoint ptr %add.ptr168 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr168, align 1
  %sub177 = add i8 %20, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub177)
  %cmp180 = icmp ugt i8 %sub177, 9
  br i1 %cmp180, label %cleanup170.thread.do.body383_crit_edge, label %cleanup.cont187

cleanup170.thread.do.body383_crit_edge:           ; preds = %cleanup170.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont187:                                  ; preds = %cleanup170.thread
  %arrayidx191 = getelementptr i8, ptr %p.3, i32 3
  %21 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx191, align 1
  %sub193 = add i8 %22, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub193)
  %cmp196 = icmp ugt i8 %sub193, 9
  br i1 %cmp196, label %cleanup.cont187.do.body383_crit_edge, label %cleanup208.thread

cleanup.cont187.do.body383_crit_edge:             ; preds = %cleanup.cont187
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup208.thread:                                ; preds = %cleanup.cont187
  %conv195 = zext i8 %sub193 to i32
  %conv179 = zext i8 %sub177 to i32
  %mul189 = mul nuw nsw i32 %conv179, 10
  %add205 = add nuw nsw i32 %mul189, %conv195
  %add.ptr206 = getelementptr i8, ptr %p.3, i32 4
  %23 = ptrtoint ptr %add.ptr206 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr206, align 1
  %sub215 = add i8 %24, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub215)
  %cmp218 = icmp ugt i8 %sub215, 9
  br i1 %cmp218, label %cleanup208.thread.do.body383_crit_edge, label %cleanup.cont225

cleanup208.thread.do.body383_crit_edge:           ; preds = %cleanup208.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont225:                                  ; preds = %cleanup208.thread
  %arrayidx229 = getelementptr i8, ptr %p.3, i32 5
  %25 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx229, align 1
  %sub231 = add i8 %26, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub231)
  %cmp234 = icmp ugt i8 %sub231, 9
  br i1 %cmp234, label %cleanup.cont225.do.body383_crit_edge, label %cleanup246.thread

cleanup.cont225.do.body383_crit_edge:             ; preds = %cleanup.cont225
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup246.thread:                                ; preds = %cleanup.cont225
  %conv233 = zext i8 %sub231 to i32
  %conv217 = zext i8 %sub215 to i32
  %mul227 = mul nuw nsw i32 %conv217, 10
  %add243 = add nuw nsw i32 %mul227, %conv233
  %add.ptr244 = getelementptr i8, ptr %p.3, i32 6
  %27 = ptrtoint ptr %add.ptr244 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr244, align 1
  %sub253 = add i8 %28, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub253)
  %cmp256 = icmp ugt i8 %sub253, 9
  br i1 %cmp256, label %cleanup246.thread.do.body383_crit_edge, label %cleanup.cont263

cleanup246.thread.do.body383_crit_edge:           ; preds = %cleanup246.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont263:                                  ; preds = %cleanup246.thread
  %arrayidx267 = getelementptr i8, ptr %p.3, i32 7
  %29 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx267, align 1
  %sub269 = add i8 %30, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub269)
  %cmp272 = icmp ugt i8 %sub269, 9
  br i1 %cmp272, label %cleanup.cont263.do.body383_crit_edge, label %cleanup284.thread

cleanup.cont263.do.body383_crit_edge:             ; preds = %cleanup.cont263
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup284.thread:                                ; preds = %cleanup.cont263
  %conv271 = zext i8 %sub269 to i32
  %conv255 = zext i8 %sub253 to i32
  %mul265 = mul nuw nsw i32 %conv255, 10
  %add281 = add nuw nsw i32 %mul265, %conv271
  %add.ptr282 = getelementptr i8, ptr %p.3, i32 8
  %31 = ptrtoint ptr %add.ptr282 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr282, align 1
  %sub291 = add i8 %32, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub291)
  %cmp294 = icmp ugt i8 %sub291, 9
  br i1 %cmp294, label %cleanup284.thread.do.body383_crit_edge, label %cleanup.cont301

cleanup284.thread.do.body383_crit_edge:           ; preds = %cleanup284.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup.cont301:                                  ; preds = %cleanup284.thread
  %arrayidx305 = getelementptr i8, ptr %p.3, i32 9
  %33 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx305, align 1
  %sub307 = add i8 %34, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub307)
  %cmp310 = icmp ugt i8 %sub307, 9
  br i1 %cmp310, label %cleanup.cont301.do.body383_crit_edge, label %cleanup322.thread

cleanup.cont301.do.body383_crit_edge:             ; preds = %cleanup.cont301
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

cleanup322.thread:                                ; preds = %cleanup.cont301
  %conv309 = zext i8 %sub307 to i32
  %conv293 = zext i8 %sub291 to i32
  %mul303 = mul nuw nsw i32 %conv293, 10
  %add319 = add nuw nsw i32 %mul303, %conv309
  %add.ptr320 = getelementptr i8, ptr %p.3, i32 10
  %35 = ptrtoint ptr %add.ptr320 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr320, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %36)
  %cmp326.not = icmp eq i8 %36, 90
  br i1 %cmp326.not, label %if.end329, label %cleanup322.thread.do.body_crit_edge

cleanup322.thread.do.body_crit_edge:              ; preds = %cleanup322.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end329:                                        ; preds = %cleanup322.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 1970, i32 %year.0)
  %cmp330 = icmp ult i32 %year.0, 1970
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add167)
  %cmp332 = icmp eq i32 %add167, 0
  %or.cond527 = select i1 %cmp330, i1 true, i1 %cmp332
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %add167)
  %cmp335 = icmp ugt i32 %add167, 12
  %or.cond528 = select i1 %or.cond527, i1 true, i1 %cmp335
  br i1 %or.cond528, label %if.end329.do.body383_crit_edge, label %if.end338

if.end329.do.body383_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

if.end338:                                        ; preds = %if.end329
  %sub339 = add nsw i32 %add167, -1
  %arrayidx340 = getelementptr [12 x i8], ptr @x509_decode_time.month_lengths, i32 0, i32 %sub339
  %37 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx340, align 1
  %conv341 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add167)
  %cmp342 = icmp eq i32 %add167, 2
  %rem = and i32 %year.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp345 = icmp eq i32 %rem, 0
  %or.cond529 = select i1 %cmp342, i1 %cmp345, i1 false
  br i1 %or.cond529, label %if.then347, label %if.end338.if.end359_crit_edge

if.end338.if.end359_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end359

if.then347:                                       ; preds = %if.end338
  %rem348.lhs.trunc = trunc i32 %year.0 to i16
  %rem348584 = urem i16 %rem348.lhs.trunc, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem348584)
  %cmp349 = icmp eq i16 %rem348584, 0
  br i1 %cmp349, label %if.then351, label %if.then347.if.end359_crit_edge

if.then347.if.end359_crit_edge:                   ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end359

if.then351:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #12
  %rem352.lhs.trunc = trunc i32 %year.0 to i16
  %rem352585 = urem i16 %rem352.lhs.trunc, 400
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem352585)
  %cmp353 = icmp eq i16 %rem352585, 0
  %spec.store.select = select i1 %cmp353, i32 29, i32 28
  br label %if.end359

if.end359:                                        ; preds = %if.then351, %if.then347.if.end359_crit_edge, %if.end338.if.end359_crit_edge
  %mon_len.0 = phi i32 [ %spec.store.select, %if.then351 ], [ 29, %if.then347.if.end359_crit_edge ], [ %conv341, %if.end338.if.end359_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add205)
  %cmp360 = icmp eq i32 %add205, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add205, i32 %mon_len.0)
  %cmp363 = icmp ugt i32 %add205, %mon_len.0
  %or.cond530 = select i1 %cmp360, i1 true, i1 %cmp363
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add243)
  %cmp366 = icmp ugt i32 %add243, 24
  %or.cond531 = select i1 %or.cond530, i1 true, i1 %cmp366
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %add281)
  %cmp369 = icmp ugt i32 %add281, 59
  %or.cond532 = select i1 %or.cond531, i1 true, i1 %cmp369
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %add319)
  %cmp372 = icmp ugt i32 %add319, 60
  %or.cond533 = select i1 %or.cond532, i1 true, i1 %cmp372
  br i1 %or.cond533, label %if.end359.do.body383_crit_edge, label %if.end375

if.end359.do.body383_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body383

if.end375:                                        ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @mktime64(i32 noundef %year.0, i32 noundef %add167, i32 noundef %add205, i32 noundef %add243, i32 noundef %add281, i32 noundef %add319) #10
  %39 = ptrtoint ptr %_t to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call, ptr %_t, align 8
  br label %cleanup400

do.body:                                          ; preds = %cleanup322.thread.do.body_crit_edge, %if.then43.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_decode_time.__UNIQUE_ID_ddebug164, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_decode_time, %if.then380)) #10
          to label %cleanup400 [label %if.then380], !srcloc !127

if.then380:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_decode_time.__UNIQUE_ID_ddebug164, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %vlen, ptr noundef %value) #10
  br label %cleanup400

do.body383:                                       ; preds = %if.end359.do.body383_crit_edge, %if.end329.do.body383_crit_edge, %cleanup.cont301.do.body383_crit_edge, %cleanup284.thread.do.body383_crit_edge, %cleanup.cont263.do.body383_crit_edge, %cleanup246.thread.do.body383_crit_edge, %cleanup.cont225.do.body383_crit_edge, %cleanup208.thread.do.body383_crit_edge, %cleanup.cont187.do.body383_crit_edge, %cleanup170.thread.do.body383_crit_edge, %cleanup.cont149.do.body383_crit_edge, %if.end134.do.body383_crit_edge, %cleanup122.thread.do.body383_crit_edge, %cleanup.cont101.do.body383_crit_edge, %cleanup83.thread.do.body383_crit_edge, %cleanup.cont62.do.body383_crit_edge, %if.end47.do.body383_crit_edge, %cleanup.cont.do.body383_crit_edge, %if.end.do.body383_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_decode_time.__UNIQUE_ID_ddebug165, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_decode_time, %if.then395)) #10
          to label %cleanup400 [label %if.then395], !srcloc !127

if.then395:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_decode_time.__UNIQUE_ID_ddebug165, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %vlen, ptr noundef %value) #10
  br label %cleanup400

cleanup400:                                       ; preds = %if.then395, %do.body383, %if.then380, %do.body, %if.end375
  %retval.0 = phi i32 [ 0, %if.end375 ], [ -74, %if.then380 ], [ -74, %if.then395 ], [ -74, %do.body ], [ -74, %do.body383 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_not_before(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %valid_from = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 8
  %call = tail call i32 @x509_decode_time(ptr noundef %valid_from, i32 undef, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_note_not_after(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %valid_to = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 9
  %call = tail call i32 @x509_decode_time(ptr noundef %valid_to, i32 undef, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_akid_note_kid(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_akid_note_kid.__UNIQUE_ID_ddebug166, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_akid_note_kid, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_akid_note_kid.__UNIQUE_ID_ddebug166, ptr noundef nonnull @.str.49, i32 noundef %vlen, ptr noundef %value) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sig, align 4
  %arrayidx = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call ptr @asymmetric_key_generate_id(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull @.str.33, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %do.body11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

do.body11:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_akid_note_kid.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_akid_note_kid, %if.then23)) #10
          to label %do.end26 [label %if.then23], !srcloc !127

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call6, align 2
  %conv = zext i16 %8 to i32
  %data = getelementptr inbounds %struct.asymmetric_key_id, ptr %call6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_akid_note_kid.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.51, i32 noundef %conv, ptr noundef %data) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body11
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %sig28 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %sig28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sig28, align 4
  %arrayidx30 = getelementptr [3 x ptr], ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %arrayidx30, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ 0, %do.end26 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_akid_note_name(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_akid_note_name.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_akid_note_name, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_akid_note_name.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.54, i32 noundef %vlen, ptr noundef %value) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %akid_raw_issuer = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 19
  %0 = ptrtoint ptr %akid_raw_issuer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %akid_raw_issuer, align 4
  %akid_raw_issuer_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 20
  %1 = ptrtoint ptr %akid_raw_issuer_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %akid_raw_issuer_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x509_akid_note_serial(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_akid_note_serial.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_akid_note_serial, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_akid_note_serial.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.57, i32 noundef %vlen, ptr noundef %value) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %akid_raw_issuer = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 19
  %0 = ptrtoint ptr %akid_raw_issuer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %akid_raw_issuer, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %sig = getelementptr inbounds %struct.x509_certificate, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sig, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %akid_raw_issuer_size = getelementptr inbounds %struct.x509_parse_context, ptr %context, i32 0, i32 20
  %8 = ptrtoint ptr %akid_raw_issuer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %akid_raw_issuer_size, align 4
  %call8 = tail call ptr @asymmetric_key_generate_id(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %1, i32 noundef %9) #10
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %do.body13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup

do.body13:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x509_akid_note_serial.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x509_akid_note_serial, %if.then25)) #10
          to label %do.end28 [label %if.then25], !srcloc !127

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call8, align 2
  %conv = zext i16 %12 to i32
  %data = getelementptr inbounds %struct.asymmetric_key_id, ptr %call8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x509_akid_note_serial.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.51, i32 noundef %conv, ptr noundef %data) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %sig30 = getelementptr inbounds %struct.x509_certificate, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %sig30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sig30, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then10, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then10 ], [ 0, %do.end28 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__ksymtab_x509_free_certificate, !1, !"__ksymtab_x509_free_certificate", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 58, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 99, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @x509_cert_parse._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @x509_cert_parse._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_x509_cert_parse, !9, !"__ksymtab_x509_cert_parse", i1 false, i1 false}
!9 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 149, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 165, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @x509_note_OID.__UNIQUE_ID_ddebug158, !11, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 181, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @x509_note_tbs_certificate.__UNIQUE_ID_ddebug159, !17, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 198, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @x509_note_pkey_algo.__UNIQUE_ID_ddebug160, !22, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!25 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 207, i32 31}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 211, i32 31}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 215, i32 31}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 219, i32 31}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 223, i32 31}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 227, i32 31}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 251, i32 31}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 255, i32 31}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 259, i32 31}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 264, i32 30}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 265, i32 29}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 269, i32 30}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 270, i32 29}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 274, i32 30}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 279, i32 30}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 280, i32 29}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 294, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @x509_note_signature.__UNIQUE_ID_ddebug161, !59, !"__UNIQUE_ID_ddebug161", i1 false, i1 false}
!62 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 297, i32 3}
!65 = !{ptr @x509_note_signature._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @x509_note_signature._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 450, i32 49}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 518, i32 32}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 521, i32 32}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 524, i32 32}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 556, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @x509_process_extension.__UNIQUE_ID_ddebug162, !76, !"__UNIQUE_ID_ddebug162", i1 false, i1 false}
!79 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 573, i32 3}
!82 = !{ptr @x509_process_extension.__UNIQUE_ID_ddebug163, !81, !"__UNIQUE_ID_ddebug163", i1 false, i1 false}
!83 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @x509_decode_time.month_lengths, !85, !"month_lengths", i1 false, i1 false}
!85 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 609, i32 29}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 672, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @x509_decode_time.__UNIQUE_ID_ddebug164, !87, !"__UNIQUE_ID_ddebug164", i1 false, i1 false}
!90 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 676, i32 2}
!93 = !{ptr @x509_decode_time.__UNIQUE_ID_ddebug165, !92, !"__UNIQUE_ID_ddebug165", i1 false, i1 false}
!94 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @__ksymtab_x509_decode_time, !96, !"__ksymtab_x509_decode_time", i1 false, i1 false}
!96 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 680, i32 1}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 708, i32 2}
!99 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @x509_akid_note_kid.__UNIQUE_ID_ddebug166, !98, !"__UNIQUE_ID_ddebug166", i1 false, i1 false}
!101 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 716, i32 2}
!104 = !{ptr @x509_akid_note_kid.__UNIQUE_ID_ddebug167, !103, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!105 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 730, i32 2}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @x509_akid_note_name.__UNIQUE_ID_ddebug168, !107, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!110 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 747, i32 2}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @x509_akid_note_serial.__UNIQUE_ID_ddebug169, !112, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!115 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @x509_akid_note_serial.__UNIQUE_ID_ddebug170, !117, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!117 = !{!"../crypto/asymmetric_keys/x509_cert_parser.c", i32 759, i32 2}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148708759, i64 2148708764, i64 2148708777, i64 2148708821, i64 2148708855, i64 2148708876}
!128 = !{!"auto-init"}
