; ModuleID = '/llk/IR_all_yes/crypto/ansi_cprng.c_pt.bc'
source_filename = "../crypto/ansi_cprng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.prng_context = type { %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@rng_algs = internal global [1 x %struct.rng_alg] [%struct.rng_alg { ptr @cprng_get_random, ptr @cprng_reset, ptr null, i32 48, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 136, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"stdrng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ansi_cprng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @cprng_init, ptr @cprng_exit, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }], align 128
@__UNIQUE_ID_file173 = internal constant [34 x i8] c"ansi_cprng.file=crypto/ansi_cprng\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"ansi_cprng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [63 x i8] c"ansi_cprng.description=Software Pseudo Random Number Generator\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [54 x i8] c"ansi_cprng.author=Neil Horman <nhorman@tuxdriver.com>\00", section ".modinfo", align 1
@__param_str_dbg = internal constant [15 x i8] c"ansi_cprng.dbg\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg = internal constant %struct.kernel_param { ptr @__param_str_dbg, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.42 { ptr @dbg } }, section "__param", align 4
@__UNIQUE_ID_dbgtype177 = internal constant [28 x i8] c"ansi_cprng.parmtype=dbg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg178 = internal constant [64 x i8] c"ansi_cprng.parm=dbg:Boolean to enable debugging (0/1 == off/on)\00", section ".modinfo", align 1
@__initcall__kmod_ansi_cprng__179_470_prng_mod_init4 = internal global ptr @prng_mod_init, section ".initcall4.init", align 4
@__exitcall_prng_mod_fini = internal global ptr @prng_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace180 = internal constant [24 x i8] c"ansi_cprng.alias=stdrng\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [31 x i8] c"ansi_cprng.alias=crypto-stdrng\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [28 x i8] c"ansi_cprng.alias=ansi_cprng\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [35 x i8] c"ansi_cprng.alias=crypto-ansi_cprng\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns184 = internal constant [37 x i8] c"ansi_cprng.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@get_prng_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012getting %d random bytes for context %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_prng_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crypto/ansi_cprng.c\00", [44 x i8] zeroinitializer }, align 32
@get_prng_bytes._entry_ptr = internal global ptr @get_prng_bytes._entry, section ".printk_index", align 4
@get_prng_bytes._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\012returning %d from get_prng_bytes in context %p\0A\00", [46 x i8] zeroinitializer }, align 32
@get_prng_bytes._entry_ptr.5 = internal global ptr @get_prng_bytes._entry.3, section ".printk_index", align 4
@_get_more_prng_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\012Calling _get_more_prng_bytes for context %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_get_more_prng_bytes\00", [43 x i8] zeroinitializer }, align 32
@_get_more_prng_bytes._entry_ptr = internal global ptr @_get_more_prng_bytes._entry, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Input DT: \00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input I: \00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input V: \00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tmp stage 0: \00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tmp stage 1: \00", [18 x i8] zeroinitializer }, align 32
@_get_more_prng_bytes._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ctx %p Failed repetition check!\0A\00", [61 x i8] zeroinitializer }, align 32
@_get_more_prng_bytes._entry_ptr.16 = internal global ptr @_get_more_prng_bytes._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tmp stage 2: \00", [18 x i8] zeroinitializer }, align 32
@_get_more_prng_bytes._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Returning new block for context %p\0A\00", [60 x i8] zeroinitializer }, align 32
@_get_more_prng_bytes._entry_ptr.20 = internal global ptr @_get_more_prng_bytes._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DT: \00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Output I: \00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Output V: \00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"New Random Data: \00", [46 x i8] zeroinitializer }, align 32
@hexdump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\012%s\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@hexdump._entry_ptr = internal global ptr @hexdump._entry, section ".printk_index", align 4
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01c\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0123456789abcdef\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zaybxcwdveuftgsh\00", [47 x i8] zeroinitializer }, align 32
@reset_prng_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012PRNG: setkey() failed flags=%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset_prng_context\00", [45 x i8] zeroinitializer }, align 32
@reset_prng_context._entry_ptr = internal global ptr @reset_prng_context._entry, section ".printk_index", align 4
@cprng_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->prng_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@cprng_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012Failed to alloc tfm for context %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cprng_init\00", [21 x i8] zeroinitializer }, align 32
@cprng_init._entry_ptr = internal global ptr @cprng_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [4 x i8] c"dbg\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 51, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 212, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 266, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 88, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 91, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 92, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 93, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 108, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 118, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 133, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 150, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 169, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 172, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 173, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 174, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 175, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 56, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 57, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 57, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 286, i32 52 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 294, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 308, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 324, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 325, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [23 x i8] c"../crypto/ansi_cprng.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 327, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_dbg178, ptr @__UNIQUE_ID_dbgtype177, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_import_ns184, ptr @__UNIQUE_ID_license174, ptr @__exitcall_prng_mod_fini, ptr @__initcall__kmod_ansi_cprng__179_470_prng_mod_init4, ptr @__param_dbg, ptr @_get_more_prng_bytes._entry, ptr @_get_more_prng_bytes._entry.14, ptr @_get_more_prng_bytes._entry.18, ptr @_get_more_prng_bytes._entry_ptr, ptr @_get_more_prng_bytes._entry_ptr.16, ptr @_get_more_prng_bytes._entry_ptr.20, ptr @cprng_init._entry, ptr @cprng_init._entry_ptr, ptr @get_prng_bytes._entry, ptr @get_prng_bytes._entry.3, ptr @get_prng_bytes._entry_ptr, ptr @get_prng_bytes._entry_ptr.5, ptr @hexdump._entry, ptr @hexdump._entry_ptr, ptr @prng_mod_fini, ptr @reset_prng_context._entry, ptr @reset_prng_context._entry_ptr, ptr @dbg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cprng_init.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_prng_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_prng_bytes._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_more_prng_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_more_prng_bytes._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_more_prng_bytes._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hexdump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_prng_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cprng_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cprng_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @prng_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @crypto_unregister_rngs(ptr noundef nonnull @rng_algs, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rngs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prng_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_rngs(ptr noundef nonnull @rng_algs, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cprng_get_random(ptr noundef %tfm, ptr nocapture noundef readnone %src, i32 noundef %slen, ptr nocapture noundef writeonly %rdata, i32 noundef %dlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %__crt_ctx.i.i) #6
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.done.i_crit_edge

entry.done.i_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

if.end.i:                                         ; preds = %entry
  %and2.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dlen)
  %cmp.i = icmp ult i32 %dlen, 16
  br i1 %cmp.i, label %if.then4.i.done.i_crit_edge, label %if.then4.i.if.end7.i_crit_edge

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i.done.i_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

if.end7.i:                                        ; preds = %if.then4.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %byte_count.0.i = phi i32 [ %dlen, %if.end.i.if.end7.i_crit_edge ], [ 16, %if.then4.i.if.end7.i_crit_edge ]
  %2 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool8.not.i = icmp eq i32 %2, 0
  br i1 %tobool8.not.i, label %if.end7.i.do.end13.i_crit_edge, label %do.end.i

if.end7.i.do.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %byte_count.0.i, ptr noundef %__crt_ctx.i.i) #9
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %if.end7.i.do.end13.i_crit_edge
  %rand_data_valid.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %rand_data44.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  br label %remainder.i

remainder.i:                                      ; preds = %for.end.i.remainder.i_crit_edge, %do.end13.i
  %byte_count.1.i = phi i32 [ %byte_count.0.i, %do.end13.i ], [ %byte_count.5.lcssa.i, %for.end.i.remainder.i_crit_edge ]
  %ptr.0.i = phi ptr [ %rdata, %do.end13.i ], [ %ptr.4.lcssa.i, %for.end.i.remainder.i_crit_edge ]
  %3 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rand_data_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp14.i = icmp eq i32 %4, 16
  br i1 %cmp14.i, label %if.then15.i, label %remainder.i.if.end20.i_crit_edge

remainder.i.if.end20.i_crit_edge:                 ; preds = %remainder.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then15.i:                                      ; preds = %remainder.i
  %call16.i = tail call fastcc i32 @_get_more_prng_bytes(ptr noundef %__crt_ctx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.then15.i.done.sink.split.i_crit_edge, label %if.then15.i.if.end20.i_crit_edge

if.then15.i.if.end20.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then15.i.done.sink.split.i_crit_edge:          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.sink.split.i

if.end20.i:                                       ; preds = %if.then15.i.if.end20.i_crit_edge, %remainder.i.if.end20.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %byte_count.1.i)
  %cmp21.i = icmp ult i32 %byte_count.1.i, 16
  br i1 %cmp21.i, label %if.end20.i.empty_rbuf.i_crit_edge, label %if.end20.i.for.body.preheader.i_crit_edge

if.end20.i.for.body.preheader.i_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i

if.end20.i.empty_rbuf.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %empty_rbuf.i

empty_rbuf.i:                                     ; preds = %if.end39.i.empty_rbuf.i_crit_edge, %if.end20.i.empty_rbuf.i_crit_edge
  %byte_count.2.i = phi i32 [ %byte_count.1.i, %if.end20.i.empty_rbuf.i_crit_edge ], [ %byte_count.510.i, %if.end39.i.empty_rbuf.i_crit_edge ]
  %ptr.1.i = phi ptr [ %ptr.0.i, %if.end20.i.empty_rbuf.i_crit_edge ], [ %ptr.411.i, %if.end39.i.empty_rbuf.i_crit_edge ]
  %5 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr.i = load i32, ptr %rand_data_valid.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %empty_rbuf.i
  %6 = phi i32 [ %inc.i, %while.body.i.while.cond.i_crit_edge ], [ %.pr.i, %empty_rbuf.i ]
  %byte_count.3.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %byte_count.2.i, %empty_rbuf.i ]
  %ptr.2.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ], [ %ptr.1.i, %empty_rbuf.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp24.i = icmp ult i32 %6, 16
  br i1 %cmp24.i, label %while.body.i, label %if.end30.i

while.body.i:                                     ; preds = %while.cond.i
  %arrayidx.i = getelementptr %struct.prng_context, ptr %__crt_ctx.i.i, i32 0, i32 1, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = ptrtoint ptr %ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ptr.2.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %ptr.2.i, i32 1
  %dec.i = add i32 %byte_count.3.i, -1
  %10 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rand_data_valid.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %rand_data_valid.i, align 4
  %cmp27.i = icmp eq i32 %dec.i, 0
  br i1 %cmp27.i, label %while.body.i.done.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.done.i_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

if.end30.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %byte_count.3.i)
  %cmp319.i = icmp ugt i32 %byte_count.3.i, 15
  br i1 %cmp319.i, label %if.end30.i.for.body.preheader.i_crit_edge, label %if.end30.i.for.end.i_crit_edge

if.end30.i.for.end.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end30.i.for.body.preheader.i_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end30.i.for.body.preheader.i_crit_edge, %if.end20.i.for.body.preheader.i_crit_edge
  %ptr.324.i = phi ptr [ %ptr.2.i, %if.end30.i.for.body.preheader.i_crit_edge ], [ %ptr.0.i, %if.end20.i.for.body.preheader.i_crit_edge ]
  %byte_count.423.i = phi i32 [ %byte_count.3.i, %if.end30.i.for.body.preheader.i_crit_edge ], [ %byte_count.1.i, %if.end20.i.for.body.preheader.i_crit_edge ]
  %12 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr25.i = load i32, ptr %rand_data_valid.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %for.body.preheader.i
  %13 = phi i32 [ %.pr25.i, %for.body.preheader.i ], [ %add.i, %if.end43.i.for.body.i_crit_edge ]
  %ptr.411.i = phi ptr [ %ptr.324.i, %for.body.preheader.i ], [ %add.ptr.i, %if.end43.i.for.body.i_crit_edge ]
  %byte_count.510.i = phi i32 [ %byte_count.423.i, %for.body.preheader.i ], [ %sub.i, %if.end43.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp33.i = icmp eq i32 %13, 16
  br i1 %cmp33.i, label %if.then34.i, label %for.body.i.if.end39.i_crit_edge

for.body.i.if.end39.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then34.i:                                      ; preds = %for.body.i
  %call35.i = tail call fastcc i32 @_get_more_prng_bytes(ptr noundef %__crt_ctx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then34.i.done.sink.split.i_crit_edge, label %if.end39thread-pre-split.i

if.then34.i.done.sink.split.i_crit_edge:          ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.sink.split.i

if.end39thread-pre-split.i:                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr1.i = load i32, ptr %rand_data_valid.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39thread-pre-split.i, %for.body.i.if.end39.i_crit_edge
  %15 = phi i32 [ %.pr1.i, %if.end39thread-pre-split.i ], [ %13, %for.body.i.if.end39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp41.not.i = icmp eq i32 %15, 0
  br i1 %cmp41.not.i, label %if.end43.i, label %if.end39.i.empty_rbuf.i_crit_edge

if.end39.i.empty_rbuf.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %empty_rbuf.i

if.end43.i:                                       ; preds = %if.end39.i
  %16 = call ptr @memcpy(ptr %ptr.411.i, ptr %rand_data44.i, i32 16)
  %17 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rand_data_valid.i, align 4
  %add.i = add i32 %18, 16
  store i32 %add.i, ptr %rand_data_valid.i, align 4
  %add.ptr.i = getelementptr i8, ptr %ptr.411.i, i32 16
  %sub.i = add i32 %byte_count.510.i, -16
  %cmp31.i = icmp ugt i32 %sub.i, 15
  br i1 %cmp31.i, label %if.end43.i.for.body.i_crit_edge, label %if.end43.i.for.end.i_crit_edge

if.end43.i.for.end.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end43.i.for.end.i_crit_edge, %if.end30.i.for.end.i_crit_edge
  %byte_count.5.lcssa.i = phi i32 [ %byte_count.3.i, %if.end30.i.for.end.i_crit_edge ], [ %sub.i, %if.end43.i.for.end.i_crit_edge ]
  %ptr.4.lcssa.i = phi ptr [ %ptr.2.i, %if.end30.i.for.end.i_crit_edge ], [ %add.ptr.i, %if.end43.i.for.end.i_crit_edge ]
  %tobool46.not.i = icmp eq i32 %byte_count.5.lcssa.i, 0
  br i1 %tobool46.not.i, label %for.end.i.done.i_crit_edge, label %for.end.i.remainder.i_crit_edge

for.end.i.remainder.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %remainder.i

for.end.i.done.i_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

done.sink.split.i:                                ; preds = %if.then34.i.done.sink.split.i_crit_edge, %if.then15.i.done.sink.split.i_crit_edge
  %19 = call ptr @memset(ptr %rdata, i32 0, i32 %dlen)
  br label %done.i

done.i:                                           ; preds = %done.sink.split.i, %for.end.i.done.i_crit_edge, %while.body.i.done.i_crit_edge, %if.then4.i.done.i_crit_edge, %entry.done.i_crit_edge
  %err.0.i = phi i32 [ -22, %entry.done.i_crit_edge ], [ -22, %if.then4.i.done.i_crit_edge ], [ -22, %done.sink.split.i ], [ 0, %while.body.i.done.i_crit_edge ], [ 0, %for.end.i.done.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %__crt_ctx.i.i) #6
  %20 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool51.not.i = icmp eq i32 %20, 0
  br i1 %tobool51.not.i, label %done.i.get_prng_bytes.exit_crit_edge, label %do.end55.i

done.i.get_prng_bytes.exit_crit_edge:             ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_prng_bytes.exit

do.end55.i:                                       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #8
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %err.0.i, ptr noundef %__crt_ctx.i.i) #9
  br label %get_prng_bytes.exit

get_prng_bytes.exit:                              ; preds = %do.end55.i, %done.i.get_prng_bytes.exit_crit_edge
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cprng_reset(ptr noundef %tfm, ptr noundef %seed, i32 noundef %slen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %slen)
  %cmp = icmp ult i32 %slen, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %seed, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %slen)
  %cmp1 = icmp ugt i32 %slen, 47
  %add.ptr3 = getelementptr i8, ptr %seed, i32 32
  %spec.select = select i1 %cmp1, ptr %add.ptr3, ptr null
  tail call void @_raw_spin_lock_bh(ptr noundef %__crt_ctx.i.i) #6
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %1, 2
  store i32 %or.i, ptr %flags.i, align 4
  %cmp.not.i = icmp eq ptr %add.ptr, null
  %spec.select.i = select i1 %cmp.not.i, ptr @.str.29, ptr %add.ptr
  %tobool1.not.i = icmp eq ptr %seed, null
  %V4.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = call ptr @memcpy(ptr %V4.i, ptr %seed, i32 16)
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call ptr @memcpy(ptr %V4.i, ptr @.str.30, i32 16)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then2.i
  %tobool7.not.i = icmp eq ptr %spec.select, null
  %DT12.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 60
  br i1 %tobool7.not.i, label %if.else11.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memcpy(ptr %DT12.i, ptr %spec.select, i32 16)
  br label %if.end14.i

if.else11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = call ptr @memset(ptr %DT12.i, i32 0, i32 16)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else11.i, %if.then8.i
  %rand_data.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %rand_data_valid.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %6 = call ptr @memset(ptr %rand_data.i, i32 0, i32 32)
  %7 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %rand_data_valid.i, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 4
  %call.i = tail call i32 @crypto_cipher_setkey(ptr noundef %9, ptr noundef nonnull %spec.select.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end28.i, label %do.body.i

do.body.i:                                        ; preds = %if.end14.i
  %10 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not.i = icmp eq i32 %10, 0
  br i1 %tobool19.not.i, label %do.body.i.reset_prng_context.exit_crit_edge, label %do.end.i

do.body.i.reset_prng_context.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_prng_context.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tfm.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 128
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %14) #9
  br label %reset_prng_context.exit

if.end28.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, -3
  store i32 %and.i, ptr %flags.i, align 4
  br label %reset_prng_context.exit

reset_prng_context.exit:                          ; preds = %if.end28.i, %do.end.i, %do.body.i.reset_prng_context.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %__crt_ctx.i.i) #6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select14 = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %reset_prng_context.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select14, %reset_prng_context.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cprng_init(ptr noundef %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %__crt_ctx.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @cprng_init.__key, i16 noundef signext 3) #6
  %call.i = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 15) #6
  %tfm3 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2
  %0 = ptrtoint ptr %tfm3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %tfm3, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body6, label %if.end16

do.body6:                                         ; preds = %entry
  %1 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body6.do.end13_crit_edge, label %do.end10

do.body6.do.end13_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end10:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %__crt_ctx.i) #9
  br label %do.end13

do.end13:                                         ; preds = %do.end10, %do.body6.do.end13_crit_edge
  %2 = ptrtoint ptr %tfm3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm3, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end16:                                         ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %__crt_ctx.i) #6
  %flags.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %6, 2
  store i32 %or.i, ptr %flags.i, align 4
  %V4.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 92
  %7 = call ptr @memcpy(ptr %V4.i, ptr @.str.30, i32 16)
  %rand_data.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %rand_data_valid.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 108
  %8 = call ptr @memset(ptr %rand_data.i, i32 0, i32 48)
  %9 = ptrtoint ptr %rand_data_valid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %rand_data_valid.i, align 4
  %10 = ptrtoint ptr %tfm3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm3, align 4
  %call.i26 = tail call i32 @crypto_cipher_setkey(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool17.not.i = icmp eq i32 %call.i26, 0
  br i1 %tobool17.not.i, label %reset_prng_context.exit.thread, label %do.body.i

do.body.i:                                        ; preds = %if.end16
  %12 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not.i = icmp eq i32 %12, 0
  br i1 %tobool19.not.i, label %do.body.i.reset_prng_context.exit_crit_edge, label %do.end.i

do.body.i.reset_prng_context.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_prng_context.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tfm3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm3, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 128
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %16) #9
  br label %reset_prng_context.exit

reset_prng_context.exit.thread:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, -3
  store i32 %and.i, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %__crt_ctx.i) #6
  br label %if.end19

reset_prng_context.exit:                          ; preds = %do.end.i, %do.body.i.reset_prng_context.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %__crt_ctx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp = icmp slt i32 %call.i26, 0
  br i1 %cmp, label %reset_prng_context.exit.cleanup_crit_edge, label %reset_prng_context.exit.if.end19_crit_edge

reset_prng_context.exit.if.end19_crit_edge:       ; preds = %reset_prng_context.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

reset_prng_context.exit.cleanup_crit_edge:        ; preds = %reset_prng_context.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %reset_prng_context.exit.if.end19_crit_edge, %reset_prng_context.exit.thread
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or = or i32 %20, 2
  store i32 %or, ptr %flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %reset_prng_context.exit.cleanup_crit_edge, %do.end13
  %retval.0 = phi i32 [ %4, %do.end13 ], [ 0, %if.end19 ], [ -22, %reset_prng_context.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cprng_exit(ptr nocapture noundef readonly %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_get_more_prng_bytes(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %0 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %tmp, i32 0, i32 15
  %15 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %16 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.end4.thread, label %do.end4

do.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %DT98 = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 3
  br label %hexdump.exit.thread

do.end4:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %ctx) #9
  %.pr = load i32, ptr @dbg, align 4
  %DT = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end4.hexdump.exit.thread_crit_edge, label %hexdump.exit

do.end4.hexdump.exit.thread_crit_edge:            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexdump.exit.thread

hexdump.exit.thread:                              ; preds = %do.end4.hexdump.exit.thread_crit_edge, %do.end4.thread
  %DT100.ph = phi ptr [ %DT, %do.end4.hexdump.exit.thread_crit_edge ], [ %DT98, %do.end4.thread ]
  %I103 = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 4
  br label %hexdump.exit4

hexdump.exit:                                     ; preds = %do.end4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8) #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %DT, i32 noundef 16, i1 noundef zeroext false) #6
  %.pr101 = load i32, ptr @dbg, align 4
  %I = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr101)
  %tobool.not.i1 = icmp eq i32 %.pr101, 0
  br i1 %tobool.not.i1, label %hexdump.exit4.thread, label %do.end.i3

hexdump.exit4.thread:                             ; preds = %hexdump.exit
  call void @__sanitizer_cov_trace_pc() #8
  %V110 = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 5
  br label %hexdump.exit8

do.end.i3:                                        ; preds = %hexdump.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9) #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %I, i32 noundef 16, i1 noundef zeroext false) #6
  br label %hexdump.exit4

hexdump.exit4:                                    ; preds = %do.end.i3, %hexdump.exit.thread
  %I106.ph = phi ptr [ %I, %do.end.i3 ], [ %I103, %hexdump.exit.thread ]
  %DT100105.ph = phi ptr [ %DT, %do.end.i3 ], [ %DT100.ph, %hexdump.exit.thread ]
  %.pr107 = load i32, ptr @dbg, align 4
  %V = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr107)
  %tobool.not.i5 = icmp eq i32 %.pr107, 0
  br i1 %tobool.not.i5, label %hexdump.exit4.hexdump.exit8_crit_edge, label %do.end.i7

hexdump.exit4.hexdump.exit8_crit_edge:            ; preds = %hexdump.exit4
  call void @__sanitizer_cov_trace_pc() #8
  br label %hexdump.exit8

do.end.i7:                                        ; preds = %hexdump.exit4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.10) #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %V, i32 noundef 16, i1 noundef zeroext false) #6
  br label %hexdump.exit8

hexdump.exit8:                                    ; preds = %do.end.i7, %hexdump.exit4.hexdump.exit8_crit_edge, %hexdump.exit4.thread
  %V114 = phi ptr [ %V110, %hexdump.exit4.thread ], [ %V, %hexdump.exit4.hexdump.exit8_crit_edge ], [ %V, %do.end.i7 ]
  %DT100105113 = phi ptr [ %DT, %hexdump.exit4.thread ], [ %DT100105.ph, %hexdump.exit4.hexdump.exit8_crit_edge ], [ %DT100105.ph, %do.end.i7 ]
  %I106112 = phi ptr [ %I, %hexdump.exit4.thread ], [ %I106.ph, %hexdump.exit4.hexdump.exit8_crit_edge ], [ %I106.ph, %do.end.i7 ]
  %rand_data22 = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 1
  %last_rand_data = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 2
  %arrayidx.1.i18 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 1
  %arrayidx1.1.i19 = getelementptr i8, ptr %I106112, i32 1
  %arrayidx.2.i22 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 2
  %arrayidx1.2.i23 = getelementptr i8, ptr %I106112, i32 2
  %arrayidx.3.i26 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 3
  %arrayidx1.3.i27 = getelementptr i8, ptr %I106112, i32 3
  %arrayidx.4.i30 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 4
  %arrayidx1.4.i31 = getelementptr i8, ptr %I106112, i32 4
  %arrayidx.5.i34 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 5
  %arrayidx1.5.i35 = getelementptr i8, ptr %I106112, i32 5
  %arrayidx.6.i38 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 6
  %arrayidx1.6.i39 = getelementptr i8, ptr %I106112, i32 6
  %arrayidx.7.i42 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 7
  %arrayidx1.7.i43 = getelementptr i8, ptr %I106112, i32 7
  %arrayidx.8.i46 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 8
  %arrayidx1.8.i47 = getelementptr i8, ptr %I106112, i32 8
  %arrayidx.9.i50 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 9
  %arrayidx1.9.i51 = getelementptr i8, ptr %I106112, i32 9
  %arrayidx.10.i54 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 10
  %arrayidx1.10.i55 = getelementptr i8, ptr %I106112, i32 10
  %arrayidx.11.i58 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 11
  %arrayidx1.11.i59 = getelementptr i8, ptr %I106112, i32 11
  %arrayidx.12.i62 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 12
  %arrayidx1.12.i63 = getelementptr i8, ptr %I106112, i32 12
  %arrayidx.13.i66 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 13
  %arrayidx1.13.i67 = getelementptr i8, ptr %I106112, i32 13
  %arrayidx.14.i70 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 14
  %arrayidx1.14.i71 = getelementptr i8, ptr %I106112, i32 14
  %arrayidx.15.i74 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 1, i32 15
  %arrayidx1.15.i75 = getelementptr i8, ptr %I106112, i32 15
  %arrayidx1.1.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 1
  %arrayidx1.2.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 2
  %arrayidx1.3.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 3
  %arrayidx1.4.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 4
  %arrayidx1.5.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 5
  %arrayidx1.6.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 6
  %arrayidx1.7.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 7
  %arrayidx1.8.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 8
  %arrayidx1.9.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 9
  %arrayidx1.10.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 10
  %arrayidx1.11.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 11
  %arrayidx1.12.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 12
  %arrayidx1.13.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 13
  %arrayidx1.14.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 14
  %arrayidx1.15.i = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 5, i32 15
  %tfm = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %hexdump.exit8
  %i.0129 = phi i32 [ 0, %hexdump.exit8 ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %output.0128 = phi ptr [ null, %hexdump.exit8 ], [ %output.1, %sw.epilog.for.body_crit_edge ]
  %17 = zext i32 %i.0129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0129, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb21
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %18 = call ptr @memcpy(ptr %tmp, ptr %DT100105113, i32 16)
  %19 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i9 = icmp eq i32 %19, 0
  br i1 %tobool.not.i9, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.body
  %20 = ptrtoint ptr %I106112 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %I106112, align 1
  %22 = ptrtoint ptr %V114 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %V114, align 1
  %xor1.i = xor i8 %23, %21
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %xor1.i, ptr %tmp, align 1
  %25 = ptrtoint ptr %arrayidx1.1.i19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.1.i19, align 1
  %27 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.1.i, align 1
  %xor1.1.i = xor i8 %28, %26
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %xor1.1.i, ptr %0, align 1
  %30 = ptrtoint ptr %arrayidx1.2.i23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.2.i23, align 1
  %32 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.2.i, align 1
  %xor1.2.i = xor i8 %33, %31
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %xor1.2.i, ptr %1, align 1
  %35 = ptrtoint ptr %arrayidx1.3.i27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.3.i27, align 1
  %37 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.3.i, align 1
  %xor1.3.i = xor i8 %38, %36
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %xor1.3.i, ptr %2, align 1
  %40 = ptrtoint ptr %arrayidx1.4.i31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx1.4.i31, align 1
  %42 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.4.i, align 1
  %xor1.4.i = xor i8 %43, %41
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %xor1.4.i, ptr %3, align 1
  %45 = ptrtoint ptr %arrayidx1.5.i35 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx1.5.i35, align 1
  %47 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.5.i, align 1
  %xor1.5.i = xor i8 %48, %46
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %xor1.5.i, ptr %4, align 1
  %50 = ptrtoint ptr %arrayidx1.6.i39 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx1.6.i39, align 1
  %52 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx1.6.i, align 1
  %xor1.6.i = xor i8 %53, %51
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %xor1.6.i, ptr %5, align 1
  %55 = ptrtoint ptr %arrayidx1.7.i43 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx1.7.i43, align 1
  %57 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx1.7.i, align 1
  %xor1.7.i = xor i8 %58, %56
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %xor1.7.i, ptr %6, align 1
  %60 = ptrtoint ptr %arrayidx1.8.i47 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx1.8.i47, align 1
  %62 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx1.8.i, align 1
  %xor1.8.i = xor i8 %63, %61
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %xor1.8.i, ptr %7, align 1
  %65 = ptrtoint ptr %arrayidx1.9.i51 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.9.i51, align 1
  %67 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.9.i, align 1
  %xor1.9.i = xor i8 %68, %66
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %xor1.9.i, ptr %8, align 1
  %70 = ptrtoint ptr %arrayidx1.10.i55 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx1.10.i55, align 1
  %72 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx1.10.i, align 1
  %xor1.10.i = xor i8 %73, %71
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %xor1.10.i, ptr %9, align 1
  %75 = ptrtoint ptr %arrayidx1.11.i59 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx1.11.i59, align 1
  %77 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx1.11.i, align 1
  %xor1.11.i = xor i8 %78, %76
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %xor1.11.i, ptr %10, align 1
  %80 = ptrtoint ptr %arrayidx1.12.i63 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx1.12.i63, align 1
  %82 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx1.12.i, align 1
  %xor1.12.i = xor i8 %83, %81
  %84 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %xor1.12.i, ptr %11, align 1
  %85 = ptrtoint ptr %arrayidx1.13.i67 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx1.13.i67, align 1
  %87 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx1.13.i, align 1
  %xor1.13.i = xor i8 %88, %86
  %89 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %xor1.13.i, ptr %12, align 1
  %90 = ptrtoint ptr %arrayidx1.14.i71 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx1.14.i71, align 1
  %92 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx1.14.i, align 1
  %xor1.14.i = xor i8 %93, %91
  %94 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %xor1.14.i, ptr %13, align 1
  %95 = ptrtoint ptr %arrayidx1.15.i75 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx1.15.i75, align 1
  %97 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx1.15.i, align 1
  %xor1.15.i = xor i8 %98, %96
  %99 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %xor1.15.i, ptr %14, align 1
  %100 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i13 = icmp eq i32 %100, 0
  br i1 %tobool.not.i13, label %sw.bb13.sw.epilog_crit_edge, label %sw.bb13.sw.epilog.sink.split_crit_edge

sw.bb13.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %rand_data22, ptr noundef dereferenceable(16) %last_rand_data, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %ctx) #9
  %flags = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 8
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %or = or i32 %102, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end36:                                         ; preds = %sw.bb21
  %103 = call ptr @memcpy(ptr %last_rand_data, ptr %rand_data22, i32 16)
  %104 = ptrtoint ptr %rand_data22 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rand_data22, align 1
  %106 = ptrtoint ptr %I106112 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %I106112, align 1
  %xor1.i17 = xor i8 %107, %105
  %108 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %xor1.i17, ptr %tmp, align 1
  %109 = ptrtoint ptr %arrayidx.1.i18 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.1.i18, align 1
  %111 = ptrtoint ptr %arrayidx1.1.i19 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx1.1.i19, align 1
  %xor1.1.i20 = xor i8 %112, %110
  %113 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %xor1.1.i20, ptr %0, align 1
  %114 = ptrtoint ptr %arrayidx.2.i22 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.2.i22, align 1
  %116 = ptrtoint ptr %arrayidx1.2.i23 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx1.2.i23, align 1
  %xor1.2.i24 = xor i8 %117, %115
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %xor1.2.i24, ptr %1, align 1
  %119 = ptrtoint ptr %arrayidx.3.i26 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.3.i26, align 1
  %121 = ptrtoint ptr %arrayidx1.3.i27 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx1.3.i27, align 1
  %xor1.3.i28 = xor i8 %122, %120
  %123 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %xor1.3.i28, ptr %2, align 1
  %124 = ptrtoint ptr %arrayidx.4.i30 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.4.i30, align 1
  %126 = ptrtoint ptr %arrayidx1.4.i31 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx1.4.i31, align 1
  %xor1.4.i32 = xor i8 %127, %125
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %xor1.4.i32, ptr %3, align 1
  %129 = ptrtoint ptr %arrayidx.5.i34 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.5.i34, align 1
  %131 = ptrtoint ptr %arrayidx1.5.i35 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx1.5.i35, align 1
  %xor1.5.i36 = xor i8 %132, %130
  %133 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %xor1.5.i36, ptr %4, align 1
  %134 = ptrtoint ptr %arrayidx.6.i38 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.6.i38, align 1
  %136 = ptrtoint ptr %arrayidx1.6.i39 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx1.6.i39, align 1
  %xor1.6.i40 = xor i8 %137, %135
  %138 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %xor1.6.i40, ptr %5, align 1
  %139 = ptrtoint ptr %arrayidx.7.i42 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.7.i42, align 1
  %141 = ptrtoint ptr %arrayidx1.7.i43 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx1.7.i43, align 1
  %xor1.7.i44 = xor i8 %142, %140
  %143 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %xor1.7.i44, ptr %6, align 1
  %144 = ptrtoint ptr %arrayidx.8.i46 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.8.i46, align 1
  %146 = ptrtoint ptr %arrayidx1.8.i47 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx1.8.i47, align 1
  %xor1.8.i48 = xor i8 %147, %145
  %148 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %xor1.8.i48, ptr %7, align 1
  %149 = ptrtoint ptr %arrayidx.9.i50 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.9.i50, align 1
  %151 = ptrtoint ptr %arrayidx1.9.i51 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx1.9.i51, align 1
  %xor1.9.i52 = xor i8 %152, %150
  %153 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %xor1.9.i52, ptr %8, align 1
  %154 = ptrtoint ptr %arrayidx.10.i54 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.10.i54, align 1
  %156 = ptrtoint ptr %arrayidx1.10.i55 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx1.10.i55, align 1
  %xor1.10.i56 = xor i8 %157, %155
  %158 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %xor1.10.i56, ptr %9, align 1
  %159 = ptrtoint ptr %arrayidx.11.i58 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.11.i58, align 1
  %161 = ptrtoint ptr %arrayidx1.11.i59 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx1.11.i59, align 1
  %xor1.11.i60 = xor i8 %162, %160
  %163 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %xor1.11.i60, ptr %10, align 1
  %164 = ptrtoint ptr %arrayidx.12.i62 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.12.i62, align 1
  %166 = ptrtoint ptr %arrayidx1.12.i63 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx1.12.i63, align 1
  %xor1.12.i64 = xor i8 %167, %165
  %168 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %xor1.12.i64, ptr %11, align 1
  %169 = ptrtoint ptr %arrayidx.13.i66 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.13.i66, align 1
  %171 = ptrtoint ptr %arrayidx1.13.i67 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx1.13.i67, align 1
  %xor1.13.i68 = xor i8 %172, %170
  %173 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %xor1.13.i68, ptr %12, align 1
  %174 = ptrtoint ptr %arrayidx.14.i70 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.14.i70, align 1
  %176 = ptrtoint ptr %arrayidx1.14.i71 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx1.14.i71, align 1
  %xor1.14.i72 = xor i8 %177, %175
  %178 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %xor1.14.i72, ptr %13, align 1
  %179 = ptrtoint ptr %arrayidx.15.i74 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.15.i74, align 1
  %181 = ptrtoint ptr %arrayidx1.15.i75 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx1.15.i75, align 1
  %xor1.15.i76 = xor i8 %182, %180
  %183 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %xor1.15.i76, ptr %14, align 1
  %184 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i78 = icmp eq i32 %184, 0
  br i1 %tobool.not.i78, label %if.end36.sw.epilog_crit_edge, label %if.end36.sw.epilog.sink.split_crit_edge

if.end36.sw.epilog.sink.split_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end36.sw.epilog.sink.split_crit_edge, %sw.bb13.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.11, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.12, %sw.bb13.sw.epilog.sink.split_crit_edge ], [ @.str.17, %if.end36.sw.epilog.sink.split_crit_edge ]
  %output.1.ph = phi ptr [ %I106112, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %rand_data22, %sw.bb13.sw.epilog.sink.split_crit_edge ], [ %V114, %if.end36.sw.epilog.sink.split_crit_edge ]
  %call.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %.str.12.sink) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 16, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end36.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %output.1 = phi ptr [ %output.0128, %for.body.sw.epilog_crit_edge ], [ %I106112, %sw.bb.sw.epilog_crit_edge ], [ %V114, %if.end36.sw.epilog_crit_edge ], [ %rand_data22, %sw.bb13.sw.epilog_crit_edge ], [ %output.1.ph, %sw.epilog.sink.split ]
  %185 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tfm, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %186, ptr noundef %output.1, ptr noundef nonnull %tmp) #6
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.body52.preheader, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body52.preheader:                             ; preds = %sw.epilog
  %arrayidx = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 15
  %187 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx, align 1
  %add = add i8 %188, 1
  store i8 %add, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %cmp58.not = icmp eq i8 %add, 0
  br i1 %cmp58.not, label %for.cond50, label %for.body52.preheader.do.body64_crit_edge

for.body52.preheader.do.body64_crit_edge:         ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50:                                       ; preds = %for.body52.preheader
  %arrayidx.1 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 14
  %189 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.1, align 1
  %add.1 = add i8 %190, 1
  store i8 %add.1, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.1)
  %cmp58.not.1 = icmp eq i8 %add.1, 0
  br i1 %cmp58.not.1, label %for.cond50.1, label %for.cond50.do.body64_crit_edge

for.cond50.do.body64_crit_edge:                   ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.1:                                     ; preds = %for.cond50
  %arrayidx.2 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 13
  %191 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.2, align 1
  %add.2 = add i8 %192, 1
  store i8 %add.2, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.2)
  %cmp58.not.2 = icmp eq i8 %add.2, 0
  br i1 %cmp58.not.2, label %for.cond50.2, label %for.cond50.1.do.body64_crit_edge

for.cond50.1.do.body64_crit_edge:                 ; preds = %for.cond50.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.2:                                     ; preds = %for.cond50.1
  %arrayidx.3 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 12
  %193 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.3, align 1
  %add.3 = add i8 %194, 1
  store i8 %add.3, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.3)
  %cmp58.not.3 = icmp eq i8 %add.3, 0
  br i1 %cmp58.not.3, label %for.cond50.3, label %for.cond50.2.do.body64_crit_edge

for.cond50.2.do.body64_crit_edge:                 ; preds = %for.cond50.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.3:                                     ; preds = %for.cond50.2
  %arrayidx.4 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 11
  %195 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx.4, align 1
  %add.4 = add i8 %196, 1
  store i8 %add.4, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.4)
  %cmp58.not.4 = icmp eq i8 %add.4, 0
  br i1 %cmp58.not.4, label %for.cond50.4, label %for.cond50.3.do.body64_crit_edge

for.cond50.3.do.body64_crit_edge:                 ; preds = %for.cond50.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.4:                                     ; preds = %for.cond50.3
  %arrayidx.5 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 10
  %197 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.5, align 1
  %add.5 = add i8 %198, 1
  store i8 %add.5, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.5)
  %cmp58.not.5 = icmp eq i8 %add.5, 0
  br i1 %cmp58.not.5, label %for.cond50.5, label %for.cond50.4.do.body64_crit_edge

for.cond50.4.do.body64_crit_edge:                 ; preds = %for.cond50.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.5:                                     ; preds = %for.cond50.4
  %arrayidx.6 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 9
  %199 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.6, align 1
  %add.6 = add i8 %200, 1
  store i8 %add.6, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.6)
  %cmp58.not.6 = icmp eq i8 %add.6, 0
  br i1 %cmp58.not.6, label %for.cond50.6, label %for.cond50.5.do.body64_crit_edge

for.cond50.5.do.body64_crit_edge:                 ; preds = %for.cond50.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.6:                                     ; preds = %for.cond50.5
  %arrayidx.7 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 8
  %201 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx.7, align 1
  %add.7 = add i8 %202, 1
  store i8 %add.7, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.7)
  %cmp58.not.7 = icmp eq i8 %add.7, 0
  br i1 %cmp58.not.7, label %for.cond50.7, label %for.cond50.6.do.body64_crit_edge

for.cond50.6.do.body64_crit_edge:                 ; preds = %for.cond50.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.7:                                     ; preds = %for.cond50.6
  %arrayidx.8 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 7
  %203 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.8, align 1
  %add.8 = add i8 %204, 1
  store i8 %add.8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.8)
  %cmp58.not.8 = icmp eq i8 %add.8, 0
  br i1 %cmp58.not.8, label %for.cond50.8, label %for.cond50.7.do.body64_crit_edge

for.cond50.7.do.body64_crit_edge:                 ; preds = %for.cond50.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.8:                                     ; preds = %for.cond50.7
  %arrayidx.9 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 6
  %205 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.9, align 1
  %add.9 = add i8 %206, 1
  store i8 %add.9, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.9)
  %cmp58.not.9 = icmp eq i8 %add.9, 0
  br i1 %cmp58.not.9, label %for.cond50.9, label %for.cond50.8.do.body64_crit_edge

for.cond50.8.do.body64_crit_edge:                 ; preds = %for.cond50.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.9:                                     ; preds = %for.cond50.8
  %arrayidx.10 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 5
  %207 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx.10, align 1
  %add.10 = add i8 %208, 1
  store i8 %add.10, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.10)
  %cmp58.not.10 = icmp eq i8 %add.10, 0
  br i1 %cmp58.not.10, label %for.cond50.10, label %for.cond50.9.do.body64_crit_edge

for.cond50.9.do.body64_crit_edge:                 ; preds = %for.cond50.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.10:                                    ; preds = %for.cond50.9
  %arrayidx.11 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 4
  %209 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx.11, align 1
  %add.11 = add i8 %210, 1
  store i8 %add.11, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.11)
  %cmp58.not.11 = icmp eq i8 %add.11, 0
  br i1 %cmp58.not.11, label %for.cond50.11, label %for.cond50.10.do.body64_crit_edge

for.cond50.10.do.body64_crit_edge:                ; preds = %for.cond50.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.11:                                    ; preds = %for.cond50.10
  %arrayidx.12 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 3
  %211 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx.12, align 1
  %add.12 = add i8 %212, 1
  store i8 %add.12, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.12)
  %cmp58.not.12 = icmp eq i8 %add.12, 0
  br i1 %cmp58.not.12, label %for.cond50.12, label %for.cond50.11.do.body64_crit_edge

for.cond50.11.do.body64_crit_edge:                ; preds = %for.cond50.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.12:                                    ; preds = %for.cond50.11
  %arrayidx.13 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 2
  %213 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx.13, align 1
  %add.13 = add i8 %214, 1
  store i8 %add.13, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.13)
  %cmp58.not.13 = icmp eq i8 %add.13, 0
  br i1 %cmp58.not.13, label %for.cond50.13, label %for.cond50.12.do.body64_crit_edge

for.cond50.12.do.body64_crit_edge:                ; preds = %for.cond50.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.13:                                    ; preds = %for.cond50.12
  %arrayidx.14 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 1
  %215 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx.14, align 1
  %add.14 = add i8 %216, 1
  store i8 %add.14, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.14)
  %cmp58.not.14 = icmp eq i8 %add.14, 0
  br i1 %cmp58.not.14, label %for.cond50.14, label %for.cond50.13.do.body64_crit_edge

for.cond50.13.do.body64_crit_edge:                ; preds = %for.cond50.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.cond50.14:                                    ; preds = %for.cond50.13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.15 = getelementptr %struct.prng_context, ptr %ctx, i32 0, i32 3, i32 0
  %217 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx.15, align 1
  %add.15 = add i8 %218, 1
  store i8 %add.15, ptr %arrayidx.15, align 1
  br label %do.body64

do.body64:                                        ; preds = %for.cond50.14, %for.cond50.13.do.body64_crit_edge, %for.cond50.12.do.body64_crit_edge, %for.cond50.11.do.body64_crit_edge, %for.cond50.10.do.body64_crit_edge, %for.cond50.9.do.body64_crit_edge, %for.cond50.8.do.body64_crit_edge, %for.cond50.7.do.body64_crit_edge, %for.cond50.6.do.body64_crit_edge, %for.cond50.5.do.body64_crit_edge, %for.cond50.4.do.body64_crit_edge, %for.cond50.3.do.body64_crit_edge, %for.cond50.2.do.body64_crit_edge, %for.cond50.1.do.body64_crit_edge, %for.cond50.do.body64_crit_edge, %for.body52.preheader.do.body64_crit_edge
  %219 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool65.not = icmp eq i32 %219, 0
  br i1 %tobool65.not, label %do.end74.thread, label %do.end74

do.end74.thread:                                  ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %rand_data_valid116 = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 6
  %220 = ptrtoint ptr %rand_data_valid116 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %rand_data_valid116, align 4
  br label %cleanup

do.end74:                                         ; preds = %do.body64
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ctx) #9
  %.pr115 = load i32, ptr @dbg, align 4
  %rand_data_valid = getelementptr inbounds %struct.prng_context, ptr %ctx, i32 0, i32 6
  %221 = ptrtoint ptr %rand_data_valid to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %rand_data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr115)
  %tobool.not.i82 = icmp eq i32 %.pr115, 0
  br i1 %tobool.not.i82, label %do.end74.cleanup_crit_edge, label %hexdump.exit85

do.end74.cleanup_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hexdump.exit85:                                   ; preds = %do.end74
  %call.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %DT100105113, i32 noundef 16, i1 noundef zeroext false) #6
  %.pr118 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr118)
  %tobool.not.i86 = icmp eq i32 %.pr118, 0
  br i1 %tobool.not.i86, label %hexdump.exit85.cleanup_crit_edge, label %hexdump.exit89

hexdump.exit85.cleanup_crit_edge:                 ; preds = %hexdump.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hexdump.exit89:                                   ; preds = %hexdump.exit85
  %call.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %I106112, i32 noundef 16, i1 noundef zeroext false) #6
  %.pr120.pr = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr120.pr)
  %tobool.not.i90 = icmp eq i32 %.pr120.pr, 0
  br i1 %tobool.not.i90, label %hexdump.exit89.cleanup_crit_edge, label %hexdump.exit93

hexdump.exit89.cleanup_crit_edge:                 ; preds = %hexdump.exit89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hexdump.exit93:                                   ; preds = %hexdump.exit89
  %call.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %V114, i32 noundef 16, i1 noundef zeroext false) #6
  %.pr122 = load i32, ptr @dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr122)
  %tobool.not.i94 = icmp eq i32 %.pr122, 0
  br i1 %tobool.not.i94, label %hexdump.exit93.cleanup_crit_edge, label %do.end.i96

hexdump.exit93.cleanup_crit_edge:                 ; preds = %hexdump.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i96:                                       ; preds = %hexdump.exit93
  call void @__sanitizer_cov_trace_pc() #8
  %call.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %rand_data22, i32 noundef 16, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i96, %hexdump.exit93.cleanup_crit_edge, %hexdump.exit89.cleanup_crit_edge, %hexdump.exit85.cleanup_crit_edge, %do.end74.cleanup_crit_edge, %do.end74.thread, %do.end33
  %retval.0 = phi i32 [ -22, %do.end33 ], [ 0, %hexdump.exit93.cleanup_crit_edge ], [ 0, %do.end.i96 ], [ 0, %hexdump.exit89.cleanup_crit_edge ], [ 0, %hexdump.exit85.cleanup_crit_edge ], [ 0, %do.end74.cleanup_crit_edge ], [ 0, %do.end74.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rngs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !96, !98, !99, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__UNIQUE_ID_file173, !1, !"__UNIQUE_ID_file173", i1 false, i1 false}
!1 = !{!"../crypto/ansi_cprng.c", i32 465, i32 1}
!2 = !{ptr @__UNIQUE_ID_license174, !1, !"__UNIQUE_ID_license174", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description175, !4, !"__UNIQUE_ID_description175", i1 false, i1 false}
!4 = !{!"../crypto/ansi_cprng.c", i32 466, i32 1}
!5 = !{ptr @__UNIQUE_ID_author176, !6, !"__UNIQUE_ID_author176", i1 false, i1 false}
!6 = !{!"../crypto/ansi_cprng.c", i32 467, i32 1}
!7 = !{ptr @__param_dbg, !8, !"__param_dbg", i1 false, i1 false}
!8 = !{!"../crypto/ansi_cprng.c", i32 468, i32 1}
!9 = !{ptr @__UNIQUE_ID_dbgtype177, !8, !"__UNIQUE_ID_dbgtype177", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_dbg178, !11, !"__UNIQUE_ID_dbg178", i1 false, i1 false}
!11 = !{!"../crypto/ansi_cprng.c", i32 469, i32 1}
!12 = !{ptr @__initcall__kmod_ansi_cprng__179_470_prng_mod_init4, !13, !"__initcall__kmod_ansi_cprng__179_470_prng_mod_init4", i1 false, i1 false}
!13 = !{!"../crypto/ansi_cprng.c", i32 470, i32 1}
!14 = !{ptr @__exitcall_prng_mod_fini, !15, !"__exitcall_prng_mod_fini", i1 false, i1 false}
!15 = !{!"../crypto/ansi_cprng.c", i32 471, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_userspace180, !17, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!17 = !{!"../crypto/ansi_cprng.c", i32 472, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias_crypto181, !17, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias_userspace182, !20, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!20 = !{!"../crypto/ansi_cprng.c", i32 473, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_crypto183, !20, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_import_ns184, !23, !"__UNIQUE_ID_import_ns184", i1 false, i1 false}
!23 = !{!"../crypto/ansi_cprng.c", i32 474, i32 1}
!24 = !{ptr @dbg, !25, !"dbg", i1 false, i1 false}
!25 = !{!"../crypto/ansi_cprng.c", i32 51, i32 12}
!26 = !{ptr @rng_algs, !27, !"rng_algs", i1 false, i1 false}
!27 = !{!"../crypto/ansi_cprng.c", i32 424, i32 23}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../crypto/ansi_cprng.c", i32 212, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @get_prng_bytes._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @get_prng_bytes._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../crypto/ansi_cprng.c", i32 266, i32 2}
!36 = !{ptr @get_prng_bytes._entry.3, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @get_prng_bytes._entry_ptr.5, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../crypto/ansi_cprng.c", i32 88, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @_get_more_prng_bytes._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @_get_more_prng_bytes._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../crypto/ansi_cprng.c", i32 91, i32 10}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../crypto/ansi_cprng.c", i32 92, i32 10}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../crypto/ansi_cprng.c", i32 93, i32 10}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../crypto/ansi_cprng.c", i32 108, i32 12}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../crypto/ansi_cprng.c", i32 118, i32 12}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../crypto/ansi_cprng.c", i32 129, i32 12}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../crypto/ansi_cprng.c", i32 133, i32 5}
!57 = !{ptr @_get_more_prng_bytes._entry.14, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @_get_more_prng_bytes._entry_ptr.16, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../crypto/ansi_cprng.c", i32 150, i32 12}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../crypto/ansi_cprng.c", i32 169, i32 2}
!63 = !{ptr @_get_more_prng_bytes._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @_get_more_prng_bytes._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../crypto/ansi_cprng.c", i32 172, i32 10}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../crypto/ansi_cprng.c", i32 173, i32 10}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../crypto/ansi_cprng.c", i32 174, i32 10}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../crypto/ansi_cprng.c", i32 175, i32 10}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../crypto/ansi_cprng.c", i32 56, i32 3}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hexdump._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hexdump._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../crypto/ansi_cprng.c", i32 57, i32 18}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../crypto/ansi_cprng.c", i32 57, i32 29}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../crypto/ansi_cprng.c", i32 286, i32 52}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../crypto/ansi_cprng.c", i32 294, i32 18}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../crypto/ansi_cprng.c", i32 308, i32 3}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @reset_prng_context._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @reset_prng_context._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @cprng_init.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../crypto/ansi_cprng.c", i32 324, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../crypto/ansi_cprng.c", i32 325, i32 33}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../crypto/ansi_cprng.c", i32 327, i32 3}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cprng_init._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @cprng_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @__param_str_dbg, !8, !"__param_str_dbg", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
