; ModuleID = '/llk/IR_all_yes/net/ceph/msgpool.c_pt.bc'
source_filename = "../net/ceph/msgpool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon.4, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%union.anon.4 = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.kvec = type { ptr, i32 }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.75 }
%union.anon.75 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@ceph_msgpool_init.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_msgpool_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ceph/msgpool.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%.*s %12.12s:%-4d : msgpool %s init\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool %s init\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_msgpool_destroy.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_msgpool_destroy\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : msgpool %s destroy\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool %s destroy\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_msgpool_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ceph_msgpool_get = private unnamed_addr constant [17 x i8] c"ceph_msgpool_get\00", align 1
@ceph_msgpool_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.ceph_msgpool_get, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014libceph: %s need %d/%d, pool %s has %d/%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_msgpool_get._entry_ptr = internal global ptr @ceph_msgpool_get._entry, section ".printk_index", align 4
@ceph_msgpool_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_msgpool_get.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.ceph_msgpool_get, ptr @.str.2, ptr @.str.11, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : msgpool_get %s %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool_get %s %p\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_msgpool_put.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_msgpool_put\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : msgpool_put %s %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool_put %s %p\0A\00", [48 x i8] zeroinitializer }, align 32
@msgpool_alloc.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msgpool_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : msgpool_alloc %s failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool_alloc %s failed\0A\00", [42 x i8] zeroinitializer }, align 32
@msgpool_alloc.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : msgpool_alloc %s %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool_alloc %s %p\0A\00", [46 x i8] zeroinitializer }, align 32
@msgpool_free.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msgpool_free\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : msgpool_release %s %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"libceph: %.*s %12.12s:%-4d : msgpool_release %s %p\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 42, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 55, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 66, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 77, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 83, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 20, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 22, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [22 x i8] c"../net/ceph/msgpool.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 33, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ceph_msgpool_get._entry, ptr @ceph_msgpool_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ceph_msgpool_get._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_msgpool_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_msgpool_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_msgpool_init(ptr noundef %pool, i32 noundef %type, i32 noundef %front_len, i32 noundef %max_data_items, i32 noundef %size, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msgpool_init.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msgpool_init, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msgpool_init.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 42, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type4 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %type4, align 4
  %front_len5 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 3
  %1 = ptrtoint ptr %front_len5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %front_len, ptr %front_len5, align 4
  %max_data_items6 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 4
  %2 = ptrtoint ptr %max_data_items6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %max_data_items, ptr %max_data_items6, align 4
  %call7 = tail call ptr @mempool_create(i32 noundef %size, ptr noundef nonnull @msgpool_alloc, ptr noundef nonnull @msgpool_free, ptr noundef %pool) #4
  %pool8 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 1
  %3 = ptrtoint ptr %pool8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %pool8, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %do.end.return_crit_edge, label %if.end12

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %pool, align 4
  br label %return

return:                                           ; preds = %if.end12, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msgpool_alloc(i32 noundef %gfp_mask, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ceph_msgpool, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %front_len = getelementptr inbounds %struct.ceph_msgpool, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %front_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %front_len, align 4
  %max_data_items = getelementptr inbounds %struct.ceph_msgpool, ptr %arg, i32 0, i32 4
  %4 = ptrtoint ptr %max_data_items to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_data_items, align 4
  %call = tail call ptr @ceph_msg_new2(i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %gfp_mask, i1 noundef zeroext true) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msgpool_alloc.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msgpool_alloc, %if.then5)) #4
          to label %if.end26 [label %if.then5], !srcloc !54

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msgpool_alloc.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 20, ptr noundef %7) #4
  br label %if.end26

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msgpool_alloc.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msgpool_alloc, %if.then19)) #4
          to label %do.end24 [label %if.then19], !srcloc !54

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msgpool_alloc.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 22, ptr noundef %9, ptr noundef nonnull %call) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body7
  %pool25 = getelementptr inbounds %struct.ceph_msg, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %pool25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arg, ptr %pool25, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.then5, %do.body
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msgpool_free(ptr noundef %element, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msgpool_free.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msgpool_free, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msgpool_free.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 33, ptr noundef %1, ptr noundef %element) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pool4 = getelementptr inbounds %struct.ceph_msg, ptr %element, i32 0, i32 15
  %2 = ptrtoint ptr %pool4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pool4, align 4
  tail call void @ceph_msg_put(ptr noundef %element) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msgpool_destroy(ptr nocapture noundef readonly %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msgpool_destroy.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msgpool_destroy, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msgpool_destroy.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 55, ptr noundef %1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pool4 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 1
  %2 = ptrtoint ptr %pool4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool4, align 4
  tail call void @mempool_destroy(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_msgpool_get(ptr nocapture noundef readonly %pool, i32 noundef %front_len, i32 noundef %max_data_items) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %front_len1 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 3
  %0 = ptrtoint ptr %front_len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %front_len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %front_len)
  %cmp = icmp slt i32 %1, %front_len
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %max_data_items2 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 4
  %2 = ptrtoint ptr %max_data_items2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_items2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %max_data_items)
  %cmp3 = icmp slt i32 %3, %max_data_items
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %if.end48

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_msgpool_get._rs, ptr noundef nonnull @__func__.ceph_msgpool_get) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.land.end_crit_edge, label %do.end

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %6 = ptrtoint ptr %front_len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %front_len1, align 4
  %max_data_items6 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 4
  %8 = ptrtoint ptr %max_data_items6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_data_items6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ceph_msgpool_get, i32 noundef %front_len, i32 noundef %max_data_items, ptr noundef %5, i32 noundef %7, i32 noundef %9) #7
  br label %land.end

land.end:                                         ; preds = %do.end, %if.then.land.end_crit_edge
  %.b81 = load i1, ptr @ceph_msgpool_get.__already_done, align 1
  br i1 %.b81, label %land.end.if.end39_crit_edge, label %if.then13, !prof !55

land.end.if.end39_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ceph_msgpool_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 9, ptr noundef null) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then13, %land.end.if.end39_crit_edge
  %type = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %call47 = tail call ptr @ceph_msg_new2(i32 noundef %11, i32 noundef %front_len, i32 noundef %max_data_items, i32 noundef 3136, i1 noundef zeroext false) #4
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %pool49 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 1
  %12 = ptrtoint ptr %pool49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool49, align 4
  %call50 = tail call noalias ptr @mempool_alloc(ptr noundef %13, i32 noundef 3136) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msgpool_get.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msgpool_get, %if.then61)) #4
          to label %cleanup [label %if.then61], !srcloc !54

if.then61:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pool, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msgpool_get.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 77, ptr noundef %15, ptr noundef %call50) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end48, %if.end39
  %retval.0 = phi ptr [ %call47, %if.end39 ], [ %call50, %if.then61 ], [ %call50, %if.end48 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_msg_new2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msgpool_put(ptr nocapture noundef readonly %pool, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msgpool_put.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msgpool_put, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msgpool_put.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 83, ptr noundef %1, ptr noundef %msg) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %front_len = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 3
  %2 = ptrtoint ptr %front_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %front_len, align 4
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %iov_len, align 4
  %5 = load i32, ptr %front_len, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %front_len5 = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 5
  %7 = ptrtoint ptr %front_len5 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %front_len5, align 2
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %8 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data_length, align 4
  %num_data_items = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %num_data_items to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_data_items, align 4
  %kref = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #4
  %10 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %kref, align 4
  %pool6 = getelementptr inbounds %struct.ceph_msgpool, ptr %pool, i32 0, i32 1
  %11 = ptrtoint ptr %pool6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pool6, align 4
  tail call void @mempool_free(ptr noundef %msg, ptr noundef %12) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msg_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/msgpool.c", i32 42, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_msgpool_init.__UNIQUE_ID_ddebug283, !1, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/msgpool.c", i32 55, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ceph_msgpool_destroy.__UNIQUE_ID_ddebug284, !9, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ceph/msgpool.c", i32 66, i32 3}
!15 = !{ptr @ceph_msgpool_get._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.ceph_msgpool_get, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ceph_msgpool_get._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @ceph_msgpool_get._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/ceph/msgpool.c", i32 69, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ceph/msgpool.c", i32 77, i32 2}
!24 = !{ptr @ceph_msgpool_get.__UNIQUE_ID_ddebug285, !23, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ceph/msgpool.c", i32 83, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ceph_msgpool_put.__UNIQUE_ID_ddebug286, !27, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!30 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ceph/msgpool.c", i32 20, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @msgpool_alloc.__UNIQUE_ID_ddebug280, !32, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!35 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ceph/msgpool.c", i32 22, i32 3}
!38 = !{ptr @msgpool_alloc.__UNIQUE_ID_ddebug281, !37, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!39 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ceph/msgpool.c", i32 33, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @msgpool_free.__UNIQUE_ID_ddebug282, !41, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!44 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148259830, i64 2148259835, i64 2148259848, i64 2148259892, i64 2148259926, i64 2148259947}
!55 = !{!"branch_weights", i32 2000, i32 1}
