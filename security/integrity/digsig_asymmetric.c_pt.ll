; ModuleID = '/llk/IR_all_yes/security/integrity/digsig_asymmetric.c_pt.bc'
source_filename = "../security/integrity/digsig_asymmetric.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.signature_v2_hdr = type <{ i8, i8, i8, i32, i16, [0 x i8] }>
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.7, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.7 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }

@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsa\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkcs1\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecdsa-\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x962\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecrdsa\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm2\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@asymmetric_verify.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asymmetric_verify\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"security/integrity/digsig_asymmetric.c\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s() = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"integrity: %s() = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"crypto-pkcs1pad(rsa,\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id:%08x\00", [24 x i8] zeroinitializer }, align 32
@request_asymmetric_key.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.14, ptr @.str.9, ptr @.str.15, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request_asymmetric_key\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"key search: \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"integrity: key search: \22%s\22\0A\00", [35 x i8] zeroinitializer }, align 32
@key_type_asymmetric = external dso_local global %struct.key_type, align 4
@request_asymmetric_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.9, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013integrity: Key '%s' is in ima_blacklist_keyring\0A\00", [45 x i8] zeroinitializer }, align 32
@request_asymmetric_key._entry_ptr = internal global ptr @request_asymmetric_key._entry, section ".printk_index", align 4
@request_asymmetric_key._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@request_asymmetric_key._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.9, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013integrity: Request for unknown key '%s' in '%s' keyring. err %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@request_asymmetric_key._entry_ptr.21 = internal global ptr @request_asymmetric_key._entry.19, section ".printk_index", align 4
@request_asymmetric_key._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@request_asymmetric_key._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str.9, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013integrity: Request for unknown key '%s' err %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@request_asymmetric_key._entry_ptr.25 = internal global ptr @request_asymmetric_key._entry.23, section ".printk_index", align 4
@request_asymmetric_key.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.14, ptr @.str.9, ptr @.str.26, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s() = 0 [%x]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"integrity: %s() = 0 [%x]\0A\00", [38 x i8] zeroinitializer }, align 32
@ima_blacklist_keyring = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967276, i64 4294967283, i64 4294967285]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 112, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 113, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 114, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 116, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 117, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 118, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 119, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 132, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 153, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 27, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 29, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 38, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 59, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 63, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [42 x i8] c"../security/integrity/digsig_asymmetric.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 77, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @request_asymmetric_key._entry, ptr @request_asymmetric_key._entry.19, ptr @request_asymmetric_key._entry.23, ptr @request_asymmetric_key._entry_ptr, ptr @request_asymmetric_key._entry_ptr.21, ptr @request_asymmetric_key._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @request_asymmetric_key._rs, ptr @.str.18, ptr @.str.20, ptr @request_asymmetric_key._rs.22, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_asymmetric_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_asymmetric_key._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_asymmetric_key._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_asymmetric_key._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_asymmetric_key._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asymmetric_verify(ptr noundef %keyring, ptr noundef %sig, i32 noundef %siglen, ptr noundef %data, i32 noundef %datalen) local_unnamed_addr #0 align 64 {
entry:
  %pks = alloca %struct.public_key_signature, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %siglen)
  %cmp = icmp ult i32 %siglen, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %siglen, -9
  %sig_size = getelementptr inbounds %struct.signature_v2_hdr, ptr %sig, i32 0, i32 4
  %0 = ptrtoint ptr %sig_size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %sig_size, align 1
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp1.not = icmp eq i32 %sub, %conv
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hash_algo = getelementptr inbounds %struct.signature_v2_hdr, ptr %sig, i32 0, i32 2
  %2 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hash_algo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %3)
  %cmp6 = icmp ugt i8 %3, 19
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %keyid = getelementptr inbounds %struct.signature_v2_hdr, ptr %sig, i32 0, i32 3
  %4 = ptrtoint ptr %keyid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %keyid, align 1
  %call = tail call fastcc ptr @request_asymmetric_key(ptr noundef %keyring, i32 noundef %5)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %7 = call ptr @memset(ptr %pks, i32 0, i32 48)
  %8 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hash_algo, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %hash_algo15 = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 6
  %12 = ptrtoint ptr %hash_algo15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %hash_algo15, align 4
  %13 = getelementptr inbounds %struct.key, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %pkey_algo = getelementptr inbounds %struct.public_key, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %pkey_algo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pkey_algo, align 4
  %pkey_algo17 = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 5
  %18 = ptrtoint ptr %pkey_algo17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pkey_algo17, align 4
  %19 = load ptr, ptr %pkey_algo, align 4
  %call19 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(4) @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end13.if.end38_crit_edge, label %if.else

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else:                                          ; preds = %if.end13
  %call22 = tail call i32 @strncmp(ptr noundef %19, ptr noundef nonnull dereferenceable(7) @.str.2, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else.if.end38_crit_edge, label %if.else26

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else26:                                        ; preds = %if.else
  %call28 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(7) @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else26.if.end38_crit_edge, label %lor.lhs.false

if.else26.if.end38_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

lor.lhs.false:                                    ; preds = %if.else26
  %call31 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(4) @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false.if.end38_crit_edge, %if.else26.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.end13.if.end38_crit_edge
  %.str.3.sink = phi ptr [ @.str.1, %if.end13.if.end38_crit_edge ], [ @.str.3, %if.else.if.end38_crit_edge ], [ @.str.6, %lor.lhs.false.if.end38_crit_edge ], [ @.str.6, %if.else26.if.end38_crit_edge ]
  %encoding25 = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 7
  %20 = ptrtoint ptr %encoding25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.str.3.sink, ptr %encoding25, align 4
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 2
  %21 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %data, ptr %digest, align 4
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 4
  %22 = ptrtoint ptr %digest_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %datalen, ptr %digest_size, align 4
  %sig39 = getelementptr inbounds %struct.signature_v2_hdr, ptr %sig, i32 0, i32 5
  %s = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 1
  %23 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sig39, ptr %s, align 4
  %s_size = getelementptr inbounds %struct.public_key_signature, ptr %pks, i32 0, i32 3
  %24 = ptrtoint ptr %s_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %s_size, align 4
  %call40 = call i32 @verify_signature(ptr noundef %call, ptr noundef nonnull %pks) #7
  br label %out

out:                                              ; preds = %if.end38, %lor.lhs.false.out_crit_edge
  %ret.0 = phi i32 [ %call40, %if.end38 ], [ -65, %lor.lhs.false.out_crit_edge ]
  call void @key_put(ptr noundef %call) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asymmetric_verify.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asymmetric_verify, %if.then45)) #7
          to label %cleanup [label %if.then45], !srcloc !58

if.then45:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asymmetric_verify.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %out, %if.then11, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ -74, %entry.cleanup_crit_edge ], [ -74, %if.end.cleanup_crit_edge ], [ -65, %if.end4.cleanup_crit_edge ], [ %ret.0, %if.then45 ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pks) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @request_asymmetric_key(ptr noundef %keyring, i32 noundef %keyid) unnamed_addr #0 align 64 {
entry:
  %name = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 12)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.13, i32 noundef %keyid)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @request_asymmetric_key.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@request_asymmetric_key, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @request_asymmetric_key.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.16, ptr noundef nonnull %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_blacklist_keyring to i32))
  %1 = load ptr, ptr @ima_blacklist_keyring, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.if.end21_crit_edge, label %if.then7

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then7:                                         ; preds = %do.end
  %2 = ptrtoint ptr %1 to i32
  %or.i = or i32 %2, 1
  %3 = inttoptr i32 %or.i to ptr
  %call10 = call ptr @keyring_search(ptr noundef nonnull %3, ptr noundef nonnull @key_type_asymmetric, ptr noundef nonnull %name, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7.if.end21_crit_edge, label %cleanup

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

cleanup:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %name) #11
  br label %cleanup85

if.end21:                                         ; preds = %if.then7.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %keyring, null
  br i1 %tobool22.not, label %if.end36.thread, label %if.then23

if.then23:                                        ; preds = %if.end21
  %4 = ptrtoint ptr %keyring to i32
  %or.i103 = or i32 %4, 1
  %5 = inttoptr i32 %or.i103 to ptr
  %call27 = call ptr @keyring_search(ptr noundef nonnull %5, ptr noundef nonnull @key_type_asymmetric, ptr noundef nonnull %name, i1 noundef zeroext true) #7
  %cmp.i104 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call27 to i32
  %and.i = and i32 %6, -2
  %7 = inttoptr i32 %and.i to ptr
  %key.1 = select i1 %cmp.i104, ptr %call27, ptr %7
  %cmp.i105 = icmp ugt ptr %key.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then40.critedge, label %if.then23.do.body68_crit_edge

if.then23.do.body68_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

if.end36.thread:                                  ; preds = %if.end21
  %call.i = call ptr @request_key_tag(ptr noundef nonnull @key_type_asymmetric, ptr noundef nonnull %name, ptr noundef null, ptr noundef null) #7
  %cmp.i105108 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105108, label %if.else52, label %if.end36.thread.do.body68_crit_edge

if.end36.thread.do.body68_crit_edge:              ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

if.then40.critedge:                               ; preds = %if.then23
  %call41 = call i32 @___ratelimit(ptr noundef nonnull @request_asymmetric_key._rs, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.critedge.if.end64_crit_edge, label %do.end46

if.then40.critedge.if.end64_crit_edge:            ; preds = %if.then40.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end46:                                         ; preds = %if.then40.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %description = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 4
  %8 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %description, align 8
  %10 = ptrtoint ptr %key.1 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %name, ptr noundef %9, i32 noundef %10) #11
  br label %if.end64

if.else52:                                        ; preds = %if.end36.thread
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @request_asymmetric_key._rs.22, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else52.if.end64_crit_edge, label %do.end58

if.else52.if.end64_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end58:                                         ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %name, i32 noundef %11) #11
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %if.else52.if.end64_crit_edge, %do.end46, %if.then40.critedge.if.end64_crit_edge
  %key.1109112 = phi ptr [ %call.i, %if.else52.if.end64_crit_edge ], [ %call.i, %do.end58 ], [ %key.1, %if.then40.critedge.if.end64_crit_edge ], [ %key.1, %do.end46 ]
  %12 = ptrtoint ptr %key.1109112 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end64.cleanup85_crit_edge [
    i32 -13, label %if.end64.sw.bb_crit_edge
    i32 -20, label %if.end64.sw.bb_crit_edge115
    i32 -11, label %if.end64.sw.bb_crit_edge116
  ]

if.end64.sw.bb_crit_edge116:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end64.sw.bb_crit_edge115:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end64.sw.bb_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end64.cleanup85_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

sw.bb:                                            ; preds = %if.end64.sw.bb_crit_edge, %if.end64.sw.bb_crit_edge115, %if.end64.sw.bb_crit_edge116
  br label %cleanup85

do.body68:                                        ; preds = %if.end36.thread.do.body68_crit_edge, %if.then23.do.body68_crit_edge
  %key.1110 = phi ptr [ %call.i, %if.end36.thread.do.body68_crit_edge ], [ %key.1, %if.then23.do.body68_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @request_asymmetric_key.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@request_asymmetric_key, %if.then80)) #7
          to label %cleanup85 [label %if.then80], !srcloc !58

if.then80:                                        ; preds = %do.body68
  %tobool.not.i = icmp eq ptr %key.1110, null
  br i1 %tobool.not.i, label %if.then80.key_serial.exit_crit_edge, label %cond.true.i

if.then80.key_serial.exit_crit_edge:              ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_serial.exit

cond.true.i:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %serial.i = getelementptr inbounds %struct.key, ptr %key.1110, i32 0, i32 1
  %14 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %if.then80.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %15, %cond.true.i ], [ 0, %if.then80.key_serial.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @request_asymmetric_key.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.14, i32 noundef %cond.i) #7
  br label %cleanup85

cleanup85:                                        ; preds = %key_serial.exit, %do.body68, %sw.bb, %if.end64.cleanup85_crit_edge, %cleanup
  %retval.1 = phi ptr [ inttoptr (i32 -126 to ptr), %sw.bb ], [ inttoptr (i32 -129 to ptr), %cleanup ], [ %key.1109112, %if.end64.cleanup85_crit_edge ], [ %key.1110, %key_serial.exit ], [ %key.1110, %do.body68 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name) #7
  ret ptr %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @integrity_kernel_module_request(ptr nocapture noundef readonly %kmod_name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %kmod_name, ptr noundef nonnull dereferenceable(21) @.str.12, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/digsig_asymmetric.c", i32 112, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/digsig_asymmetric.c", i32 113, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/digsig_asymmetric.c", i32 114, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/digsig_asymmetric.c", i32 116, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/integrity/digsig_asymmetric.c", i32 117, i32 36}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/digsig_asymmetric.c", i32 118, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/digsig_asymmetric.c", i32 119, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/digsig_asymmetric.c", i32 132, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @asymmetric_verify.__UNIQUE_ID_ddebug224, !15, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!20 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/integrity/digsig_asymmetric.c", i32 153, i32 25}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/integrity/digsig_asymmetric.c", i32 27, i32 16}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/integrity/digsig_asymmetric.c", i32 29, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @request_asymmetric_key.__UNIQUE_ID_ddebug222, !26, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/integrity/digsig_asymmetric.c", i32 38, i32 4}
!32 = !{ptr @request_asymmetric_key._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @request_asymmetric_key._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/integrity/digsig_asymmetric.c", i32 59, i32 4}
!36 = !{ptr @request_asymmetric_key._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @request_asymmetric_key._entry.19, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @request_asymmetric_key._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @request_asymmetric_key._rs.22, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../security/integrity/digsig_asymmetric.c", i32 63, i32 4}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @request_asymmetric_key._entry.23, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @request_asymmetric_key._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/integrity/digsig_asymmetric.c", i32 77, i32 2}
!47 = !{ptr @request_asymmetric_key.__UNIQUE_ID_ddebug223, !46, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!48 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148246825, i64 2148246830, i64 2148246843, i64 2148246887, i64 2148246921, i64 2148246942}
