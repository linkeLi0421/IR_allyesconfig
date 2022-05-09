; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/verify_pefile.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/verify_pefile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pefile_context = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }
%struct.mz_hdr = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, i16, [10 x i16], i32, [0 x i8] }
%struct.pe32_opt_hdr = type { i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.pe32plus_opt_hdr = type { i16, i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i64, i64, i64, i64, i32, i32 }
%struct.data_directory = type { %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent, %struct.data_dirent }
%struct.data_dirent = type { i32, i32 }
%struct.pe_hdr = type { i32, i16, i16, i32, i32, i32, i16, i16 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.section_header = type { [8 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32 }

@verify_pefile_signature.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"verify_signed_pefile\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"verify_pefile_signature\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"crypto/asymmetric_keys/verify_pefile.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digest: %u [%*ph]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PEFILE: Digest: %u [%*ph]\0A\00", [37 x i8] zeroinitializer }, align 32
@pefile_parse_binary.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pefile_parse_binary\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown PEOPT magic = %04hx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PEFILE: Unknown PEOPT magic = %04hx\0A\00", [59 x i8] zeroinitializer }, align 32
@pefile_parse_binary.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"checksum @ %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PEFILE: checksum @ %x\0A\00", [41 x i8] zeroinitializer }, align 32
@pefile_parse_binary.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"header size = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PEFILE: header size = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@pefile_parse_binary.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.12, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsigned PE binary\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PEFILE: Unsigned PE binary\0A\00", [36 x i8] zeroinitializer }, align 32
@pefile_parse_binary.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.14, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cert = %x @%x [%*ph]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PEFILE: cert = %x @%x [%*ph]\0A\00", [34 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pefile_strip_sig_wrapper\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Signature wrapper too short\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PEFILE: Signature wrapper too short\0A\00", [59 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sig wrapper = { %x, %x, %x }\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PEFILE: sig wrapper = { %x, %x, %x }\0A\00", [58 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Signature wrapper len wrong\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PEFILE: Signature wrapper len wrong\0A\00", [59 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Signature is not revision 2.0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PEFILE: Signature is not revision 2.0\0A\00", [57 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Signature certificate type is not PKCS\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PEFILE: Signature certificate type is not PKCS\0A\00", [48 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.27, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Signature data missing\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PEFILE: Signature data missing\0A\00", [32 x i8] zeroinitializer }, align 32
@pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.29, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Signature data not PKCS#7\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PEFILE: Signature data not PKCS#7\0A\00", [61 x i8] zeroinitializer }, align 32
@pefile_digest_pe.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pefile_digest_pe\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Digest size mismatch (%zx != %x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PEFILE: Digest size mismatch (%zx != %x)\0A\00", [54 x i8] zeroinitializer }, align 32
@pefile_digest_pe.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digest: desc=%zu size=%zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PEFILE: Digest: desc=%zu size=%zu\0A\00", [61 x i8] zeroinitializer }, align 32
@pefile_digest_pe.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.36, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Digest calc = [%*ph]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PEFILE: Digest calc = [%*ph]\0A\00", [34 x i8] zeroinitializer }, align 32
@pefile_digest_pe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.38, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Digest mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PEFILE: Digest mismatch\0A\00", [39 x i8] zeroinitializer }, align 32
@pefile_digest_pe.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.40, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"The digests match!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PEFILE: The digests match!\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 267, i64 523]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 129, i64 130]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 441, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 77, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 81, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 82, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 98, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 106, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 130, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 135, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 142, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 146, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 150, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 163, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 197, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 340, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 345, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 366, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 372, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [42 x i8] c"../crypto/asymmetric_keys/verify_pefile.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 375, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verify_pefile_signature(ptr noundef %pebuf, i32 noundef %pelen, ptr noundef %trusted_keys, i32 noundef %usage) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.pefile_context, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ctx) #7
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 48)
  %call = call fastcc i32 @pefile_parse_binary(ptr noundef %pebuf, i32 noundef %pelen, ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @pefile_strip_sig_wrapper(ptr noundef %pebuf, ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sig_offset = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 6
  %1 = ptrtoint ptr %sig_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sig_offset, align 4
  %add.ptr = getelementptr i8, ptr %pebuf, i32 %2
  %sig_len = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 7
  %3 = ptrtoint ptr %sig_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sig_len, align 4
  %call5 = call i32 @verify_pkcs7_signature(ptr noundef null, i32 noundef 0, ptr noundef %add.ptr, i32 noundef %4, ptr noundef %trusted_keys, i32 noundef %usage, ptr noundef nonnull @mscode_parse, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.error_crit_edge, label %do.body

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_pefile_signature.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@verify_pefile_signature, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !87

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %digest_len = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 10
  %5 = ptrtoint ptr %digest_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %digest_len, align 4
  %digest = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 9
  %7 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %digest, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @verify_pefile_signature.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %6, ptr noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %call16 = call fastcc i32 @pefile_digest_pe(ptr noundef %pebuf, i32 noundef %pelen, ptr noundef nonnull %ctx)
  br label %error

error:                                            ; preds = %do.end, %if.end4.error_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.error_crit_edge ], [ %call16, %do.end ]
  %digest17 = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 9
  %9 = ptrtoint ptr %digest17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %digest17, align 4
  call void @kfree_sensitive(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pefile_parse_binary(ptr noundef %pebuf, i32 noundef %pelen, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %pelen)
  %cmp = icmp ult i32 %pelen, 65
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pebuf to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pebuf, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 23117, i16 %1)
  %cmp2.not = icmp eq i16 %1, 23117
  br i1 %cmp2.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %peaddr = getelementptr inbounds %struct.mz_hdr, ptr %pebuf, i32 0, i32 18
  %2 = ptrtoint ptr %peaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp7 = icmp ult i32 %3, 64
  %sub14 = add i32 %pelen, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub14)
  %cmp15 = icmp ugt i32 %3, %sub14
  %or.cond = or i1 %cmp7, %cmp15
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %do.end20

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %pebuf, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17744, i32 %5)
  %cmp23.not = icmp eq i32 %5, 17744
  br i1 %cmp23.not, label %if.end26, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %do.end20
  %add = add i32 %3, 24
  %sub35 = add i32 %pelen, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub35)
  %cmp36 = icmp ugt i32 %add, %sub35
  br i1 %cmp36, label %if.end26.cleanup_crit_edge, label %do.end41

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %if.end26
  %add.ptr42 = getelementptr i8, ptr %pebuf, i32 %add
  %6 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr42, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %do.body86 [
    i16 267, label %lor.lhs.false49
    i16 523, label %lor.lhs.false67
  ]

lor.lhs.false49:                                  ; preds = %do.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %pelen)
  %cmp50 = icmp ult i32 %pelen, 97
  %sub53 = add i32 %pelen, -96
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub53)
  %cmp54 = icmp ugt i32 %add, %sub53
  %or.cond330 = select i1 %cmp50, i1 true, i1 %cmp54
  br i1 %or.cond330, label %lor.lhs.false49.cleanup_crit_edge, label %do.end59

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end59:                                         ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  %csum = getelementptr inbounds %struct.pe32_opt_hdr, ptr %add.ptr42, i32 0, i32 21
  %9 = ptrtoint ptr %csum to i32
  %10 = ptrtoint ptr %pebuf to i32
  %sub60 = sub i32 %9, %10
  %image_checksum_offset = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %image_checksum_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub60, ptr %image_checksum_offset, align 4
  %header_size = getelementptr inbounds %struct.pe32_opt_hdr, ptr %add.ptr42, i32 0, i32 20
  %12 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %header_size, align 4
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ctx, align 4
  %add62 = add i32 %3, 120
  %data_dirs = getelementptr inbounds %struct.pe32_opt_hdr, ptr %add.ptr42, i32 0, i32 29
  br label %do.body96

lor.lhs.false67:                                  ; preds = %do.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %pelen)
  %cmp68 = icmp ult i32 %pelen, 113
  %sub71 = add i32 %pelen, -112
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub71)
  %cmp72 = icmp ugt i32 %add, %sub71
  %or.cond331 = select i1 %cmp68, i1 true, i1 %cmp72
  br i1 %or.cond331, label %lor.lhs.false67.cleanup_crit_edge, label %do.end77

lor.lhs.false67.cleanup_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end77:                                         ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  %csum78 = getelementptr inbounds %struct.pe32plus_opt_hdr, ptr %add.ptr42, i32 0, i32 20
  %15 = ptrtoint ptr %csum78 to i32
  %16 = ptrtoint ptr %pebuf to i32
  %sub79 = sub i32 %15, %16
  %image_checksum_offset80 = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %image_checksum_offset80 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub79, ptr %image_checksum_offset80, align 4
  %header_size81 = getelementptr inbounds %struct.pe32plus_opt_hdr, ptr %add.ptr42, i32 0, i32 19
  %18 = ptrtoint ptr %header_size81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %header_size81, align 4
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ctx, align 4
  %add83 = add i32 %3, 136
  %data_dirs84 = getelementptr inbounds %struct.pe32plus_opt_hdr, ptr %add.ptr42, i32 0, i32 28
  br label %do.body96

do.body86:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_parse_binary.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_parse_binary, %if.then90)) #7
          to label %cleanup [label %if.then90], !srcloc !87

if.then90:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr42, align 4
  %conv92 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_parse_binary.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.7, i32 noundef %conv92) #7
  br label %cleanup

do.body96:                                        ; preds = %do.end77, %do.end59
  %data_dirs.sink = phi ptr [ %data_dirs, %do.end59 ], [ %data_dirs84, %do.end77 ]
  %cursor.0 = phi i32 [ %add62, %do.end59 ], [ %add83, %do.end77 ]
  %23 = ptrtoint ptr %data_dirs.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_dirs.sink, align 4
  %n_data_dirents = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 3
  %25 = ptrtoint ptr %n_data_dirents to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %n_data_dirents, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_parse_binary.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_parse_binary, %if.then108)) #7
          to label %do.body113 [label %if.then108], !srcloc !87

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  %image_checksum_offset109 = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 1
  %26 = ptrtoint ptr %image_checksum_offset109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %image_checksum_offset109, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_parse_binary.__UNIQUE_ID_ddebug174, ptr noundef nonnull @.str.9, i32 noundef %27) #7
  br label %do.body113

do.body113:                                       ; preds = %if.then108, %do.body96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_parse_binary.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_parse_binary, %if.then125)) #7
          to label %do.end129 [label %if.then125], !srcloc !87

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_parse_binary.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.11, i32 noundef %29) #7
  br label %do.end129

do.end129:                                        ; preds = %if.then125, %do.body113
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cursor.0)
  %cmp131.not = icmp ugt i32 %31, %cursor.0
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %pelen)
  %cmp135.not = icmp ult i32 %31, %pelen
  %or.cond332 = and i1 %cmp131.not, %cmp135.not
  br i1 %or.cond332, label %if.end138, label %do.end129.cleanup_crit_edge

do.end129.cleanup_crit_edge:                      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end138:                                        ; preds = %do.end129
  %n_data_dirents139 = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 3
  %32 = ptrtoint ptr %n_data_dirents139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_data_dirents139, align 4
  %sub141 = sub i32 %31, %cursor.0
  %div329 = lshr i32 %sub141, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %div329)
  %cmp142 = icmp ugt i32 %33, %div329
  br i1 %cmp142, label %if.end138.cleanup_crit_edge, label %if.end145

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145:                                        ; preds = %if.end138
  %add.ptr146 = getelementptr i8, ptr %pebuf, i32 %cursor.0
  %mul = shl i32 %33, 3
  %add148 = add i32 %mul, %cursor.0
  %certs = getelementptr inbounds %struct.data_directory, ptr %add.ptr146, i32 0, i32 4
  %34 = ptrtoint ptr %certs to i32
  %35 = ptrtoint ptr %pebuf to i32
  %sub149 = sub i32 %34, %35
  %cert_dirent_offset = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 2
  %36 = ptrtoint ptr %cert_dirent_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub149, ptr %cert_dirent_offset, align 4
  %size = getelementptr inbounds %struct.data_dirent, ptr %certs, i32 0, i32 1
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %certs_size = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 5
  %39 = ptrtoint ptr %certs_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %certs_size, align 4
  %40 = ptrtoint ptr %certs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %certs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool152.not = icmp eq i32 %41, 0
  br i1 %tobool152.not, label %if.end145.do.body158_crit_edge, label %lor.lhs.false153

if.end145.do.body158_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

lor.lhs.false153:                                 ; preds = %if.end145
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool156.not = icmp eq i32 %43, 0
  br i1 %tobool156.not, label %lor.lhs.false153.do.body158_crit_edge, label %do.body175

lor.lhs.false153.do.body158_crit_edge:            ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

do.body158:                                       ; preds = %lor.lhs.false153.do.body158_crit_edge, %if.end145.do.body158_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_parse_binary.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_parse_binary, %if.then170)) #7
          to label %cleanup [label %if.then170], !srcloc !87

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_parse_binary.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.13) #7
  br label %cleanup

do.body175:                                       ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %31)
  %cmp179 = icmp ult i32 %41, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %pelen)
  %cmp184.not = icmp uge i32 %43, %pelen
  %or.cond333 = select i1 %cmp179, i1 true, i1 %cmp184.not
  %sub191 = sub i32 %pelen, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %sub191)
  %cmp192 = icmp ugt i32 %41, %sub191
  %or.cond334 = select i1 %or.cond333, i1 true, i1 %cmp192
  br i1 %or.cond334, label %do.body175.cleanup_crit_edge, label %do.end197

do.body175.cleanup_crit_edge:                     ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end197:                                        ; preds = %do.body175
  %sig_offset = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 6
  %44 = ptrtoint ptr %sig_offset to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %sig_offset, align 4
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  %sig_len = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 7
  %47 = ptrtoint ptr %sig_len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sig_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_parse_binary.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_parse_binary, %if.then214)) #7
          to label %do.end222 [label %if.then214], !srcloc !87

if.then214:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %sig_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sig_len, align 4
  %50 = ptrtoint ptr %sig_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sig_offset, align 4
  %add.ptr219 = getelementptr i8, ptr %pebuf, i32 %51
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_parse_binary.__UNIQUE_ID_ddebug177, ptr noundef nonnull @.str.15, i32 noundef %49, i32 noundef %51, i32 noundef %49, ptr noundef %add.ptr219) #7
  br label %do.end222

do.end222:                                        ; preds = %if.then214, %do.end197
  %sections = getelementptr inbounds %struct.pe_hdr, ptr %add.ptr, i32 0, i32 2
  %52 = ptrtoint ptr %sections to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sections, align 2
  %conv223 = zext i16 %53 to i32
  %n_sections = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 4
  %54 = ptrtoint ptr %n_sections to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv223, ptr %n_sections, align 4
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ctx, align 4
  %sub226 = sub i32 %56, %add148
  %div227 = udiv i32 %sub226, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %div227, i32 %conv223)
  %cmp228 = icmp ult i32 %div227, %conv223
  br i1 %cmp228, label %do.end222.cleanup_crit_edge, label %if.end231

do.end222.cleanup_crit_edge:                      ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end231:                                        ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr232 = getelementptr i8, ptr %pebuf, i32 %add148
  %secs233 = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 8
  %57 = ptrtoint ptr %secs233 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr232, ptr %secs233, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end231, %do.end222.cleanup_crit_edge, %do.body175.cleanup_crit_edge, %if.then170, %do.body158, %if.end138.cleanup_crit_edge, %do.end129.cleanup_crit_edge, %if.then90, %do.body86, %lor.lhs.false67.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end20.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end231 ], [ -80, %entry.cleanup_crit_edge ], [ -80, %do.end.cleanup_crit_edge ], [ -80, %if.end5.cleanup_crit_edge ], [ -80, %do.end20.cleanup_crit_edge ], [ -80, %if.end26.cleanup_crit_edge ], [ -80, %lor.lhs.false49.cleanup_crit_edge ], [ -80, %lor.lhs.false67.cleanup_crit_edge ], [ -80, %if.then90 ], [ -80, %do.end129.cleanup_crit_edge ], [ -80, %if.end138.cleanup_crit_edge ], [ -61, %if.then170 ], [ -80, %do.body175.cleanup_crit_edge ], [ -80, %do.end222.cleanup_crit_edge ], [ -80, %do.body86 ], [ -61, %do.body158 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pefile_strip_sig_wrapper(ptr nocapture noundef readonly %pebuf, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sig_len = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %sig_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sig_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then3)) #7
          to label %cleanup [label %if.then3], !srcloc !87

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %sig_offset = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %sig_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sig_offset, align 4
  %add.ptr = getelementptr i8, ptr %pebuf, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %wrapper.sroa.0.0.copyload = load i32, ptr %add.ptr, align 1
  %wrapper.sroa.7.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 4
  %5 = ptrtoint ptr %wrapper.sroa.7.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %wrapper.sroa.7.0.copyload = load i16, ptr %wrapper.sroa.7.0.add.ptr.sroa_idx, align 1
  %wrapper.sroa.10.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %add.ptr, i32 6
  %6 = ptrtoint ptr %wrapper.sroa.10.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %wrapper.sroa.10.0.copyload = load i16, ptr %wrapper.sroa.10.0.add.ptr.sroa_idx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then17)) #7
          to label %do.end21 [label %if.then17], !srcloc !87

if.then17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %wrapper.sroa.7.0.copyload to i32
  %conv18 = zext i16 %wrapper.sroa.10.0.copyload to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.20, i32 noundef %wrapper.sroa.0.0.copyload, i32 noundef %conv, i32 noundef %conv18) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %if.end4
  %sub = add i32 %wrapper.sroa.0.0.copyload, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %7 = ptrtoint ptr %sig_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sig_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp24.not = icmp eq i32 %add, %8
  br i1 %cmp24.not, label %if.end43, label %do.body27

do.body27:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then39)) #7
          to label %cleanup [label %if.then39], !srcloc !87

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end43:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %wrapper.sroa.7.0.copyload)
  %cmp46.not = icmp eq i16 %wrapper.sroa.7.0.copyload, 512
  br i1 %cmp46.not, label %if.end65, label %do.body49

do.body49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then61)) #7
          to label %cleanup [label %if.then61], !srcloc !87

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.24) #7
  br label %cleanup

if.end65:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wrapper.sroa.10.0.copyload)
  %cmp68.not = icmp eq i16 %wrapper.sroa.10.0.copyload, 2
  br i1 %cmp68.not, label %if.end87, label %do.body71

do.body71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then83)) #7
          to label %cleanup [label %if.then83], !srcloc !87

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end87:                                         ; preds = %if.end65
  %9 = ptrtoint ptr %sig_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sig_offset, align 4
  %add91 = add i32 %10, 8
  store i32 %add91, ptr %sig_offset, align 4
  %sub93 = add i32 %wrapper.sroa.0.0.copyload, -8
  %11 = ptrtoint ptr %sig_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub93, ptr %sig_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub93)
  %cmp95 = icmp ult i32 %sub93, 4
  br i1 %cmp95, label %do.body98, label %if.end114

do.body98:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then110)) #7
          to label %cleanup [label %if.then110], !srcloc !87

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.28) #7
  br label %cleanup

if.end114:                                        ; preds = %if.end87
  %add.ptr116 = getelementptr i8, ptr %pebuf, i32 %add91
  %12 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %cmp118.not = icmp eq i8 %13, 48
  br i1 %cmp118.not, label %if.end121, label %if.end114.do.body148_crit_edge

if.end114.do.body148_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body148

if.end121:                                        ; preds = %if.end114
  %arrayidx122 = getelementptr i8, ptr %add.ptr116, i32 1
  %14 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %15 to i32
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %15, label %sw.caserange140 [
    i8 -128, label %if.end121.cleanup_crit_edge
    i8 -127, label %sw.bb128
    i8 -126, label %sw.bb132
  ]

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  %add126 = add nuw nsw i32 %conv123, 2
  br label %check_len

sw.caserange:                                     ; preds = %sw.caserange140
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %inbounds = icmp sgt i8 %15, -1
  br i1 %inbounds, label %sw.bb, label %sw.caserange.do.body148_crit_edge

sw.caserange.do.body148_crit_edge:                ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body148

sw.bb128:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx129 = getelementptr i8, ptr %add.ptr116, i32 2
  %17 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %18 to i32
  %add131 = add nuw nsw i32 %conv130, 3
  br label %check_len

sw.bb132:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx133 = getelementptr i8, ptr %add.ptr116, i32 2
  %19 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv134, 8
  %arrayidx135 = getelementptr i8, ptr %add.ptr116, i32 3
  %21 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %22 to i32
  %or137 = or i32 %shl, %conv136
  %add138 = add nuw nsw i32 %or137, 4
  br label %check_len

sw.caserange140:                                  ; preds = %if.end121
  %23 = add nsw i32 %conv123, -131
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %23)
  %inbounds141 = icmp ult i32 %23, 125
  br i1 %inbounds141, label %sw.caserange140.cleanup_crit_edge, label %sw.caserange

sw.caserange140.cleanup_crit_edge:                ; preds = %sw.caserange140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

check_len:                                        ; preds = %sw.bb132, %sw.bb128, %sw.bb
  %len.0 = phi i32 [ %add126, %sw.bb ], [ %add138, %sw.bb132 ], [ %add131, %sw.bb128 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %sub93)
  %cmp143.not = icmp ugt i32 %len.0, %sub93
  br i1 %cmp143.not, label %check_len.do.body148_crit_edge, label %if.then145

check_len.do.body148_crit_edge:                   ; preds = %check_len
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body148

if.then145:                                       ; preds = %check_len
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %sig_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len.0, ptr %sig_len, align 4
  br label %cleanup

do.body148:                                       ; preds = %check_len.do.body148_crit_edge, %sw.caserange.do.body148_crit_edge, %if.end114.do.body148_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_strip_sig_wrapper, %if.then160)) #7
          to label %cleanup [label %if.then160], !srcloc !87

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %do.body148, %if.then145, %sw.caserange140.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.then110, %do.body98, %if.then83, %do.body71, %if.then61, %do.body49, %if.then39, %do.body27, %if.then3, %do.body
  %retval.0 = phi i32 [ 0, %if.then145 ], [ -80, %if.then3 ], [ -80, %if.then39 ], [ -524, %if.then61 ], [ -524, %if.then83 ], [ -129, %if.then110 ], [ 0, %if.end121.cleanup_crit_edge ], [ -90, %sw.caserange140.cleanup_crit_edge ], [ -80, %if.then160 ], [ -80, %do.body ], [ -80, %do.body27 ], [ -524, %do.body49 ], [ -524, %do.body71 ], [ -129, %do.body98 ], [ -80, %do.body148 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_pkcs7_signature(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mscode_parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pefile_digest_pe(ptr noundef %pebuf, i32 noundef %pelen, ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %digest_algo = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %digest_algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %digest_algo, align 4
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %1, i32 noundef 0, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, i32 -65, i32 %2
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 128
  %add = add i32 %4, 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %6, i32 -128
  %7 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %digestsize.i, align 128
  %digest_len = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 10
  %9 = ptrtoint ptr %digest_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %digest_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp6.not = icmp eq i32 %8, %10
  br i1 %cmp6.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_digest_pe.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_digest_pe, %if.then12)) #7
          to label %error_no_desc [label %if.then12], !srcloc !87

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %digest_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digest_len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_digest_pe.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.33, i32 noundef %8, i32 noundef %12) #7
  br label %error_no_desc

do.body16:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_digest_pe.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_digest_pe, %if.then28)) #7
          to label %if.end8.i.i [label %if.then28], !srcloc !87

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_digest_pe.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.35, i32 noundef %add, i32 noundef %8) #7
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then28, %do.body16
  %add32 = add i32 %8, %add
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add32, i32 noundef 3520) #10
  %tobool34.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not, label %if.end8.i.i.error_no_desc_crit_edge, label %if.end36

if.end8.i.i.error_no_desc_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_no_desc

if.end36:                                         ; preds = %if.end8.i.i
  %13 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end36.error_crit_edge

if.end36.error_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

crypto_shash_init.exit:                           ; preds = %if.end36
  %16 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 -256
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %19(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp39 = icmp slt i32 %call3.i, 0
  br i1 %cmp39, label %crypto_shash_init.exit.error_crit_edge, label %if.end41

crypto_shash_init.exit.error_crit_edge:           ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end41:                                         ; preds = %crypto_shash_init.exit
  %image_checksum_offset.i = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %image_checksum_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image_checksum_offset.i, align 4
  %call.i = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %pebuf, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i153 = icmp slt i32 %call.i, 0
  br i1 %cmp.i153, label %if.end41.error_crit_edge, label %if.end.i154

if.end41.error_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end.i154:                                      ; preds = %if.end41
  %22 = ptrtoint ptr %image_checksum_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %image_checksum_offset.i, align 4
  %add.i = add i32 %23, 4
  %add.ptr.i = getelementptr i8, ptr %pebuf, i32 %add.i
  %cert_dirent_offset.i = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 2
  %24 = ptrtoint ptr %cert_dirent_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cert_dirent_offset.i, align 4
  %sub.i = sub i32 %25, %add.i
  %call2.i = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i154.error_crit_edge, label %if.end5.i

if.end.i154.error_crit_edge:                      ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end5.i:                                        ; preds = %if.end.i154
  %26 = ptrtoint ptr %cert_dirent_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cert_dirent_offset.i, align 4
  %add7.i = add i32 %27, 8
  %add.ptr8.i = getelementptr i8, ptr %pebuf, i32 %add7.i
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx, align 4
  %sub9.i = sub i32 %29, %add7.i
  %call10.i = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr8.i, i32 noundef %sub9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end5.i.error_crit_edge, label %if.end13.i

if.end5.i.error_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end13.i:                                       ; preds = %if.end5.i
  %n_sections.i = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 4
  %30 = ptrtoint ptr %n_sections.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_sections.i, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #7
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %if.end13.i.error_crit_edge, label %if.end7.i.i.i, !prof !88

if.end13.i.error_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7.i.i.i:                                    ; preds = %if.end13.i
  %34 = extractvalue { i32, i1 } %32, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #10
  %tobool.not.i156 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i156, label %if.end7.i.i.i.error_crit_edge, label %if.end16.i

if.end7.i.i.i.error_crit_edge:                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end16.i:                                       ; preds = %if.end7.i.i.i
  %35 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %call8.i.i.i, align 128
  %36 = ptrtoint ptr %n_sections.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_sections.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp18166.i = icmp ugt i32 %37, 1
  br i1 %cmp18166.i, label %for.cond19.preheader.lr.ph.i, label %if.end16.i.for.end37.i_crit_edge

if.end16.i.for.end37.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i

for.cond19.preheader.lr.ph.i:                     ; preds = %if.end16.i
  %secs.i = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 8
  %38 = ptrtoint ptr %secs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %secs.i, align 4
  %40 = ptrtoint ptr %n_sections.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_sections.i, align 4
  br label %for.body21.lr.ph.i

for.body21.lr.ph.i:                               ; preds = %for.end.i.for.body21.lr.ph.i_crit_edge, %for.cond19.preheader.lr.ph.i
  %loop.0167.i = phi i32 [ 1, %for.cond19.preheader.lr.ph.i ], [ %inc36.i, %for.end.i.for.body21.lr.ph.i_crit_edge ]
  %arrayidx25.i = getelementptr %struct.section_header, ptr %39, i32 %loop.0167.i
  %data_addr1.i.i = getelementptr %struct.section_header, ptr %39, i32 %loop.0167.i, i32 4
  %42 = ptrtoint ptr %data_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_addr1.i.i, align 4
  %virtual_address7.i.i = getelementptr %struct.section_header, ptr %39, i32 %loop.0167.i, i32 2
  %virtual_size21.i.i = getelementptr %struct.section_header, ptr %39, i32 %loop.0167.i, i32 1
  %raw_data_size30.i.i = getelementptr %struct.section_header, ptr %39, i32 %loop.0167.i, i32 3
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.inc.i.for.body21.i_crit_edge, %for.body21.lr.ph.i
  %i.0164.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %inc.i, %for.inc.i.for.body21.i_crit_edge ]
  %arrayidx22.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.0164.i
  %44 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx22.i, align 4
  %arrayidx23.i = getelementptr %struct.section_header, ptr %39, i32 %45
  %data_addr.i.i = getelementptr %struct.section_header, ptr %39, i32 %45, i32 4
  %46 = ptrtoint ptr %data_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp.i.i157 = icmp ugt i32 %47, %43
  br i1 %cmp.i.i157, label %for.body21.i.if.then28.i_crit_edge, label %if.end.i.i158

for.body21.i.if.then28.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

if.end.i.i158:                                    ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %47)
  %cmp4.i.i = icmp ugt i32 %43, %47
  br i1 %cmp4.i.i, label %if.end.i.i158.for.inc.i_crit_edge, label %if.end6.i.i

if.end.i.i158.for.inc.i_crit_edge:                ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end6.i.i:                                      ; preds = %if.end.i.i158
  %virtual_address.i.i = getelementptr %struct.section_header, ptr %39, i32 %45, i32 2
  %48 = ptrtoint ptr %virtual_address.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virtual_address.i.i, align 4
  %50 = ptrtoint ptr %virtual_address7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %virtual_address7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp8.i.i = icmp ugt i32 %49, %51
  br i1 %cmp8.i.i, label %if.end6.i.i.if.then28.i_crit_edge, label %if.end10.i.i

if.end6.i.i.if.then28.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp13.i.i = icmp ugt i32 %51, %49
  br i1 %cmp13.i.i, label %if.end10.i.i.for.inc.i_crit_edge, label %if.end15.i.i

if.end10.i.i.for.inc.i_crit_edge:                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %call.i.i = tail call i32 @strcmp(ptr noundef %arrayidx23.i, ptr noundef %arrayidx25.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp18.not.i.i, label %if.end20.i.i, label %pefile_compare_shdrs.exit.i

if.end20.i.i:                                     ; preds = %if.end15.i.i
  %virtual_size.i.i = getelementptr %struct.section_header, ptr %39, i32 %45, i32 1
  %52 = ptrtoint ptr %virtual_size.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %virtual_size.i.i, align 4
  %54 = ptrtoint ptr %virtual_size21.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %virtual_size21.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp22.i.i = icmp ugt i32 %53, %55
  br i1 %cmp22.i.i, label %if.end20.i.i.if.then28.i_crit_edge, label %if.end24.i.i

if.end20.i.i.if.then28.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp27.i.i = icmp ugt i32 %55, %53
  br i1 %cmp27.i.i, label %if.end24.i.i.for.inc.i_crit_edge, label %if.end29.i.i

if.end24.i.i.for.inc.i_crit_edge:                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end29.i.i:                                     ; preds = %if.end24.i.i
  %raw_data_size.i.i = getelementptr %struct.section_header, ptr %39, i32 %45, i32 3
  %56 = ptrtoint ptr %raw_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %raw_data_size.i.i, align 4
  %58 = ptrtoint ptr %raw_data_size30.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %raw_data_size30.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp31.i.i = icmp ugt i32 %57, %59
  br i1 %cmp31.i.i, label %if.end29.i.i.if.then28.i_crit_edge, label %if.end29.i.i.for.inc.i_crit_edge

if.end29.i.i.for.inc.i_crit_edge:                 ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end29.i.i.if.then28.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

pefile_compare_shdrs.exit.i:                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp27.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp27.i, label %pefile_compare_shdrs.exit.i.if.then28.i_crit_edge, label %pefile_compare_shdrs.exit.i.for.inc.i_crit_edge

pefile_compare_shdrs.exit.i.for.inc.i_crit_edge:  ; preds = %pefile_compare_shdrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

pefile_compare_shdrs.exit.i.if.then28.i_crit_edge: ; preds = %pefile_compare_shdrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

if.then28.i:                                      ; preds = %pefile_compare_shdrs.exit.i.if.then28.i_crit_edge, %if.end29.i.i.if.then28.i_crit_edge, %if.end20.i.i.if.then28.i_crit_edge, %if.end6.i.i.if.then28.i_crit_edge, %for.body21.i.if.then28.i_crit_edge
  %arrayidx22.i.le = getelementptr i32, ptr %call8.i.i.i, i32 %i.0164.i
  %add29.i = add nuw i32 %i.0164.i, 1
  %arrayidx30.i = getelementptr i32, ptr %call8.i.i.i, i32 %add29.i
  %sub32.i = sub i32 %loop.0167.i, %i.0164.i
  %mul.i = shl i32 %sub32.i, 2
  %60 = call ptr @memmove(ptr %arrayidx30.i, ptr %arrayidx22.i.le, i32 %mul.i)
  br label %for.end.i

for.inc.i:                                        ; preds = %pefile_compare_shdrs.exit.i.for.inc.i_crit_edge, %if.end29.i.i.for.inc.i_crit_edge, %if.end24.i.i.for.inc.i_crit_edge, %if.end10.i.i.for.inc.i_crit_edge, %if.end.i.i158.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %loop.0167.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body21.i_crit_edge

for.inc.i.for.body21.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then28.i
  %i.0161.i = phi i32 [ %i.0164.i, %if.then28.i ], [ %loop.0167.i, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx34.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.0161.i
  %61 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %loop.0167.i, ptr %arrayidx34.i, align 4
  %inc36.i = add nuw i32 %loop.0167.i, 1
  %cmp18.i = icmp ult i32 %inc36.i, %41
  br i1 %cmp18.i, label %for.end.i.for.body21.lr.ph.i_crit_edge, label %for.end.i.for.end37.i_crit_edge

for.end.i.for.end37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i

for.end.i.for.body21.lr.ph.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.lr.ph.i

for.end37.i:                                      ; preds = %for.end.i.for.end37.i_crit_edge, %if.end16.i.for.end37.i_crit_edge
  %62 = phi i32 [ %37, %if.end16.i.for.end37.i_crit_edge ], [ %41, %for.end.i.for.end37.i_crit_edge ]
  %63 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp41170.not.i = icmp eq i32 %62, 0
  br i1 %cmp41170.not.i, label %for.end37.i.for.end65.i_crit_edge, label %for.body42.lr.ph.i

for.end37.i.for.end65.i_crit_edge:                ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65.i

for.body42.lr.ph.i:                               ; preds = %for.end37.i
  %secs44.i = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 8
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.inc63.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %hashed_bytes.0172.i = phi i32 [ %64, %for.body42.lr.ph.i ], [ %hashed_bytes.1.i, %for.inc63.i.for.body42.i_crit_edge ]
  %loop.1171.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc64.i, %for.inc63.i.for.body42.i_crit_edge ]
  %arrayidx43.i = getelementptr i32, ptr %call8.i.i.i, i32 %loop.1171.i
  %65 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx43.i, align 4
  %67 = ptrtoint ptr %secs44.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %secs44.i, align 4
  %raw_data_size.i = getelementptr %struct.section_header, ptr %68, i32 %66, i32 3
  %69 = ptrtoint ptr %raw_data_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %raw_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp46.i = icmp eq i32 %70, 0
  br i1 %cmp46.i, label %for.body42.i.for.inc63.i_crit_edge, label %if.end48.i

for.body42.i.for.inc63.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63.i

if.end48.i:                                       ; preds = %for.body42.i
  %data_addr.i = getelementptr %struct.section_header, ptr %68, i32 %66, i32 4
  %71 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_addr.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %pebuf, i32 %72
  %call55.i = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr51.i, i32 noundef %70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %if.then57.i, label %if.end58.i

if.then57.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %error

if.end58.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %secs44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %secs44.i, align 4
  %raw_data_size61.i = getelementptr %struct.section_header, ptr %74, i32 %66, i32 3
  %75 = ptrtoint ptr %raw_data_size61.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %raw_data_size61.i, align 4
  %add62.i = add i32 %76, %hashed_bytes.0172.i
  br label %for.inc63.i

for.inc63.i:                                      ; preds = %if.end58.i, %for.body42.i.for.inc63.i_crit_edge
  %hashed_bytes.1.i = phi i32 [ %hashed_bytes.0172.i, %for.body42.i.for.inc63.i_crit_edge ], [ %add62.i, %if.end58.i ]
  %inc64.i = add nuw i32 %loop.1171.i, 1
  %77 = ptrtoint ptr %n_sections.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_sections.i, align 4
  %cmp41.i = icmp ult i32 %inc64.i, %78
  br i1 %cmp41.i, label %for.inc63.i.for.body42.i_crit_edge, label %for.inc63.i.for.end65.i_crit_edge

for.inc63.i.for.end65.i_crit_edge:                ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65.i

for.inc63.i.for.body42.i_crit_edge:               ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.end65.i:                                      ; preds = %for.inc63.i.for.end65.i_crit_edge, %for.end37.i.for.end65.i_crit_edge
  %hashed_bytes.0.lcssa.i = phi i32 [ %64, %for.end37.i.for.end65.i_crit_edge ], [ %hashed_bytes.1.i, %for.inc63.i.for.end65.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %hashed_bytes.0.lcssa.i, i32 %pelen)
  %cmp66.i = icmp ult i32 %hashed_bytes.0.lcssa.i, %pelen
  br i1 %cmp66.i, label %if.then67.i, label %for.end65.i.if.end45_crit_edge

for.end65.i.if.end45_crit_edge:                   ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then67.i:                                      ; preds = %for.end65.i
  %certs_size.i = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 5
  %79 = ptrtoint ptr %certs_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %certs_size.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %pebuf, i32 %hashed_bytes.0.lcssa.i
  %81 = add i32 %hashed_bytes.0.lcssa.i, %80
  %sub70.i = sub i32 %pelen, %81
  %call71.i = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr69.i, i32 noundef %sub70.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.then67.i.error_crit_edge, label %if.then67.i.if.end45_crit_edge

if.then67.i.if.end45_crit_edge:                   ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then67.i.error_crit_edge:                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end45:                                         ; preds = %if.then67.i.if.end45_crit_edge, %for.end65.i.if.end45_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %add
  %call46 = tail call i32 @crypto_shash_final(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.error_crit_edge, label %do.body50

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.body50:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_digest_pe.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_digest_pe, %if.then62)) #7
          to label %do.end66 [label %if.then62], !srcloc !87

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %digest_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %digest_len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_digest_pe.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.37, i32 noundef %83, ptr noundef %add.ptr) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %digest67 = getelementptr inbounds %struct.pefile_context, ptr %ctx, i32 0, i32 9
  %84 = ptrtoint ptr %digest67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %digest67, align 4
  %86 = ptrtoint ptr %digest_len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %digest_len, align 4
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %85, i32 %87) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp70.not = icmp eq i32 %bcmp, 0
  br i1 %cmp70.not, label %do.body88, label %do.body72

do.body72:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_digest_pe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_digest_pe, %if.then84)) #7
          to label %error [label %if.then84], !srcloc !87

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_digest_pe.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.39) #7
  br label %error

do.body88:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pefile_digest_pe.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pefile_digest_pe, %if.then100)) #7
          to label %error [label %if.then100], !srcloc !87

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pefile_digest_pe.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.41) #7
  br label %error

error:                                            ; preds = %if.then100, %do.body88, %if.then84, %do.body72, %if.end45.error_crit_edge, %if.then67.i.error_crit_edge, %if.then57.i, %if.end7.i.i.i.error_crit_edge, %if.end13.i.error_crit_edge, %if.end5.i.error_crit_edge, %if.end.i154.error_crit_edge, %if.end41.error_crit_edge, %crypto_shash_init.exit.error_crit_edge, %if.end36.error_crit_edge
  %ret.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.error_crit_edge ], [ %call46, %if.end45.error_crit_edge ], [ %call46, %if.then100 ], [ -129, %if.then84 ], [ -129, %do.body72 ], [ %call46, %do.body88 ], [ -126, %if.end36.error_crit_edge ], [ -12, %if.end13.i.error_crit_edge ], [ %call71.i, %if.then67.i.error_crit_edge ], [ -12, %if.end7.i.i.i.error_crit_edge ], [ %call10.i, %if.end5.i.error_crit_edge ], [ %call2.i, %if.end.i154.error_crit_edge ], [ %call.i, %if.end41.error_crit_edge ], [ %call55.i, %if.then57.i ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %error_no_desc

error_no_desc:                                    ; preds = %error, %if.end8.i.i.error_no_desc_crit_edge, %if.then12, %do.body
  %ret.1 = phi i32 [ %ret.0, %error ], [ -12, %if.end8.i.i.error_no_desc_crit_edge ], [ -74, %if.then12 ], [ -74, %do.body ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_no_desc, %if.then
  %retval.0 = phi i32 [ %ret.1, %error_no_desc ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 441, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @verify_pefile_signature.__UNIQUE_ID_ddebug190, !1, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 77, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pefile_parse_binary.__UNIQUE_ID_ddebug173, !8, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 81, i32 2}
!14 = !{ptr @pefile_parse_binary.__UNIQUE_ID_ddebug174, !13, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 82, i32 2}
!18 = !{ptr @pefile_parse_binary.__UNIQUE_ID_ddebug175, !17, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 98, i32 3}
!22 = !{ptr @pefile_parse_binary.__UNIQUE_ID_ddebug176, !21, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 106, i32 2}
!26 = !{ptr @pefile_parse_binary.__UNIQUE_ID_ddebug177, !25, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 130, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug178, !29, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 135, i32 2}
!35 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug179, !34, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 142, i32 3}
!39 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug180, !38, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!40 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 146, i32 3}
!43 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug181, !42, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!44 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 150, i32 3}
!47 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug182, !46, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 163, i32 3}
!51 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug183, !50, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!52 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 197, i32 2}
!55 = !{ptr @pefile_strip_sig_wrapper.__UNIQUE_ID_ddebug184, !54, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!56 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 340, i32 3}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pefile_digest_pe.__UNIQUE_ID_ddebug185, !58, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!61 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 345, i32 2}
!64 = !{ptr @pefile_digest_pe.__UNIQUE_ID_ddebug186, !63, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!65 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 366, i32 2}
!68 = !{ptr @pefile_digest_pe.__UNIQUE_ID_ddebug187, !67, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!69 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 372, i32 3}
!72 = !{ptr @pefile_digest_pe.__UNIQUE_ID_ddebug188, !71, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!73 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../crypto/asymmetric_keys/verify_pefile.c", i32 375, i32 3}
!76 = !{ptr @pefile_digest_pe.__UNIQUE_ID_ddebug189, !75, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!77 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148963042, i64 2148963047, i64 2148963060, i64 2148963104, i64 2148963138, i64 2148963159}
!88 = !{!"branch_weights", i32 1, i32 2000}
