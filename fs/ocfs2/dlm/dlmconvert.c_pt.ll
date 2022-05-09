; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmconvert.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmconvert.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_lockstatus = type { i32, i32, ptr, [64 x i8] }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.dlm_convert_lock = type { i64, i32, i8, i8, i8, i8, [64 x i8], [0 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }

@__func__.dlmconvert_master = private unnamed_addr constant [18 x i8] c"dlmconvert_master\00", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm status = %s\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.dlmconvert_remote = private unnamed_addr constant [18 x i8] c"dlmconvert_remote\00", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"type=%d, convert_type=%d, busy=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"bailing out early since res is RECOVERING on secondary queue\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"converting a remote lock that is already converting! (cookie=%u:%llu, conv=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"last convert request returned DLM_RECOVERING, but owner has already queued and sent ast to me. res %.*s, (cookie=%u:%llu, type=%d, conv=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s: res %.*s, owner died and lock has been moved back to granted list, retry convert.\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.dlm_convert_lock_handler = private unnamed_addr constant [25 x i8] c"dlm_convert_lock_handler\00", align 1
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bug expression: !dlm_domain_fully_joined(dlm)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Domain %s not fully joined!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"both PUT and GET lvb specified\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvb: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"put lvb\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get lvb\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"did not find lock to convert on grant queue! cookie=%u:%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.__dlmconvert_master = private unnamed_addr constant [20 x i8] c"__dlmconvert_master\00", align 1
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"type=%d, convert_type=%d, new convert_type=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"attempted to convert a lock with a lock conversion pending\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"attempted to convert a lock not on grant queue\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"will set lvb: converting %s->%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"will fetch new value into lvb: converting %s->%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"will NOT fetch new value into lvb: converting %s->%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"res %.*s, granting %s lock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"doing in-place convert for nonlocal lock\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to convert NOQUEUE lock %.*s from %d to %d...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"res %.*s, queueing...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EX\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NL\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@__func__.dlm_send_remote_convert_request = private unnamed_addr constant [32 x i8] c"dlm_send_remote_convert_request\00", align 1
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"node %u returned DLM_RECOVERING from convert message!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"node %u returned DLM_MIGRATING from convert message!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"node %u returned DLM_FORWARD from convert message!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"node %u died so returning DLM_RECOVERING from convert message!\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.__dlmconvert_master = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.27, ptr @.str.25, ptr @.str.27, ptr @.str.24], [40 x i8] zeroinitializer }, align 32
@switch.table.__dlmconvert_master.34 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.27, ptr @.str.25, ptr @.str.27, ptr @.str.24], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 21]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 21, i64 32, i64 39, i64 40]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 32, i64 4294966784, i64 4294967185, i64 4294967186, i64 4294967189, i64 4294967192, i64 4294967264, i64 4294967284, i64 4294967287]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 21, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 21, i64 32, i64 39, i64 40]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 79, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 255, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 260, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 271, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 281, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 329, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 447, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 460, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 465, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 493, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 113, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 120, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 128, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 138, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 147, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 153, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 188, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 193, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 210, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 216, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1036, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1038, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1040, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"../fs/ocfs2/dlm/dlmcommon.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1042, i32 9 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 364, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 390, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 393, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 396, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 401, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [29 x i8] c"../fs/ocfs2/dlm/dlmconvert.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 411, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [33 x i8] c"switch.table.__dlmconvert_master\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [36 x i8] c"switch.table.__dlmconvert_master.34\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @switch.table.__dlmconvert_master, ptr @switch.table.__dlmconvert_master.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__dlmconvert_master to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__dlmconvert_master.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlmconvert_master(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef %flags, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %call_ast = alloca i32, align 4
  %kick_thread = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %call_ast) #3
  %0 = ptrtoint ptr %call_ast to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %call_ast, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kick_thread) #3
  %1 = ptrtoint ptr %kick_thread to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %kick_thread, align 4
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #3
  tail call void @__dlm_wait_on_lockres_flags(ptr noundef %res, i32 noundef 16434) #3
  tail call void @__dlm_lockres_reserve_ast(ptr noundef %res) #3
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 2
  %4 = or i16 %3, 16
  store i16 %4, ptr %state, align 2
  %call = call fastcc i32 @__dlmconvert_master(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef %flags, i32 noundef %type, ptr noundef nonnull %call_ast, ptr noundef nonnull %kick_thread)
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 2
  %7 = and i16 %6, -17
  store i16 %7, ptr %state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.body18 [
    i32 0, label %entry.if.end25_crit_edge
    i32 21, label %entry.if.end25_crit_edge51
  ]

entry.if.end25_crit_edge51:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #3
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606847040, ptr %_m, align 8
  %call21 = tail call ptr @dlm_errname(i32 noundef %call) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmconvert_master, i32 noundef 79, ptr noundef nonnull @.str, ptr noundef %call21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #3
  br label %if.end25

if.end25:                                         ; preds = %do.body18, %entry.if.end25_crit_edge, %entry.if.end25_crit_edge51
  %10 = ptrtoint ptr %call_ast to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call_ast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  call void @dlm_queue_ast(ptr noundef %dlm, ptr noundef %lock) #3
  br label %if.end28

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  call void @dlm_lockres_release_ast(ptr noundef %dlm, ptr noundef %res) #3
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %12 = ptrtoint ptr %kick_thread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %kick_thread, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool29.not = icmp eq i32 %13, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef %res) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kick_thread) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %call_ast) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_lockres_reserve_ast(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dlmconvert_master(ptr nocapture noundef readonly %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef %flags, i32 noundef %type, ptr nocapture noundef writeonly %call_ast, ptr nocapture noundef writeonly %kick_thread) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m38 = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m71 = alloca i64, align 8
  %_m87 = alloca i64, align 8
  %_m165 = alloca i64, align 8
  %_m183 = alloca i64, align 8
  %_m209 = alloca i64, align 8
  %_m225 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body10, !prof !79

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmconvert.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #3, !srcloc !80
  unreachable

do.body10:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #3
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 64, ptr %_m, align 8
  %type13 = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 4
  %3 = ptrtoint ptr %type13 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type13, align 4
  %conv = sext i8 %4 to i32
  %convert_type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %5 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %convert_type, align 1
  %conv15 = sext i8 %6 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 114, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv15, i32 noundef %type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #3
  %spinlock19 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %spinlock19) #3
  %7 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %convert_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.not = icmp eq i8 %8, -1
  br i1 %cmp.not, label %if.end33, label %do.body25

do.body25:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #3
  %9 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606847040, ptr %_m26, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 121, ptr noundef nonnull @.str.15) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #3
  br label %if.end245.thread

if.end33:                                         ; preds = %do.body10
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end33
  %.pn.in.i = phi ptr [ %granted, %if.end33 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %granted
  br i1 %cmp.not.i, label %do.body37, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %tmplock.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp1.i = icmp eq ptr %tmplock.0.i, %lock
  br i1 %cmp1.i, label %if.end45, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

do.body37:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38) #3
  %11 = ptrtoint ptr %_m38 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606847040, ptr %_m38, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 129, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38) #3
  br label %if.end245.thread

if.end45:                                         ; preds = %for.body.i
  %and46 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end101_crit_edge, label %if.then48

if.end45.if.end101_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.then48:                                        ; preds = %if.end45
  %12 = ptrtoint ptr %type13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type13, align 4
  %conv51 = sext i8 %13 to i32
  %14 = zext i32 %conv51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %conv51, label %if.then48.if.end101_crit_edge [
    i32 5, label %dlm_lock_mode_name.exit
    i32 3, label %if.then48.sw.bb66_crit_edge
    i32 0, label %if.then48.sw.bb66_crit_edge424
  ]

if.then48.sw.bb66_crit_edge424:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb66

if.then48.sw.bb66_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb66

if.then48.if.end101_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

dlm_lock_mode_name.exit:                          ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #3
  %15 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 64, ptr %_m53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %16 = icmp ult i32 %type, 6
  br i1 %16, label %switch.lookup, label %dlm_lock_mode_name.exit.dlm_lock_mode_name.exit316_crit_edge

dlm_lock_mode_name.exit.dlm_lock_mode_name.exit316_crit_edge: ; preds = %dlm_lock_mode_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_lock_mode_name.exit316

switch.lookup:                                    ; preds = %dlm_lock_mode_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.__dlmconvert_master, i32 0, i32 %type
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_lock_mode_name.exit316

dlm_lock_mode_name.exit316:                       ; preds = %switch.lookup, %dlm_lock_mode_name.exit.dlm_lock_mode_name.exit316_crit_edge
  %retval.0.i315 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.27, %dlm_lock_mode_name.exit.dlm_lock_mode_name.exit316_crit_edge ]
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 140, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i315) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #3
  %lksb = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %18 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lksb, align 8
  %flags65 = getelementptr inbounds %struct.dlm_lockstatus, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags65, align 4
  %or = or i32 %21, 2
  store i32 %or, ptr %flags65, align 4
  br label %if.end101

sw.bb66:                                          ; preds = %if.then48.sw.bb66_crit_edge, %if.then48.sw.bb66_crit_edge424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp67 = icmp sgt i32 %type, 0
  br i1 %cmp67, label %do.body70, label %do.body86

do.body70:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71) #3
  %22 = ptrtoint ptr %_m71 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 64, ptr %_m71, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %switch.selectcmp = icmp eq i8 %13, 3
  %switch.select = select i1 %switch.selectcmp, ptr @.str.25, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.selectcmp400 = icmp eq i8 %13, 0
  %switch.select401 = select i1 %switch.selectcmp400, ptr @.str.26, ptr %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %switch.selectcmp406 = icmp eq i32 %type, 3
  %switch.select407 = select i1 %switch.selectcmp406, ptr @.str.25, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %switch.selectcmp408 = icmp eq i32 %type, 5
  %switch.select409 = select i1 %switch.selectcmp408, ptr @.str.24, ptr %switch.select407
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 150, ptr noundef nonnull @.str.18, ptr noundef nonnull %switch.select401, ptr noundef nonnull %switch.select409) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71) #3
  %lksb83 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %23 = ptrtoint ptr %lksb83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lksb83, align 8
  %flags84 = getelementptr inbounds %struct.dlm_lockstatus, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %flags84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags84, align 4
  %or85 = or i32 %26, 4
  store i32 %or85, ptr %flags84, align 4
  br label %if.end101

do.body86:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m87) #3
  %27 = ptrtoint ptr %_m87 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 64, ptr %_m87, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %switch.selectcmp402 = icmp eq i8 %13, 3
  %switch.select403 = select i1 %switch.selectcmp402, ptr @.str.25, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.selectcmp404 = icmp eq i8 %13, 0
  %switch.select405 = select i1 %switch.selectcmp404, ptr @.str.26, ptr %switch.select403
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  %retval.0.i335 = select i1 %cond, ptr @.str.26, ptr @.str.27
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m87, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 156, ptr noundef nonnull @.str.19, ptr noundef nonnull %switch.select405, ptr noundef nonnull %retval.0.i335) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m87) #3
  %and99 = and i32 %flags, -257
  br label %if.end101

if.end101:                                        ; preds = %do.body86, %do.body70, %dlm_lock_mode_name.exit316, %if.then48.if.end101_crit_edge, %if.end45.if.end101_crit_edge
  %flags.addr.0 = phi i32 [ %flags, %if.then48.if.end101_crit_edge ], [ %flags, %do.body70 ], [ %and99, %do.body86 ], [ %flags, %dlm_lock_mode_name.exit316 ], [ %flags, %if.end45.if.end101_crit_edge ]
  %28 = ptrtoint ptr %type13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type13, align 4
  %conv104 = sext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv104, i32 %type)
  %cmp105.not = icmp slt i32 %conv104, %type
  br i1 %cmp105.not, label %for.cond.preheader, label %if.end101.do.body164_crit_edge

if.end101.do.body164_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body164

for.cond.preheader:                               ; preds = %if.end101
  %30 = ptrtoint ptr %granted to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn412 = load ptr, ptr %granted, align 4
  %cmp111.not413 = icmp eq ptr %.pn412, %granted
  br i1 %cmp111.not413, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp2.i = icmp ne i32 %type, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn414 = phi ptr [ %.pn412, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tmplock.0 = getelementptr i8, ptr %.pn414, i32 -16
  %cmp115 = icmp eq ptr %tmplock.0, %lock
  br i1 %cmp115, label %for.body.for.inc_crit_edge, label %if.end118

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end118:                                        ; preds = %for.body
  %type120 = getelementptr i8, ptr %.pn414, i32 -4
  %31 = ptrtoint ptr %type120 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type120, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp1.i337 = icmp eq i8 %32, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i337
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp5.i.not = icmp eq i8 %32, 3
  %or.cond = select i1 %cmp2.i, i1 %cmp5.i.not, i1 false
  %or.cond415 = or i1 %or.cond.i, %or.cond
  br i1 %or.cond415, label %if.end118.for.inc_crit_edge, label %if.end118.switch_queues_crit_edge

if.end118.switch_queues_crit_edge:                ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch_queues

if.end118.for.inc_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.inc:                                          ; preds = %if.end118.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %33 = ptrtoint ptr %.pn414 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn414, align 4
  %cmp111.not = icmp eq ptr %.pn, %granted
  br i1 %cmp111.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %converting = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i339 = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp2.i342 = icmp ne i32 %type, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp2.i352 = icmp eq i32 %type, 5
  br label %for.cond135

for.cond135:                                      ; preds = %dlm_lock_compatible.exit358.for.cond135_crit_edge, %for.end
  %.pn310.in = phi ptr [ %converting, %for.end ], [ %.pn310, %dlm_lock_compatible.exit358.for.cond135_crit_edge ]
  %34 = ptrtoint ptr %.pn310.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn310 = load ptr, ptr %.pn310.in, align 4
  %cmp138.not = icmp eq ptr %.pn310, %converting
  br i1 %cmp138.not, label %for.cond135.do.body164_crit_edge, label %for.body142

for.cond135.do.body164_crit_edge:                 ; preds = %for.cond135
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body164

for.body142:                                      ; preds = %for.cond135
  %type144 = getelementptr i8, ptr %.pn310, i32 -4
  %35 = ptrtoint ptr %type144 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type144, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp1.i340 = icmp eq i8 %36, 0
  %or.cond.i341 = or i1 %cmp.i339, %cmp1.i340
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp5.i344.not = icmp eq i8 %36, 3
  %or.cond410 = select i1 %cmp2.i342, i1 %cmp5.i344.not, i1 false
  %or.cond416 = or i1 %or.cond.i341, %or.cond410
  br i1 %or.cond416, label %if.end149, label %for.body142.switch_queues_crit_edge

for.body142.switch_queues_crit_edge:              ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch_queues

if.end149:                                        ; preds = %for.body142
  %convert_type151 = getelementptr i8, ptr %.pn310, i32 -3
  %37 = ptrtoint ptr %convert_type151 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %convert_type151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp1.i350 = icmp eq i8 %38, 0
  %or.cond.i351 = or i1 %cmp.i339, %cmp1.i350
  br i1 %or.cond.i351, label %if.end149.dlm_lock_compatible.exit358_crit_edge, label %if.end.i353

if.end149.dlm_lock_compatible.exit358_crit_edge:  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_lock_compatible.exit358

if.end.i353:                                      ; preds = %if.end149
  br i1 %cmp2.i352, label %if.end.i353.switch_queues_crit_edge, label %if.end4.i356

if.end.i353.switch_queues_crit_edge:              ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch_queues

if.end4.i356:                                     ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp5.i354 = icmp eq i8 %38, 3
  %..i355 = zext i1 %cmp5.i354 to i32
  br label %dlm_lock_compatible.exit358

dlm_lock_compatible.exit358:                      ; preds = %if.end4.i356, %if.end149.dlm_lock_compatible.exit358_crit_edge
  %retval.0.i357 = phi i32 [ 1, %if.end149.dlm_lock_compatible.exit358_crit_edge ], [ %..i355, %if.end4.i356 ]
  %tobool154.not = icmp eq i32 %retval.0.i357, 0
  br i1 %tobool154.not, label %dlm_lock_compatible.exit358.switch_queues_crit_edge, label %dlm_lock_compatible.exit358.for.cond135_crit_edge

dlm_lock_compatible.exit358.for.cond135_crit_edge: ; preds = %dlm_lock_compatible.exit358
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond135

dlm_lock_compatible.exit358.switch_queues_crit_edge: ; preds = %dlm_lock_compatible.exit358
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch_queues

do.body164:                                       ; preds = %for.cond135.do.body164_crit_edge, %if.end101.do.body164_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m165) #3
  %39 = ptrtoint ptr %_m165 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 64, ptr %_m165, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %40 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %44 = icmp ult i32 %type, 6
  br i1 %44, label %switch.lookup420, label %do.body164.dlm_lock_mode_name.exit363_crit_edge

do.body164.dlm_lock_mode_name.exit363_crit_edge:  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_lock_mode_name.exit363

switch.lookup420:                                 ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep421 = getelementptr inbounds [6 x ptr], ptr @switch.table.__dlmconvert_master.34, i32 0, i32 %type
  %45 = ptrtoint ptr %switch.gep421 to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load422 = load ptr, ptr %switch.gep421, align 4
  br label %dlm_lock_mode_name.exit363

dlm_lock_mode_name.exit363:                       ; preds = %switch.lookup420, %do.body164.dlm_lock_mode_name.exit363_crit_edge
  %retval.0.i362 = phi ptr [ %switch.load422, %switch.lookup420 ], [ @.str.27, %do.body164.dlm_lock_mode_name.exit363_crit_edge ]
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m165, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 189, ptr noundef nonnull @.str.20, i32 noundef %41, ptr noundef %43, ptr noundef nonnull %retval.0.i362) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m165) #3
  %lksb174 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %46 = ptrtoint ptr %lksb174 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lksb174, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %49 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %node, align 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %51 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp179 = icmp eq i8 %50, %52
  br i1 %cmp179, label %do.body182, label %dlm_lock_mode_name.exit363.if.end190_crit_edge

dlm_lock_mode_name.exit363.if.end190_crit_edge:   ; preds = %dlm_lock_mode_name.exit363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end190

do.body182:                                       ; preds = %dlm_lock_mode_name.exit363
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m183) #3
  %53 = ptrtoint ptr %_m183 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 64, ptr %_m183, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m183, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 193, ptr noundef nonnull @.str.21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m183) #3
  br label %if.end190

if.end190:                                        ; preds = %do.body182, %dlm_lock_mode_name.exit363.if.end190_crit_edge
  %conv191 = trunc i32 %type to i8
  %54 = ptrtoint ptr %type13 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv191, ptr %type13, align 4
  %55 = ptrtoint ptr %lksb174 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lksb174, align 8
  %flags195 = getelementptr inbounds %struct.dlm_lockstatus, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %flags195 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags195, align 4
  %and196 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end190.if.end202_crit_edge, label %if.then198

if.end190.if.end202_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end202

if.then198:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #5
  %lvb = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 18
  %lvb200 = getelementptr inbounds %struct.dlm_lockstatus, ptr %56, i32 0, i32 3
  %59 = call ptr @memcpy(ptr %lvb, ptr %lvb200, i32 64)
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.end190.if.end202_crit_edge
  %list203 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list203) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end202.__list_del_entry.exit.i_crit_edge

if.end202.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %list203 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %list203, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end202.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list203, ptr noundef %67, ptr noundef %granted) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %68 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list203, ptr %prev.i2.i, align 4
  %69 = ptrtoint ptr %list203 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %granted, ptr %list203, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list203, ptr %67, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %72 = ptrtoint ptr %call_ast to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %call_ast, align 4
  br label %if.then248

switch_queues:                                    ; preds = %dlm_lock_compatible.exit358.switch_queues_crit_edge, %if.end.i353.switch_queues_crit_edge, %for.body142.switch_queues_crit_edge, %if.end118.switch_queues_crit_edge
  %and205 = and i32 %flags.addr.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %do.body224, label %if.end245

do.body224:                                       ; preds = %switch_queues
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m225) #3
  %73 = ptrtoint ptr %_m225 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 64, ptr %_m225, align 8
  %lockname229 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %74 = ptrtoint ptr %lockname229 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lockname229, align 8
  %name232 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %name232 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name232, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m225, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 217, ptr noundef nonnull @.str.23, i32 noundef %75, ptr noundef %77) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m225) #3
  %conv236 = trunc i32 %type to i8
  %78 = ptrtoint ptr %convert_type to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv236, ptr %convert_type, align 1
  %list239 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %converting240 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %call.i.i364 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list239) #3
  br i1 %call.i.i364, label %if.end.i.i367, label %do.body224.__list_del_entry.exit.i370_crit_edge

do.body224.__list_del_entry.exit.i370_crit_edge:  ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i370

if.end.i.i367:                                    ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i365 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i.i365 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i365, align 4
  %81 = ptrtoint ptr %list239 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %list239, align 4
  %prev1.i.i.i366 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i366 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i366, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %__list_del_entry.exit.i370

__list_del_entry.exit.i370:                       ; preds = %if.end.i.i367, %do.body224.__list_del_entry.exit.i370_crit_edge
  %prev.i2.i368 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %prev.i2.i368 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i2.i368, align 4
  %call.i.i.i369 = call zeroext i1 @__list_add_valid(ptr noundef %list239, ptr noundef %86, ptr noundef %converting240) #3
  br i1 %call.i.i.i369, label %if.end.i.i.i372, label %__list_del_entry.exit.i370.if.then248_crit_edge

__list_del_entry.exit.i370.if.then248_crit_edge:  ; preds = %__list_del_entry.exit.i370
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then248

if.end.i.i.i372:                                  ; preds = %__list_del_entry.exit.i370
  call void @__sanitizer_cov_trace_pc() #5
  %87 = ptrtoint ptr %prev.i2.i368 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %list239, ptr %prev.i2.i368, align 4
  %88 = ptrtoint ptr %list239 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %converting240, ptr %list239, align 4
  %prev3.i.i.i371 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i371 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i371, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %list239, ptr %86, align 4
  br label %if.then248

if.end245.thread:                                 ; preds = %do.body37, %do.body25
  call void @_raw_spin_unlock(ptr noundef %spinlock19) #3
  call void @__dlm_print_one_lock_resource(ptr noundef %res) #3
  br label %if.end249

if.end245:                                        ; preds = %switch_queues
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m209) #3
  %91 = ptrtoint ptr %_m209 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 64, ptr %_m209, align 8
  %lockname213 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %92 = ptrtoint ptr %lockname213 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lockname213, align 8
  %name216 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %name216 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name216, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m209, ptr noundef nonnull @__func__.__dlmconvert_master, i32 noundef 212, ptr noundef nonnull @.str.22, i32 noundef %93, ptr noundef %95, i32 noundef %conv104, i32 noundef %type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m209) #3
  call void @_raw_spin_unlock(ptr noundef %spinlock19) #3
  br label %if.end249

if.then248:                                       ; preds = %if.end.i.i.i372, %__list_del_entry.exit.i370.if.then248_crit_edge, %list_move_tail.exit
  call void @_raw_spin_unlock(ptr noundef %spinlock19) #3
  %96 = ptrtoint ptr %kick_thread to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %kick_thread, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %if.end245, %if.end245.thread
  %status.0392395 = phi i32 [ 2, %if.end245.thread ], [ 0, %if.then248 ], [ 21, %if.end245 ]
  ret i32 %status.0392395
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_errname(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_queue_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_release_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_revert_pending_convert(ptr noundef %res, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %granted) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
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
  %lksb = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %13 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lksb, align 8
  %flags = getelementptr inbounds %struct.dlm_lockstatus, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, -7
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlmconvert_remote(ptr noundef %dlm, ptr noundef %res, ptr noundef %lock, i32 noundef %flags, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %convert.i = alloca %struct.dlm_convert_lock, align 8
  %status.i = alloca i32, align 4
  %vec.i = alloca [2 x %struct.kvec], align 4
  %_m.i = alloca i64, align 8
  %_m29.i = alloca i64, align 8
  %_m42.i = alloca i64, align 8
  %_m56.i = alloca i64, align 8
  %_m82.i = alloca i64, align 8
  %_m99.i = alloca i64, align 8
  %_m114.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m12 = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m54 = alloca i64, align 8
  %_m133 = alloca i64, align 8
  %_m152 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #3
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %_m, align 8
  %type1 = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 4
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type1, align 4
  %conv = sext i8 %2 to i32
  %convert_type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %3 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %convert_type, align 1
  %conv3 = sext i8 %4 to i32
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 2
  %7 = and i16 %6, 16
  %and5 = zext i16 %7 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlmconvert_remote, i32 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv3, i32 noundef %and5) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #3
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %state, align 2
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool9.not = icmp eq i16 %10, 0
  br i1 %tobool9.not, label %if.end19, label %do.body11

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m12) #3
  %11 = ptrtoint ptr %_m12 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 64, ptr %_m12, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m12, ptr noundef nonnull @__func__.dlmconvert_remote, i32 noundef 261, ptr noundef nonnull @.str.2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m12) #3
  br label %bail

if.end19:                                         ; preds = %entry
  call void @__dlm_wait_on_lockres_flags(ptr noundef %res, i32 noundef 16434) #3
  %12 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %convert_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.not = icmp eq i8 %13, -1
  br i1 %cmp.not, label %if.end41, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  call void @__dlm_print_one_lock_resource(ptr noundef %res) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #3
  %14 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606847040, ptr %_m26, align 8
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %16, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %16, 72057594037927935
  %17 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %convert_type, align 1
  %conv37 = sext i8 %18 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.dlmconvert_remote, i32 noundef 275, ptr noundef nonnull @.str.3, i32 noundef %conv.i, i64 noundef %and.i, i32 noundef %conv37) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #3
  br label %bail

if.end41:                                         ; preds = %if.end19
  %19 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type1, align 4
  %conv44 = sext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv44, i32 %type)
  %cmp45 = icmp eq i32 %conv44, %type
  br i1 %cmp45, label %do.body53, label %if.end75

do.body53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54) #3
  %21 = ptrtoint ptr %_m54 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 64, ptr %_m54, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %22 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 8
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lock, align 8
  %shr.i223 = lshr i64 %27, 56
  %conv.i224 = trunc i64 %shr.i223 to i32
  %and.i225 = and i64 %27, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54, ptr noundef nonnull @__func__.dlmconvert_remote, i32 noundef 287, ptr noundef nonnull @.str.4, i32 noundef %23, ptr noundef %25, i32 noundef %conv.i224, i64 noundef %and.i225, i32 noundef %type, i32 noundef -1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54) #3
  br label %bail

if.end75:                                         ; preds = %if.end41
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %state, align 2
  %30 = or i16 %29, 16
  store i16 %30, ptr %state, align 2
  %list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1
  %converting = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end75.__list_del_entry.exit.i_crit_edge

if.end75.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end75.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %38, ptr noundef %converting) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list, ptr %prev.i2.i, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %converting, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list, ptr %38, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %convert_pending = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %43 = ptrtoint ptr %convert_pending to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %convert_pending, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %convert_pending, align 4
  %conv79 = trunc i32 %type to i8
  %44 = ptrtoint ptr %convert_type to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv79, ptr %convert_type, align 1
  %and82 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %list_move_tail.exit.if.end108_crit_edge, label %if.then84

list_move_tail.exit.if.end108_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end108

if.then84:                                        ; preds = %list_move_tail.exit
  %45 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %46)
  %cmp88 = icmp eq i8 %46, 5
  br i1 %cmp88, label %if.then90, label %if.else

if.then90:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  %or91 = or i32 %flags, 536870912
  %lksb = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %47 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lksb, align 8
  %flags92 = getelementptr inbounds %struct.dlm_lockstatus, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %flags92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags92, align 4
  %or93 = or i32 %50, 2
  store i32 %or93, ptr %flags92, align 4
  br label %if.end108

if.else:                                          ; preds = %if.then84
  %sext.mask = and i32 %type, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp97 = icmp eq i32 %sext.mask, 0
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %and100 = and i32 %flags, -257
  br label %if.end108

if.else101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %or102 = or i32 %flags, 1073741824
  %lksb103 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %51 = ptrtoint ptr %lksb103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lksb103, align 8
  %flags104 = getelementptr inbounds %struct.dlm_lockstatus, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags104, align 4
  %or105 = or i32 %54, 4
  store i32 %or105, ptr %flags104, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else101, %if.then99, %if.then90, %list_move_tail.exit.if.end108_crit_edge
  %flags.addr.0 = phi i32 [ %or91, %if.then90 ], [ %and100, %if.then99 ], [ %or102, %if.else101 ], [ %flags, %list_move_tail.exit.if.end108_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %convert.i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #3
  %55 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %status.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vec.i) #3
  %56 = getelementptr inbounds %struct.kvec, ptr %vec.i, i32 0, i32 1
  %57 = getelementptr inbounds i8, ptr %vec.i, i32 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 -1, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #3
  %59 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 64, ptr %_m.i, align 8
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %60 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lockname.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 364, ptr noundef nonnull @.str.28, i32 noundef %61, ptr noundef %63) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #3
  %64 = getelementptr inbounds i8, ptr %convert.i, i32 8
  %65 = call ptr @memset(ptr %64, i32 0, i32 72)
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %66 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %node_num.i, align 4
  %node_idx.i = getelementptr inbounds %struct.dlm_convert_lock, ptr %convert.i, i32 0, i32 3
  %68 = ptrtoint ptr %node_idx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %node_idx.i, align 1
  %requested_type.i = getelementptr inbounds %struct.dlm_convert_lock, ptr %convert.i, i32 0, i32 4
  %69 = ptrtoint ptr %requested_type.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv79, ptr %requested_type.i, align 2
  %70 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %lock, align 8
  %72 = ptrtoint ptr %convert.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %convert.i, align 8
  %73 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lockname.i, align 8
  %conv5.i = trunc i32 %74 to i8
  %namelen.i = getelementptr inbounds %struct.dlm_convert_lock, ptr %convert.i, i32 0, i32 5
  %75 = ptrtoint ptr %namelen.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv5.i, ptr %namelen.i, align 1
  %76 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %flags.addr.0, ptr %64, align 8
  %name7.i = getelementptr inbounds %struct.dlm_convert_lock, ptr %convert.i, i32 0, i32 6
  %77 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name.i, align 8
  %conv11.i = and i32 %74, 255
  %79 = call ptr @memcpy(ptr %name7.i, ptr %78, i32 %conv11.i)
  %80 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 80, ptr %56, align 4
  %81 = ptrtoint ptr %vec.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %convert.i, ptr %vec.i, align 4
  %and13.i = and i32 %flags.addr.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end108.if.end21.i_crit_edge, label %if.then15.i

if.end108.if.end21.i_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  %82 = getelementptr inbounds [2 x %struct.kvec], ptr %vec.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 64, ptr %82, align 4
  %lksb.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %84 = ptrtoint ptr %lksb.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lksb.i, align 8
  %lvb.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %lvb.i, ptr %57, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.end108.if.end21.i_crit_edge
  %veclen.0.i = phi i32 [ 2, %if.then15.i ], [ 1, %if.end108.if.end21.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %87 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %key.i, align 4
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %89 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %owner.i, align 4
  %call.i = call i32 @o2net_send_message_vec(i32 noundef 504, i32 noundef %88, ptr noundef nonnull %vec.i, i32 noundef %veclen.0.i, i8 noundef zeroext %90, ptr noundef nonnull %status.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then24.i, label %do.body98.i

if.then24.i:                                      ; preds = %if.end21.i
  %91 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %status.i, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %92, label %do.body81.i [
    i32 39, label %do.body28.i
    i32 40, label %do.body41.i
    i32 32, label %do.body55.i
    i32 0, label %dlm_send_remote_convert_request.exit.thread238
    i32 21, label %if.then24.i.dlm_send_remote_convert_request.exit.thread_crit_edge
  ]

if.then24.i.dlm_send_remote_convert_request.exit.thread_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_send_remote_convert_request.exit.thread

dlm_send_remote_convert_request.exit.thread238:   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vec.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #3
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %convert.i) #3
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %state, align 2
  %96 = and i16 %95, -17
  store i16 %96, ptr %state, align 2
  br label %if.else145

do.body28.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29.i) #3
  %97 = ptrtoint ptr %_m29.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 64, ptr %_m29.i, align 8
  %98 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %owner.i, align 4
  %conv34.i = zext i8 %99 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 391, ptr noundef nonnull @.str.29, i32 noundef %conv34.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29.i) #3
  br label %dlm_send_remote_convert_request.exit.thread

do.body41.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42.i) #3
  %100 = ptrtoint ptr %_m42.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 64, ptr %_m42.i, align 8
  %101 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %owner.i, align 4
  %conv47.i = zext i8 %102 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 394, ptr noundef nonnull @.str.30, i32 noundef %conv47.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42.i) #3
  br label %dlm_send_remote_convert_request.exit.thread

do.body55.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56.i) #3
  %103 = ptrtoint ptr %_m56.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 64, ptr %_m56.i, align 8
  %104 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %owner.i, align 4
  %conv61.i = zext i8 %105 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 397, ptr noundef nonnull @.str.31, i32 noundef %conv61.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56.i) #3
  br label %dlm_send_remote_convert_request.exit.thread

do.body81.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m82.i) #3
  %106 = ptrtoint ptr %_m82.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 1152921504606847040, ptr %_m82.i, align 8
  %call86.i = call ptr @dlm_errname(i32 noundef %92) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m82.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 399, ptr noundef nonnull @.str, ptr noundef %call86.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m82.i) #3
  br label %dlm_send_remote_convert_request.exit

do.body98.i:                                      ; preds = %if.end21.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99.i) #3
  %107 = ptrtoint ptr %_m99.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 1152921504606847040, ptr %_m99.i, align 8
  %108 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %key.i, align 4
  %110 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %owner.i, align 4
  %conv105.i = zext i8 %111 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m99.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 403, ptr noundef nonnull @.str.32, i32 noundef %call.i, i32 noundef 504, i32 noundef %109, i32 noundef %conv105.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m99.i) #3
  %call109.i = call i32 @dlm_is_host_down(i32 noundef %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.else123.i, label %if.then111.i

if.then111.i:                                     ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #5
  %112 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %owner.i, align 4
  call void @dlm_wait_for_node_death(ptr noundef %dlm, i8 noundef zeroext %113, i32 noundef 5000) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114.i) #3
  %114 = ptrtoint ptr %_m114.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 64, ptr %_m114.i, align 8
  %115 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %owner.i, align 4
  %conv119.i = zext i8 %116 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114.i, ptr noundef nonnull @__func__.dlm_send_remote_convert_request, i32 noundef 412, ptr noundef nonnull @.str.33, i32 noundef %conv119.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114.i) #3
  br label %dlm_send_remote_convert_request.exit.thread

if.else123.i:                                     ; preds = %do.body98.i
  %117 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call.i, label %if.else3.i.i [
    i32 -12, label %if.else123.i.dlm_send_remote_convert_request.exit.thread235_crit_edge
    i32 -110, label %if.else123.i.if.then2.i.i_crit_edge
    i32 -512, label %if.else123.i.if.then2.i.i_crit_edge240
    i32 -9, label %if.else123.i.if.then2.i.i_crit_edge241
    i32 -111, label %if.else123.i.if.then2.i.i_crit_edge242
    i32 -107, label %if.else123.i.if.then2.i.i_crit_edge243
    i32 -104, label %if.else123.i.if.then2.i.i_crit_edge244
    i32 -32, label %if.else123.i.if.then2.i.i_crit_edge245
  ]

if.else123.i.if.then2.i.i_crit_edge245:           ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.if.then2.i.i_crit_edge244:           ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.if.then2.i.i_crit_edge243:           ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.if.then2.i.i_crit_edge242:           ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.if.then2.i.i_crit_edge241:           ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.if.then2.i.i_crit_edge240:           ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.if.then2.i.i_crit_edge:              ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2.i.i

if.else123.i.dlm_send_remote_convert_request.exit.thread235_crit_edge: ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_send_remote_convert_request.exit.thread235

if.then2.i.i:                                     ; preds = %if.else123.i.if.then2.i.i_crit_edge, %if.else123.i.if.then2.i.i_crit_edge240, %if.else123.i.if.then2.i.i_crit_edge241, %if.else123.i.if.then2.i.i_crit_edge242, %if.else123.i.if.then2.i.i_crit_edge243, %if.else123.i.if.then2.i.i_crit_edge244, %if.else123.i.if.then2.i.i_crit_edge245
  br label %dlm_send_remote_convert_request.exit.thread235

if.else3.i.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call.i)
  %switch.selectcmp.i.i = icmp eq i32 %call.i, -36
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 22, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %switch.selectcmp17.i.i = icmp eq i32 %call.i, -22
  br i1 %switch.selectcmp17.i.i, label %if.else3.i.i.dlm_send_remote_convert_request.exit.thread235_crit_edge, label %if.else3.i.i.dlm_send_remote_convert_request.exit_crit_edge

if.else3.i.i.dlm_send_remote_convert_request.exit_crit_edge: ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_send_remote_convert_request.exit

if.else3.i.i.dlm_send_remote_convert_request.exit.thread235_crit_edge: ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_send_remote_convert_request.exit.thread235

dlm_send_remote_convert_request.exit.thread:      ; preds = %if.then111.i, %do.body55.i, %do.body41.i, %do.body28.i, %if.then24.i.dlm_send_remote_convert_request.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ 39, %if.then111.i ], [ 32, %do.body55.i ], [ 40, %do.body41.i ], [ 39, %do.body28.i ], [ %92, %if.then24.i.dlm_send_remote_convert_request.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vec.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #3
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %convert.i) #3
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  %118 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %state, align 2
  %120 = and i16 %119, -17
  store i16 %120, ptr %state, align 2
  br label %if.end144

dlm_send_remote_convert_request.exit.thread235:   ; preds = %if.else3.i.i.dlm_send_remote_convert_request.exit.thread235_crit_edge, %if.then2.i.i, %if.else123.i.dlm_send_remote_convert_request.exit.thread235_crit_edge
  %ret.0.i.ph234 = phi i32 [ 8, %if.else123.i.dlm_send_remote_convert_request.exit.thread235_crit_edge ], [ 17, %if.then2.i.i ], [ 24, %if.else3.i.i.dlm_send_remote_convert_request.exit.thread235_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vec.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #3
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %convert.i) #3
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %state, align 2
  %123 = and i16 %122, -17
  store i16 %123, ptr %state, align 2
  br label %do.body132

dlm_send_remote_convert_request.exit:             ; preds = %if.else3.i.i.dlm_send_remote_convert_request.exit_crit_edge, %do.body81.i
  %ret.0.i = phi i32 [ %92, %do.body81.i ], [ %switch.select.i.i, %if.else3.i.i.dlm_send_remote_convert_request.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vec.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #3
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %convert.i) #3
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  %124 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %state, align 2
  %126 = and i16 %125, -17
  store i16 %126, ptr %state, align 2
  %127 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %ret.0.i, label %dlm_send_remote_convert_request.exit.do.body132_crit_edge [
    i32 0, label %dlm_send_remote_convert_request.exit.if.else145_crit_edge
    i32 21, label %dlm_send_remote_convert_request.exit.if.end144_crit_edge
    i32 32, label %dlm_send_remote_convert_request.exit.if.end144_crit_edge246
  ]

dlm_send_remote_convert_request.exit.if.end144_crit_edge246: ; preds = %dlm_send_remote_convert_request.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end144

dlm_send_remote_convert_request.exit.if.end144_crit_edge: ; preds = %dlm_send_remote_convert_request.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end144

dlm_send_remote_convert_request.exit.if.else145_crit_edge: ; preds = %dlm_send_remote_convert_request.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else145

dlm_send_remote_convert_request.exit.do.body132_crit_edge: ; preds = %dlm_send_remote_convert_request.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body132

do.body132:                                       ; preds = %dlm_send_remote_convert_request.exit.do.body132_crit_edge, %dlm_send_remote_convert_request.exit.thread235
  %ret.0.i237 = phi i32 [ %ret.0.i.ph234, %dlm_send_remote_convert_request.exit.thread235 ], [ %ret.0.i, %dlm_send_remote_convert_request.exit.do.body132_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m133) #3
  %128 = ptrtoint ptr %_m133 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 1152921504606847040, ptr %_m133, align 8
  %call137 = call ptr @dlm_errname(i32 noundef %ret.0.i237) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m133, ptr noundef nonnull @__func__.dlmconvert_remote, i32 noundef 326, ptr noundef nonnull @.str, ptr noundef %call137) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m133) #3
  br label %if.end144

if.end144:                                        ; preds = %do.body132, %dlm_send_remote_convert_request.exit.if.end144_crit_edge, %dlm_send_remote_convert_request.exit.if.end144_crit_edge246, %dlm_send_remote_convert_request.exit.thread
  %ret.0.i232 = phi i32 [ %ret.0.i.ph, %dlm_send_remote_convert_request.exit.thread ], [ %ret.0.i, %dlm_send_remote_convert_request.exit.if.end144_crit_edge ], [ %ret.0.i, %dlm_send_remote_convert_request.exit.if.end144_crit_edge246 ], [ %ret.0.i237, %do.body132 ]
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %call.i.i.i227 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #3
  br i1 %call.i.i.i227, label %if.end.i.i.i228, label %if.end144.__list_del_entry.exit.i.i_crit_edge

if.end144.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i

if.end.i.i.i228:                                  ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %129 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i.i, align 4
  %131 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev1.i.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %130, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i228, %if.end144.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %136, ptr noundef %granted.i) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dlm_revert_pending_convert.exit_crit_edge

__list_del_entry.exit.i.i.dlm_revert_pending_convert.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dlm_revert_pending_convert.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %137 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %list, ptr %prev.i2.i.i, align 4
  %138 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %granted.i, ptr %list, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev3.i.i.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %list, ptr %136, align 4
  br label %dlm_revert_pending_convert.exit

dlm_revert_pending_convert.exit:                  ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dlm_revert_pending_convert.exit_crit_edge
  %141 = ptrtoint ptr %convert_type to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -1, ptr %convert_type, align 1
  %lksb.i229 = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 10
  %142 = ptrtoint ptr %lksb.i229 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %lksb.i229, align 8
  %flags.i = getelementptr inbounds %struct.dlm_lockstatus, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags.i, align 4
  %and.i230 = and i32 %145, -7
  store i32 %and.i230, ptr %flags.i, align 4
  br label %if.end165

if.else145:                                       ; preds = %dlm_send_remote_convert_request.exit.if.else145_crit_edge, %dlm_send_remote_convert_request.exit.thread238
  %146 = ptrtoint ptr %convert_pending to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load147 = load i8, ptr %convert_pending, align 4
  %147 = and i8 %bf.load147, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool149.not = icmp eq i8 %147, 0
  br i1 %tobool149.not, label %do.body151, label %if.else145.if.end165_crit_edge

if.else145.if.end165_crit_edge:                   ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end165

do.body151:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m152) #3
  %148 = ptrtoint ptr %_m152 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 64, ptr %_m152, align 8
  %name156 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %149 = ptrtoint ptr %name156 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name156, align 4
  %151 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %lockname.i, align 8
  %153 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m152, ptr noundef nonnull @__func__.dlmconvert_remote, i32 noundef 331, ptr noundef nonnull @.str.5, ptr noundef %150, i32 noundef %152, ptr noundef %154) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m152) #3
  br label %if.end165

if.end165:                                        ; preds = %do.body151, %if.else145.if.end165_crit_edge, %dlm_revert_pending_convert.exit
  %status.0 = phi i32 [ %ret.0.i232, %dlm_revert_pending_convert.exit ], [ 0, %if.else145.if.end165_crit_edge ], [ 39, %do.body151 ]
  %155 = ptrtoint ptr %convert_pending to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load167 = load i8, ptr %convert_pending, align 4
  %bf.clear168 = and i8 %bf.load167, -33
  store i8 %bf.clear168, ptr %convert_pending, align 4
  br label %bail

bail:                                             ; preds = %if.end165, %do.body53, %if.then24, %do.body11
  %status.1 = phi i32 [ 39, %do.body11 ], [ 2, %if.then24 ], [ 0, %do.body53 ], [ %status.0, %if.end165 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_convert_lock_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i390 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %call_ast = alloca i32, align 4
  %kick_thread = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m13 = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m49 = alloca i64, align 8
  %_m67 = alloca i64, align 8
  %_m76 = alloca i64, align 8
  %_m106 = alloca i64, align 8
  %_m169 = alloca i64, align 8
  %_m269 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %call_ast) #3
  %0 = ptrtoint ptr %call_ast to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %call_ast, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kick_thread) #3
  %1 = ptrtoint ptr %kick_thread to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %kick_thread, align 4
  %call = tail call ptr @dlm_grab(ptr noundef %data) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body1, label %do.body8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #3
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606847040, ptr %_m, align 8
  %call4 = tail call ptr @dlm_errname(i32 noundef 26) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 443, ptr noundef nonnull @.str, ptr noundef %call4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #3
  br label %cleanup

do.body8:                                         ; preds = %entry
  %call9 = tail call i32 @dlm_domain_fully_joined(ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body12, label %do.end36

do.body12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m13) #3
  %3 = ptrtoint ptr %_m13 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606847040, ptr %_m13, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m13, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 448, ptr noundef nonnull @.str.6) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m13) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #3
  %4 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606847040, ptr %_m21, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 448, ptr noundef nonnull @.str.7, ptr noundef %6) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #3
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmconvert.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 448, 0\0A.popsection", ""() #3, !srcloc !81
  unreachable

do.end36:                                         ; preds = %do.body8
  %namelen = getelementptr inbounds %struct.dlm_convert_lock, ptr %buf, i32 0, i32 5
  %7 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %namelen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp = icmp ugt i8 %8, 32
  br i1 %cmp, label %do.body48, label %if.end60

do.body48:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #3
  %9 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606847040, ptr %_m49, align 8
  %call53 = tail call ptr @dlm_errname(i32 noundef 22) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 452, ptr noundef nonnull @.str, ptr noundef %call53) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #3
  br label %if.end286.thread

if.end60:                                         ; preds = %do.end36
  %flags61 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %10 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags61, align 8
  %and62 = and i32 %11, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and62)
  %cmp63 = icmp eq i32 %and62, 1610612736
  br i1 %cmp63, label %do.body66, label %do.body75

do.body66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67) #3
  %12 = ptrtoint ptr %_m67 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606847040, ptr %_m67, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 460, ptr noundef nonnull @.str.8) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67) #3
  br label %if.end286.thread

do.body75:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m76) #3
  %13 = ptrtoint ptr %_m76 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 64, ptr %_m76, align 8
  %and80 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %and82 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %cond = select i1 %tobool83.not, ptr @.str.12, ptr @.str.11
  %cond84 = select i1 %tobool81.not, ptr %cond, ptr @.str.10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m76, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 466, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond84) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m76) #3
  %name88 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 6
  %14 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %namelen, align 1
  %conv91 = zext i8 %15 to i32
  %call92 = call ptr @dlm_lookup_lockres(ptr noundef %data, ptr noundef %name88, i32 noundef %conv91) #3
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %do.body105, label %if.end117

do.body105:                                       ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m106) #3
  %16 = ptrtoint ptr %_m106 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606847040, ptr %_m106, align 8
  %call110 = call ptr @dlm_errname(i32 noundef 11) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m106, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 471, ptr noundef nonnull @.str, ptr noundef %call110) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m106) #3
  br label %if.end286.thread

if.end117:                                        ; preds = %do.body75
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %call92, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %17 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %18 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !79

do.body4.i:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #3, !srcloc !82
  unreachable

do.end9.i:                                        ; preds = %if.end117
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call92, i32 0, i32 17
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %state.i, align 2
  %conv.i = zext i16 %20 to i32
  %and.i = and i32 %conv.i, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then121.thread

if.then121.thread:                                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  br label %if.end286.thread

if.else.i:                                        ; preds = %do.end9.i
  %and14.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %__dlm_lockres_state_to_status.exit, label %if.then121.thread454

if.then121.thread454:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  br label %if.end286.thread

__dlm_lockres_state_to_status.exit:               ; preds = %if.else.i
  %21 = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp119.not = icmp eq i32 %21, 0
  br i1 %cmp119.not, label %if.end145, label %if.then121

if.then121:                                       ; preds = %__dlm_lockres_state_to_status.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  br label %if.end286.thread

if.end145:                                        ; preds = %__dlm_lockres_state_to_status.exit
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %call92, i32 0, i32 3
  %22 = ptrtoint ptr %granted to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn459 = load ptr, ptr %granted, align 4
  %cmp147.not461 = icmp eq ptr %.pn459, %granted
  br i1 %cmp147.not461, label %if.end145.for.end.thread_crit_edge, label %for.body.lr.ph

if.end145.for.end.thread_crit_edge:               ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end145
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %buf, align 8
  %node_idx = getelementptr inbounds %struct.dlm_convert_lock, ptr %buf, i32 0, i32 3
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end145.for.end.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  br label %if.then167

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn462 = phi ptr [ %.pn459, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tmp_lock.0463 = getelementptr i8, ptr %.pn462, i32 -16
  %25 = ptrtoint ptr %tmp_lock.0463 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tmp_lock.0463, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %24)
  %cmp150 = icmp eq i64 %26, %24
  br i1 %cmp150, label %land.lhs.true152, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true152:                                 ; preds = %for.body
  %node = getelementptr i8, ptr %.pn462, i32 -1
  %27 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %node, align 1
  %29 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %node_idx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp156 = icmp eq i8 %28, %30
  br i1 %cmp156, label %for.end, label %land.lhs.true152.for.inc_crit_edge

land.lhs.true152.for.inc_crit_edge:               ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true152.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn462 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn462, align 4
  %cmp147.not = icmp eq ptr %.pn, %granted
  br i1 %cmp147.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true152
  %tmp_lock.0463.le = getelementptr i8, ptr %.pn462, i32 -16
  call void @dlm_lock_get(ptr noundef %tmp_lock.0463.le) #3
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  %tobool166.not = icmp eq ptr %tmp_lock.0463.le, null
  br i1 %tobool166.not, label %for.end.if.then167_crit_edge, label %if.end181

for.end.if.then167_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

if.then167:                                       ; preds = %for.end.if.then167_crit_edge, %for.end.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m169) #3
  %32 = ptrtoint ptr %_m169 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606847040, ptr %_m169, align 8
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %buf, align 8
  %shr.i = lshr i64 %34, 56
  %conv.i388 = trunc i64 %shr.i to i32
  %and.i389 = and i64 %34, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m169, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 496, ptr noundef nonnull @.str.13, i32 noundef %conv.i388, i64 noundef %and.i389) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m169) #3
  call void @dlm_print_one_lock_resource(ptr noundef nonnull %call92) #3
  br label %if.end286.thread

if.end181:                                        ; preds = %for.end
  %lksb182 = getelementptr i8, ptr %.pn462, i32 88
  %35 = ptrtoint ptr %lksb182 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lksb182, align 8
  br i1 %tobool81.not, label %if.else, label %do.body186

do.body186:                                       ; preds = %if.end181
  %flags187 = getelementptr inbounds %struct.dlm_lockstatus, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %flags187 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags187, align 4
  %and188 = and i32 %38, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %do.end202, label %do.body194, !prof !83

do.body194:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmconvert.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #3, !srcloc !84
  unreachable

do.end202:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %38, 2
  %39 = ptrtoint ptr %flags187 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %flags187, align 4
  %lvb = getelementptr inbounds %struct.dlm_lockstatus, ptr %36, i32 0, i32 3
  %lvb204 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 4, i32 4
  %40 = call ptr @memcpy(ptr %lvb, ptr %lvb204, i32 64)
  br label %if.end232

if.else:                                          ; preds = %if.end181
  br i1 %tobool83.not, label %if.else.if.end232_crit_edge, label %do.body209

if.else.if.end232_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end232

do.body209:                                       ; preds = %if.else
  %flags210 = getelementptr inbounds %struct.dlm_lockstatus, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %flags210 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags210, align 4
  %and211 = and i32 %42, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %do.end228, label %do.body220, !prof !83

do.body220:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmconvert.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #3, !srcloc !85
  unreachable

do.end228:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #5
  %or230 = or i32 %42, 4
  %43 = ptrtoint ptr %flags210 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or230, ptr %flags210, align 4
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %if.else.if.end232_crit_edge, %do.end202
  call void @_raw_spin_lock(ptr noundef %spinlock) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i390)
  %44 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %44)
  %agg.tmp.sroa.0.0.copyload.i.i392 = load volatile i32, ptr %spinlock, align 4
  %45 = ptrtoint ptr %agg.tmp.sroa.0.i.i390 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i392, ptr %agg.tmp.sroa.0.i.i390, align 4
  %lock.sroa.0.0.extract.shift.i.i.i393 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i392, 16
  %conv.i.i.i394 = and i32 %agg.tmp.sroa.0.0.copyload.i.i392, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i394, i32 %lock.sroa.0.0.extract.shift.i.i.i393)
  %cmp.i.i.not.i395 = icmp eq i32 %conv.i.i.i394, %lock.sroa.0.0.extract.shift.i.i.i393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i390)
  br i1 %cmp.i.i.not.i395, label %do.body4.i396, label %do.end9.i401, !prof !79

do.body4.i396:                                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #3, !srcloc !82
  unreachable

do.end9.i401:                                     ; preds = %if.end232
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %state.i, align 2
  %conv.i398 = zext i16 %47 to i32
  %and.i399 = and i32 %conv.i398, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i399)
  %tobool10.not.i400 = icmp eq i32 %and.i399, 0
  br i1 %tobool10.not.i400, label %if.else.i404, label %do.end9.i401.if.end247.thread_crit_edge

do.end9.i401.if.end247.thread_crit_edge:          ; preds = %do.end9.i401
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end247.thread

if.else.i404:                                     ; preds = %do.end9.i401
  %and14.i402 = and i32 %conv.i398, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i402)
  %tobool15.not.i403 = icmp eq i32 %and14.i402, 0
  br i1 %tobool15.not.i403, label %__dlm_lockres_state_to_status.exit408, label %if.else.i404.if.end247.thread_crit_edge

if.else.i404.if.end247.thread_crit_edge:          ; preds = %if.else.i404
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end247.thread

__dlm_lockres_state_to_status.exit408:            ; preds = %if.else.i404
  %and20.i405 = shl nuw nsw i32 %conv.i398, 1
  %48 = and i32 %and20.i405, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp235 = icmp eq i32 %48, 0
  br i1 %cmp235, label %if.then250, label %__dlm_lockres_state_to_status.exit408.if.end247.thread_crit_edge

__dlm_lockres_state_to_status.exit408.if.end247.thread_crit_edge: ; preds = %__dlm_lockres_state_to_status.exit408
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end247.thread

if.end247.thread:                                 ; preds = %__dlm_lockres_state_to_status.exit408.if.end247.thread_crit_edge, %if.else.i404.if.end247.thread_crit_edge, %do.end9.i401.if.end247.thread_crit_edge
  %status.0.ph = phi i32 [ %48, %__dlm_lockres_state_to_status.exit408.if.end247.thread_crit_edge ], [ 40, %if.else.i404.if.end247.thread_crit_edge ], [ 39, %do.end9.i401.if.end247.thread_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  br label %if.end251

if.then250:                                       ; preds = %__dlm_lockres_state_to_status.exit408
  call void @__sanitizer_cov_trace_pc() #5
  call void @__dlm_lockres_reserve_ast(ptr noundef nonnull %call92) #3
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %state.i, align 2
  %51 = or i16 %50, 16
  store i16 %51, ptr %state.i, align 2
  %requested_type = getelementptr inbounds %struct.dlm_convert_lock, ptr %buf, i32 0, i32 4
  %52 = ptrtoint ptr %requested_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %requested_type, align 2
  %conv241 = sext i8 %53 to i32
  %call242 = call fastcc i32 @__dlmconvert_master(ptr noundef %data, ptr noundef nonnull %call92, ptr noundef nonnull %tmp_lock.0463.le, i32 noundef %11, i32 noundef %conv241, ptr noundef nonnull %call_ast, ptr noundef nonnull %kick_thread)
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %state.i, align 2
  %56 = and i16 %55, -17
  store i16 %56, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock) #3
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %call92, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %if.end247.thread
  %tobool290.not = phi i1 [ true, %if.end247.thread ], [ false, %if.then250 ]
  %status.0423 = phi i32 [ %status.0.ph, %if.end247.thread ], [ %call242, %if.then250 ]
  %57 = zext i32 %status.0423 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %status.0423, label %do.body268 [
    i32 0, label %if.end251.if.end286_crit_edge
    i32 21, label %if.end251.if.end280_crit_edge
    i32 39, label %if.end251.if.end280_crit_edge472
    i32 40, label %if.end251.if.end280_crit_edge473
    i32 32, label %if.end251.if.end280_crit_edge474
  ]

if.end251.if.end280_crit_edge474:                 ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end280

if.end251.if.end280_crit_edge473:                 ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end280

if.end251.if.end280_crit_edge472:                 ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end280

if.end251.if.end280_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end280

if.end251.if.end286_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end286

do.body268:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m269) #3
  %58 = ptrtoint ptr %_m269 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1152921504606847040, ptr %_m269, align 8
  %call273 = call ptr @dlm_errname(i32 noundef %status.0423) #3
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m269, ptr noundef nonnull @__func__.dlm_convert_lock_handler, i32 noundef 532, ptr noundef nonnull @.str, ptr noundef %call273) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m269) #3
  br label %if.end280

if.end280:                                        ; preds = %do.body268, %if.end251.if.end280_crit_edge, %if.end251.if.end280_crit_edge472, %if.end251.if.end280_crit_edge473, %if.end251.if.end280_crit_edge474
  %flags281 = getelementptr inbounds %struct.dlm_lockstatus, ptr %36, i32 0, i32 1
  %59 = ptrtoint ptr %flags281 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags281, align 4
  %and282 = and i32 %60, -7
  store i32 %and282, ptr %flags281, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.end280, %if.end251.if.end286_crit_edge
  call void @dlm_lock_put(ptr noundef nonnull %tmp_lock.0463.le) #3
  %61 = ptrtoint ptr %call_ast to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call_ast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool287.not = icmp eq i32 %62, 0
  br i1 %tobool287.not, label %if.else289, label %if.end286.if.then288_crit_edge

if.end286.if.then288_crit_edge:                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then288

if.end286.thread:                                 ; preds = %if.then167, %if.then121, %if.then121.thread454, %if.then121.thread, %do.body105, %do.body66, %do.body48
  %status.1.ph = phi i32 [ 40, %if.then121.thread454 ], [ 11, %do.body105 ], [ 11, %if.then167 ], [ 19, %do.body66 ], [ 22, %do.body48 ], [ 39, %if.then121.thread ], [ 32, %if.then121 ]
  %res.0.ph = phi ptr [ %call92, %if.then121.thread454 ], [ null, %do.body105 ], [ %call92, %if.then167 ], [ null, %do.body66 ], [ null, %do.body48 ], [ %call92, %if.then121.thread ], [ %call92, %if.then121 ]
  %63 = ptrtoint ptr %call_ast to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call_ast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool287.not440 = icmp eq i32 %64, 0
  br i1 %tobool287.not440, label %if.end286.thread.if.end293_crit_edge, label %if.end286.thread.if.then288_crit_edge

if.end286.thread.if.then288_crit_edge:            ; preds = %if.end286.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then288

if.end286.thread.if.end293_crit_edge:             ; preds = %if.end286.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end293

if.then288:                                       ; preds = %if.end286.thread.if.then288_crit_edge, %if.end286.if.then288_crit_edge
  %lock.1431448 = phi ptr [ null, %if.end286.thread.if.then288_crit_edge ], [ %tmp_lock.0463.le, %if.end286.if.then288_crit_edge ]
  %status.1432446 = phi i32 [ %status.1.ph, %if.end286.thread.if.then288_crit_edge ], [ %status.0423, %if.end286.if.then288_crit_edge ]
  %res.0434442 = phi ptr [ %res.0.ph, %if.end286.thread.if.then288_crit_edge ], [ %call92, %if.end286.if.then288_crit_edge ]
  call void @dlm_queue_ast(ptr noundef %data, ptr noundef %lock.1431448) #3
  br label %if.end293

if.else289:                                       ; preds = %if.end286
  br i1 %tobool290.not, label %if.else289.if.end293_crit_edge, label %if.then291

if.else289.if.end293_crit_edge:                   ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end293

if.then291:                                       ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #5
  call void @dlm_lockres_release_ast(ptr noundef %data, ptr noundef nonnull %call92) #3
  br label %if.end293

if.end293:                                        ; preds = %if.then291, %if.else289.if.end293_crit_edge, %if.then288, %if.end286.thread.if.end293_crit_edge
  %status.1432445 = phi i32 [ %status.0423, %if.else289.if.end293_crit_edge ], [ %status.0423, %if.then291 ], [ %status.1432446, %if.then288 ], [ %status.1.ph, %if.end286.thread.if.end293_crit_edge ]
  %res.0434441 = phi ptr [ %call92, %if.else289.if.end293_crit_edge ], [ %call92, %if.then291 ], [ %res.0434442, %if.then288 ], [ %res.0.ph, %if.end286.thread.if.end293_crit_edge ]
  %65 = ptrtoint ptr %kick_thread to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %kick_thread, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool294.not = icmp eq i32 %66, 0
  br i1 %tobool294.not, label %if.end293.if.end296_crit_edge, label %if.then295

if.end293.if.end296_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end296

if.then295:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #5
  call void @dlm_kick_thread(ptr noundef %data, ptr noundef %res.0434441) #3
  br label %if.end296

if.end296:                                        ; preds = %if.then295, %if.end293.if.end296_crit_edge
  %tobool297.not = icmp eq ptr %res.0434441, null
  br i1 %tobool297.not, label %if.end296.if.end299_crit_edge, label %if.then298

if.end296.if.end299_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end299

if.then298:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #5
  call void @dlm_lockres_put(ptr noundef nonnull %res.0434441) #3
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %if.end296.if.end299_crit_edge
  call void @dlm_put(ptr noundef %data) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end299, %do.body1
  %retval.0 = phi i32 [ %status.1432445, %if.end299 ], [ 26, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kick_thread) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %call_ast) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_domain_fully_joined(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_wait_on_lockres_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message_vec(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_host_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_wait_for_node_death(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__func__.dlmconvert_master, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 79, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dlmconvert_remote, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 255, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 260, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 271, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 281, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 329, i32 3}
!14 = !{ptr @__func__.dlm_convert_lock_handler, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 443, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 447, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 460, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 465, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 493, i32 3}
!28 = !{ptr @__func__.__dlmconvert_master, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 113, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 120, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 128, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 138, i32 5}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 147, i32 6}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 153, i32 6}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 188, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 193, i32 3}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 210, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 216, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 1036, i32 11}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 1038, i32 11}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 1040, i32 11}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 1042, i32 9}
!57 = !{ptr @__func__.dlm_send_remote_convert_request, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 364, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 390, i32 4}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 393, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 396, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 401, i32 3}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmconvert.c", i32 411, i32 4}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2157173698, i64 2157174188, i64 2157173735, i64 2157173791, i64 2157173825, i64 2157173849, i64 2157173890, i64 2157173911, i64 2157173939, i64 2157173973}
!81 = !{i64 2157192226, i64 2157192716, i64 2157192263, i64 2157192319, i64 2157192353, i64 2157192377, i64 2157192418, i64 2157192439, i64 2157192467, i64 2157192501}
!82 = !{i64 2157154172, i64 2157154661, i64 2157154209, i64 2157154265, i64 2157154299, i64 2157154323, i64 2157154364, i64 2157154385, i64 2157154413, i64 2157154447}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2157200147, i64 2157200637, i64 2157200184, i64 2157200240, i64 2157200274, i64 2157200298, i64 2157200339, i64 2157200360, i64 2157200388, i64 2157200422}
!85 = !{i64 2157201808, i64 2157202298, i64 2157201845, i64 2157201901, i64 2157201935, i64 2157201959, i64 2157202000, i64 2157202021, i64 2157202049, i64 2157202083}
