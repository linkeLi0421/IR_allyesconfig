; ModuleID = '/llk/IR_all_yes/fs/ocfs2/cluster/quorum.c_pt.bc'
source_filename = "../fs/ocfs2/cluster/quorum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.o2quo_state = type { %struct.spinlock, %struct.work_struct, i32, i32, [8 x i32], i32, [8 x i32], i32, [8 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.o2nm_cluster = type { %struct.config_group, i8, i8, %struct.rwlock_t, [255 x ptr], %struct.rb_root, i32, i32, i32, i32, [8 x i32] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }

@o2quo_state = internal global { %struct.o2quo_state, [56 x i8] } zeroinitializer, align 32
@__func__.o2quo_hb_up = private unnamed_addr constant [12 x i8] c"o2quo_hb_up\00", align 1
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bug expression: qs->qs_heartbeating == O2NM_MAX_NODES\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"node %u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bug expression: test_bit(node, qs->qs_hb_bm)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"node %u, %d total\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.o2quo_hb_down = private unnamed_addr constant [14 x i8] c"o2quo_hb_down\00", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bug expression: qs->qs_heartbeating < 0\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"node %u, %d heartbeating\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bug expression: !test_bit(node, qs->qs_hb_bm)\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.o2quo_hb_still_up = private unnamed_addr constant [18 x i8] c"o2quo_hb_still_up\00", align 1
@__func__.o2quo_conn_up = private unnamed_addr constant [14 x i8] c"o2quo_conn_up\00", align 1
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bug expression: qs->qs_connected == O2NM_MAX_NODES\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bug expression: test_bit(node, qs->qs_conn_bm)\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.o2quo_conn_err = private unnamed_addr constant [15 x i8] c"o2quo_conn_err\00", align 1
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bug expression: qs->qs_connected < 0\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"node %u, connected %d\0A\00", [41 x i8] zeroinitializer }, align 32
@o2quo_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&qs->qs_lock\00", [19 x i8] zeroinitializer }, align 32
@o2quo_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&qs->qs_work)\00", [32 x i8] zeroinitializer }, align 32
@o2nm_single_cluster = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"*** ocfs2 is very sorry to be fencing this system by panicing ***\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/ocfs2/cluster/quorum.c\00", [38 x i8] zeroinitializer }, align 32
@o2quo_fence_self._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.15, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013*** ocfs2 is very sorry to be fencing this system by restarting ***\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"o2quo_fence_self\00", [47 x i8] zeroinitializer }, align 32
@o2quo_fence_self._entry_ptr = internal global ptr @o2quo_fence_self._entry, section ".printk_index", align 4
@__func__.o2quo_set_hold = private unnamed_addr constant [15 x i8] c"o2quo_set_hold\00", align 1
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bug expression: qs->qs_holds == O2NM_MAX_NODES\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.o2quo_clear_hold = private unnamed_addr constant [17 x i8] c"o2quo_clear_hold\00", align 1
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bug expression: qs->qs_holds < 0\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"node %u, holds %d\0A\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.o2quo_make_decision = private unnamed_addr constant [20 x i8] c"o2quo_make_decision\00", align 1
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"heartbeating: %d, connected: %d, lowest: %d (%sreachable)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"fencing this node because it is only connected to %u nodes and %u is needed to make a quorum out of %u heartbeating nodes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"fencing this node because it is connected to a half-quorum of %u out of %u nodes which doesn't include the lowest active node %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"not fencing this node, heartbeating: %d, connected: %d, lowest: %d (%sreachable)\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"o2quo_state\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 50, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 202, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 204, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 207, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 226, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 229, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 270, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 272, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 297, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 317, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 318, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 62, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 66, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 70, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 168, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 186, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 102, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 115, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 138, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [29 x i8] c"../fs/ocfs2/cluster/quorum.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 152, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @o2quo_fence_self._entry, ptr @o2quo_fence_self._entry_ptr, ptr @o2quo_state, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @o2quo_init.__key, ptr @.str.11, ptr @o2quo_init.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2quo_state to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2quo_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2quo_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2quo_fence_self._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_disk_timeout() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @o2hb_stop_all_regions() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %0 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_fence_method.i = getelementptr inbounds %struct.o2nm_cluster, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %cl_fence_method.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cl_fence_method.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %entry.o2quo_fence_self.exit_crit_edge
  ]

entry.o2quo_fence_self.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %o2quo_fence_self.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #8
  unreachable

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 67, i32 noundef 9, ptr noundef null) #5
  br label %o2quo_fence_self.exit

o2quo_fence_self.exit:                            ; preds = %do.end.i, %entry.o2quo_fence_self.exit_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  tail call void @emergency_restart() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_hb_up(i8 noundef zeroext %node) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m34 = alloca i64, align 8
  %_m55 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2quo_state) #5
  %0 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc)
  %cmp = icmp eq i32 %inc, 255
  br i1 %cmp, label %do.body2, label %do.body21

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606863360, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_hb_up, i32 noundef 203, ptr noundef nonnull @.str) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #5
  %2 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606863360, ptr %_m5, align 8
  %conv = zext i8 %node to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.o2quo_hb_up, i32 noundef 203, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #5, !srcloc !70
  unreachable

do.body21:                                        ; preds = %entry
  %conv22 = zext i8 %node to i32
  %div3.i = lshr i32 %conv22, 5
  %arrayidx.i = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4), i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv22, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool23.not = icmp eq i32 %6, 0
  br i1 %tobool23.not, label %do.end50, label %do.body25

do.body25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #5
  %7 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606863360, ptr %_m26, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.o2quo_hb_up, i32 noundef 204, ptr noundef nonnull @.str.2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #5
  %8 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606863360, ptr %_m34, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.o2quo_hb_up, i32 noundef 204, ptr noundef nonnull @.str.1, i32 noundef %conv22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #5, !srcloc !71
  unreachable

do.end50:                                         ; preds = %do.body21
  tail call void @_set_bit(i32 noundef %conv22, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4)) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #5
  %9 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 16384, ptr %_m55, align 8
  %10 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.o2quo_hb_up, i32 noundef 207, ptr noundef nonnull @.str.3, i32 noundef %conv22, i32 noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #5
  %arrayidx.i88 = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 6), i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i88, align 4
  %13 = and i32 %12, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool67.not = icmp eq i32 %13, 0
  br i1 %tobool67.not, label %if.then68, label %if.else

if.then68:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @o2quo_set_hold(i8 noundef zeroext %node)
  br label %if.end69

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @o2quo_clear_hold(i8 noundef zeroext %node)
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then68
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2quo_set_hold(i8 noundef zeroext %node) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m21 = alloca i64, align 8
  %_m35 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @o2quo_state, align 4
  %0 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !72

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #5, !srcloc !73
  unreachable

do.end7:                                          ; preds = %entry
  %conv = zext i8 %node to i32
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef %conv, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 8)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %do.end7.if.end43_crit_edge

do.end7.if.end43_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then10:                                        ; preds = %do.end7
  %1 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc)
  %cmp = icmp eq i32 %inc, 255
  br i1 %cmp, label %do.body15, label %do.body34

do.body15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606863360, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_set_hold, i32 noundef 169, ptr noundef nonnull @.str.18) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21) #5
  %3 = ptrtoint ptr %_m21 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606863360, ptr %_m21, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21, ptr noundef nonnull @__func__.o2quo_set_hold, i32 noundef 169, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 169, 0\0A.popsection", ""() #5, !srcloc !74
  unreachable

do.body34:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #5
  %4 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 16384, ptr %_m35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.o2quo_set_hold, i32 noundef 170, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %inc) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #5
  br label %if.end43

if.end43:                                         ; preds = %do.body34, %do.end7.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @o2quo_clear_hold(i8 noundef zeroext %node) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m32 = alloca i64, align 8
  %_m39 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr @o2quo_state, align 4
  %0 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !72

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #5, !srcloc !75
  unreachable

do.end7:                                          ; preds = %entry
  %conv = zext i8 %node to i32
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef %conv, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 8)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end7.if.end53_crit_edge, label %do.body11

do.end7.if.end53_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.body11:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 16384, ptr %_m, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  %sub = add i32 %2, -1
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_clear_hold, i32 noundef 179, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %sub) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  %3 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then19, label %do.body11.do.body26_crit_edge

do.body11.do.body26_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

if.then19:                                        ; preds = %do.body11
  %4 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool20.not = icmp eq i32 %4, 0
  br i1 %tobool20.not, label %if.then19.if.end53_crit_edge, label %if.then21

if.then19.if.end53_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  store i32 0, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1)) #5
  %.pr = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  br label %do.body26

do.body26:                                        ; preds = %if.then21, %do.body11.do.body26_crit_edge
  %6 = phi i32 [ %dec, %do.body11.do.body26_crit_edge ], [ %.pr, %if.then21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp28 = icmp slt i32 %6, 0
  br i1 %cmp28, label %do.body31, label %do.body26.if.end53_crit_edge

do.body26.if.end53_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.body31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m32) #5
  %7 = ptrtoint ptr %_m32 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606863360, ptr %_m32, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m32, ptr noundef nonnull @__func__.o2quo_clear_hold, i32 noundef 187, ptr noundef nonnull @.str.19) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m32) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m39) #5
  %8 = ptrtoint ptr %_m39 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606863360, ptr %_m39, align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 7), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m39, ptr noundef nonnull @__func__.o2quo_clear_hold, i32 noundef 187, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m39) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #5, !srcloc !76
  unreachable

if.end53:                                         ; preds = %do.body26.if.end53_crit_edge, %if.then19.if.end53_crit_edge, %do.end7.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_hb_down(i8 noundef zeroext %node) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  %_m27 = alloca i64, align 8
  %_m35 = alloca i64, align 8
  %_m56 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2quo_state) #5
  %0 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %do.body2, label %do.body22

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606863360, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_hb_down, i32 noundef 228, ptr noundef nonnull @.str.4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #5
  %2 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606863360, ptr %_m5, align 8
  %conv = zext i8 %node to i32
  %3 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.o2quo_hb_down, i32 noundef 228, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #5, !srcloc !77
  unreachable

do.body22:                                        ; preds = %entry
  %conv23 = zext i8 %node to i32
  %div3.i = lshr i32 %conv23, 5
  %arrayidx.i = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4), i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv23, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool24.not = icmp eq i32 %7, 0
  br i1 %tobool24.not, label %do.body26, label %do.end51

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #5
  %8 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606863360, ptr %_m27, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.o2quo_hb_down, i32 noundef 229, ptr noundef nonnull @.str.6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #5
  %9 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606863360, ptr %_m35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.o2quo_hb_down, i32 noundef 229, ptr noundef nonnull @.str.1, i32 noundef %conv23) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #5, !srcloc !78
  unreachable

do.end51:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef %conv23, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4)) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56) #5
  %10 = ptrtoint ptr %_m56 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 16384, ptr %_m56, align 8
  %11 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56, ptr noundef nonnull @__func__.o2quo_hb_down, i32 noundef 232, ptr noundef nonnull @.str.3, i32 noundef %conv23, i32 noundef %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56) #5
  call fastcc void @o2quo_clear_hold(i8 noundef zeroext %node)
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_hb_still_up(i8 noundef zeroext %node) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2quo_state) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16384, ptr %_m, align 8
  %conv = zext i8 %node to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_hb_still_up, i32 noundef 250, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  store i32 1, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 2), align 4
  call fastcc void @o2quo_clear_hold(i8 noundef zeroext %node)
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_conn_up(i8 noundef zeroext %node) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m5 = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m34 = alloca i64, align 8
  %_m55 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2quo_state) #5
  %0 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc)
  %cmp = icmp eq i32 %inc, 255
  br i1 %cmp, label %do.body2, label %do.body21

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606863360, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_conn_up, i32 noundef 271, ptr noundef nonnull @.str.7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m5) #5
  %2 = ptrtoint ptr %_m5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606863360, ptr %_m5, align 8
  %conv = zext i8 %node to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m5, ptr noundef nonnull @__func__.o2quo_conn_up, i32 noundef 271, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m5) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 271, 0\0A.popsection", ""() #5, !srcloc !79
  unreachable

do.body21:                                        ; preds = %entry
  %conv22 = zext i8 %node to i32
  %div3.i = lshr i32 %conv22, 5
  %arrayidx.i = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 6), i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv22, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool23.not = icmp eq i32 %6, 0
  br i1 %tobool23.not, label %do.end50, label %do.body25

do.body25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #5
  %7 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606863360, ptr %_m26, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.o2quo_conn_up, i32 noundef 272, ptr noundef nonnull @.str.8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #5
  %8 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606863360, ptr %_m34, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.o2quo_conn_up, i32 noundef 272, ptr noundef nonnull @.str.1, i32 noundef %conv22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 272, 0\0A.popsection", ""() #5, !srcloc !80
  unreachable

do.end50:                                         ; preds = %do.body21
  tail call void @_set_bit(i32 noundef %conv22, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 6)) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #5
  %9 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 16384, ptr %_m55, align 8
  %10 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.o2quo_conn_up, i32 noundef 275, ptr noundef nonnull @.str.3, i32 noundef %conv22, i32 noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #5
  %arrayidx.i88 = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4), i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i88, align 4
  %13 = and i32 %12, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool67.not = icmp eq i32 %13, 0
  br i1 %tobool67.not, label %if.then68, label %if.else

if.then68:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @o2quo_set_hold(i8 noundef zeroext %node)
  br label %if.end69

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @o2quo_clear_hold(i8 noundef zeroext %node)
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then68
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_conn_err(i8 noundef zeroext %node) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m8 = alloca i64, align 8
  %_m37 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2quo_state) #5
  %conv = zext i8 %node to i32
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 6), i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body36_crit_edge, label %if.then

entry.do.body36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

if.then:                                          ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %do.body4, label %do.end25

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606863360, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_conn_err, i32 noundef 299, ptr noundef nonnull @.str.9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m8) #5
  %6 = ptrtoint ptr %_m8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606863360, ptr %_m8, align 8
  %7 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m8, ptr noundef nonnull @__func__.o2quo_conn_err, i32 noundef 299, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m8) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/cluster/quorum.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 299, 0\0A.popsection", ""() #5, !srcloc !81
  unreachable

do.end25:                                         ; preds = %if.then
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 6)) #5
  %arrayidx.i62 = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4), i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i62, align 4
  %10 = and i32 %9, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool32.not = icmp eq i32 %10, 0
  br i1 %tobool32.not, label %do.end25.do.body36_crit_edge, label %if.then33

do.end25.do.body36_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

if.then33:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @o2quo_set_hold(i8 noundef zeroext %node)
  br label %do.body36

do.body36:                                        ; preds = %if.then33, %do.end25.do.body36_crit_edge, %entry.do.body36_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37) #5
  %11 = ptrtoint ptr %_m37 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 16384, ptr %_m37, align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37, ptr noundef nonnull @__func__.o2quo_conn_err, i32 noundef 307, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37) #5
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @o2quo_state, ptr noundef nonnull @.str.11, ptr noundef nonnull @o2quo_init.__key, i16 noundef signext 3) #5
  tail call void @__init_work(ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1), i32 noundef 0) #5
  store i32 -64, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1), align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1, i32 3), ptr noundef nonnull @.str.13, ptr noundef nonnull @o2quo_init.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  store volatile ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1, i32 1, i32 1), align 4
  store ptr @o2quo_make_decision, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1, i32 2), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2quo_make_decision(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m26 = alloca i64, align 8
  %_m43 = alloca i64, align 8
  %_m59 = alloca i64, align 8
  %_m75 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @o2quo_state) #5
  %call = tail call i32 @_find_first_bit_be(ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4), i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp.not = icmp eq i32 %call, 255
  br i1 %cmp.not, label %do.body.thread, label %do.body

do.body.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16384, ptr %_m, align 8
  %1 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  br label %10

do.body:                                          ; preds = %entry
  %div3.i = lshr i32 %call, 5
  %arrayidx.i = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 6), i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %call, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %phi.cmp = icmp eq i32 %6, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #5
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16384, ptr %_m, align 8
  %8 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  br i1 %phi.cmp, label %do.body._crit_edge, label %do.body._crit_edge132

do.body._crit_edge132:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %13

do.body._crit_edge:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %10

10:                                               ; preds = %do.body._crit_edge, %do.body.thread
  %11 = phi i32 [ %2, %do.body.thread ], [ %9, %do.body._crit_edge ]
  %12 = phi i32 [ %1, %do.body.thread ], [ %8, %do.body._crit_edge ]
  br label %13

13:                                               ; preds = %10, %do.body._crit_edge132
  %14 = phi i32 [ %11, %10 ], [ %9, %do.body._crit_edge132 ]
  %15 = phi i32 [ %12, %10 ], [ %8, %do.body._crit_edge132 ]
  %lowest_reachable.0130 = phi i1 [ true, %10 ], [ false, %do.body._crit_edge132 ]
  %16 = phi ptr [ @.str.23, %10 ], [ @.str.22, %do.body._crit_edge132 ]
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.o2quo_make_decision, i32 noundef 104, ptr noundef nonnull @.str.21, i32 noundef %15, i32 noundef %14, i32 noundef %call, ptr noundef nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #5
  %call6 = call zeroext i8 @o2nm_this_node() #5
  %conv = zext i8 %call6 to i32
  %div3.i124 = lshr i32 %conv, 5
  %arrayidx.i125 = getelementptr i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 4), i32 %div3.i124
  %17 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i125, align 4
  %and.i126 = and i32 %conv, 31
  %19 = shl nuw i32 1, %and.i126
  %20 = and i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %.do.body74_crit_edge, label %lor.lhs.false

.do.body74_crit_edge:                             ; preds = %13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

lor.lhs.false:                                    ; preds = %13
  %21 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp12 = icmp eq i32 %21, 1
  br i1 %cmp12, label %lor.lhs.false.do.body74_crit_edge, label %if.end15

lor.lhs.false.do.body74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

if.end15:                                         ; preds = %lor.lhs.false
  %and17 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  %add = add i32 %21, 1
  %div = sdiv i32 %add, 2
  %22 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div)
  %cmp22 = icmp slt i32 %22, %div
  br i1 %cmp22, label %do.body25, label %if.then19.do.body74_crit_edge

if.then19.do.body74_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.body25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m26) #5
  %23 = ptrtoint ptr %_m26 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606863360, ptr %_m26, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m26, ptr noundef nonnull @__func__.o2quo_make_decision, i32 noundef 119, ptr noundef nonnull @.str.24, i32 noundef %22, i32 noundef %div, i32 noundef %21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m26) #5
  br label %if.then71

if.else:                                          ; preds = %if.end15
  %div37 = sdiv i32 %21, 2
  %24 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div37)
  %cmp39 = icmp slt i32 %24, %div37
  br i1 %cmp39, label %do.body42, label %if.else52

do.body42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #5
  %25 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606863360, ptr %_m43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.o2quo_make_decision, i32 noundef 133, ptr noundef nonnull @.str.24, i32 noundef %24, i32 noundef %div37, i32 noundef %21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #5
  br label %if.then71

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div37)
  %cmp54 = icmp eq i32 %24, %div37
  %or.cond = and i1 %cmp54, %lowest_reachable.0130
  br i1 %or.cond, label %do.body58, label %if.else52.do.body74_crit_edge

if.else52.do.body74_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.body58:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m59) #5
  %26 = ptrtoint ptr %_m59 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606863360, ptr %_m59, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m59, ptr noundef nonnull @__func__.o2quo_make_decision, i32 noundef 142, ptr noundef nonnull @.str.25, i32 noundef %div37, i32 noundef %21, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m59) #5
  br label %if.then71

if.then71:                                        ; preds = %do.body58, %do.body42, %do.body25
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  call void @o2hb_stop_all_regions() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @o2nm_single_cluster to i32))
  %27 = load ptr, ptr @o2nm_single_cluster, align 4
  %cl_fence_method.i = getelementptr inbounds %struct.o2nm_cluster, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %cl_fence_method.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cl_fence_method.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %29, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %if.then71.o2quo_fence_self.exit_crit_edge
  ]

if.then71.o2quo_fence_self.exit_crit_edge:        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %o2quo_fence_self.exit

sw.bb.i:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #8
  unreachable

do.end.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 67, i32 noundef 9, ptr noundef null) #5
  br label %o2quo_fence_self.exit

o2quo_fence_self.exit:                            ; preds = %do.end.i, %if.then71.o2quo_fence_self.exit_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  call void @emergency_restart() #5
  br label %if.end87

do.body74:                                        ; preds = %if.else52.do.body74_crit_edge, %if.then19.do.body74_crit_edge, %lor.lhs.false.do.body74_crit_edge, %.do.body74_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m75) #5
  %31 = ptrtoint ptr %_m75 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 2305843009213710336, ptr %_m75, align 8
  %32 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 3), align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 5), align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m75, ptr noundef nonnull @__func__.o2quo_make_decision, i32 noundef 155, ptr noundef nonnull @.str.26, i32 noundef %32, i32 noundef %33, i32 noundef %call, ptr noundef nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m75) #5
  call void @_raw_spin_unlock(ptr noundef nonnull @o2quo_state) #5
  br label %if.end87

if.end87:                                         ; preds = %do.body74, %o2quo_fence_self.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @o2quo_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @flush_work(ptr noundef getelementptr inbounds (%struct.o2quo_state, ptr @o2quo_state, i32 0, i32 1)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_stop_all_regions() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @o2nm_this_node() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !49, !50, !52, !53, !54, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__func__.o2quo_hb_up, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/cluster/quorum.c", i32 202, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/cluster/quorum.c", i32 204, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/cluster/quorum.c", i32 207, i32 2}
!8 = !{ptr @__func__.o2quo_hb_down, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/cluster/quorum.c", i32 226, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/cluster/quorum.c", i32 229, i32 2}
!14 = !{ptr @__func__.o2quo_hb_still_up, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/cluster/quorum.c", i32 250, i32 2}
!16 = !{ptr @__func__.o2quo_conn_up, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/cluster/quorum.c", i32 270, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/cluster/quorum.c", i32 272, i32 2}
!21 = !{ptr @__func__.o2quo_conn_err, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/cluster/quorum.c", i32 297, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @o2quo_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/cluster/quorum.c", i32 317, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @o2quo_init.__key.12, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/cluster/quorum.c", i32 318, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @o2quo_state, !32, !"o2quo_state", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/cluster/quorum.c", i32 50, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/cluster/quorum.c", i32 62, i32 9}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/cluster/quorum.c", i32 66, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/cluster/quorum.c", i32 70, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @o2quo_fence_self._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @o2quo_fence_self._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__func__.o2quo_set_hold, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/cluster/quorum.c", i32 168, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__func__.o2quo_clear_hold, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/cluster/quorum.c", i32 179, i32 3}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/cluster/quorum.c", i32 186, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.o2quo_make_decision, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/cluster/quorum.c", i32 102, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/cluster/quorum.c", i32 115, i32 4}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/cluster/quorum.c", i32 138, i32 4}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/cluster/quorum.c", i32 152, i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2151894876, i64 2151895366, i64 2151894913, i64 2151894969, i64 2151895003, i64 2151895027, i64 2151895068, i64 2151895089, i64 2151895117, i64 2151895151}
!71 = !{i64 2151901293, i64 2151901783, i64 2151901330, i64 2151901386, i64 2151901420, i64 2151901444, i64 2151901485, i64 2151901506, i64 2151901534, i64 2151901568}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2151885177, i64 2151885667, i64 2151885214, i64 2151885270, i64 2151885304, i64 2151885328, i64 2151885369, i64 2151885390, i64 2151885418, i64 2151885452}
!74 = !{i64 2151887637, i64 2151888127, i64 2151887674, i64 2151887730, i64 2151887764, i64 2151887788, i64 2151887829, i64 2151887850, i64 2151887878, i64 2151887912}
!75 = !{i64 2151889772, i64 2151890262, i64 2151889809, i64 2151889865, i64 2151889899, i64 2151889923, i64 2151889964, i64 2151889985, i64 2151890013, i64 2151890047}
!76 = !{i64 2151892520, i64 2151893010, i64 2151892557, i64 2151892613, i64 2151892647, i64 2151892671, i64 2151892712, i64 2151892733, i64 2151892761, i64 2151892795}
!77 = !{i64 2151904070, i64 2151904560, i64 2151904107, i64 2151904163, i64 2151904197, i64 2151904221, i64 2151904262, i64 2151904283, i64 2151904311, i64 2151904345}
!78 = !{i64 2151906430, i64 2151906920, i64 2151906467, i64 2151906523, i64 2151906557, i64 2151906581, i64 2151906622, i64 2151906643, i64 2151906671, i64 2151906705}
!79 = !{i64 2151909390, i64 2151909880, i64 2151909427, i64 2151909483, i64 2151909517, i64 2151909541, i64 2151909582, i64 2151909603, i64 2151909631, i64 2151909665}
!80 = !{i64 2151911752, i64 2151912242, i64 2151911789, i64 2151911845, i64 2151911879, i64 2151911903, i64 2151911944, i64 2151911965, i64 2151911993, i64 2151912027}
!81 = !{i64 2151914523, i64 2151915013, i64 2151914560, i64 2151914616, i64 2151914650, i64 2151914674, i64 2151914715, i64 2151914736, i64 2151914764, i64 2151914798}
