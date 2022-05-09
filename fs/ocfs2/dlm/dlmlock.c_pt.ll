; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmlock.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmlock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dlmlock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlmlock\09\09\09\09"
module asm "\09.long\09__crc_dlmlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlmlock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlmlock\22\09\09\09\09\09"
module asm "__kstrtabns_dlmlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dlm_lockstatus = type { i32, i32, ptr, [64 x i8] }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_create_lock = type { i64, i32, i8, i8, i8, i8, [64 x i8] }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"o2dlm_lock\00", [21 x i8] zeroinitializer }, align 32
@dlm_lock_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.dlm_create_lock_handler = private unnamed_addr constant [24 x i8] c"dlm_create_lock_handler\00", align 1
@.str.1 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Domain %s not fully joined, but node %u is sending a create_lock message for lock %.*s!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm status = %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set DLM_LKSB_GET_LVB flag\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lockres recovering/migrating/in-progress\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.dlmlock = private unnamed_addr constant [8 x i8] c"dlmlock\00", align 1
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"strange LOCAL convert request!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NULL lock pointer in convert request\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NULL lockres pointer in convert request\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"new args:  lksb=%p, ast=%p, bast=%p, astdata=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"orig args: lksb=%p, ast=%p, bast=%p, astdata=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"retrying convert with migration/recovery/in-progress\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"type=%d, flags = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"creating lock: lock=%p res=%p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LKM_VALBLK passed by caller\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_dlmlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlmlock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlmlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlmlock to i32), ptr @__kstrtab_dlmlock, ptr @__kstrtabns_dlmlock }, section "___ksymtab_gpl+dlmlock", align 4
@__func__.dlm_lock_release = private unnamed_addr constant [17 x i8] c"dlm_lock_release\00", align 1
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"freeing kernel-allocated lksb\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.dlm_lock_detach_lockres = private unnamed_addr constant [24 x i8] c"dlm_lock_detach_lockres\00", align 1
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"removing lock's lockres reference\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dlm_init_lock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&newlock->spinlock\00", [45 x i8] zeroinitializer }, align 32
@__func__.dlmlock_master = private unnamed_addr constant [15 x i8] c"dlmlock_master\00", align 1
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"type=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"I can grant this lock right away\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: returning DLM_NORMAL to node %u for reco lock\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: returning NOTQUEUED to node %u for reco lock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"$RECOVERY\00", [22 x i8] zeroinitializer }, align 32
@dlm_cookie_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dlm_next_cookie = internal global { i64, [24 x i8] } { i64 1, [24 x i8] zeroinitializer }, align 32
@__func__.dlm_get_next_cookie = private unnamed_addr constant [20 x i8] c"dlm_get_next_cookie\00", align 1
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"This node's cookie will now wrap!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlm_cookie_lock\00", [16 x i8] zeroinitializer }, align 32
@__func__.dlmlock_remote = private unnamed_addr constant [15 x i8] c"dlmlock_remote\00", align 1
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"type=%d, lockres %.*s, flags = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: recovery lock was owned by dead node %u, remaster it now.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s: $RECOVERY lock for this node (%u) is mastered by %u; got lock, manually granting (no ast)\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.dlm_send_remote_lock_request = private unnamed_addr constant [29 x i8] c"dlm_send_remote_lock_request\00", align 1
@.str.27 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: res %.*s, Stale lockres no longer owned by node %u. That node is coming back up currently.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: res %.*s, Error %d send CREATE LOCK to node %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.31 = internal global [10 x i64] [i64 8, i64 32, i64 4294966784, i64 4294967185, i64 4294967186, i64 4294967189, i64 4294967192, i64 4294967264, i64 4294967284, i64 4294967287]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 21, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 32, i64 39]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 53, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"dlm_lock_cache\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 38, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 461, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 464, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 487, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 502, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 578, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 588, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 595, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 609, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 611, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 629, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 668, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 669, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 678, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 349, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 371, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 382, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 108, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 125, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 142, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 153, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant [28 x i8] c"../fs/ocfs2/dlm/dlmcommon.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 80, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"dlm_cookie_lock\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"dlm_next_cookie\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 41, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 534, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 40, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 204, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 240, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 261, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 304, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [26 x i8] c"../fs/ocfs2/dlm/dlmlock.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 312, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_dlmlock, ptr @.str, ptr @dlm_lock_cache, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @dlm_init_lock.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dlm_cookie_lock, ptr @dlm_next_cookie, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lock_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_init_lock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_cookie_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_next_cookie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_init_lock_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  store ptr %call, ptr @dlm_lock_cache, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_destroy_lock_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_lock_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_revert_pending_lock(ptr nocapture readnone %res, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i3.i, align 4
  %lksb = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %8 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lksb, align 8
  %flags = getelementptr inbounds %struct.dlm_lockstatus, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -5
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lock_get(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_refs = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock_refs, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %lock_refs, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock_refs, ptr %lock_refs, i32 1, ptr elementtype(i32) %lock_refs) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !85

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %lock_refs, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lock_put(ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %_m.i.i.i = alloca i64, align 8
  %_m.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_refs = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock_refs, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %lock_refs, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock_refs, ptr %lock_refs, i32 1, ptr elementtype(i32) %lock_refs) #7, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !86

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %lock_refs, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  %list.i.i = getelementptr %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %1 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %2, %list.i.i
  br i1 %cmp.i.not.i.i, label %do.body10.i.i, label %do.body4.i.i, !prof !86

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #7, !srcloc !90
  unreachable

do.body10.i.i:                                    ; preds = %if.then.i
  %ast_list.i.i = getelementptr %struct.dlm_lock, ptr %lock, i32 0, i32 2
  %3 = ptrtoint ptr %ast_list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ast_list.i.i, align 4
  %cmp.i112.not.i.i = icmp eq ptr %4, %ast_list.i.i
  br i1 %cmp.i112.not.i.i, label %do.body31.i.i, label %do.body22.i.i, !prof !86

do.body22.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #7, !srcloc !91
  unreachable

do.body31.i.i:                                    ; preds = %do.body10.i.i
  %bast_list.i.i = getelementptr %struct.dlm_lock, ptr %lock, i32 0, i32 3
  %5 = ptrtoint ptr %bast_list.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %bast_list.i.i, align 4
  %cmp.i114.not.i.i = icmp eq ptr %6, %bast_list.i.i
  br i1 %cmp.i114.not.i.i, label %do.body52.i.i, label %do.body43.i.i, !prof !86

do.body43.i.i:                                    ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #7, !srcloc !92
  unreachable

do.body52.i.i:                                    ; preds = %do.body31.i.i
  %ast_pending.i.i = getelementptr %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %7 = ptrtoint ptr %ast_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %ast_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool53.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool53.not.i.i, label %do.body70.i.i, label %do.body61.i.i, !prof !86

do.body61.i.i:                                    ; preds = %do.body52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 343, 0\0A.popsection", ""() #7, !srcloc !93
  unreachable

do.body70.i.i:                                    ; preds = %do.body52.i.i
  %8 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool74.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool74.not.i.i, label %do.end90.i.i, label %do.body82.i.i, !prof !86

do.body82.i.i:                                    ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #7, !srcloc !94
  unreachable

do.end90.i.i:                                     ; preds = %do.body70.i.i
  %lockres.i.i.i = getelementptr %struct.dlm_lock, ptr %lock, i32 0, i32 4
  %9 = ptrtoint ptr %lockres.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lockres.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %do.end90.i.i.dlm_lock_detach_lockres.exit.i.i_crit_edge, label %if.then.i.i.i

do.end90.i.i.dlm_lock_detach_lockres.exit.i.i_crit_edge: ; preds = %do.end90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_detach_lockres.exit.i.i

if.then.i.i.i:                                    ; preds = %do.end90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %lockres.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %lockres.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #7
  %12 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 64, ptr %_m.i.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.dlm_lock_detach_lockres, i32 noundef 371, ptr noundef nonnull @.str.15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #7
  call void @dlm_lockres_put(ptr noundef nonnull %10) #7
  br label %dlm_lock_detach_lockres.exit.i.i

dlm_lock_detach_lockres.exit.i.i:                 ; preds = %if.then.i.i.i, %do.end90.i.i.dlm_lock_detach_lockres.exit.i.i_crit_edge
  %13 = ptrtoint ptr %ast_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load91.i.i = load i8, ptr %ast_pending.i.i, align 4
  %14 = and i8 %bf.load91.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool95.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool95.not.i.i, label %dlm_lock_detach_lockres.exit.i.i.dlm_lock_release.exit.i_crit_edge, label %do.body97.i.i

dlm_lock_detach_lockres.exit.i.i.dlm_lock_release.exit.i_crit_edge: ; preds = %dlm_lock_detach_lockres.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_release.exit.i

do.body97.i.i:                                    ; preds = %dlm_lock_detach_lockres.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #7
  %15 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 64, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_lock_release, i32 noundef 349, ptr noundef nonnull @.str.14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #7
  %lksb.i.i = getelementptr %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %16 = ptrtoint ptr %lksb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lksb.i.i, align 8
  call void @kfree(ptr noundef %17) #7
  br label %dlm_lock_release.exit.i

dlm_lock_release.exit.i:                          ; preds = %do.body97.i.i, %dlm_lock_detach_lockres.exit.i.i.dlm_lock_release.exit.i_crit_edge
  %18 = load ptr, ptr @dlm_lock_cache, align 4
  call void @kmem_cache_free(ptr noundef %18, ptr noundef %lock) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dlm_lock_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lock_attach_lockres(ptr nocapture noundef writeonly %lock, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !85

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %lockres = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 4
  %2 = ptrtoint ptr %lockres to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %res, ptr %lockres, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_lockres_get(ptr noundef %res) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %refs = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !85

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_new_lock(i32 noundef %type, i8 noundef zeroext %node, i64 noundef %cookie, ptr noundef %lksb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_lock_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %lksb, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 76) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @dlm_lock_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %lksb.addr.0 = phi ptr [ %lksb, %if.end.if.end7_crit_edge ], [ %call7.i.i, %if.then2.if.end7_crit_edge ]
  %list.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list.i, ptr %prev.i.i, align 4
  %ast_list.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %ast_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ast_list.i, ptr %ast_list.i, align 8
  %prev.i52.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ast_list.i, ptr %prev.i52.i, align 4
  %bast_list.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %bast_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %bast_list.i, ptr %bast_list.i, align 8
  %prev.i53.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i53.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bast_list.i, ptr %prev.i53.i, align 4
  %spinlock.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @dlm_init_lock.__key, i16 noundef signext 3) #7
  %conv.i = trunc i32 %type to i8
  %type1.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %type1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %type1.i, align 4
  %convert_type.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %convert_type.i, align 1
  %highest_blocked.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %highest_blocked.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %highest_blocked.i, align 2
  %node5.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %node5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %node, ptr %node5.i, align 1
  %pad1.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call.i, i32 0, i32 1
  %ast.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %ast.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ast.i, align 4
  %bast.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %bast.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bast.i, align 8
  %astdata.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %astdata.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %astdata.i, align 4
  %16 = ptrtoint ptr %pad1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pad1.i, align 8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %cookie, ptr %call.i, align 8
  %ast_pending.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %ast_pending.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %ast_pending.i, align 4
  %bf.clear28.i = and i8 %bf.load.i, 1
  store i8 %bf.clear28.i, ptr %ast_pending.i, align 4
  %lock_refs.i = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock_refs.i, i32 noundef 4) #7
  %19 = ptrtoint ptr %lock_refs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %lock_refs.i, align 8
  br i1 %tobool1.not, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ast_pending.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %ast_pending.i, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %ast_pending.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %lksb11 = getelementptr inbounds %struct.dlm_lock, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %lksb11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lksb.addr.0, ptr %lksb11, align 8
  %lockid = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb.addr.0, i32 0, i32 2
  %22 = ptrtoint ptr %lockid to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %lockid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end10 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_create_lock_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m36 = alloca i64, align 8
  %_m62 = alloca i64, align 8
  %_m90 = alloca i64, align 8
  %_m108 = alloca i64, align 8
  %_m130 = alloca i64, align 8
  %_m148 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !85

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !95
  unreachable

do.end9:                                          ; preds = %entry
  %call = tail call ptr @dlm_grab(ptr noundef nonnull %data) #7
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %name13 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 6
  %namelen15 = getelementptr inbounds %struct.dlm_create_lock, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %namelen15 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %namelen15, align 1
  %conv = zext i8 %1 to i32
  %call16 = tail call i32 @dlm_domain_fully_joined(ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body19, label %if.end47

do.body19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #7
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606847040, ptr %_m, align 8
  %name22 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %3 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name22, align 4
  %node_idx = getelementptr inbounds %struct.dlm_create_lock, ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %node_idx, align 1
  %conv23 = zext i8 %6 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 463, ptr noundef nonnull @.str.1, ptr noundef %4, i32 noundef %conv23, i32 noundef %conv, ptr noundef %name13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36) #7
  %7 = ptrtoint ptr %_m36 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847040, ptr %_m36, align 8
  %call40 = call ptr @dlm_errname(i32 noundef 26) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 464, ptr noundef nonnull @.str.2, ptr noundef %call40) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36) #7
  br label %if.end167

if.end47:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp48 = icmp ugt i8 %1, 32
  br i1 %cmp48, label %do.body61, label %if.end73

do.body61:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #7
  %8 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606847040, ptr %_m62, align 8
  %call66 = tail call ptr @dlm_errname(i32 noundef 22) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 470, ptr noundef nonnull @.str.2, ptr noundef %call66) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #7
  br label %if.end167

if.end73:                                         ; preds = %if.end47
  %requested_type = getelementptr inbounds %struct.dlm_create_lock, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %requested_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %requested_type, align 2
  %conv74 = sext i8 %10 to i32
  %node_idx75 = getelementptr inbounds %struct.dlm_create_lock, ptr %buf, i32 0, i32 3
  %11 = ptrtoint ptr %node_idx75 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node_idx75, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %buf, align 8
  %call76 = tail call ptr @dlm_new_lock(i32 noundef %conv74, i8 noundef zeroext %12, i64 noundef %14, ptr noundef null)
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %do.body89, label %if.end101

do.body89:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m90) #7
  %15 = ptrtoint ptr %_m90 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606847040, ptr %_m90, align 8
  %call94 = tail call ptr @dlm_errname(i32 noundef 8) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m90, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 479, ptr noundef nonnull @.str.2, ptr noundef %call94) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m90) #7
  br label %if.end167

if.end101:                                        ; preds = %if.end73
  %flags = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and103 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end115_crit_edge, label %if.then105

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %lksb102 = getelementptr inbounds %struct.dlm_lock, ptr %call76, i32 0, i32 10
  %18 = ptrtoint ptr %lksb102 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lksb102, align 8
  %flags106 = getelementptr inbounds %struct.dlm_lockstatus, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags106 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags106, align 4
  %or = or i32 %21, 4
  store i32 %or, ptr %flags106, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m108) #7
  %22 = ptrtoint ptr %_m108 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 64, ptr %_m108, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m108, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 487, ptr noundef nonnull @.str.3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m108) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then105, %if.end101.if.end115_crit_edge
  %call116 = call ptr @dlm_lookup_lockres(ptr noundef nonnull %data, ptr noundef %name13, i32 noundef %conv) #7
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end164.thread243, label %if.end141

if.end164.thread243:                              ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130) #7
  %23 = ptrtoint ptr %_m130 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606847040, ptr %_m130, align 8
  %call134 = call ptr @dlm_errname(i32 noundef 11) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 493, ptr noundef nonnull @.str.2, ptr noundef %call134) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130) #7
  call void @dlm_lock_put(ptr noundef nonnull %call76)
  br label %if.end167

if.end141:                                        ; preds = %if.end115
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %call116, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %24 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %24)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %25 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !85

do.body4.i:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %if.end141
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call116, i32 0, i32 17
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state.i, align 2
  %conv.i = zext i16 %27 to i32
  %and.i = and i32 %conv.i, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %do.end9.i.__dlm_lockres_state_to_status.exit.thread_crit_edge

do.end9.i.__dlm_lockres_state_to_status.exit.thread_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dlm_lockres_state_to_status.exit.thread

if.else.i:                                        ; preds = %do.end9.i
  %and14.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %__dlm_lockres_state_to_status.exit, label %if.else.i.__dlm_lockres_state_to_status.exit.thread_crit_edge

if.else.i.__dlm_lockres_state_to_status.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dlm_lockres_state_to_status.exit.thread

__dlm_lockres_state_to_status.exit.thread:        ; preds = %if.else.i.__dlm_lockres_state_to_status.exit.thread_crit_edge, %do.end9.i.__dlm_lockres_state_to_status.exit.thread_crit_edge
  %status.0.i.ph = phi i32 [ 40, %if.else.i.__dlm_lockres_state_to_status.exit.thread_crit_edge ], [ 39, %do.end9.i.__dlm_lockres_state_to_status.exit.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  br label %if.end164

__dlm_lockres_state_to_status.exit:               ; preds = %if.else.i
  %and20.i = shl nuw nsw i32 %conv.i, 1
  %28 = and i32 %and20.i, 32
  call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp144.not = icmp eq i32 %28, 0
  br i1 %cmp144.not, label %if.end155, label %__dlm_lockres_state_to_status.exit.if.end164_crit_edge

__dlm_lockres_state_to_status.exit.if.end164_crit_edge: ; preds = %__dlm_lockres_state_to_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.end155:                                        ; preds = %__dlm_lockres_state_to_status.exit
  %refs.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call116, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refs.i.i, i32 1, i32 3, i32 1) #7
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i.i, ptr %refs.i.i, i32 1, ptr elementtype(i32) %refs.i.i) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end155.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !85

if.end155.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end155
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.leave_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.leave_crit_edge:              ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end155.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end155.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %leave

leave:                                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.leave_crit_edge
  %lockres.i = getelementptr inbounds %struct.dlm_lock, ptr %call76, i32 0, i32 4
  %31 = ptrtoint ptr %lockres.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call116, ptr %lockres.i, align 8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %call157 = call fastcc i32 @dlmlock_master(ptr noundef nonnull %data, ptr noundef nonnull %call116, ptr noundef nonnull %call76, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp158.not = icmp eq i32 %call157, 0
  br i1 %cmp158.not, label %leave.if.then166_crit_edge, label %leave.if.then166.sink.split_crit_edge

leave.if.then166.sink.split_crit_edge:            ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then166.sink.split

leave.if.then166_crit_edge:                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then166

if.end164:                                        ; preds = %__dlm_lockres_state_to_status.exit.if.end164_crit_edge, %__dlm_lockres_state_to_status.exit.thread
  %status.0.i223 = phi i32 [ %status.0.i.ph, %__dlm_lockres_state_to_status.exit.thread ], [ %28, %__dlm_lockres_state_to_status.exit.if.end164_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m148) #7
  %34 = ptrtoint ptr %_m148 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 64, ptr %_m148, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m148, ptr noundef nonnull @__func__.dlm_create_lock_handler, i32 noundef 502, ptr noundef nonnull @.str.4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m148) #7
  br label %if.then166.sink.split

if.then166.sink.split:                            ; preds = %if.end164, %leave.if.then166.sink.split_crit_edge
  %status.0231240.ph = phi i32 [ %status.0.i223, %if.end164 ], [ %call157, %leave.if.then166.sink.split_crit_edge ]
  call void @dlm_lock_put(ptr noundef nonnull %call76)
  br label %if.then166

if.then166:                                       ; preds = %if.then166.sink.split, %leave.if.then166_crit_edge
  %status.0231240 = phi i32 [ 0, %leave.if.then166_crit_edge ], [ %status.0231240.ph, %if.then166.sink.split ]
  call void @dlm_lockres_put(ptr noundef nonnull %call116) #7
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end164.thread243, %do.body89, %do.body61, %do.body19
  %status.0231235 = phi i32 [ %status.0231240, %if.then166 ], [ 26, %do.body19 ], [ 8, %do.body89 ], [ 22, %do.body61 ], [ 11, %if.end164.thread243 ]
  call void @dlm_put(ptr noundef nonnull %data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0231235, %if.end167 ], [ 26, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_domain_fully_joined(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_errname(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlmlock_master(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m20 = alloca i64, align 8
  %_m36 = alloca i64, align 8
  %_m49 = alloca i64, align 8
  %_m73 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #7
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %_m, align 8
  %type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 4
  %conv = sext i8 %2 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmlock_master, i32 noundef 108, ptr noundef nonnull @.str.17, i32 noundef %conv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #7
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %3 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !85

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end9.i:                                        ; preds = %entry
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state.i, align 2
  %conv.i = zext i16 %6 to i32
  %and.i = and i32 %conv.i, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %do.end9.i.land.lhs.true_crit_edge

do.end9.i.land.lhs.true_crit_edge:                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.else.i:                                        ; preds = %do.end9.i
  %and14.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %__dlm_lockres_state_to_status.exit, label %if.else.i.land.lhs.true_crit_edge

if.else.i.land.lhs.true_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

__dlm_lockres_state_to_status.exit:               ; preds = %if.else.i
  %and20.i = shl nuw nsw i32 %conv.i, 1
  %7 = and i32 %and20.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %__dlm_lockres_state_to_status.exit.if.end31_crit_edge, label %__dlm_lockres_state_to_status.exit.land.lhs.true_crit_edge

__dlm_lockres_state_to_status.exit.land.lhs.true_crit_edge: ; preds = %__dlm_lockres_state_to_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

__dlm_lockres_state_to_status.exit.if.end31_crit_edge: ; preds = %__dlm_lockres_state_to_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %__dlm_lockres_state_to_status.exit.land.lhs.true_crit_edge, %if.else.i.land.lhs.true_crit_edge, %do.end9.i.land.lhs.true_crit_edge
  %status.0.i163 = phi i32 [ %7, %__dlm_lockres_state_to_status.exit.land.lhs.true_crit_edge ], [ 40, %if.else.i.land.lhs.true_crit_edge ], [ 39, %do.end9.i.land.lhs.true_crit_edge ]
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %node, align 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %10 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp5.not = icmp eq i8 %9, %11
  br i1 %cmp5.not, label %land.lhs.true.if.end31_crit_edge, label %if.then7

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then7:                                         ; preds = %land.lhs.true
  call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  %12 = zext i32 %status.0.i163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.0.i163, label %do.body19 [
    i32 39, label %if.then7.cleanup_crit_edge
    i32 40, label %if.then7.cleanup_crit_edge175
    i32 32, label %if.then7.cleanup_crit_edge176
  ]

if.then7.cleanup_crit_edge176:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.cleanup_crit_edge175:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20) #7
  %13 = ptrtoint ptr %_m20 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606847040, ptr %_m20, align 8
  %call24 = call ptr @dlm_errname(i32 noundef %status.0.i163) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20, ptr noundef nonnull @__func__.dlmlock_master, i32 noundef 118, ptr noundef nonnull @.str.2, ptr noundef %call24) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20) #7
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %__dlm_lockres_state_to_status.exit.if.end31_crit_edge
  call void @__dlm_wait_on_lockres_flags(ptr noundef %res, i32 noundef 16434) #7
  call void @__dlm_lockres_reserve_ast(ptr noundef %res) #7
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %dlm_lock_compatible.exit.i.for.cond.i_crit_edge, %if.end31
  %.pn.in.i = phi ptr [ %granted.i, %if.end31 ], [ %.pn.i, %dlm_lock_compatible.exit.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %granted.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr i8, ptr %.pn.i, i32 -4
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i, align 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp1.i.i = icmp eq i8 %16, 0
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %for.body.i.dlm_lock_compatible.exit.i_crit_edge, label %if.end.i.i

for.body.i.dlm_lock_compatible.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_compatible.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp2.i.i = icmp eq i8 %18, 5
  br i1 %cmp2.i.i, label %if.end.i.i.if.else61_crit_edge, label %if.end4.i.i

if.end.i.i.if.else61_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else61

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp5.i.i = icmp eq i8 %16, 3
  %..i.i = zext i1 %cmp5.i.i to i32
  br label %dlm_lock_compatible.exit.i

dlm_lock_compatible.exit.i:                       ; preds = %if.end4.i.i, %for.body.i.dlm_lock_compatible.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %for.body.i.dlm_lock_compatible.exit.i_crit_edge ], [ %..i.i, %if.end4.i.i ]
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %dlm_lock_compatible.exit.i.if.else61_crit_edge, label %dlm_lock_compatible.exit.i.for.cond.i_crit_edge

dlm_lock_compatible.exit.i.for.cond.i_crit_edge:  ; preds = %dlm_lock_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

dlm_lock_compatible.exit.i.if.else61_crit_edge:   ; preds = %dlm_lock_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else61

for.end.i:                                        ; preds = %for.cond.i
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  br label %for.cond14.i

for.cond14.i:                                     ; preds = %dlm_lock_compatible.exit78.i.for.cond14.i_crit_edge, %for.end.i
  %.pn58.in.i = phi ptr [ %converting.i, %for.end.i ], [ %.pn58.i, %dlm_lock_compatible.exit78.i.for.cond14.i_crit_edge ]
  %19 = ptrtoint ptr %.pn58.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn58.i = load ptr, ptr %.pn58.in.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn58.i, %converting.i
  br i1 %cmp17.not.i, label %do.body35, label %for.body20.i

for.body20.i:                                     ; preds = %for.cond14.i
  %type22.i = getelementptr i8, ptr %.pn58.i, i32 -4
  %20 = ptrtoint ptr %type22.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type22.i, align 4
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i59.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1.i60.i = icmp eq i8 %21, 0
  %or.cond.i61.i = or i1 %cmp1.i60.i, %cmp.i59.i
  br i1 %or.cond.i61.i, label %for.body20.i.if.end30.i_crit_edge, label %if.end.i63.i

for.body20.i.if.end30.i_crit_edge:                ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.end.i63.i:                                     ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %23)
  %cmp2.i62.i = icmp ne i8 %23, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp5.i64.not.i = icmp eq i8 %21, 3
  %or.cond.i = select i1 %cmp2.i62.i, i1 %cmp5.i64.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i63.i.if.end30.i_crit_edge, label %if.end.i63.i.if.else61_crit_edge

if.end.i63.i.if.else61_crit_edge:                 ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else61

if.end.i63.i.if.end30.i_crit_edge:                ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end.i63.i.if.end30.i_crit_edge, %for.body20.i.if.end30.i_crit_edge
  %convert_type.i = getelementptr i8, ptr %.pn58.i, i32 -3
  %24 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %convert_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp1.i70.i = icmp eq i8 %25, 0
  %or.cond.i71.i = or i1 %cmp.i59.i, %cmp1.i70.i
  br i1 %or.cond.i71.i, label %if.end30.i.dlm_lock_compatible.exit78.i_crit_edge, label %if.end.i73.i

if.end30.i.dlm_lock_compatible.exit78.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_compatible.exit78.i

if.end.i73.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %23)
  %cmp2.i72.i = icmp eq i8 %23, 5
  br i1 %cmp2.i72.i, label %if.end.i73.i.if.else61_crit_edge, label %if.end4.i76.i

if.end.i73.i.if.else61_crit_edge:                 ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else61

if.end4.i76.i:                                    ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp5.i74.i = icmp eq i8 %25, 3
  %..i75.i = zext i1 %cmp5.i74.i to i32
  br label %dlm_lock_compatible.exit78.i

dlm_lock_compatible.exit78.i:                     ; preds = %if.end4.i76.i, %if.end30.i.dlm_lock_compatible.exit78.i_crit_edge
  %retval.0.i77.i = phi i32 [ 1, %if.end30.i.dlm_lock_compatible.exit78.i_crit_edge ], [ %..i75.i, %if.end4.i76.i ]
  %tobool37.not.i = icmp eq i32 %retval.0.i77.i, 0
  br i1 %tobool37.not.i, label %dlm_lock_compatible.exit78.i.if.else61_crit_edge, label %dlm_lock_compatible.exit78.i.for.cond14.i_crit_edge

dlm_lock_compatible.exit78.i.for.cond14.i_crit_edge: ; preds = %dlm_lock_compatible.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.i

dlm_lock_compatible.exit78.i.if.else61_crit_edge: ; preds = %dlm_lock_compatible.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else61

do.body35:                                        ; preds = %for.cond14.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36) #7
  %26 = ptrtoint ptr %_m36 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 64, ptr %_m36, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36, ptr noundef nonnull @__func__.dlmlock_master, i32 noundef 125, ptr noundef nonnull @.str.18) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36) #7
  %lksb = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %27 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lksb, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  %lock_refs.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock_refs.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %lock_refs.i, i32 1, i32 3, i32 1) #7
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock_refs.i, ptr %lock_refs.i, i32 1, ptr elementtype(i32) %lock_refs.i) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.body35.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !85

do.body35.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.body35
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lock_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.body35.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.body35.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %lock_refs.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dlm_lock_get.exit

dlm_lock_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lock_get.exit_crit_edge
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %33, ptr noundef %granted.i) #7
  br i1 %call.i.i, label %if.end.i.i137, label %dlm_lock_get.exit.list_add_tail.exit_crit_edge

dlm_lock_get.exit.list_add_tail.exit_crit_edge:   ; preds = %dlm_lock_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i137:                                    ; preds = %dlm_lock_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev.i, align 4
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %granted.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i137, %dlm_lock_get.exit.list_add_tail.exit_crit_edge
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %38 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lockname, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %39)
  %cmp.i = icmp eq i32 %39, 9
  br i1 %cmp.i, label %land.lhs.true.i, label %list_add_tail.exit.if.end88_crit_edge

list_add_tail.exit.if.end88_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true.i:                                  ; preds = %list_add_tail.exit
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(9) %41, ptr noundef nonnull dereferenceable(9) @.str.21, i32 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp1.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp1.i, label %do.body48, label %land.lhs.true.i.if.end88_crit_edge

land.lhs.true.i.if.end88_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

do.body48:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #7
  %42 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 64, ptr %_m49, align 8
  %name53 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %43 = ptrtoint ptr %name53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name53, align 4
  %node55 = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %45 = ptrtoint ptr %node55 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %node55, align 1
  %conv56 = zext i8 %46 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.dlmlock_master, i32 noundef 144, ptr noundef nonnull @.str.19, ptr noundef %44, i32 noundef %conv56) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #7
  br label %if.end88

if.else61:                                        ; preds = %dlm_lock_compatible.exit78.i.if.else61_crit_edge, %if.end.i73.i.if.else61_crit_edge, %if.end.i63.i.if.else61_crit_edge, %dlm_lock_compatible.exit.i.if.else61_crit_edge, %if.end.i.i.if.else61_crit_edge
  %and62 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else85, label %if.then64

if.then64:                                        ; preds = %if.else61
  %lockname65 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %47 = ptrtoint ptr %lockname65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lockname65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %48)
  %cmp.i139 = icmp eq i32 %48, 9
  br i1 %cmp.i139, label %land.lhs.true.i142, label %if.then64.if.end88_crit_edge

if.then64.if.end88_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true.i142:                               ; preds = %if.then64
  %name66 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %name66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name66, align 8
  %bcmp.i140 = call i32 @bcmp(ptr noundef dereferenceable(9) %50, ptr noundef nonnull dereferenceable(9) @.str.21, i32 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i140)
  %cmp1.i141 = icmp eq i32 %bcmp.i140, 0
  br i1 %cmp1.i141, label %do.body72, label %land.lhs.true.i142.if.end88_crit_edge

land.lhs.true.i142.if.end88_crit_edge:            ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

do.body72:                                        ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73) #7
  %51 = ptrtoint ptr %_m73 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 64, ptr %_m73, align 8
  %name77 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %52 = ptrtoint ptr %name77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name77, align 4
  %node79 = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %54 = ptrtoint ptr %node79 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %node79, align 1
  %conv80 = zext i8 %55 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73, ptr noundef nonnull @__func__.dlmlock_master, i32 noundef 155, ptr noundef nonnull @.str.20, ptr noundef %53, i32 noundef %conv80) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73) #7
  br label %if.end88

if.else85:                                        ; preds = %if.else61
  %lock_refs.i146 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 6
  %call.i.i.i.i.i.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %lock_refs.i146, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %lock_refs.i146, i32 1, i32 3, i32 1) #7
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock_refs.i146, ptr %lock_refs.i146, i32 1, ptr elementtype(i32) %lock_refs.i146) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i.i148 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i148)
  %tobool1.not.i.i.i.i.i149 = icmp eq i32 %asmresult.i.i.i.i.i.i.i148, 0
  br i1 %tobool1.not.i.i.i.i.i149, label %if.else85.if.end15.sink.split.i.i.i.i.i154_crit_edge, label %if.else.i.i.i.i.i152, !prof !85

if.else85.if.end15.sink.split.i.i.i.i.i154_crit_edge: ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i154

if.else.i.i.i.i.i152:                             ; preds = %if.else85
  %add.i.i.i.i.i150 = add i32 %asmresult.i.i.i.i.i.i.i148, 1
  %57 = or i32 %add.i.i.i.i.i150, %asmresult.i.i.i.i.i.i.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i151 = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i151, label %if.else.i.i.i.i.i152.dlm_lock_get.exit155_crit_edge, label %if.else.i.i.i.i.i152.if.end15.sink.split.i.i.i.i.i154_crit_edge, !prof !86

if.else.i.i.i.i.i152.if.end15.sink.split.i.i.i.i.i154_crit_edge: ; preds = %if.else.i.i.i.i.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i154

if.else.i.i.i.i.i152.dlm_lock_get.exit155_crit_edge: ; preds = %if.else.i.i.i.i.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_get.exit155

if.end15.sink.split.i.i.i.i.i154:                 ; preds = %if.else.i.i.i.i.i152.if.end15.sink.split.i.i.i.i.i154_crit_edge, %if.else85.if.end15.sink.split.i.i.i.i.i154_crit_edge
  %.sink.i.i.i.i.i153 = phi i32 [ 2, %if.else85.if.end15.sink.split.i.i.i.i.i154_crit_edge ], [ 1, %if.else.i.i.i.i.i152.if.end15.sink.split.i.i.i.i.i154_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %lock_refs.i146, i32 noundef %.sink.i.i.i.i.i153) #7
  br label %dlm_lock_get.exit155

dlm_lock_get.exit155:                             ; preds = %if.end15.sink.split.i.i.i.i.i154, %if.else.i.i.i.i.i152.dlm_lock_get.exit155_crit_edge
  %list86 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %blocked = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %prev.i156 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i156, align 4
  %call.i.i157 = call zeroext i1 @__list_add_valid(ptr noundef %list86, ptr noundef %59, ptr noundef %blocked) #7
  br i1 %call.i.i157, label %if.end.i.i159, label %dlm_lock_get.exit155.if.end88_crit_edge

dlm_lock_get.exit155.if.end88_crit_edge:          ; preds = %dlm_lock_get.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end.i.i159:                                    ; preds = %dlm_lock_get.exit155
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list86, ptr %prev.i156, align 4
  %61 = ptrtoint ptr %list86 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %blocked, ptr %list86, align 4
  %prev3.i.i158 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %prev3.i.i158 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i158, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list86, ptr %59, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end.i.i159, %dlm_lock_get.exit155.if.end88_crit_edge, %do.body72, %land.lhs.true.i142.if.end88_crit_edge, %if.then64.if.end88_crit_edge, %do.body48, %land.lhs.true.i.if.end88_crit_edge, %list_add_tail.exit.if.end88_crit_edge
  %tobool90.not = phi i1 [ true, %do.body72 ], [ true, %do.body48 ], [ true, %dlm_lock_get.exit155.if.end88_crit_edge ], [ true, %if.end.i.i159 ], [ false, %list_add_tail.exit.if.end88_crit_edge ], [ false, %land.lhs.true.i.if.end88_crit_edge ], [ true, %if.then64.if.end88_crit_edge ], [ true, %land.lhs.true.i142.if.end88_crit_edge ]
  %tobool94.not = phi i1 [ true, %do.body72 ], [ true, %do.body48 ], [ false, %dlm_lock_get.exit155.if.end88_crit_edge ], [ false, %if.end.i.i159 ], [ false, %list_add_tail.exit.if.end88_crit_edge ], [ false, %land.lhs.true.i.if.end88_crit_edge ], [ true, %if.then64.if.end88_crit_edge ], [ true, %land.lhs.true.i142.if.end88_crit_edge ]
  %status.0 = phi i32 [ 21, %do.body72 ], [ 0, %do.body48 ], [ 0, %dlm_lock_get.exit155.if.end88_crit_edge ], [ 0, %if.end.i.i159 ], [ 0, %list_add_tail.exit.if.end88_crit_edge ], [ 0, %land.lhs.true.i.if.end88_crit_edge ], [ 21, %if.then64.if.end88_crit_edge ], [ 21, %land.lhs.true.i142.if.end88_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br i1 %tobool90.not, label %if.else92, label %if.then91

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  call void @dlm_queue_ast(ptr noundef %dlm, ptr noundef %lock) #7
  br label %if.end93

if.else92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  call void @dlm_lockres_release_ast(ptr noundef %dlm, ptr noundef %res) #7
  br label %if.end93

if.end93:                                         ; preds = %if.else92, %if.then91
  call void @dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %res) #7
  br i1 %tobool94.not, label %if.end93.cleanup_crit_edge, label %if.then95

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef %res) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end93.cleanup_crit_edge, %do.body19, %if.then7.cleanup_crit_edge, %if.then7.cleanup_crit_edge175, %if.then7.cleanup_crit_edge176
  %retval.0 = phi i32 [ %status.0.i163, %if.then7.cleanup_crit_edge ], [ %status.0.i163, %if.then7.cleanup_crit_edge175 ], [ %status.0.i163, %if.then7.cleanup_crit_edge176 ], [ %status.0.i163, %do.body19 ], [ %status.0, %if.then95 ], [ %status.0, %if.end93.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlmlock(ptr noundef %dlm, i32 noundef %mode, ptr noundef %lksb, i32 noundef %flags, ptr noundef %name, i32 noundef %namelen, ptr noundef %ast, ptr noundef %data, ptr noundef %bast) #0 align 64 {
entry:
  %create.i.i = alloca %struct.dlm_create_lock, align 8
  %status.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %_m28.i.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m33.i = alloca i64, align 8
  %_m57.i = alloca i64, align 8
  %_m79.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m19 = alloca i64, align 8
  %_m42 = alloca i64, align 8
  %_m70 = alloca i64, align 8
  %_m88 = alloca i64, align 8
  %_m101 = alloca i64, align 8
  %_m112 = alloca i64, align 8
  %_m132 = alloca i64, align 8
  %_m140 = alloca i64, align 8
  %_m169 = alloca i64, align 8
  %tmpcookie = alloca i64, align 8
  %_m191 = alloca i64, align 8
  %_m220 = alloca i64, align 8
  %_m248 = alloca i64, align 8
  %_m277 = alloca i64, align 8
  %_m290 = alloca i64, align 8
  %_m298 = alloca i64, align 8
  %_m312 = alloca i64, align 8
  %_m380 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lksb, null
  br i1 %tobool.not, label %do.body1, label %if.end6

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #7
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606847040, ptr %_m, align 8
  %call = tail call ptr @dlm_errname(i32 noundef 19) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmlock, i32 noundef 554, ptr noundef nonnull @.str.2, ptr noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #7
  br label %cleanup407

if.end6:                                          ; preds = %entry
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mode, label %do.body18 [
    i32 5, label %if.end6.if.end30_crit_edge
    i32 3, label %if.end6.if.end30_crit_edge603
    i32 0, label %if.end6.if.end30_crit_edge604
  ]

if.end6.if.end30_crit_edge604:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end6.if.end30_crit_edge603:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end6.if.end30_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.body18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m19) #7
  %2 = ptrtoint ptr %_m19 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606847040, ptr %_m19, align 8
  %call23 = tail call ptr @dlm_errname(i32 noundef 24) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m19, ptr noundef nonnull @__func__.dlmlock, i32 noundef 560, ptr noundef nonnull @.str.2, ptr noundef %call23) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m19) #7
  br label %if.end401

if.end30:                                         ; preds = %if.end6.if.end30_crit_edge, %if.end6.if.end30_crit_edge603, %if.end6.if.end30_crit_edge604
  %and31 = and i32 %flags, 2139048063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end53, label %do.body41

do.body41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #7
  %3 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606847040, ptr %_m42, align 8
  %call46 = tail call ptr @dlm_errname(i32 noundef 24) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.dlmlock, i32 noundef 565, ptr noundef nonnull @.str.2, ptr noundef %call46) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #7
  br label %if.end401

if.end53:                                         ; preds = %if.end30
  %and54 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %tobool56.not = icmp sgt i32 %flags, -1
  br i1 %tobool56.not, label %if.end81, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %namelen)
  %cmp.i = icmp eq i32 %namelen, 9
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true57.do.body69_crit_edge

land.lhs.true57.do.body69_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

land.lhs.true.i:                                  ; preds = %land.lhs.true57
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(9) %name, ptr noundef nonnull dereferenceable(9) @.str.21, i32 9) #11
  %4 = or i32 %bcmp.i, %and54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %land.lhs.true.i.if.else177_crit_edge, label %land.lhs.true.i.do.body69_crit_edge

land.lhs.true.i.do.body69_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

land.lhs.true.i.if.else177_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else177

do.body69:                                        ; preds = %land.lhs.true.i.do.body69_crit_edge, %land.lhs.true57.do.body69_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70) #7
  %6 = ptrtoint ptr %_m70 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606847040, ptr %_m70, align 8
  %call74 = tail call ptr @dlm_errname(i32 noundef 24) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70, ptr noundef nonnull @__func__.dlmlock, i32 noundef 574, ptr noundef nonnull @.str.2, ptr noundef %call74) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70) #7
  br label %if.end401

if.end81:                                         ; preds = %if.end53
  %7 = and i32 %flags, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %7)
  %.not = icmp eq i32 %7, 1152
  br i1 %.not, label %do.body87, label %if.end95

do.body87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m88) #7
  %8 = ptrtoint ptr %_m88 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606847040, ptr %_m88, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m88, ptr noundef nonnull @__func__.dlmlock, i32 noundef 578, ptr noundef nonnull @.str.5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m88) #7
  br label %if.end401

if.end95:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool82.not = icmp eq i32 %and54, 0
  br i1 %tobool82.not, label %if.end95.if.else177_crit_edge, label %if.then97

if.end95.if.else177_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else177

if.then97:                                        ; preds = %if.end95
  %lockid = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb, i32 0, i32 2
  %9 = ptrtoint ptr %lockid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lockid, align 4
  %tobool98.not = icmp eq ptr %10, null
  br i1 %tobool98.not, label %do.body100, label %if.end108

do.body100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m101) #7
  %11 = ptrtoint ptr %_m101 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606847040, ptr %_m101, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m101, ptr noundef nonnull @__func__.dlmlock, i32 noundef 589, ptr noundef nonnull @.str.6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m101) #7
  br label %if.end401

if.end108:                                        ; preds = %if.then97
  %lockres = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lockres, align 8
  %tobool109.not = icmp eq ptr %13, null
  br i1 %tobool109.not, label %do.body111, label %if.end119

do.body111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m112) #7
  %14 = ptrtoint ptr %_m112 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606847040, ptr %_m112, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m112, ptr noundef nonnull @__func__.dlmlock, i32 noundef 596, ptr noundef nonnull @.str.7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m112) #7
  br label %if.end401

if.end119:                                        ; preds = %if.end108
  tail call fastcc void @dlm_lockres_get(ptr noundef nonnull %13)
  %lksb120 = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 10
  %15 = ptrtoint ptr %lksb120 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lksb120, align 8
  %cmp121.not = icmp eq ptr %16, %lksb
  br i1 %cmp121.not, label %lor.lhs.false122, label %if.end119.if.then130_crit_edge

if.end119.if.then130_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

lor.lhs.false122:                                 ; preds = %if.end119
  %ast123 = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 7
  %17 = ptrtoint ptr %ast123 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ast123, align 4
  %cmp124.not = icmp eq ptr %18, %ast
  br i1 %cmp124.not, label %lor.lhs.false125, label %lor.lhs.false122.if.then130_crit_edge

lor.lhs.false122.if.then130_crit_edge:            ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

lor.lhs.false125:                                 ; preds = %lor.lhs.false122
  %bast126 = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %bast126 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bast126, align 8
  %cmp127.not = icmp eq ptr %20, %bast
  br i1 %cmp127.not, label %lor.lhs.false128, label %lor.lhs.false125.if.then130_crit_edge

lor.lhs.false125.if.then130_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

lor.lhs.false128:                                 ; preds = %lor.lhs.false125
  %astdata = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 9
  %21 = ptrtoint ptr %astdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %astdata, align 4
  %cmp129.not = icmp eq ptr %22, %data
  br i1 %cmp129.not, label %retry_convert.preheader, label %lor.lhs.false128.if.then130_crit_edge

lor.lhs.false128.if.then130_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

retry_convert.preheader:                          ; preds = %lor.lhs.false128
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %13, i32 0, i32 16
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  br label %retry_convert

if.then130:                                       ; preds = %lor.lhs.false128.if.then130_crit_edge, %lor.lhs.false125.if.then130_crit_edge, %lor.lhs.false122.if.then130_crit_edge, %if.end119.if.then130_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m132) #7
  %23 = ptrtoint ptr %_m132 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606847040, ptr %_m132, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m132, ptr noundef nonnull @__func__.dlmlock, i32 noundef 610, ptr noundef nonnull @.str.8, ptr noundef nonnull %lksb, ptr noundef %ast, ptr noundef %bast, ptr noundef %data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m132) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m140) #7
  %24 = ptrtoint ptr %_m140 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606847040, ptr %_m140, align 8
  %25 = ptrtoint ptr %lksb120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lksb120, align 8
  %ast145 = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 7
  %27 = ptrtoint ptr %ast145 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ast145, align 4
  %bast146 = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 8
  %29 = ptrtoint ptr %bast146 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bast146, align 8
  %astdata147 = getelementptr inbounds %struct.dlm_lock, ptr %10, i32 0, i32 9
  %31 = ptrtoint ptr %astdata147 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %astdata147, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m140, ptr noundef nonnull @__func__.dlmlock, i32 noundef 613, ptr noundef nonnull @.str.9, ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef %32) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m140) #7
  br label %if.end401

retry_convert:                                    ; preds = %do.body168, %retry_convert.preheader
  call void @dlm_wait_for_recovery(ptr noundef %dlm) #7
  %33 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %owner, align 4
  %35 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp153 = icmp eq i8 %34, %36
  br i1 %cmp153, label %if.then155, label %if.else

if.then155:                                       ; preds = %retry_convert
  call void @__sanitizer_cov_trace_pc() #9
  %call156 = call i32 @dlmconvert_master(ptr noundef %dlm, ptr noundef nonnull %13, ptr noundef nonnull %10, i32 noundef %flags, i32 noundef %mode) #7
  br label %if.end158

if.else:                                          ; preds = %retry_convert
  call void @__sanitizer_cov_trace_pc() #9
  %call157 = call i32 @dlmconvert_remote(ptr noundef %dlm, ptr noundef nonnull %13, ptr noundef nonnull %10, i32 noundef %flags, i32 noundef %mode) #7
  br label %if.end158

if.end158:                                        ; preds = %if.else, %if.then155
  %status.0 = phi i32 [ %call156, %if.then155 ], [ %call157, %if.else ]
  %37 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %status.0, label %if.end158.error_crit_edge [
    i32 39, label %if.end158.do.body168_crit_edge
    i32 40, label %if.end158.do.body168_crit_edge605
    i32 32, label %if.end158.do.body168_crit_edge606
  ]

if.end158.do.body168_crit_edge606:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body168

if.end158.do.body168_crit_edge605:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body168

if.end158.do.body168_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body168

if.end158.error_crit_edge:                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.body168:                                       ; preds = %if.end158.do.body168_crit_edge, %if.end158.do.body168_crit_edge605, %if.end158.do.body168_crit_edge606
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m169) #7
  %38 = ptrtoint ptr %_m169 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 64, ptr %_m169, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m169, ptr noundef nonnull @__func__.dlmlock, i32 noundef 630, ptr noundef nonnull @.str.10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m169) #7
  call void @msleep(i32 noundef 100) #7
  br label %retry_convert

if.else177:                                       ; preds = %if.end95.if.else177_crit_edge, %land.lhs.true.i.if.else177_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpcookie) #7
  %39 = ptrtoint ptr %tmpcookie to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %tmpcookie, align 8, !annotation !97
  %tobool178.not = icmp eq ptr %name, null
  br i1 %tobool178.not, label %do.body190, label %if.end202

do.body190:                                       ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m191) #7
  %40 = ptrtoint ptr %_m191 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606847040, ptr %_m191, align 8
  %call195 = tail call ptr @dlm_errname(i32 noundef 19) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m191, ptr noundef nonnull @__func__.dlmlock, i32 noundef 640, ptr noundef nonnull @.str.2, ptr noundef %call195) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m191) #7
  br label %cleanup.thread

if.end202:                                        ; preds = %if.else177
  %41 = add i32 %namelen, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %41)
  %42 = icmp ult i32 %41, -32
  br i1 %42, label %do.body219, label %if.end231

do.body219:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m220) #7
  %43 = ptrtoint ptr %_m220 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606847040, ptr %_m220, align 8
  %call224 = tail call ptr @dlm_errname(i32 noundef 22) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m220, ptr noundef nonnull @__func__.dlmlock, i32 noundef 646, ptr noundef nonnull @.str.2, ptr noundef %call224) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m220) #7
  br label %cleanup.thread

if.end231:                                        ; preds = %if.end202
  %node_num232 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %44 = ptrtoint ptr %node_num232 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %node_num232, align 4
  call fastcc void @dlm_get_next_cookie(i8 noundef zeroext %45, ptr noundef nonnull %tmpcookie)
  %46 = ptrtoint ptr %node_num232 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %node_num232, align 4
  %48 = ptrtoint ptr %tmpcookie to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tmpcookie, align 8
  %call234 = tail call ptr @dlm_new_lock(i32 noundef %mode, i8 noundef zeroext %47, i64 noundef %49, ptr noundef nonnull %lksb)
  %tobool235.not = icmp eq ptr %call234, null
  br i1 %tobool235.not, label %do.body247, label %if.end259

do.body247:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m248) #7
  %50 = ptrtoint ptr %_m248 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1152921504606847040, ptr %_m248, align 8
  %call252 = tail call ptr @dlm_errname(i32 noundef 22) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m248, ptr noundef nonnull @__func__.dlmlock, i32 noundef 653, ptr noundef nonnull @.str.2, ptr noundef %call252) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m248) #7
  br label %cleanup.thread

if.end259:                                        ; preds = %if.end231
  br i1 %tobool56.not, label %if.then261, label %if.end259.if.end262_crit_edge

if.end259.if.end262_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end262

if.then261:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dlm_wait_for_recovery(ptr noundef %dlm) #7
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %if.end259.if.end262_crit_edge
  %call263 = tail call ptr @dlm_get_lock_resource(ptr noundef %dlm, ptr noundef nonnull %name, i32 noundef %namelen, i32 noundef %flags) #7
  %tobool264.not = icmp eq ptr %call263, null
  br i1 %tobool264.not, label %do.body276, label %do.body289

do.body276:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m277) #7
  %51 = ptrtoint ptr %_m277 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1152921504606847040, ptr %_m277, align 8
  %call281 = tail call ptr @dlm_errname(i32 noundef 11) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m277, ptr noundef nonnull @__func__.dlmlock, i32 noundef 664, ptr noundef nonnull @.str.2, ptr noundef %call281) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m277) #7
  br label %cleanup.thread

do.body289:                                       ; preds = %if.end262
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m290) #7
  %52 = ptrtoint ptr %_m290 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 64, ptr %_m290, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m290, ptr noundef nonnull @__func__.dlmlock, i32 noundef 668, ptr noundef nonnull @.str.11, i32 noundef %mode, i32 noundef %flags) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m290) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m298) #7
  %53 = ptrtoint ptr %_m298 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 64, ptr %_m298, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m298, ptr noundef nonnull @__func__.dlmlock, i32 noundef 669, ptr noundef nonnull @.str.12, ptr noundef nonnull %call234, ptr noundef nonnull %call263) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m298) #7
  call void @dlm_lock_attach_lockres(ptr noundef nonnull %call234, ptr noundef nonnull %call263)
  %ast305 = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 7
  %54 = ptrtoint ptr %ast305 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ast, ptr %ast305, align 4
  %bast306 = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 8
  %55 = ptrtoint ptr %bast306 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %bast, ptr %bast306, align 8
  %astdata307 = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 9
  %56 = ptrtoint ptr %astdata307 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %data, ptr %astdata307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp319 = icmp ult i32 %mode, 3
  %lksb324 = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 10
  %owner329 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 16
  %type.i = getelementptr inbounds %struct.dlm_migratable_lock, ptr %call234, i32 0, i32 4
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 1, i32 1
  %spinlock.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 14
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 17
  %lock_refs.i.i = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 6
  %list.i = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 1
  %blocked.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 5, i32 1
  %prev3.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 1, i32 1
  %lock_pending.i = getelementptr inbounds %struct.dlm_lock, ptr %call234, i32 0, i32 11
  %57 = getelementptr inbounds i8, ptr %create.i.i, i32 8
  %node_idx.i.i = getelementptr inbounds %struct.dlm_create_lock, ptr %create.i.i, i32 0, i32 3
  %requested_type.i.i = getelementptr inbounds %struct.dlm_create_lock, ptr %create.i.i, i32 0, i32 4
  %namelen.i.i = getelementptr inbounds %struct.dlm_create_lock, ptr %create.i.i, i32 0, i32 5
  %name.i.i = getelementptr inbounds %struct.dlm_create_lock, ptr %create.i.i, i32 0, i32 6
  %key.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %name32.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 3
  %prev.i2.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 3, i32 1
  %wq.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call263, i32 0, i32 15
  br label %retry_lock

retry_lock:                                       ; preds = %retry_lock.backedge, %do.body289
  %flags.addr.0 = phi i32 [ %flags, %do.body289 ], [ %flags.addr.1, %retry_lock.backedge ]
  %and308 = and i32 %flags.addr.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and308)
  %tobool309.not = icmp eq i32 %and308, 0
  br i1 %tobool309.not, label %retry_lock.if.end328_crit_edge, label %do.body311

retry_lock.if.end328_crit_edge:                   ; preds = %retry_lock
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

do.body311:                                       ; preds = %retry_lock
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m312) #7
  %58 = ptrtoint ptr %_m312 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 64, ptr %_m312, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m312, ptr noundef nonnull @__func__.dlmlock, i32 noundef 678, ptr noundef nonnull @.str.13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m312) #7
  br i1 %cmp319, label %if.then321, label %if.else323

if.then321:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #9
  %and322 = and i32 %flags.addr.0, -257
  br label %if.end328

if.else323:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %flags.addr.0, 1073741824
  %59 = ptrtoint ptr %lksb324 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lksb324, align 8
  %flags325 = getelementptr inbounds %struct.dlm_lockstatus, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %flags325 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags325, align 4
  %or326 = or i32 %62, 4
  store i32 %or326, ptr %flags325, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.else323, %if.then321, %retry_lock.if.end328_crit_edge
  %flags.addr.1 = phi i32 [ %and322, %if.then321 ], [ %or, %if.else323 ], [ %flags.addr.0, %retry_lock.if.end328_crit_edge ]
  %63 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %owner329, align 4
  %65 = ptrtoint ptr %node_num232 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %node_num232, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp333 = icmp eq i8 %64, %66
  br i1 %cmp333, label %if.then335, label %if.else337

if.then335:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #9
  %call336 = call fastcc i32 @dlmlock_master(ptr noundef %dlm, ptr noundef nonnull %call263, ptr noundef nonnull %call234, i32 noundef %flags.addr.1)
  br label %if.end339

if.else337:                                       ; preds = %if.end328
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #7
  %67 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 64, ptr %_m.i, align 8
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %type.i, align 4
  %conv.i = sext i8 %69 to i32
  %70 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lockname.i, align 8
  %72 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlmlock_remote, i32 noundef 206, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %71, ptr noundef %73, i32 noundef %flags.addr.1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #7
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #7
  call void @__dlm_wait_on_lockres_flags(ptr noundef %call263, i32 noundef 16434) #7
  %74 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %owner329, align 4
  %76 = ptrtoint ptr %node_num232 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %node_num232, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp.i556 = icmp eq i8 %75, %77
  br i1 %cmp.i556, label %if.then348.thread, label %if.end7.i

if.end7.i:                                        ; preds = %if.else337
  %78 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %state.i, align 2
  %80 = or i16 %79, 16
  store i16 %80, ptr %state.i, align 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock_refs.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %lock_refs.i.i, i32 1, i32 3, i32 1) #7
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock_refs.i.i, ptr %lock_refs.i.i, i32 1, ptr elementtype(i32) %lock_refs.i.i) #7, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end7.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !85

if.end7.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end7.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %82 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %.not.i.i.i.i.i.i = icmp sgt i32 %82, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dlm_lock_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dlm_lock_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_lock_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end7.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end7.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %lock_refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %dlm_lock_get.exit.i

dlm_lock_get.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dlm_lock_get.exit.i_crit_edge
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %84, ptr noundef %blocked.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %dlm_lock_get.exit.i.list_add_tail.exit.i_crit_edge

dlm_lock_get.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %dlm_lock_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %dlm_lock_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %list.i, ptr %prev.i.i, align 4
  %86 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %blocked.i, ptr %list.i, align 4
  %87 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %list.i, ptr %84, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %dlm_lock_get.exit.i.list_add_tail.exit.i_crit_edge
  %89 = ptrtoint ptr %lock_pending.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i = load i8, ptr %lock_pending.i, align 4
  %bf.set.i = or i8 %bf.load.i, 16
  store i8 %bf.set.i, ptr %lock_pending.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %create.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #7
  %90 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %status.i.i, align 4
  %91 = call ptr @memset(ptr %57, i32 0, i32 72)
  %92 = ptrtoint ptr %node_num232 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %node_num232, align 4
  %94 = ptrtoint ptr %node_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %node_idx.i.i, align 1
  %95 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %type.i, align 4
  %97 = ptrtoint ptr %requested_type.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %requested_type.i.i, align 2
  %98 = ptrtoint ptr %call234 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %call234, align 8
  %100 = ptrtoint ptr %create.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %create.i.i, align 8
  %101 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lockname.i, align 8
  %conv.i.i = trunc i32 %102 to i8
  %103 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv.i.i, ptr %namelen.i.i, align 1
  %104 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %flags.addr.1, ptr %57, align 8
  %105 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name.i, align 8
  %conv7.i.i = and i32 %102, 255
  %107 = call ptr @memcpy(ptr %name.i.i, ptr %106, i32 %conv7.i.i)
  %108 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %key.i.i, align 4
  %110 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %owner329, align 4
  %call.i.i = call i32 @o2net_send_message(i32 noundef 503, i32 noundef %109, ptr noundef nonnull %create.i.i, i32 noundef 80, i8 noundef zeroext %111, ptr noundef nonnull %status.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body27.i.i

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  %112 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %113)
  %cmp9.i.i = icmp eq i32 %113, 26
  br i1 %cmp9.i.i, label %do.body.i.i, label %if.then.i.i.dlm_send_remote_lock_request.exit.i_crit_edge

if.then.i.i.dlm_send_remote_lock_request.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_send_remote_lock_request.exit.i

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #7
  %114 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 1152921504606847040, ptr %_m.i.i, align 8
  %115 = ptrtoint ptr %name32.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name32.i.i, align 4
  %117 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %namelen.i.i, align 1
  %conv15.i.i = zext i8 %118 to i32
  %119 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %owner329, align 4
  %conv19.i.i = zext i8 %120 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_send_remote_lock_request, i32 noundef 307, ptr noundef nonnull @.str.27, ptr noundef %116, i32 noundef %conv15.i.i, ptr noundef %name.i.i, i32 noundef %conv19.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #7
  call void @dlm_print_one_lock_resource(ptr noundef %call263) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #7, !srcloc !98
  unreachable

do.body27.i.i:                                    ; preds = %list_add_tail.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m28.i.i) #7
  %121 = ptrtoint ptr %_m28.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 1152921504606847040, ptr %_m28.i.i, align 8
  %122 = ptrtoint ptr %name32.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name32.i.i, align 4
  %124 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %namelen.i.i, align 1
  %conv34.i.i = zext i8 %125 to i32
  %126 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %owner329, align 4
  %conv38.i.i = zext i8 %127 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m28.i.i, ptr noundef nonnull @__func__.dlm_send_remote_lock_request, i32 noundef 314, ptr noundef nonnull @.str.28, ptr noundef %123, i32 noundef %conv34.i.i, ptr noundef %name.i.i, i32 noundef %call.i.i, i32 noundef %conv38.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m28.i.i) #7
  %call42.i.i = call i32 @dlm_is_host_down(i32 noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.else45.i.i, label %dlm_send_remote_lock_request.exit.thread164.i

dlm_send_remote_lock_request.exit.thread164.i:    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %create.i.i) #7
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #7
  %128 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %state.i, align 2
  %130 = and i16 %129, -17
  store i16 %130, ptr %state.i, align 2
  %131 = ptrtoint ptr %lock_pending.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load17166.i = load i8, ptr %lock_pending.i, align 4
  %bf.clear18167.i = and i8 %bf.load17166.i, -17
  store i8 %bf.clear18167.i, ptr %lock_pending.i, align 4
  br label %land.lhs.true.i557

if.else45.i.i:                                    ; preds = %do.body27.i.i
  %132 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call.i.i, label %if.else3.i.i.i [
    i32 -12, label %if.else45.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge
    i32 -110, label %if.else45.i.i.if.then2.i.i.i_crit_edge
    i32 -512, label %if.else45.i.i.if.then2.i.i.i_crit_edge607
    i32 -9, label %if.else45.i.i.if.then2.i.i.i_crit_edge608
    i32 -111, label %if.else45.i.i.if.then2.i.i.i_crit_edge609
    i32 -107, label %if.else45.i.i.if.then2.i.i.i_crit_edge610
    i32 -104, label %if.else45.i.i.if.then2.i.i.i_crit_edge611
    i32 -32, label %if.else45.i.i.if.then2.i.i.i_crit_edge612
  ]

if.else45.i.i.if.then2.i.i.i_crit_edge612:        ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.if.then2.i.i.i_crit_edge611:        ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.if.then2.i.i.i_crit_edge610:        ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.if.then2.i.i.i_crit_edge609:        ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.if.then2.i.i.i_crit_edge608:        ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.if.then2.i.i.i_crit_edge607:        ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.if.then2.i.i.i_crit_edge:           ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i.i.i

if.else45.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge: ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_send_remote_lock_request.exit.thread.i

if.then2.i.i.i:                                   ; preds = %if.else45.i.i.if.then2.i.i.i_crit_edge, %if.else45.i.i.if.then2.i.i.i_crit_edge607, %if.else45.i.i.if.then2.i.i.i_crit_edge608, %if.else45.i.i.if.then2.i.i.i_crit_edge609, %if.else45.i.i.if.then2.i.i.i_crit_edge610, %if.else45.i.i.if.then2.i.i.i_crit_edge611, %if.else45.i.i.if.then2.i.i.i_crit_edge612
  br label %dlm_send_remote_lock_request.exit.thread.i

if.else3.i.i.i:                                   ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %call.i.i, -36
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 22, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i)
  %switch.selectcmp17.i.i.i = icmp eq i32 %call.i.i, -22
  br i1 %switch.selectcmp17.i.i.i, label %if.else3.i.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge, label %if.else3.i.i.i.dlm_send_remote_lock_request.exit.i_crit_edge

if.else3.i.i.i.dlm_send_remote_lock_request.exit.i_crit_edge: ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_send_remote_lock_request.exit.i

if.else3.i.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge: ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dlm_send_remote_lock_request.exit.thread.i

dlm_send_remote_lock_request.exit.thread.i:       ; preds = %if.else3.i.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge, %if.then2.i.i.i, %if.else45.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge
  %ret.0.i.ph.i = phi i32 [ 8, %if.else45.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge ], [ 17, %if.then2.i.i.i ], [ 24, %if.else3.i.i.i.dlm_send_remote_lock_request.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %create.i.i) #7
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #7
  %133 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %state.i, align 2
  %135 = and i16 %134, -17
  store i16 %135, ptr %state.i, align 2
  %136 = ptrtoint ptr %lock_pending.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load17157.i = load i8, ptr %lock_pending.i, align 4
  %bf.clear18158.i = and i8 %bf.load17157.i, -17
  store i8 %bf.clear18158.i, ptr %lock_pending.i, align 4
  br label %do.body56.i

dlm_send_remote_lock_request.exit.i:              ; preds = %if.else3.i.i.i.dlm_send_remote_lock_request.exit.i_crit_edge, %if.then.i.i.dlm_send_remote_lock_request.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %113, %if.then.i.i.dlm_send_remote_lock_request.exit.i_crit_edge ], [ %switch.select.i.i.i, %if.else3.i.i.i.dlm_send_remote_lock_request.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %create.i.i) #7
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #7
  %137 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %state.i, align 2
  %139 = and i16 %138, -17
  store i16 %139, ptr %state.i, align 2
  %140 = ptrtoint ptr %lock_pending.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load17.i = load i8, ptr %lock_pending.i, align 4
  %bf.clear18.i = and i8 %bf.load17.i, -17
  store i8 %bf.clear18.i, ptr %lock_pending.i, align 4
  %141 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %ret.0.i.i, label %dlm_send_remote_lock_request.exit.i.do.body56.i_crit_edge [
    i32 0, label %if.else70.i
    i32 39, label %dlm_send_remote_lock_request.exit.i.land.lhs.true.i557_crit_edge
    i32 21, label %dlm_send_remote_lock_request.exit.i.if.end69.i_crit_edge
    i32 40, label %if.end69.fold.split142.i
    i32 32, label %if.end69.fold.split143.i
  ]

dlm_send_remote_lock_request.exit.i.if.end69.i_crit_edge: ; preds = %dlm_send_remote_lock_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

dlm_send_remote_lock_request.exit.i.land.lhs.true.i557_crit_edge: ; preds = %dlm_send_remote_lock_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i557

dlm_send_remote_lock_request.exit.i.do.body56.i_crit_edge: ; preds = %dlm_send_remote_lock_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56.i

land.lhs.true.i557:                               ; preds = %dlm_send_remote_lock_request.exit.i.land.lhs.true.i557_crit_edge, %dlm_send_remote_lock_request.exit.thread164.i
  %142 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %lockname.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %143)
  %cmp.i144.i = icmp eq i32 %143, 9
  br i1 %cmp.i144.i, label %land.lhs.true.i.i, label %land.lhs.true.i557.if.end69.i_crit_edge

land.lhs.true.i557.if.end69.i_crit_edge:          ; preds = %land.lhs.true.i557
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i557
  %144 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name.i, align 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(9) %145, ptr noundef nonnull dereferenceable(9) @.str.21, i32 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp1.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp1.i.i, label %do.body32.i, label %land.lhs.true.i.i.if.end69.i_crit_edge

land.lhs.true.i.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

do.body32.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m33.i) #7
  %146 = ptrtoint ptr %_m33.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 64, ptr %_m33.i, align 8
  %147 = ptrtoint ptr %name32.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name32.i.i, align 4
  %149 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %owner329, align 4
  %conv39.i = zext i8 %150 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m33.i, ptr noundef nonnull @__func__.dlmlock_remote, i32 noundef 242, ptr noundef nonnull @.str.25, ptr noundef %148, i32 noundef %conv39.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m33.i) #7
  br label %if.end69.i

do.body56.i:                                      ; preds = %dlm_send_remote_lock_request.exit.i.do.body56.i_crit_edge, %dlm_send_remote_lock_request.exit.thread.i
  %ret.0.i159.i = phi i32 [ %ret.0.i.ph.i, %dlm_send_remote_lock_request.exit.thread.i ], [ %ret.0.i.i, %dlm_send_remote_lock_request.exit.i.do.body56.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57.i) #7
  %151 = ptrtoint ptr %_m57.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 1152921504606847040, ptr %_m57.i, align 8
  %call61.i = call ptr @dlm_errname(i32 noundef %ret.0.i159.i) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57.i, ptr noundef nonnull @__func__.dlmlock_remote, i32 noundef 251, ptr noundef nonnull @.str.2, ptr noundef %call61.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57.i) #7
  br label %if.end69.i

if.end69.fold.split142.i:                         ; preds = %dlm_send_remote_lock_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.end69.fold.split143.i:                         ; preds = %dlm_send_remote_lock_request.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end69.fold.split143.i, %if.end69.fold.split142.i, %do.body56.i, %do.body32.i, %land.lhs.true.i.i.if.end69.i_crit_edge, %land.lhs.true.i557.if.end69.i_crit_edge, %dlm_send_remote_lock_request.exit.i.if.end69.i_crit_edge
  %ret.0.i163.i = phi i32 [ 39, %do.body32.i ], [ %ret.0.i159.i, %do.body56.i ], [ %ret.0.i.i, %dlm_send_remote_lock_request.exit.i.if.end69.i_crit_edge ], [ %ret.0.i.i, %if.end69.fold.split142.i ], [ %ret.0.i.i, %if.end69.fold.split143.i ], [ 39, %land.lhs.true.i.i.if.end69.i_crit_edge ], [ 39, %land.lhs.true.i557.if.end69.i_crit_edge ]
  %tobool95.not.i = phi i1 [ false, %do.body32.i ], [ true, %do.body56.i ], [ false, %dlm_send_remote_lock_request.exit.i.if.end69.i_crit_edge ], [ true, %if.end69.fold.split142.i ], [ true, %if.end69.fold.split143.i ], [ true, %land.lhs.true.i.i.if.end69.i_crit_edge ], [ true, %land.lhs.true.i557.if.end69.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end69.i.if.end93.i_crit_edge

if.end69.i.if.end93.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.end.i.i.i.i:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev3.i.i.i, align 4
  %154 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %if.end93.i

if.else70.i:                                      ; preds = %dlm_send_remote_lock_request.exit.i
  %158 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %lockname.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %159)
  %cmp.i145.i = icmp eq i32 %159, 9
  br i1 %cmp.i145.i, label %land.lhs.true.i148.i, label %if.else70.i.if.end93.thread.i_crit_edge

if.else70.i.if.end93.thread.i_crit_edge:          ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.thread.i

land.lhs.true.i148.i:                             ; preds = %if.else70.i
  %160 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name.i, align 8
  %bcmp.i146.i = call i32 @bcmp(ptr noundef dereferenceable(9) %161, ptr noundef nonnull dereferenceable(9) @.str.21, i32 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i146.i)
  %cmp1.i147.i = icmp eq i32 %bcmp.i146.i, 0
  br i1 %cmp1.i147.i, label %do.body78.i, label %land.lhs.true.i148.i.if.end93.thread.i_crit_edge

land.lhs.true.i148.i.if.end93.thread.i_crit_edge: ; preds = %land.lhs.true.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.thread.i

do.body78.i:                                      ; preds = %land.lhs.true.i148.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79.i) #7
  %162 = ptrtoint ptr %_m79.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 64, ptr %_m79.i, align 8
  %163 = ptrtoint ptr %name32.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %name32.i.i, align 4
  %165 = ptrtoint ptr %node_num232 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %node_num232, align 4
  %conv85.i = zext i8 %166 to i32
  %167 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %owner329, align 4
  %conv87.i = zext i8 %168 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79.i, ptr noundef nonnull @__func__.dlmlock_remote, i32 noundef 263, ptr noundef nonnull @.str.26, ptr noundef %164, i32 noundef %conv85.i, i32 noundef %conv87.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79.i) #7
  %call.i.i152.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #7
  br i1 %call.i.i152.i, label %if.end.i.i153.i, label %do.body78.i.__list_del_entry.exit.i.i_crit_edge

do.body78.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i153.i:                                  ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev3.i.i.i, align 4
  %171 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %170, ptr %prev1.i.i.i.i, align 4
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %172, ptr %170, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i153.i, %do.body78.i.__list_del_entry.exit.i.i_crit_edge
  %175 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i154.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %176, ptr noundef %granted.i) #7
  br i1 %call.i.i.i154.i, label %if.end.i.i.i155.i, label %__list_del_entry.exit.i.i.if.end93.thread.i_crit_edge

__list_del_entry.exit.i.i.if.end93.thread.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.thread.i

if.end.i.i.i155.i:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %list.i, ptr %prev.i2.i.i, align 4
  %178 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %granted.i, ptr %list.i, align 4
  %179 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev3.i.i.i, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %list.i, ptr %176, align 4
  br label %if.end93.thread.i

if.end93.thread.i:                                ; preds = %if.end.i.i.i155.i, %__list_del_entry.exit.i.i.if.end93.thread.i_crit_edge, %land.lhs.true.i148.i.if.end93.thread.i_crit_edge, %if.else70.i.if.end93.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #7
  br label %if.then96.i

if.end93.i:                                       ; preds = %if.end.i.i.i.i, %if.end69.i.if.end93.i_crit_edge
  %181 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %list.i, ptr %list.i, align 4
  %182 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %list.i, ptr %prev3.i.i.i, align 4
  %183 = ptrtoint ptr %lksb324 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lksb324, align 8
  %flags.i.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %186, -5
  store i32 %and.i.i, ptr %flags.i.i, align 4
  call void @dlm_lock_put(ptr noundef %call234) #7
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #7
  br i1 %tobool95.not.i, label %if.end93.i.if.end97.i_crit_edge, label %if.end93.i.if.then96.i_crit_edge

if.end93.i.if.then96.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96.i

if.end93.i.if.end97.i_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

if.then96.i:                                      ; preds = %if.end93.i.if.then96.i_crit_edge, %if.end93.thread.i
  %ret.0.i162176.i = phi i32 [ 0, %if.end93.thread.i ], [ %ret.0.i163.i, %if.end93.i.if.then96.i_crit_edge ]
  call void @dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %call263) #7
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then96.i, %if.end93.i.if.end97.i_crit_edge
  %ret.0.i162177.i = phi i32 [ %ret.0.i162176.i, %if.then96.i ], [ %ret.0.i163.i, %if.end93.i.if.end97.i_crit_edge ]
  call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end339

if.end339:                                        ; preds = %if.end97.i, %if.then335
  %status.1 = phi i32 [ %call336, %if.then335 ], [ %ret.0.i162177.i, %if.end97.i ]
  %187 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %status.1, label %if.end339.if.end358_crit_edge [
    i32 39, label %if.end339.if.then348_crit_edge
    i32 40, label %if.end339.if.then348_crit_edge613
    i32 32, label %if.end339.if.then348_crit_edge614
  ]

if.end339.if.then348_crit_edge614:                ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

if.end339.if.then348_crit_edge613:                ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

if.end339.if.then348_crit_edge:                   ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then348

if.end339.if.end358_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end358

if.then348:                                       ; preds = %if.end339.if.then348_crit_edge, %if.end339.if.then348_crit_edge613, %if.end339.if.then348_crit_edge614
  call void @msleep(i32 noundef 100) #7
  br i1 %tobool56.not, label %if.then348.if.else356_crit_edge, label %if.then350

if.then348.if.else356_crit_edge:                  ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else356

if.then348.thread:                                ; preds = %if.else337
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #7
  call void @msleep(i32 noundef 100) #7
  br i1 %tobool56.not, label %if.then348.thread.if.else356_crit_edge, label %if.then348.thread.if.end354_crit_edge

if.then348.thread.if.end354_crit_edge:            ; preds = %if.then348.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

if.then348.thread.if.else356_crit_edge:           ; preds = %if.then348.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else356

if.then350:                                       ; preds = %if.then348
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %status.1)
  %cmp351.not = icmp eq i32 %status.1, 39
  br i1 %cmp351.not, label %if.then350.if.end354_crit_edge, label %if.then350.retry_lock.backedge_crit_edge

if.then350.retry_lock.backedge_crit_edge:         ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_lock.backedge

if.then350.if.end354_crit_edge:                   ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

if.end354:                                        ; preds = %if.then350.if.end354_crit_edge, %if.then348.thread.if.end354_crit_edge
  %188 = ptrtoint ptr %owner329 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %owner329, align 4
  call void @dlm_wait_for_node_death(ptr noundef %dlm, i8 noundef zeroext %189, i32 noundef 5000) #7
  br label %if.end358

if.else356:                                       ; preds = %if.then348.thread.if.else356_crit_edge, %if.then348.if.else356_crit_edge
  call void @dlm_wait_for_recovery(ptr noundef %dlm) #7
  br label %retry_lock.backedge

retry_lock.backedge:                              ; preds = %if.else356, %if.then350.retry_lock.backedge_crit_edge
  br label %retry_lock

if.end358:                                        ; preds = %if.end354, %if.end339.if.end358_crit_edge
  %status.1570 = phi i32 [ 39, %if.end354 ], [ %status.1, %if.end339.if.end358_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #7
  call void @dlm_lockres_drop_inflight_ref(ptr noundef %dlm, ptr noundef nonnull %call263) #7
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #7
  call void @dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef nonnull %call263) #7
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef nonnull %call263) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1570)
  %cmp360.not = icmp eq i32 %status.1570, 0
  br i1 %cmp360.not, label %if.end358.cleanup.thread_crit_edge, label %if.then362

if.end358.cleanup.thread_crit_edge:               ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then362:                                       ; preds = %if.end358
  %190 = ptrtoint ptr %lksb324 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %lksb324, align 8
  %flags364 = getelementptr inbounds %struct.dlm_lockstatus, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %flags364 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %flags364, align 4
  %and365 = and i32 %193, -5
  store i32 %and365, ptr %flags364, align 4
  %194 = zext i32 %status.1570 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %status.1570, label %do.body379 [
    i32 21, label %if.then362.cleanup.thread_crit_edge
    i32 39, label %if.then362.cleanup.thread_crit_edge615
    i32 32, label %if.then362.cleanup.thread_crit_edge616
  ]

if.then362.cleanup.thread_crit_edge616:           ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then362.cleanup.thread_crit_edge615:           ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then362.cleanup.thread_crit_edge:              ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

do.body379:                                       ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m380) #7
  %195 = ptrtoint ptr %_m380 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 1152921504606847040, ptr %_m380, align 8
  %call384 = call ptr @dlm_errname(i32 noundef %status.1570) #7
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m380, ptr noundef nonnull @__func__.dlmlock, i32 noundef 723, ptr noundef nonnull @.str.2, ptr noundef %call384) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m380) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.body379, %if.then362.cleanup.thread_crit_edge, %if.then362.cleanup.thread_crit_edge615, %if.then362.cleanup.thread_crit_edge616, %if.end358.cleanup.thread_crit_edge, %do.body276, %do.body247, %do.body219, %do.body190
  %status.2.ph = phi i32 [ 0, %if.end358.cleanup.thread_crit_edge ], [ %status.1570, %do.body379 ], [ %status.1570, %if.then362.cleanup.thread_crit_edge ], [ %status.1570, %if.then362.cleanup.thread_crit_edge615 ], [ %status.1570, %if.then362.cleanup.thread_crit_edge616 ], [ 19, %do.body190 ], [ 22, %do.body247 ], [ 11, %do.body276 ], [ 22, %do.body219 ]
  %res.0.ph = phi ptr [ %call263, %if.end358.cleanup.thread_crit_edge ], [ %call263, %do.body379 ], [ %call263, %if.then362.cleanup.thread_crit_edge ], [ %call263, %if.then362.cleanup.thread_crit_edge615 ], [ %call263, %if.then362.cleanup.thread_crit_edge616 ], [ null, %do.body190 ], [ null, %do.body247 ], [ null, %do.body276 ], [ null, %do.body219 ]
  %lock.0.ph = phi ptr [ %call234, %if.end358.cleanup.thread_crit_edge ], [ %call234, %do.body379 ], [ %call234, %if.then362.cleanup.thread_crit_edge ], [ %call234, %if.then362.cleanup.thread_crit_edge615 ], [ %call234, %if.then362.cleanup.thread_crit_edge616 ], [ null, %do.body190 ], [ null, %do.body247 ], [ %call234, %do.body276 ], [ null, %do.body219 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpcookie) #7
  br label %error

error:                                            ; preds = %cleanup.thread, %if.end158.error_crit_edge
  %status.3 = phi i32 [ %status.2.ph, %cleanup.thread ], [ %status.0, %if.end158.error_crit_edge ]
  %res.1 = phi ptr [ %res.0.ph, %cleanup.thread ], [ %13, %if.end158.error_crit_edge ]
  %lock.1 = phi ptr [ %lock.0.ph, %cleanup.thread ], [ %10, %if.end158.error_crit_edge ]
  %tobool399.not = phi i1 [ true, %cleanup.thread ], [ false, %if.end158.error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %cmp394.not = icmp eq i32 %status.3, 0
  br i1 %cmp394.not, label %error.if.end403_crit_edge, label %if.then396

error.if.end403_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end403

if.then396:                                       ; preds = %error
  %tobool397.not = icmp ne ptr %lock.1, null
  %or.cond555 = and i1 %tobool397.not, %tobool399.not
  br i1 %or.cond555, label %if.then400, label %if.then396.if.end401_crit_edge

if.then396.if.end401_crit_edge:                   ; preds = %if.then396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end401

if.then400:                                       ; preds = %if.then396
  call void @__sanitizer_cov_trace_pc() #9
  call void @dlm_lock_put(ptr noundef nonnull %lock.1)
  br label %if.end401

if.end401:                                        ; preds = %if.then400, %if.then396.if.end401_crit_edge, %if.then130, %do.body111, %do.body100, %do.body87, %do.body69, %do.body41, %do.body18
  %status.3585599 = phi i32 [ %status.3, %if.then400 ], [ %status.3, %if.then396.if.end401_crit_edge ], [ 24, %do.body18 ], [ 24, %do.body41 ], [ 24, %do.body69 ], [ 24, %do.body87 ], [ 19, %if.then130 ], [ 24, %do.body111 ], [ 24, %do.body100 ]
  %res.1587598 = phi ptr [ %res.1, %if.then400 ], [ %res.1, %if.then396.if.end401_crit_edge ], [ null, %do.body18 ], [ null, %do.body41 ], [ null, %do.body69 ], [ null, %do.body87 ], [ %13, %if.then130 ], [ null, %do.body111 ], [ null, %do.body100 ]
  %196 = ptrtoint ptr %lksb to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %status.3585599, ptr %lksb, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.end401, %error.if.end403_crit_edge
  %res.1588 = phi ptr [ %res.1587598, %if.end401 ], [ %res.1, %error.if.end403_crit_edge ]
  %status.3586 = phi i32 [ %status.3585599, %if.end401 ], [ 0, %error.if.end403_crit_edge ]
  %tobool404.not = icmp eq ptr %res.1588, null
  br i1 %tobool404.not, label %if.end403.cleanup407_crit_edge, label %if.then405

if.end403.cleanup407_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup407

if.then405:                                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  call void @dlm_lockres_put(ptr noundef nonnull %res.1588) #7
  br label %cleanup407

cleanup407:                                       ; preds = %if.then405, %if.end403.cleanup407_crit_edge, %do.body1
  %retval.0 = phi i32 [ 19, %do.body1 ], [ %status.3586, %if.then405 ], [ %status.3586, %if.end403.cleanup407_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_wait_for_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlmconvert_master(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlmconvert_remote(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_get_next_cookie(i8 noundef zeroext %node_num, ptr nocapture noundef writeonly %cookie) unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %node_num to i64
  %shl = shl nuw i64 %conv, 56
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_cookie_lock) #7
  %0 = load i64, ptr @dlm_next_cookie, align 8
  %or = or i64 %0, %shl
  %1 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %or, ptr %cookie, align 8
  %inc = add i64 %0, 1
  store i64 %inc, ptr @dlm_next_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %inc)
  %tobool.not = icmp ult i64 %inc, 72057594037927936
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #7
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 64, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_get_next_cookie, i32 noundef 534, ptr noundef nonnull @.str.22) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #7
  store i64 1, ptr @dlm_next_cookie, align 8
  br label %if.end4

if.end4:                                          ; preds = %do.body, %entry.if.end4_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dlm_cookie_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_get_lock_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_wait_for_node_death(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_drop_inflight_ref(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_calc_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_lockres_reserve_ast(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_queue_ast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_release_ast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_wait_on_lockres_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_host_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !65, !66, !68, !70, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 53, i32 37}
!2 = !{ptr @__func__.dlm_create_lock_handler, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 461, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 464, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 487, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 502, i32 3}
!11 = !{ptr @__func__.dlmlock, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 554, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 578, i32 3}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 588, i32 4}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 595, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 609, i32 4}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 611, i32 4}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 629, i32 4}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 668, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 669, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 678, i32 4}
!31 = !{ptr @__ksymtab_dlmlock, !32, !"__ksymtab_dlmlock", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 743, i32 1}
!33 = !{ptr @dlm_lock_cache, !34, !"dlm_lock_cache", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 38, i32 27}
!35 = !{ptr @__func__.dlm_lock_release, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 349, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.dlm_lock_detach_lockres, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 371, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dlm_init_lock.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 382, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.dlmlock_master, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 108, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 125, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 142, i32 4}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 153, i32 5}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 80, i32 24}
!55 = !{ptr @__func__.dlm_get_next_cookie, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 534, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 40, i32 8}
!60 = !{ptr @dlm_cookie_lock, !59, !"dlm_cookie_lock", i1 false, i1 false}
!61 = !{ptr @dlm_next_cookie, !62, !"dlm_next_cookie", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 41, i32 12}
!63 = !{ptr @__func__.dlmlock_remote, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 204, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 240, i32 4}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 261, i32 3}
!70 = !{ptr @__func__.dlm_send_remote_lock_request, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 304, i32 4}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/dlm/dlmlock.c", i32 312, i32 3}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148358705, i64 2148358737, i64 2148358766, i64 2148358800, i64 2148358831, i64 2148358854}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148446730}
!88 = !{i64 2148361170, i64 2148361202, i64 2148361231, i64 2148361265, i64 2148361296, i64 2148361319}
!89 = !{i64 2149322844}
!90 = !{i64 2157190423, i64 2157190910, i64 2157190460, i64 2157190516, i64 2157190550, i64 2157190574, i64 2157190615, i64 2157190636, i64 2157190664, i64 2157190698}
!91 = !{i64 2157192044, i64 2157192531, i64 2157192081, i64 2157192137, i64 2157192171, i64 2157192195, i64 2157192236, i64 2157192257, i64 2157192285, i64 2157192319}
!92 = !{i64 2157193667, i64 2157194154, i64 2157193704, i64 2157193760, i64 2157193794, i64 2157193818, i64 2157193859, i64 2157193880, i64 2157193908, i64 2157193942}
!93 = !{i64 2157195266, i64 2157195753, i64 2157195303, i64 2157195359, i64 2157195393, i64 2157195417, i64 2157195458, i64 2157195479, i64 2157195507, i64 2157195541}
!94 = !{i64 2157196867, i64 2157197354, i64 2157196904, i64 2157196960, i64 2157196994, i64 2157197018, i64 2157197059, i64 2157197080, i64 2157197108, i64 2157197142}
!95 = !{i64 2157199604, i64 2157200091, i64 2157199641, i64 2157199697, i64 2157199731, i64 2157199755, i64 2157199796, i64 2157199817, i64 2157199845, i64 2157199879}
!96 = !{i64 2157157417, i64 2157157906, i64 2157157454, i64 2157157510, i64 2157157544, i64 2157157568, i64 2157157609, i64 2157157630, i64 2157157658, i64 2157157692}
!97 = !{!"auto-init"}
!98 = !{i64 2157187244, i64 2157187731, i64 2157187281, i64 2157187337, i64 2157187371, i64 2157187395, i64 2157187436, i64 2157187457, i64 2157187485, i64 2157187519}
