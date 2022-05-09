; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmunlock.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmunlock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dlmunlock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlmunlock\09\09\09\09"
module asm "\09.long\09__crc_dlmunlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlmunlock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlmunlock\22\09\09\09\09\09"
module asm "__kstrtabns_dlmunlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_unlock_lock = type { i64, i32, i16, i8, i8, [64 x i8], [0 x i8] }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.dlm_lockstatus = type { i32, i32, ptr, [64 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kvec = type { ptr, i32 }

@__func__.dlm_unlock_lock_handler = private unnamed_addr constant [24 x i8] c"dlm_unlock_lock_handler\00", align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bad args!  GET_LVB specified on unlock!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bad args!  cannot modify lvb on a CANCEL request!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid name length in unlock handler!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bug expression: !dlm_domain_fully_joined(dlm)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Domain %s not fully joined!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvb: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"put lvb\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"returning DLM_FORWARD -- res no longer exists\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"returning DLM_RECOVERING\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"returning DLM_MIGRATING\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"returning DLM_FORWARD -- not master\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lockres is in progress\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to find lock to unlock! cookie=%u:%llu\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.dlmunlock = private unnamed_addr constant [10 x i8] c"dlmunlock\00", align 1
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm status = %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VALBLK given with CANCEL: ignoring VALBLK\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lock=%p res=%p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"done calling dlmunlock_master: returned %d, call_ast is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"done calling dlmunlock_remote: returned %d, call_ast is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"retrying unlock due to pending recovery/migration/in-progress/reconnect\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"calling unlockast(%p, %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ocfs2/dlm/dlmunlock.c\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kicking the thread\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"returning status=%d!\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_dlmunlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlmunlock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlmunlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlmunlock to i32), ptr @__kstrtab_dlmunlock, ptr @__kstrtabns_dlmunlock }, section "___ksymtab_gpl+dlmunlock", align 4
@__func__.dlmunlock_common = private unnamed_addr constant [17 x i8] c"dlmunlock_common\00", align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"master_node = %d, valblk = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"lockres %.*s: Someone is calling dlmunlock while waiting for an ast!\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lockres in progress!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%.*s: clearing actions, %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"recovering\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"migrating\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"forward\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nolockmanager\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"clearing convert_type at %smaster node\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"non-\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lock %u:%llu should be gone now! refs=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.dlm_get_cancel_actions = private unnamed_addr constant [23 x i8] c"dlm_get_cancel_actions\00", align 1
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lock to cancel is not on any list!\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.dlm_get_unlock_actions = private unnamed_addr constant [23 x i8] c"dlm_get_unlock_actions\00", align 1
@__func__.dlm_send_remote_unlock_request = private unnamed_addr constant [31 x i8] c"dlm_send_remote_unlock_request\00", align 1
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%.*s: this node became the master due to a migration, re-evaluate now\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"master was in-progress.  retry\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 17, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 39]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 17, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.44 = internal global [10 x i64] [i64 8, i64 32, i64 4294966784, i64 4294967185, i64 4294967186, i64 4294967189, i64 4294967192, i64 4294967264, i64 4294967284, i64 4294967287]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 406, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 411, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 417, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 424, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 427, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 434, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 444, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 451, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 458, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 499, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 509, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 594, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 604, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 623, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 634, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 639, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 658, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 664, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 673, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 683, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 692, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 94, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 108, i32 9 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 117, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 184, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 216, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 249, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 551, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 321, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 327, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 355, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [28 x i8] c"../fs/ocfs2/dlm/dlmunlock.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 358, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_dlmunlock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_commit_pending_unlock(ptr nocapture noundef readnone %res, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_commit_pending_cancel(ptr noundef %res, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %granted) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %granted, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %convert_type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %12 = ptrtoint ptr %convert_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %convert_type, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_unlock_lock_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %ignore = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m9 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m37 = alloca i64, align 8
  %_m45 = alloca i64, align 8
  %_m62 = alloca i64, align 8
  %_m79 = alloca i64, align 8
  %_m93 = alloca i64, align 8
  %_m108 = alloca i64, align 8
  %_m123 = alloca i64, align 8
  %_m184 = alloca i64, align 8
  %_m201 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ignore) #4
  %0 = ptrtoint ptr %ignore to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ignore, align 4, !annotation !91
  %flags1 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %1 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1, align 8
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606847040, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 406, ptr noundef nonnull @.str) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and6 = and i32 %2, 536879104
  call void @__sanitizer_cov_trace_const_cmp4(i32 536879104, i32 %and6)
  %cmp = icmp eq i32 %and6, 536879104
  br i1 %cmp, label %do.body8, label %if.end16

do.body8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m9) #4
  %4 = ptrtoint ptr %_m9 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606847040, ptr %_m9, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m9, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 412, ptr noundef nonnull @.str.1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m9) #4
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %namelen = getelementptr inbounds %struct.dlm_unlock_lock, ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %namelen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %cmp17 = icmp ugt i8 %6, 32
  br i1 %cmp17, label %do.body20, label %if.end28

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #4
  %7 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847040, ptr %_m21, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 417, ptr noundef nonnull @.str.2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #4
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call = tail call ptr @dlm_grab(ptr noundef %data) #4
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %do.body32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body32:                                        ; preds = %if.end28
  %call33 = tail call i32 @dlm_domain_fully_joined(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body36, label %do.body61

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37) #4
  %8 = ptrtoint ptr %_m37 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606847040, ptr %_m37, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 425, ptr noundef nonnull @.str.3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45) #4
  %9 = ptrtoint ptr %_m45 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606847040, ptr %_m45, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 425, ptr noundef nonnull @.str.4, ptr noundef %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 425, 0\0A.popsection", ""() #4, !srcloc !92
  unreachable

do.body61:                                        ; preds = %do.body32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #4
  %12 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 64, ptr %_m62, align 8
  %and66 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond = select i1 %tobool67.not, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 427, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #4
  %name71 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 6
  %13 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %namelen, align 1
  %conv74 = zext i8 %14 to i32
  %call75 = call ptr @dlm_lookup_lockres(ptr noundef %data, ptr noundef %name71, i32 noundef %conv74) #4
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %do.body78, label %if.end86

do.body78:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79) #4
  %15 = ptrtoint ptr %_m79 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 64, ptr %_m79, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 434, ptr noundef nonnull @.str.8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79) #4
  br label %do.body200

if.end86:                                         ; preds = %do.body61
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %call75, i32 0, i32 3
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %call75, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call75, i32 0, i32 17
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state, align 2
  %conv87 = zext i16 %17 to i32
  %and88 = and i32 %conv87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end100, label %if.then90

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m93) #4
  %18 = ptrtoint ptr %_m93 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 64, ptr %_m93, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m93, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 444, ptr noundef nonnull @.str.9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m93) #4
  br label %if.then215

if.end100:                                        ; preds = %if.end86
  %and103 = and i32 %conv87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end115, label %if.then105

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m108) #4
  %19 = ptrtoint ptr %_m108 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 64, ptr %_m108, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m108, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 451, ptr noundef nonnull @.str.10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m108) #4
  br label %if.then215

if.end115:                                        ; preds = %if.end100
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %call75, i32 0, i32 16
  %20 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %owner, align 4
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %22 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp118.not = icmp eq i8 %21, %23
  br i1 %cmp118.not, label %for.cond.preheader, label %if.then120

for.cond.preheader:                               ; preds = %if.end115
  %node_idx = getelementptr inbounds %struct.dlm_unlock_lock, ptr %buf, i32 0, i32 3
  %24 = ptrtoint ptr %granted to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn293 = load ptr, ptr %granted, align 4
  %cmp134.not295 = icmp eq ptr %.pn293, %granted
  br i1 %cmp134.not295, label %for.cond.preheader.if.end154.critedge_crit_edge, label %for.body136.lr.ph

for.cond.preheader.if.end154.critedge_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154.critedge

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m123) #4
  %25 = ptrtoint ptr %_m123 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 64, ptr %_m123, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m123, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 458, ptr noundef nonnull @.str.11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m123) #4
  br label %if.then215

for.body136.lr.ph:                                ; preds = %for.cond.preheader
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %buf, align 8
  br label %for.body136

for.body136:                                      ; preds = %for.inc.for.body136_crit_edge, %for.body136.lr.ph
  %.pn296 = phi ptr [ %.pn293, %for.body136.lr.ph ], [ %.pn, %for.inc.for.body136_crit_edge ]
  %lock.1298 = getelementptr i8, ptr %.pn296, i32 -16
  %28 = ptrtoint ptr %lock.1298 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lock.1298, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %27)
  %cmp138 = icmp eq i64 %29, %27
  br i1 %cmp138, label %land.lhs.true, label %for.body136.for.inc_crit_edge

for.body136.for.inc_crit_edge:                    ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body136
  %node = getelementptr i8, ptr %.pn296, i32 -1
  %30 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %node, align 1
  %32 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %node_idx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp143 = icmp eq i8 %31, %33
  br i1 %cmp143, label %land.lhs.true.if.end160_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.if.end160_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body136.for.inc_crit_edge
  %34 = ptrtoint ptr %.pn296 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn296, align 4
  %cmp134.not = icmp eq ptr %.pn, %granted
  br i1 %cmp134.not, label %for.inc.if.end154.critedge_crit_edge, label %for.inc.for.body136_crit_edge

for.inc.for.body136_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body136

for.inc.if.end154.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154.critedge

if.end154.critedge:                               ; preds = %for.inc.if.end154.critedge_crit_edge, %for.cond.preheader.if.end154.critedge_crit_edge
  %incdec.ptr = getelementptr %struct.dlm_lock_resource, ptr %call75, i32 0, i32 4
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn293.1 = load ptr, ptr %incdec.ptr, align 4
  %cmp134.not295.1 = icmp eq ptr %.pn293.1, %incdec.ptr
  br i1 %cmp134.not295.1, label %if.end154.critedge.if.end154.critedge.1_crit_edge, label %for.body136.lr.ph.1

if.end154.critedge.if.end154.critedge.1_crit_edge: ; preds = %if.end154.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154.critedge.1

for.body136.lr.ph.1:                              ; preds = %if.end154.critedge
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %buf, align 8
  br label %for.body136.1

for.body136.1:                                    ; preds = %for.inc.1.for.body136.1_crit_edge, %for.body136.lr.ph.1
  %.pn296.1 = phi ptr [ %.pn293.1, %for.body136.lr.ph.1 ], [ %.pn.1, %for.inc.1.for.body136.1_crit_edge ]
  %lock.1298.1 = getelementptr i8, ptr %.pn296.1, i32 -16
  %38 = ptrtoint ptr %lock.1298.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lock.1298.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %37)
  %cmp138.1 = icmp eq i64 %39, %37
  br i1 %cmp138.1, label %land.lhs.true.1, label %for.body136.1.for.inc.1_crit_edge

for.body136.1.for.inc.1_crit_edge:                ; preds = %for.body136.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body136.1
  %node.1 = getelementptr i8, ptr %.pn296.1, i32 -1
  %40 = ptrtoint ptr %node.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %node.1, align 1
  %42 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %node_idx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp143.1 = icmp eq i8 %41, %43
  br i1 %cmp143.1, label %land.lhs.true.1.if.end160_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true.1.if.end160_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.body136.1.for.inc.1_crit_edge
  %44 = ptrtoint ptr %.pn296.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.1 = load ptr, ptr %.pn296.1, align 4
  %cmp134.not.1 = icmp eq ptr %.pn.1, %incdec.ptr
  br i1 %cmp134.not.1, label %for.inc.1.if.end154.critedge.1_crit_edge, label %for.inc.1.for.body136.1_crit_edge

for.inc.1.for.body136.1_crit_edge:                ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body136.1

for.inc.1.if.end154.critedge.1_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154.critedge.1

if.end154.critedge.1:                             ; preds = %for.inc.1.if.end154.critedge.1_crit_edge, %if.end154.critedge.if.end154.critedge.1_crit_edge
  %incdec.ptr.1 = getelementptr %struct.dlm_lock_resource, ptr %call75, i32 0, i32 5
  %45 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn293.2 = load ptr, ptr %incdec.ptr.1, align 4
  %cmp134.not295.2 = icmp eq ptr %.pn293.2, %incdec.ptr.1
  br i1 %cmp134.not295.2, label %if.end154.critedge.1.if.end154.critedge.2_crit_edge, label %for.body136.lr.ph.2

if.end154.critedge.1.if.end154.critedge.2_crit_edge: ; preds = %if.end154.critedge.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154.critedge.2

for.body136.lr.ph.2:                              ; preds = %if.end154.critedge.1
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %buf, align 8
  br label %for.body136.2

for.body136.2:                                    ; preds = %for.inc.2.for.body136.2_crit_edge, %for.body136.lr.ph.2
  %.pn296.2 = phi ptr [ %.pn293.2, %for.body136.lr.ph.2 ], [ %.pn.2, %for.inc.2.for.body136.2_crit_edge ]
  %lock.1298.2 = getelementptr i8, ptr %.pn296.2, i32 -16
  %48 = ptrtoint ptr %lock.1298.2 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %lock.1298.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %47)
  %cmp138.2 = icmp eq i64 %49, %47
  br i1 %cmp138.2, label %land.lhs.true.2, label %for.body136.2.for.inc.2_crit_edge

for.body136.2.for.inc.2_crit_edge:                ; preds = %for.body136.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body136.2
  %node.2 = getelementptr i8, ptr %.pn296.2, i32 -1
  %50 = ptrtoint ptr %node.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %node.2, align 1
  %52 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %node_idx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp143.2 = icmp eq i8 %51, %53
  br i1 %cmp143.2, label %land.lhs.true.2.if.end160_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true.2.if.end160_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.body136.2.for.inc.2_crit_edge
  %54 = ptrtoint ptr %.pn296.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.2 = load ptr, ptr %.pn296.2, align 4
  %cmp134.not.2 = icmp eq ptr %.pn.2, %incdec.ptr.1
  br i1 %cmp134.not.2, label %for.inc.2.if.end154.critedge.2_crit_edge, label %for.inc.2.for.body136.2_crit_edge

for.inc.2.for.body136.2_crit_edge:                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body136.2

for.inc.2.if.end154.critedge.2_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end154.critedge.2

if.end154.critedge.2:                             ; preds = %for.inc.2.if.end154.critedge.2_crit_edge, %if.end154.critedge.1.if.end154.critedge.2_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  br label %do.body200

if.end160:                                        ; preds = %land.lhs.true.2.if.end160_crit_edge, %land.lhs.true.1.if.end160_crit_edge, %land.lhs.true.if.end160_crit_edge
  %.pn296.lcssa323.sink = phi ptr [ %.pn296.2, %land.lhs.true.2.if.end160_crit_edge ], [ %.pn296.1, %land.lhs.true.1.if.end160_crit_edge ], [ %.pn296, %land.lhs.true.if.end160_crit_edge ]
  %lock.1298.le = getelementptr i8, ptr %.pn296.lcssa323.sink, i32 -16
  call void @dlm_lock_get(ptr noundef %lock.1298.le) #4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  %lksb161 = getelementptr i8, ptr %.pn296.lcssa323.sink, i32 88
  %55 = ptrtoint ptr %lksb161 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lksb161, align 8
  %and162 = and i32 %2, 536871168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end160.if.end171_crit_edge, label %land.lhs.true164

if.end160.if.end171_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end171

land.lhs.true164:                                 ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr i8, ptr %.pn296.lcssa323.sink, i32 -4
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %58)
  %cmp167.not = icmp eq i8 %58, 5
  %and170 = and i32 %2, -536871169
  %spec.select = select i1 %cmp167.not, i32 %2, i32 %and170
  %.pre = and i32 %spec.select, 536870912
  br label %if.end171

if.end171:                                        ; preds = %land.lhs.true164, %if.end160.if.end171_crit_edge
  %and172.pre-phi = phi i32 [ %.pre, %land.lhs.true164 ], [ %and66, %if.end160.if.end171_crit_edge ]
  %flags.0 = phi i32 [ %spec.select, %land.lhs.true164 ], [ %2, %if.end160.if.end171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.pre-phi)
  %tobool173.not = icmp eq i32 %and172.pre-phi, 0
  br i1 %tobool173.not, label %if.end171.if.end178_crit_edge, label %if.then174

if.end171.if.end178_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #6
  %flags175 = getelementptr inbounds %struct.dlm_lockstatus, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %flags175 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags175, align 4
  %or = or i32 %60, 2
  store i32 %or, ptr %flags175, align 4
  %lvb = getelementptr inbounds %struct.dlm_lockstatus, ptr %56, i32 0, i32 3
  %lvb176 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 4, i32 4
  %61 = call ptr @memcpy(ptr %lvb, ptr %lvb176, i32 64)
  br label %if.end178

if.end178:                                        ; preds = %if.then174, %if.end171.if.end178_crit_edge
  %call.i = call fastcc i32 @dlmunlock_common(ptr noundef %data, ptr noundef nonnull %call75, ptr noundef %lock.1298.le, ptr noundef %56, i32 noundef %flags.0, ptr noundef nonnull %ignore, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp180 = icmp eq i32 %call.i, 32
  br i1 %cmp180, label %do.body183, label %if.end178.if.end191_crit_edge

if.end178.if.end191_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end191

do.body183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m184) #4
  %62 = ptrtoint ptr %_m184 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 64, ptr %_m184, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m184, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 499, ptr noundef nonnull @.str.12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m184) #4
  br label %if.end191

if.end191:                                        ; preds = %do.body183, %if.end178.if.end191_crit_edge
  br i1 %tobool173.not, label %if.end191.if.else_crit_edge, label %if.then194

if.end191.if.else_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then194:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #6
  %flags195 = getelementptr inbounds %struct.dlm_lockstatus, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %flags195 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags195, align 4
  %and196 = and i32 %64, -3
  store i32 %and196, ptr %flags195, align 4
  br label %if.else

do.body200:                                       ; preds = %if.end154.critedge.2, %do.body78
  %status.0.ph = phi i32 [ 11, %if.end154.critedge.2 ], [ 32, %do.body78 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m201) #4
  %65 = ptrtoint ptr %_m201 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 1152921504606847040, ptr %_m201, align 8
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %buf, align 8
  %shr.i = lshr i64 %67, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %67, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m201, ptr noundef nonnull @__func__.dlm_unlock_lock_handler, i32 noundef 512, ptr noundef nonnull @.str.13, i32 noundef %conv.i, i64 noundef %and.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m201) #4
  br label %leave

if.else:                                          ; preds = %if.then194, %if.end191.if.else_crit_edge
  call void @dlm_lockres_calc_usage(ptr noundef %data, ptr noundef nonnull %call75) #4
  call void @dlm_kick_thread(ptr noundef %data, ptr noundef nonnull %call75) #4
  call void @dlm_lock_put(ptr noundef %lock.1298.le) #4
  br label %leave

leave:                                            ; preds = %if.else, %do.body200
  %status.1 = phi i32 [ %call.i, %if.else ], [ %status.0.ph, %do.body200 ]
  br i1 %tobool76.not, label %leave.if.end216_crit_edge, label %leave.if.then215_crit_edge

leave.if.then215_crit_edge:                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then215

leave.if.end216_crit_edge:                        ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end216

if.then215:                                       ; preds = %leave.if.then215_crit_edge, %if.then120, %if.then105, %if.then90
  %status.1288 = phi i32 [ %status.1, %leave.if.then215_crit_edge ], [ 32, %if.then120 ], [ 40, %if.then105 ], [ 39, %if.then90 ]
  call void @dlm_lockres_put(ptr noundef nonnull %call75) #4
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %leave.if.end216_crit_edge
  %status.1289 = phi i32 [ %status.1288, %if.then215 ], [ %status.1, %leave.if.end216_crit_edge ]
  call void @dlm_put(ptr noundef %data) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end216, %if.end28.cleanup_crit_edge, %do.body20, %do.body8, %do.body
  %retval.0 = phi i32 [ 19, %do.body ], [ 19, %do.body8 ], [ 22, %do.body20 ], [ %status.1289, %if.end216 ], [ 32, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ignore) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_domain_fully_joined(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_calc_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlmunlock(ptr noundef %dlm, ptr noundef %lksb, i32 noundef %flags, ptr nocapture noundef readonly %unlockast, ptr noundef %data) #0 align 64 {
entry:
  %call_ast = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m12 = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m90 = alloca i64, align 8
  %_m113 = alloca i64, align 8
  %_m122 = alloca i64, align 8
  %_m143 = alloca i64, align 8
  %_m154 = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m192 = alloca i64, align 8
  %_m211 = alloca i64, align 8
  %_m224 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %call_ast) #4
  %tobool.not = icmp eq ptr %lksb, null
  br i1 %tobool.not, label %do.body1, label %if.end6

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606847040, ptr %_m, align 8
  %call = tail call ptr @dlm_errname(i32 noundef 19) #4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 594, ptr noundef nonnull @.str.14, ptr noundef %call) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  br label %cleanup231

if.end6:                                          ; preds = %entry
  %and7 = and i32 %flags, -41217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end22, label %do.body11

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12) #4
  %1 = ptrtoint ptr %_m12 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606847040, ptr %_m12, align 8
  %call16 = tail call ptr @dlm_errname(i32 noundef 24) #4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 599, ptr noundef nonnull @.str.14, ptr noundef %call16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12) #4
  br label %cleanup231

if.end22:                                         ; preds = %if.end6
  %and23 = and i32 %flags, 8448
  call void @__sanitizer_cov_trace_const_cmp4(i32 8448, i32 %and23)
  %cmp = icmp eq i32 %and23, 8448
  br i1 %cmp, label %do.body25, label %if.end22.if.end34_crit_edge

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

do.body25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #4
  %2 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 64, ptr %_m26, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 604, ptr noundef nonnull @.str.15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #4
  %and33 = and i32 %flags, -257
  br label %if.end34

if.end34:                                         ; preds = %do.body25, %if.end22.if.end34_crit_edge
  %flags.addr.0 = phi i32 [ %and33, %do.body25 ], [ %flags, %if.end22.if.end34_crit_edge ]
  %lockid = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb, i32 0, i32 2
  %3 = ptrtoint ptr %lockid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lockid, align 4
  %tobool35.not = icmp eq ptr %4, null
  br i1 %tobool35.not, label %if.end34.do.body40_crit_edge, label %lor.lhs.false

if.end34.do.body40_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body40

lor.lhs.false:                                    ; preds = %if.end34
  %lockres = getelementptr inbounds %struct.dlm_lock, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lockres, align 8
  %tobool37.not = icmp eq ptr %6, null
  br i1 %tobool37.not, label %lor.lhs.false.do.body40_crit_edge, label %do.end67

lor.lhs.false.do.body40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body40

do.body40:                                        ; preds = %lor.lhs.false.do.body40_crit_edge, %if.end34.do.body40_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #4
  %7 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847040, ptr %_m41, align 8
  %call45 = call ptr @dlm_errname(i32 noundef 24) #4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 609, ptr noundef nonnull @.str.14, ptr noundef %call45) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #4
  br label %cleanup231

do.end67:                                         ; preds = %lor.lhs.false
  call void @dlm_lock_get(ptr noundef nonnull %4) #4
  %8 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lockres, align 8
  %tobool70.not = icmp eq ptr %9, null
  br i1 %tobool70.not, label %do.body80, label %do.end88, !prof !93

do.body80:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 618, 0\0A.popsection", ""() #4, !srcloc !94
  unreachable

do.end88:                                         ; preds = %do.end67
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %9, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #4
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #4, !srcloc !95
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end88.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !93

do.end88.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end88
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dlm_lockres_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end88.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end88.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #4
  br label %dlm_lockres_get.exit

dlm_lockres_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_lockres_get.exit_crit_edge
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %9, i32 0, i32 14
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %9, i32 0, i32 16
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %4, i32 0, i32 4
  br label %retry

retry:                                            ; preds = %if.then141, %dlm_lockres_get.exit
  %flags.addr.1 = phi i32 [ %flags.addr.0, %dlm_lockres_get.exit ], [ %flags.addr.2, %if.then141 ]
  %12 = ptrtoint ptr %call_ast to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call_ast, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m90) #4
  %13 = ptrtoint ptr %_m90 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 64, ptr %_m90, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m90, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 623, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, ptr noundef nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m90) #4
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %owner, align 4
  %16 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp98 = icmp eq i8 %15, %17
  %and100 = and i32 %flags.addr.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %retry.if.end107_crit_edge, label %land.lhs.true

retry.if.end107_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

land.lhs.true:                                    ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp103.not = icmp eq i8 %19, 5
  %and106 = and i32 %flags.addr.1, -257
  %spec.select = select i1 %cmp103.not, i32 %flags.addr.1, i32 %and106
  br label %if.end107

if.end107:                                        ; preds = %land.lhs.true, %retry.if.end107_crit_edge
  %flags.addr.2 = phi i32 [ %flags.addr.1, %retry.if.end107_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  br i1 %cmp98, label %if.then110, label %if.else

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call fastcc i32 @dlmunlock_common(ptr noundef %dlm, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %lksb, i32 noundef %flags.addr.2, ptr noundef nonnull %call_ast, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113) #4
  %20 = ptrtoint ptr %_m113 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 64, ptr %_m113, align 8
  %21 = ptrtoint ptr %call_ast to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call_ast, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 635, ptr noundef nonnull @.str.17, i32 noundef %call.i, i32 noundef %22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113) #4
  br label %if.end129

if.else:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %call.i293 = call fastcc i32 @dlmunlock_common(ptr noundef %dlm, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %lksb, i32 noundef %flags.addr.2, ptr noundef nonnull %call_ast, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m122) #4
  %23 = ptrtoint ptr %_m122 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 64, ptr %_m122, align 8
  %24 = ptrtoint ptr %call_ast to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call_ast, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m122, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 640, ptr noundef nonnull @.str.18, i32 noundef %call.i293, i32 noundef %25) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m122) #4
  br label %if.end129

if.end129:                                        ; preds = %if.else, %if.then110
  %status.0 = phi i32 [ %call.i, %if.then110 ], [ %call.i293, %if.else ]
  %26 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status.0, label %if.end150 [
    i32 39, label %if.end129.if.then141_crit_edge
    i32 40, label %if.end129.if.then141_crit_edge299
    i32 32, label %if.end129.if.then141_crit_edge300
    i32 17, label %if.end129.if.then141_crit_edge301
  ]

if.end129.if.then141_crit_edge301:                ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then141

if.end129.if.then141_crit_edge300:                ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then141

if.end129.if.then141_crit_edge299:                ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then141

if.end129.if.then141_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then141

if.then141:                                       ; preds = %if.end129.if.then141_crit_edge, %if.end129.if.then141_crit_edge299, %if.end129.if.then141_crit_edge300, %if.end129.if.then141_crit_edge301
  call void @msleep(i32 noundef 50) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m143) #4
  %27 = ptrtoint ptr %_m143 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 64, ptr %_m143, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m143, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 659, ptr noundef nonnull @.str.19) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m143) #4
  br label %retry

if.end150:                                        ; preds = %if.end129
  %28 = ptrtoint ptr %call_ast to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call_ast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool151.not = icmp eq i32 %29, 0
  br i1 %tobool151.not, label %if.end150.if.end183_crit_edge, label %do.body153

if.end150.if.end183_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

do.body153:                                       ; preds = %if.end150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m154) #4
  %30 = ptrtoint ptr %_m154 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 64, ptr %_m154, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m154, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 664, ptr noundef nonnull @.str.20, ptr noundef %data, i32 noundef %status.0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m154) #4
  br i1 %cmp98, label %if.then162, label %do.body153.if.end182_crit_edge

do.body153.if.end182_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then162:                                       ; preds = %do.body153
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef null) #4
  call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 674) #4
  %call170 = call i32 @dlm_lock_basts_flushed(ptr noundef %dlm, ptr noundef nonnull %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %if.then162.if.end182_crit_edge

if.then162.if.end182_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.end173:                                        ; preds = %if.then162
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %31 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %ast_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 40
  %call174296 = call i32 @prepare_to_wait_event(ptr noundef %ast_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %call175297 = call i32 @dlm_lock_basts_flushed(ptr noundef %dlm, ptr noundef nonnull %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175297)
  %tobool176.not298 = icmp eq i32 %call175297, 0
  br i1 %tobool176.not298, label %if.end173.cleanup_crit_edge, label %if.end173.for.end_crit_edge

if.end173.for.end_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end173.cleanup_crit_edge
  call void @schedule() #4
  %call174 = call i32 @prepare_to_wait_event(ptr noundef %ast_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %call175 = call i32 @dlm_lock_basts_flushed(ptr noundef %dlm, ptr noundef nonnull %4) #4
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end173.for.end_crit_edge
  call void @finish_wait(ptr noundef %ast_wq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end182

if.end182:                                        ; preds = %for.end, %if.then162.if.end182_crit_edge, %do.body153.if.end182_crit_edge
  call void %unlockast(ptr noundef %data, i32 noundef %status.0) #4
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end150.if.end183_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %status.0)
  %cmp184 = icmp eq i32 %status.0, 10
  %spec.select292 = select i1 %cmp184, i32 0, i32 %status.0
  %32 = zext i32 %spec.select292 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %spec.select292, label %do.body210 [
    i32 0, label %do.body191
    i32 39, label %if.end183.if.end222_crit_edge
    i32 32, label %if.end183.if.end222_crit_edge302
  ]

if.end183.if.end222_crit_edge302:                 ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end222

if.end183.if.end222_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end222

do.body191:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m192) #4
  %33 = ptrtoint ptr %_m192 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 64, ptr %_m192, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m192, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 683, ptr noundef nonnull @.str.22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m192) #4
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef nonnull %9) #4
  br label %if.end222

do.body210:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m211) #4
  %34 = ptrtoint ptr %_m211 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606847040, ptr %_m211, align 8
  %call215 = call ptr @dlm_errname(i32 noundef %spec.select292) #4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m211, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 686, ptr noundef nonnull @.str.14, ptr noundef %call215) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m211) #4
  br label %if.end222

if.end222:                                        ; preds = %do.body210, %do.body191, %if.end183.if.end222_crit_edge, %if.end183.if.end222_crit_edge302
  call void @dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef nonnull %9) #4
  call void @dlm_lockres_put(ptr noundef nonnull %9) #4
  call void @dlm_lock_put(ptr noundef nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m224) #4
  %35 = ptrtoint ptr %_m224 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 64, ptr %_m224, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m224, ptr noundef nonnull @__func__.dlmunlock, i32 noundef 692, ptr noundef nonnull @.str.23, i32 noundef %spec.select292) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m224) #4
  br label %cleanup231

cleanup231:                                       ; preds = %if.end222, %do.body40, %do.body11, %do.body1
  %retval.0 = phi i32 [ 24, %do.body11 ], [ %spec.select292, %if.end222 ], [ 24, %do.body40 ], [ 19, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %call_ast) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_errname(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lock_basts_flushed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlmunlock_common(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, ptr nocapture noundef %lksb, i32 noundef %flags, ptr nocapture noundef writeonly %call_ast, i32 noundef %master_node) unnamed_addr #0 align 64 {
entry:
  %_m.i434 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m72 = alloca i64, align 8
  %_m158 = alloca i64, align 8
  %_m217 = alloca i64, align 8
  %_m312 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %_m, align 8
  %and1 = and i32 %flags, 256
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmunlock_common, i32 noundef 95, ptr noundef nonnull @.str.24, i32 noundef %master_node, i32 noundef %and1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master_node)
  %tobool2.not = icmp eq i32 %master_node, 0
  %owner21 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %1 = ptrtoint ptr %owner21 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %owner21, align 4
  %node_num23 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %3 = ptrtoint ptr %node_num23 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %node_num23, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp25 = icmp eq i8 %2, %4
  br i1 %tobool2.not, label %do.body20, label %do.body4

do.body4:                                         ; preds = %entry
  br i1 %cmp25, label %do.body4.if.end43_crit_edge, label %do.body11, !prof !96

do.body4.if.end43_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.body11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #4, !srcloc !97
  unreachable

do.body20:                                        ; preds = %entry
  br i1 %cmp25, label %do.body34, label %do.body20.if.end43_crit_edge, !prof !93

do.body20.if.end43_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.body34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #4, !srcloc !98
  unreachable

if.end43:                                         ; preds = %do.body20.if.end43_crit_edge, %do.body4.if.end43_crit_edge
  %ast_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %ast_lock) #4
  %ast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 2
  %5 = ptrtoint ptr %ast_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ast_list, align 4
  %cmp.i = icmp ne ptr %6, %ast_list
  call void @_raw_spin_unlock(ptr noundef %ast_lock) #4
  %and49 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond = and i1 %tobool50.not, %cmp.i
  br i1 %or.cond, label %do.body52, label %if.end61

do.body52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #4
  %7 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847040, ptr %_m53, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %8 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.dlmunlock_common, i32 noundef 110, ptr noundef nonnull @.str.25, i32 noundef %9, ptr noundef %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #4
  br label %cleanup

if.end61:                                         ; preds = %if.end43
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state, align 2
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool64.not = icmp eq i16 %14, 0
  br i1 %tobool64.not, label %if.end61.if.end84_crit_edge, label %if.then65

if.end61.if.end84_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then65:                                        ; preds = %if.end61
  %tobool2.not.not = xor i1 %tobool2.not, true
  %or.cond430 = and i1 %tobool50.not, %tobool2.not.not
  br i1 %or.cond430, label %do.body71, label %if.end80

do.body71:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m72) #4
  %15 = ptrtoint ptr %_m72 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606847040, ptr %_m72, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m72, ptr noundef nonnull @__func__.dlmunlock_common, i32 noundef 117, ptr noundef nonnull @.str.26) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m72) #4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  br label %cleanup

if.end80:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  call void @__dlm_wait_on_lockres_flags(ptr noundef %res, i32 noundef 16434) #4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state, align 2
  %18 = or i16 %17, 16
  store i16 %18, ptr %state, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.end80, %if.end61.if.end84_crit_edge
  %spinlock85 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %spinlock85) #4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %state, align 2
  %conv87 = zext i16 %20 to i32
  %and88 = and i32 %conv87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end84.leave_crit_edge

if.end84.leave_crit_edge:                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %leave

if.end91:                                         ; preds = %if.end84
  %and94 = and i32 %conv87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end91.leave_crit_edge

if.end91.leave_crit_edge:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %leave

if.end97:                                         ; preds = %if.end91
  br i1 %tobool50.not, label %if.else102, label %if.then100

if.then100:                                       ; preds = %if.end97
  %blocked.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then100
  %.pn.in.i.i = phi ptr [ %blocked.i, %if.then100 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %blocked.i
  br i1 %cmp.not.i.i, label %if.else.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %tmplock.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %cmp1.i.i = icmp eq ptr %tmplock.0.i.i, %lock
  br i1 %cmp1.i.i, label %for.body.i.i.if.end112_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

for.body.i.i.if.end112_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.else.i:                                        ; preds = %for.cond.i.i
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  br label %for.cond.i4.i

for.cond.i4.i:                                    ; preds = %for.body.i7.i.for.cond.i4.i_crit_edge, %if.else.i
  %.pn.in.i1.i = phi ptr [ %converting.i, %if.else.i ], [ %.pn.i2.i, %for.body.i7.i.for.cond.i4.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i2.i = load ptr, ptr %.pn.in.i1.i, align 4
  %cmp.not.i3.i = icmp eq ptr %.pn.i2.i, %converting.i
  br i1 %cmp.not.i3.i, label %if.else4.i, label %for.body.i7.i

for.body.i7.i:                                    ; preds = %for.cond.i4.i
  %tmplock.0.i5.i = getelementptr i8, ptr %.pn.i2.i, i32 -16
  %cmp1.i6.i = icmp eq ptr %tmplock.0.i5.i, %lock
  br i1 %cmp1.i6.i, label %for.body.i7.i.if.end112_crit_edge, label %for.body.i7.i.for.cond.i4.i_crit_edge

for.body.i7.i.for.cond.i4.i_crit_edge:            ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i4.i

for.body.i7.i.if.end112_crit_edge:                ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.else4.i:                                       ; preds = %for.cond.i4.i
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %for.body.i16.i.for.cond.i13.i_crit_edge, %if.else4.i
  %.pn.in.i10.i = phi ptr [ %granted.i, %if.else4.i ], [ %.pn.i11.i, %for.body.i16.i.for.cond.i13.i_crit_edge ]
  %23 = ptrtoint ptr %.pn.in.i10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i11.i = load ptr, ptr %.pn.in.i10.i, align 4
  %cmp.not.i12.i = icmp eq ptr %.pn.i11.i, %granted.i
  br i1 %cmp.not.i12.i, label %do.body.i, label %for.body.i16.i

for.body.i16.i:                                   ; preds = %for.cond.i13.i
  %tmplock.0.i14.i = getelementptr i8, ptr %.pn.i11.i, i32 -16
  %cmp1.i15.i = icmp eq ptr %tmplock.0.i14.i, %lock
  br i1 %cmp1.i15.i, label %lor.lhs.false, label %for.body.i16.i.for.cond.i13.i_crit_edge

for.body.i16.i.for.cond.i13.i_crit_edge:          ; preds = %for.body.i16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i13.i

do.body.i:                                        ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #4
  %24 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606847040, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_get_cancel_actions, i32 noundef 551, ptr noundef nonnull @.str.36) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #4
  br label %leave

if.else102:                                       ; preds = %if.end97
  %granted.i435 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  br label %for.cond.i.i439

for.cond.i.i439:                                  ; preds = %for.body.i.i442.for.cond.i.i439_crit_edge, %if.else102
  %.pn.in.i.i436 = phi ptr [ %granted.i435, %if.else102 ], [ %.pn.i.i437, %for.body.i.i442.for.cond.i.i439_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i.i436 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i437 = load ptr, ptr %.pn.in.i.i436, align 4
  %cmp.not.i.i438 = icmp eq ptr %.pn.i.i437, %granted.i435
  br i1 %cmp.not.i.i438, label %do.body5.i, label %for.body.i.i442

for.body.i.i442:                                  ; preds = %for.cond.i.i439
  %tmplock.0.i.i440 = getelementptr i8, ptr %.pn.i.i437, i32 -16
  %cmp1.i.i441 = icmp eq ptr %tmplock.0.i.i440, %lock
  br i1 %cmp1.i.i441, label %for.body.i.i442.if.end112_crit_edge, label %for.body.i.i442.for.cond.i.i439_crit_edge

for.body.i.i442.for.cond.i.i439_crit_edge:        ; preds = %for.body.i.i442
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i439

for.body.i.i442.if.end112_crit_edge:              ; preds = %for.body.i.i442
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

do.body5.i:                                       ; preds = %for.cond.i.i439
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i434) #4
  %26 = ptrtoint ptr %_m.i434 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606847040, ptr %_m.i434, align 8
  %call8.i = call ptr @dlm_errname(i32 noundef 2) #4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i434, ptr noundef nonnull @__func__.dlm_get_unlock_actions, i32 noundef 569, ptr noundef nonnull @.str.14, ptr noundef %call8.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i434) #4
  br label %leave

lor.lhs.false:                                    ; preds = %for.body.i16.i
  br i1 %tobool2.not, label %lor.lhs.false.leave_crit_edge, label %if.end112.thread

lor.lhs.false.leave_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %leave

if.end112:                                        ; preds = %for.body.i.i442.if.end112_crit_edge, %for.body.i7.i.if.end112_crit_edge, %for.body.i.i.if.end112_crit_edge
  %actions.0.ph = phi i32 [ 7, %for.body.i.i442.if.end112_crit_edge ], [ 30, %for.body.i7.i.if.end112_crit_edge ], [ 6, %for.body.i.i.if.end112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool114.not = icmp eq i32 %and1, 0
  br i1 %tobool114.not, label %if.end123, label %if.then115

if.end112.thread:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool114.not462 = icmp eq i32 %and1, 0
  br i1 %tobool114.not462, label %if.end212.thread, label %if.end112.thread.if.then117_crit_edge

if.end112.thread.if.then117_crit_edge:            ; preds = %if.end112.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then117

if.end212.thread:                                 ; preds = %if.end112.thread
  call void @__sanitizer_cov_trace_pc() #6
  call void @dlm_lock_get(ptr noundef %lock) #4
  br label %if.end226

if.then115:                                       ; preds = %if.end112
  br i1 %tobool2.not, label %if.end123.thread474, label %if.then115.if.then117_crit_edge

if.then115.if.then117_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then117

if.then117:                                       ; preds = %if.then115.if.then117_crit_edge, %if.end112.thread.if.then117_crit_edge
  %status.0455463470 = phi i32 [ 0, %if.then115.if.then117_crit_edge ], [ 10, %if.end112.thread.if.then117_crit_edge ]
  %actions.0454465469 = phi i32 [ %actions.0.ph, %if.then115.if.then117_crit_edge ], [ 2, %if.end112.thread.if.then117_crit_edge ]
  %lvb = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 18
  %lvb118 = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %lvb, ptr %lvb118, i32 64)
  br label %if.end203

if.end123.thread474:                              ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  %or121 = or i32 %flags, 536870912
  br label %if.then125

if.end123:                                        ; preds = %if.end112
  br i1 %tobool2.not, label %if.end123.if.then125_crit_edge, label %if.end123.if.end203_crit_edge

if.end123.if.end203_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203

if.end123.if.then125_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then125

if.then125:                                       ; preds = %if.end123.if.then125_crit_edge, %if.end123.thread474
  %flags.addr.0479 = phi i32 [ %or121, %if.end123.thread474 ], [ %flags, %if.end123.if.then125_crit_edge ]
  %owner126 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %28 = ptrtoint ptr %owner126 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %owner126, align 4
  %and127 = and i32 %flags.addr.0479, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  %unlock_pending = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %30 = ptrtoint ptr %unlock_pending to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load131 = load i8, ptr %unlock_pending, align 4
  %. = select i1 %tobool128.not, i8 4, i8 8
  %bf.set133 = or i8 %bf.load131, %.
  store i8 %bf.set133, ptr %unlock_pending, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock85) #4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  %call137 = call fastcc i32 @dlm_send_remote_unlock_request(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef %flags.addr.0479, i8 noundef zeroext %29)
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  call void @_raw_spin_lock(ptr noundef %spinlock85) #4
  %31 = zext i32 %call137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call137, label %if.then125.if.end182_crit_edge [
    i32 10, label %if.then142
    i32 40, label %if.then125.do.body157_crit_edge
    i32 39, label %if.then125.do.body157_crit_edge516
    i32 32, label %if.then125.do.body157_crit_edge517
    i32 17, label %if.then125.do.body157_crit_edge518
  ]

if.then125.do.body157_crit_edge518:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body157

if.then125.do.body157_crit_edge517:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body157

if.then125.do.body157_crit_edge516:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body157

if.then125.do.body157_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body157

if.then125.if.end182_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then142:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  %and143 = and i32 %actions.0.ph, 3
  br label %if.end182

do.body157:                                       ; preds = %if.then125.do.body157_crit_edge, %if.then125.do.body157_crit_edge516, %if.then125.do.body157_crit_edge517, %if.then125.do.body157_crit_edge518
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m158) #4
  %32 = ptrtoint ptr %_m158 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 64, ptr %_m158, align 8
  %name162 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %33 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name162, align 4
  %lockname163 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %35 = ptrtoint ptr %lockname163 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lockname163, align 8
  %name166 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %name166 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name166, align 8
  %39 = zext i32 %call137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call137, label %cond.false172 [
    i32 39, label %do.body157.cond.end176_crit_edge
    i32 40, label %cond.end176.fold.split
  ]

do.body157.cond.end176_crit_edge:                 ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end176

cond.false172:                                    ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call137)
  %cmp173 = icmp eq i32 %call137, 32
  %cond = select i1 %cmp173, ptr @.str.30, ptr @.str.31
  br label %cond.end176

cond.end176.fold.split:                           ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end176

cond.end176:                                      ; preds = %cond.end176.fold.split, %cond.false172, %do.body157.cond.end176_crit_edge
  %cond177 = phi ptr [ @.str.28, %do.body157.cond.end176_crit_edge ], [ %cond, %cond.false172 ], [ @.str.29, %cond.end176.fold.split ]
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m158, ptr noundef nonnull @__func__.dlmunlock_common, i32 noundef 190, ptr noundef nonnull @.str.27, ptr noundef %34, i32 noundef %36, ptr noundef %38, ptr noundef nonnull %cond177) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m158) #4
  br label %if.end182

if.end182:                                        ; preds = %cond.end176, %if.then142, %if.then125.if.end182_crit_edge
  %actions.1 = phi i32 [ %actions.0.ph, %if.then125.if.end182_crit_edge ], [ 0, %cond.end176 ], [ %and143, %if.then142 ]
  %unlock_pending191 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %40 = ptrtoint ptr %unlock_pending191 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load192 = load i8, ptr %unlock_pending191, align 4
  br i1 %tobool128.not, label %if.else190, label %if.then185

if.then185:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear188 = and i8 %bf.load192, -9
  %41 = ptrtoint ptr %unlock_pending191 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.clear188, ptr %unlock_pending191, align 4
  br label %if.end203

if.else190:                                       ; preds = %if.end182
  %42 = and i8 %bf.load192, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool194.not = icmp eq i8 %42, 0
  br i1 %tobool194.not, label %if.else190.if.end203_crit_edge, label %if.else196

if.else190.if.end203_crit_edge:                   ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203

if.else196:                                       ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear199 = and i8 %bf.load192, -5
  %43 = ptrtoint ptr %unlock_pending191 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.clear199, ptr %unlock_pending191, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.else196, %if.else190.if.end203_crit_edge, %if.then185, %if.end123.if.end203_crit_edge, %if.then117
  %actions.2 = phi i32 [ %actions.1, %if.else190.if.end203_crit_edge ], [ %actions.1, %if.else196 ], [ %actions.1, %if.then185 ], [ %actions.0.ph, %if.end123.if.end203_crit_edge ], [ %actions.0454465469, %if.then117 ]
  %status.1 = phi i32 [ %call137, %if.else190.if.end203_crit_edge ], [ %call137, %if.else196 ], [ %call137, %if.then185 ], [ 0, %if.end123.if.end203_crit_edge ], [ %status.0455463470, %if.then117 ]
  %recovery_wait.0 = phi i32 [ 1, %if.else190.if.end203_crit_edge ], [ 0, %if.else196 ], [ 0, %if.then185 ], [ 0, %if.end123.if.end203_crit_edge ], [ 0, %if.then117 ]
  call void @dlm_lock_get(ptr noundef %lock) #4
  %and204 = and i32 %actions.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end203.if.end207_crit_edge, label %if.then206

if.end203.if.end207_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end207

if.then206:                                       ; preds = %if.end203
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then206.list_del_init.exit_crit_edge

if.then206.list_del_init.exit_crit_edge:          ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then206.list_del_init.exit_crit_edge
  %50 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list, ptr %prev.i3.i, align 4
  call void @dlm_lock_put(ptr noundef %lock) #4
  br label %if.end207

if.end207:                                        ; preds = %list_del_init.exit, %if.end203.if.end207_crit_edge
  %and208 = and i32 %actions.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end207.if.end212_crit_edge, label %if.then210

if.end207.if.end212_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end212

if.then210:                                       ; preds = %if.end207
  call void @dlm_lock_get(ptr noundef %lock) #4
  %list211 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i, align 4
  %call.i.i444 = call zeroext i1 @__list_add_valid(ptr noundef %list211, ptr noundef %53, ptr noundef %granted) #4
  br i1 %call.i.i444, label %if.end.i.i445, label %if.then210.if.end212_crit_edge

if.then210.if.end212_crit_edge:                   ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end212

if.end.i.i445:                                    ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list211, ptr %prev.i, align 4
  %55 = ptrtoint ptr %list211 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %granted, ptr %list211, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list211, ptr %53, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.end.i.i445, %if.then210.if.end212_crit_edge, %if.end207.if.end212_crit_edge
  %and213 = and i32 %actions.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end212.if.end226_crit_edge, label %do.body216

if.end212.if.end226_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end226

do.body216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m217) #4
  %58 = ptrtoint ptr %_m217 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 64, ptr %_m217, align 8
  %cond222 = select i1 %tobool2.not, ptr @.str.34, ptr @.str.33
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m217, ptr noundef nonnull @__func__.dlmunlock_common, i32 noundef 217, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond222) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m217) #4
  %convert_type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %59 = ptrtoint ptr %convert_type to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %convert_type, align 1
  br label %if.end226

if.end226:                                        ; preds = %do.body216, %if.end212.if.end226_crit_edge, %if.end212.thread
  %recovery_wait.0489495505 = phi i32 [ 0, %if.end212.thread ], [ %recovery_wait.0, %do.body216 ], [ %recovery_wait.0, %if.end212.if.end226_crit_edge ]
  %status.1488496504 = phi i32 [ 10, %if.end212.thread ], [ %status.1, %do.body216 ], [ %status.1, %if.end212.if.end226_crit_edge ]
  %actions.2487497503 = phi i32 [ 2, %if.end212.thread ], [ %actions.2, %do.body216 ], [ %actions.2, %if.end212.if.end226_crit_edge ]
  call void @dlm_lock_put(ptr noundef %lock) #4
  br label %leave

leave:                                            ; preds = %if.end226, %lor.lhs.false.leave_crit_edge, %do.body5.i, %do.body.i, %if.end91.leave_crit_edge, %if.end84.leave_crit_edge
  %actions.3 = phi i32 [ 2, %lor.lhs.false.leave_crit_edge ], [ %actions.2487497503, %if.end226 ], [ 0, %if.end91.leave_crit_edge ], [ 0, %if.end84.leave_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body5.i ]
  %status.2 = phi i32 [ 10, %lor.lhs.false.leave_crit_edge ], [ %status.1488496504, %if.end226 ], [ 40, %if.end91.leave_crit_edge ], [ 39, %if.end84.leave_crit_edge ], [ 11, %do.body.i ], [ 2, %do.body5.i ]
  %recovery_wait.1 = phi i32 [ 0, %lor.lhs.false.leave_crit_edge ], [ %recovery_wait.0489495505, %if.end226 ], [ 0, %if.end91.leave_crit_edge ], [ 0, %if.end84.leave_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body5.i ]
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %state, align 2
  %62 = and i16 %61, -17
  store i16 %62, ptr %state, align 2
  %converting = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %leave
  %.pn.in.i = phi ptr [ %converting, %leave ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %63 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %converting
  br i1 %cmp.not.i, label %do.body234, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %tmplock.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp1.i = icmp eq ptr %tmplock.0.i, %lock
  br i1 %cmp1.i, label %do.body257, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

do.body234:                                       ; preds = %for.cond.i
  %convert_type236 = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %64 = ptrtoint ptr %convert_type236 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %convert_type236, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp238.not = icmp eq i8 %65, -1
  br i1 %cmp238.not, label %do.body234.if.end279_crit_edge, label %do.body247, !prof !96

do.body234.if.end279_crit_edge:                   ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end279

do.body247:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 227, 0\0A.popsection", ""() #4, !srcloc !99
  unreachable

do.body257:                                       ; preds = %for.body.i
  %convert_type259 = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %66 = ptrtoint ptr %convert_type259 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %convert_type259, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp261 = icmp eq i8 %67, -1
  br i1 %cmp261, label %do.body270, label %do.body257.if.end279_crit_edge, !prof !93

do.body257.if.end279_crit_edge:                   ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end279

do.body270:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #4, !srcloc !100
  unreachable

if.end279:                                        ; preds = %do.body257.if.end279_crit_edge, %do.body234.if.end279_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock85) #4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recovery_wait.1)
  %tobool282.not = icmp eq i32 %recovery_wait.1, 0
  br i1 %tobool282.not, label %if.end279.if.end286_crit_edge, label %if.then283

if.end279.if.end286_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end286

if.then283:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_lock(ptr noundef %spinlock) #4
  call void @__dlm_wait_on_lockres_flags(ptr noundef %res, i32 noundef 2) #4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  br label %if.end286

if.end286:                                        ; preds = %if.then283, %if.end279.if.end286_crit_edge
  %and287 = and i32 %actions.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %if.end286.if.end326_crit_edge, label %do.body290

if.end286.if.end326_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end326

do.body290:                                       ; preds = %if.end286
  %and291 = and i32 %actions.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %do.body302, label %do.body311, !prof !93

do.body302:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmunlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #4, !srcloc !101
  unreachable

do.body311:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m312) #4
  %68 = ptrtoint ptr %_m312 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 64, ptr %_m312, align 8
  %69 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %70, 56
  %conv.i446 = trunc i64 %shr.i to i32
  %and.i = and i64 %70, 72057594037927935
  %lock_refs = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lock_refs, i32 noundef 4) #4
  %71 = ptrtoint ptr %lock_refs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %lock_refs, align 4
  %sub = add i32 %72, -1
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m312, ptr noundef nonnull @__func__.dlmunlock_common, i32 noundef 252, ptr noundef nonnull @.str.35, i32 noundef %conv.i446, i64 noundef %and.i, i32 noundef %sub) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m312) #4
  call void @dlm_lock_put(ptr noundef %lock) #4
  br label %if.end326

if.end326:                                        ; preds = %do.body311, %if.end286.if.end326_crit_edge
  %and327 = and i32 %actions.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %if.end326.if.end330_crit_edge, label %if.then329

if.end326.if.end330_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end330

if.then329:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %call_ast to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %call_ast, align 4
  br label %if.end330

if.end330:                                        ; preds = %if.then329, %if.end326.if.end330_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp331 = icmp eq i32 %status.2, 0
  br i1 %cmp331, label %if.then333, label %if.end330.cleanup_crit_edge

if.end330.cleanup_crit_edge:                      ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then333:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  %flags334 = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb, i32 0, i32 1
  %74 = ptrtoint ptr %flags334 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags334, align 4
  %and335 = and i32 %75, -7
  store i32 %and335, ptr %flags334, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then333, %if.end330.cleanup_crit_edge, %do.body71, %do.body52
  %retval.0 = phi i32 [ 32, %do.body71 ], [ 24, %do.body52 ], [ 0, %if.then333 ], [ %status.2, %if.end330.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_send_remote_unlock_request(ptr noundef %dlm, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %lock, i32 noundef %flags, i8 noundef zeroext %owner) unnamed_addr #0 align 64 {
entry:
  %unlock = alloca %struct.dlm_unlock_lock, align 8
  %status = alloca i32, align 4
  %vec = alloca [2 x %struct.kvec], align 4
  %_m = alloca i64, align 8
  %_m6 = alloca i64, align 8
  %_m49 = alloca i64, align 8
  %_m58 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %unlock) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vec) #4
  %1 = getelementptr inbounds [2 x %struct.kvec], ptr %vec, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.kvec], ptr %vec, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds i8, ptr %vec, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #4
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 64, ptr %_m, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %6 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_send_remote_unlock_request, i32 noundef 321, ptr noundef nonnull @.str.37, i32 noundef %7, ptr noundef %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #4
  %conv = zext i8 %owner to i32
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %10 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %owner)
  %cmp = icmp eq i8 %11, %owner
  br i1 %cmp, label %do.body5, label %if.end18

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m6) #4
  %12 = ptrtoint ptr %_m6 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 64, ptr %_m6, align 8
  %name10 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %13 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name10, align 4
  %15 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lockname, align 8
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m6, ptr noundef nonnull @__func__.dlm_send_remote_unlock_request, i32 noundef 329, ptr noundef nonnull @.str.38, ptr noundef %14, i32 noundef %16, ptr noundef %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m6) #4
  br label %cleanup

if.end18:                                         ; preds = %entry
  %19 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  %20 = getelementptr inbounds i8, ptr %unlock, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 72)
  %node_idx = getelementptr inbounds %struct.dlm_unlock_lock, ptr %unlock, i32 0, i32 3
  %22 = ptrtoint ptr %node_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %11, ptr %node_idx, align 2
  %flags20 = getelementptr inbounds %struct.dlm_unlock_lock, ptr %unlock, i32 0, i32 1
  %23 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags, ptr %flags20, align 8
  %24 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lock, align 8
  %26 = ptrtoint ptr %unlock to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %unlock, align 8
  %27 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lockname, align 8
  %conv24 = trunc i32 %28 to i8
  %namelen = getelementptr inbounds %struct.dlm_unlock_lock, ptr %unlock, i32 0, i32 4
  %29 = ptrtoint ptr %namelen to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv24, ptr %namelen, align 1
  %name25 = getelementptr inbounds %struct.dlm_unlock_lock, ptr %unlock, i32 0, i32 5
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 8
  %conv29 = and i32 %28, 255
  %32 = call ptr @memcpy(ptr %name25, ptr %31, i32 %conv29)
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 80, ptr %19, align 4
  %34 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %unlock, ptr %vec, align 4
  %and31 = and i32 %flags, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end18.if.end40_crit_edge, label %if.then33

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 64, ptr %2, align 4
  %lksb36 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %36 = ptrtoint ptr %lksb36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lksb36, align 8
  %lvb = getelementptr inbounds %struct.dlm_lockstatus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lvb, ptr %1, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end18.if.end40_crit_edge
  %veclen.0 = phi i32 [ 2, %if.then33 ], [ 1, %if.end18.if.end40_crit_edge ]
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %39 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key, align 4
  %call = call i32 @o2net_send_message_vec(i32 noundef 506, i32 noundef %40, ptr noundef nonnull %vec, i32 noundef %veclen.0, i8 noundef zeroext %owner, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp42 = icmp sgt i32 %call, -1
  br i1 %cmp42, label %if.then44, label %do.body57

if.then44:                                        ; preds = %if.end40
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp45 = icmp eq i32 %42, 32
  br i1 %cmp45, label %do.body48, label %if.then44.if.end56_crit_edge

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

do.body48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #4
  %43 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 64, ptr %_m49, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.dlm_send_remote_unlock_request, i32 noundef 355, ptr noundef nonnull @.str.39) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #4
  br label %if.end56

if.end56:                                         ; preds = %do.body48, %if.then44.if.end56_crit_edge
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  br label %cleanup

do.body57:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m58) #4
  %46 = ptrtoint ptr %_m58 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606847040, ptr %_m58, align 8
  %47 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m58, ptr noundef nonnull @__func__.dlm_send_remote_unlock_request, i32 noundef 359, ptr noundef nonnull @.str.40, i32 noundef %call, i32 noundef 506, i32 noundef %48, i32 noundef %conv) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m58) #4
  %call67 = call i32 @dlm_is_host_down(i32 noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.else75, label %if.then69

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  %call70 = call i32 @dlm_is_node_dead(ptr noundef %dlm, i8 noundef zeroext %owner) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  %. = select i1 %tobool71.not, i32 17, i32 0
  br label %cleanup

if.else75:                                        ; preds = %do.body57
  %49 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call, label %if.else3.i [
    i32 -12, label %if.else75.cleanup_crit_edge
    i32 -110, label %if.else75.if.then2.i_crit_edge
    i32 -512, label %if.else75.if.then2.i_crit_edge1
    i32 -9, label %if.else75.if.then2.i_crit_edge2
    i32 -111, label %if.else75.if.then2.i_crit_edge3
    i32 -107, label %if.else75.if.then2.i_crit_edge4
    i32 -104, label %if.else75.if.then2.i_crit_edge5
    i32 -32, label %if.else75.if.then2.i_crit_edge6
  ]

if.else75.if.then2.i_crit_edge6:                  ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.if.then2.i_crit_edge5:                  ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.if.then2.i_crit_edge4:                  ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.if.then2.i_crit_edge3:                  ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.if.then2.i_crit_edge2:                  ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.if.then2.i_crit_edge1:                  ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.if.then2.i_crit_edge:                   ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2.i

if.else75.cleanup_crit_edge:                      ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2.i:                                       ; preds = %if.else75.if.then2.i_crit_edge, %if.else75.if.then2.i_crit_edge1, %if.else75.if.then2.i_crit_edge2, %if.else75.if.then2.i_crit_edge3, %if.else75.if.then2.i_crit_edge4, %if.else75.if.then2.i_crit_edge5, %if.else75.if.then2.i_crit_edge6
  br label %cleanup

if.else3.i:                                       ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call)
  %switch.selectcmp.i = icmp eq i32 %call, -36
  %switch.select.i = select i1 %switch.selectcmp.i, i32 22, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %switch.selectcmp17.i = icmp eq i32 %call, -22
  %switch.select18.i = select i1 %switch.selectcmp17.i, i32 24, i32 %switch.select.i
  br label %cleanup

cleanup:                                          ; preds = %if.else3.i, %if.then2.i, %if.else75.cleanup_crit_edge, %if.then69, %if.end56, %do.body5
  %retval.0 = phi i32 [ 32, %do.body5 ], [ %45, %if.end56 ], [ %., %if.then69 ], [ 17, %if.then2.i ], [ 8, %if.else75.cleanup_crit_edge ], [ %switch.select18.i, %if.else3.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %unlock) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_wait_on_lockres_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message_vec(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_host_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_node_dead(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !73, !75, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__func__.dlm_unlock_lock_handler, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 406, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 411, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 417, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 424, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 427, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 434, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 444, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 451, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 458, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 499, i32 3}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 509, i32 3}
!26 = !{ptr @__func__.dlmunlock, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 594, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 604, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 623, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 634, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 639, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 658, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 664, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 673, i32 4}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 683, i32 3}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 692, i32 2}
!47 = !{ptr @__ksymtab_dlmunlock, !48, !"__ksymtab_dlmunlock", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 695, i32 1}
!49 = !{ptr @__func__.dlmunlock_common, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 94, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 108, i32 9}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 117, i32 4}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 184, i32 4}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 216, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 249, i32 3}
!68 = !{ptr @__func__.dlm_get_cancel_actions, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 551, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @__func__.dlm_get_unlock_actions, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 569, i32 3}
!73 = !{ptr @__func__.dlm_send_remote_unlock_request, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 321, i32 2}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 327, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 355, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ocfs2/dlm/dlmunlock.c", i32 358, i32 3}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i64 2157189938, i64 2157190427, i64 2157189975, i64 2157190031, i64 2157190065, i64 2157190089, i64 2157190130, i64 2157190151, i64 2157190179, i64 2157190213}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2157201400, i64 2157201889, i64 2157201437, i64 2157201493, i64 2157201527, i64 2157201551, i64 2157201592, i64 2157201613, i64 2157201641, i64 2157201675}
!95 = !{i64 2148358820, i64 2148358852, i64 2148358881, i64 2148358915, i64 2148358946, i64 2148358969}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2157175967, i64 2157176455, i64 2157176004, i64 2157176060, i64 2157176094, i64 2157176118, i64 2157176159, i64 2157176180, i64 2157176208, i64 2157176242}
!98 = !{i64 2157177591, i64 2157178080, i64 2157177628, i64 2157177684, i64 2157177718, i64 2157177742, i64 2157177783, i64 2157177804, i64 2157177832, i64 2157177866}
!99 = !{i64 2157180857, i64 2157181346, i64 2157180894, i64 2157180950, i64 2157180984, i64 2157181008, i64 2157181049, i64 2157181070, i64 2157181098, i64 2157181132}
!100 = !{i64 2157182491, i64 2157182980, i64 2157182528, i64 2157182584, i64 2157182618, i64 2157182642, i64 2157182683, i64 2157182704, i64 2157182732, i64 2157182766}
!101 = !{i64 2157184257, i64 2157184746, i64 2157184294, i64 2157184350, i64 2157184384, i64 2157184408, i64 2157184449, i64 2157184470, i64 2157184498, i64 2157184532}
