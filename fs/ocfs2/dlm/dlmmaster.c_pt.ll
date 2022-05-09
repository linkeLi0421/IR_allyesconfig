; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmmaster.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmmaster.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.dlm_master_list_entry = type { %struct.hlist_node, %struct.list_head, ptr, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, %struct.kref, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i8, i8, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, [32 x i8], i32, i32 }
%struct.hlist_head = type { ptr }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.anon.3 = type { i32, i32 }
%struct.dlm_bitmap_diff_iter = type { i32, ptr, ptr, [8 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dlm_node_iter = type { [8 x i32], i32 }
%struct.dlm_master_request = type { i8, i8, i16, i32, [64 x i8] }
%struct.o2net_msg = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_work_item = type { %struct.list_head, ptr, ptr, ptr, %union.anon.145 }
%union.anon.145 = type { %struct.dlm_assert_master_priv }
%struct.dlm_assert_master_priv = type { ptr, i8, i32, i8 }
%struct.dlm_assert_master = type { i8, i8, i16, i32, [64 x i8] }
%struct.dlm_deref_lockres = type { i32, i16, i8, i8, [64 x i8] }
%struct.dlm_deref_lockres_done = type { i32, i16, i8, i8, [64 x i8] }
%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.dlm_migrate_request = type { i8, i8, i8, i8, i32, [64 x i8] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"o2dlm_mle\00", [22 x i8] zeroinitializer }, align 32
@dlm_mle_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"o2dlm_lockres\00", [18 x i8] zeroinitializer }, align 32
@dlm_lockres_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"o2dlm_lockname\00", [17 x i8] zeroinitializer }, align 32
@dlm_lockname_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.dlm_lockres_set_refmap_bit = private unnamed_addr constant [27 x i8] c"dlm_lockres_set_refmap_bit\00", align 1
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"res %.*s, set node %u, %ps()\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_lockres_clear_refmap_bit = private unnamed_addr constant [29 x i8] c"dlm_lockres_clear_refmap_bit\00", align 1
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"res %.*s, clr node %u, %ps()\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_lockres_drop_inflight_ref = private unnamed_addr constant [30 x i8] c"dlm_lockres_drop_inflight_ref\00", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: res %.*s, inflight--: now %u, %ps()\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.__dlm_lockres_grab_inflight_worker = private unnamed_addr constant [35 x i8] c"__dlm_lockres_grab_inflight_worker\00", align 1
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%.*s: inflight assert worker++: now %u\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.dlm_get_lock_resource = private unnamed_addr constant [22 x i8] c"dlm_get_lock_resource\00", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get lockres %s (len %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Resource %.*s not on the Tracking list\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allocating a new resource\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no lockres found, allocated our own: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"master entry for nonexistent lock!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%.*s: late on %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIGRATION\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BLOCK\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: res %.*s, At least one node (%d) to recover before lock mastery can begin\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Recovery map is not empty, but must master $RECOVERY lock now\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: waiting 500ms for heartbeat state change\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: res %.*s, Requests only up to %u but master is %u, keep going\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: res %.*s, Node map changed, redo the master request now, blocked=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: res %.*s, Spinning on dlm_wait_for_lock_mastery, blocked = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: res %.*s, Mastered by %u\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_master_request_handler = private unnamed_addr constant [27 x i8] c"dlm_master_request_handler\00", align 1
@.str.23 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"returning DLM_MASTER_RESP_ERROR since res is being recovered/migrated\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lock with no owner should be in-progress!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no mle found for this lock!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"node %u is master, but trying to migrate to node %u.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"no owner on lockres, but this node is trying to migrate it to %u?!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"no lockres, but an mle with this node as master!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"migration mle was found (%u->%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%u is the owner of %.*s, cleaning everyone else\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to dispatch assert master work\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dlm_assert_master_handler = private unnamed_addr constant [26 x i8] c"dlm_assert_master_handler\00", align 1
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid name length!\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"assert_master with flags: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"just got an assert_master from %u, but no MLE for it! (%.*s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"no bits set in the maybe_map, but %u is asserting! (%.*s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"master %u was found, %u should back off\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%u is the lowest node, %u is asserting. (%.*s)  %u must have begun after %u won.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%.*s: got cleanup assert from %u for migration\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%.*s: got unrelated assert from %u for migration, ignoring\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%u asserting but %.*s is RECOVERING!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"DIE! Mastery assert from %u, but current owner is %u! (%.*s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"owner %u re-asserting on lock %.*s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"got assert_master from node %u, but %u is the owner! (%.*s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"got assert from %u, but lock with no owner should be in-progress! (%.*s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"got assert from %u, but new master is %u, and old master was %u (%.*s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"finishing off migration of lockres %.*s, from %u to %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s:%.*s: got assert master from %u that will mess up this node, refs=%d, extra=%d, inuse=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"assert_master from %u, but current owner is %u (%.*s), no mle\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"need to tell master to reassert\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"strange, got assert from %u, MASTER mle present here for %s:%.*s, but no lockres!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%.*s: got assert from %u, need a ref\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"Bad message received from another node.  Dumping state and killing the other node now!  This node is OK and can continue.\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.dlm_dispatch_assert_master = private unnamed_addr constant [27 x i8] c"dlm_dispatch_assert_master\00", align 1
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IGNORE HIGHER: %.*s\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dlm_drop_lockres_ref = private unnamed_addr constant [21 x i8] c"dlm_drop_lockres_ref\00", align 1
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: res %.*s, error %d send DEREF to node %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: res %.*s, DEREF to node %u got %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dlm_deref_lockres_handler = private unnamed_addr constant [26 x i8] c"dlm_deref_lockres_handler\00", align 1
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid node number: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%.*s: bad lockres name\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%.*s: node %u trying to drop ref but it is already dropped!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.dlm_deref_lockres_done_handler = private unnamed_addr constant [31 x i8] c"dlm_deref_lockres_done_handler\00", align 1
@.str.59 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%.*s: node %u sends deref done but it is already derefed!\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_empty_lockres = private unnamed_addr constant [18 x i8] c"dlm_empty_lockres\00", align 1
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: res %.*s, Migrate to node %u failed with %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.dlm_migrate_request_handler = private unnamed_addr constant [28 x i8] c"dlm_migrate_request_handler\00", align 1
@.str.61 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Got a migrate request, but the lockres is marked as recovering!\00", [32 x i8] zeroinitializer }, align 32
@__func__.dlm_clean_master_list = private unnamed_addr constant [22 x i8] c"dlm_clean_master_list\00", align 1
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlm=%s, dead node=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s: target %u died during migration from %u, the MLE is still keep used, ignore it!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: node %u died during migration from %u to %u!\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.dlm_finish_migration = private unnamed_addr constant [21 x i8] c"dlm_finish_migration\00", align 1
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"now time to do a migrate request to other nodes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"doing assert master of %.*s to all except the original node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"doing assert master of %.*s back to %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"assert master to original master failed with %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.dlm_force_free_mles = private unnamed_addr constant [20 x i8] c"dlm_force_free_mles\00", align 1
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad mle: %p\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.dlm_mle_node_down = private unnamed_addr constant [18 x i8] c"dlm_mle_node_down\00", align 1
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"node %u already removed from nodemap!\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dlm_mle_node_up = private unnamed_addr constant [16 x i8] c"dlm_mle_node_up\00", align 1
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"node %u already in node map!\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.dlm_lockres_release = private unnamed_addr constant [20 x i8] c"dlm_lockres_release\00", align 1
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"destroying lockres %.*s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Going to BUG for resource %.*s.  We're on a list! [%c%c%c%c%c%c%c]\0A\00", [60 x i8] zeroinitializer }, align 32
@dlm_init_lockres.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&res->wq\00", [23 x i8] zeroinitializer }, align 32
@dlm_init_lockres.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&res->spinlock\00", [17 x i8] zeroinitializer }, align 32
@__func__.__dlm_lockres_grab_inflight_ref = private unnamed_addr constant [32 x i8] c"__dlm_lockres_grab_inflight_ref\00", align 1
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: res %.*s, inflight++: now %u, %ps()\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_init_mle.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mle->spinlock\00", [17 x i8] zeroinitializer }, align 32
@dlm_init_mle.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&mle->wq\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"$RECOVERY\00", [22 x i8] zeroinitializer }, align 32
@__func__.dlm_wait_for_lock_mastery = private unnamed_addr constant [26 x i8] c"dlm_wait_for_lock_mastery\00", align 1
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%.*s: owner is suddenly %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"link to %u went down?: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %.*s: node map changed, restarting\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%.*s: status change: old=%d new=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%.*s: restart lock mastery succeeded, rechecking now\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"map not changed and voting not done for %s:%.*s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ocfs2/dlm/dlmmaster.c\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%.*s: waiting again\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"done waiting, master is %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"about to master %.*s here, this=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.dlm_restart_lock_mastery = private unnamed_addr constant [25 x i8] c"dlm_restart_lock_mastery\00", align 1
@.str.92 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"something happened such that the master process may need to be restarted!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"node %d up while restarting\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sending request to new node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"node down! %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"expected master %u died while this node was blocked waiting on it!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%.*s:still blocked. waiting on %u now\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%.*s: no longer blocking. try to master this here\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.dlm_do_master_request = private unnamed_addr constant [22 x i8] c"dlm_do_master_request\00", align 1
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCP stack not ready!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad args passed to o2net!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"out of memory while trying to send network message!  retrying\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unhandled error!\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link to %d went down!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"node %u is the master, response=YES\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%.*s: master node %u now knows I have a reference\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"node %u not master, response=NO\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"node %u not master, response=MAYBE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"node %u hit an error, resending\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad response! %u\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.__dlm_put_mle = private unnamed_addr constant [14 x i8] c"__dlm_put_mle\00", align 1
@__func__.dlm_mle_release = private unnamed_addr constant [16 x i8] c"dlm_mle_release\00", align 1
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Releasing mle for %.*s, type %d\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dlm_assert_master_worker = private unnamed_addr constant [25 x i8] c"dlm_assert_master_worker\00", align 1
@.str.111 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"Someone asked us to assert mastery, but we're in the middle of migration.  Skipping assert, the new master will handle that.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"worker about to master %.*s here, this=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"finished with dlm_assert_master_worker\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.__dlm_lockres_drop_inflight_worker = private unnamed_addr constant [35 x i8] c"__dlm_lockres_drop_inflight_worker\00", align 1
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%.*s: inflight assert worker--: now %u\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.dlm_pre_master_reco_lockres = private unnamed_addr constant [28 x i8] c"dlm_pre_master_reco_lockres\00", align 1
@.str.115 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"%s: node %u has not seen node %u go down yet, and thinks the dead node is mastering the recovery lock.  must wait.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: reco lock master is %u\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.dlm_deref_lockres_worker = private unnamed_addr constant [25 x i8] c"dlm_deref_lockres_worker\00", align 1
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%.*s node %u ref dropped in dispatch\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.dlm_drop_lockres_ref_done = private unnamed_addr constant [26 x i8] c"dlm_drop_lockres_ref_done\00", align 1
@.str.118 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: res %.*s, error %d send DEREF DONE  to node %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.dlm_is_lockres_migratable = private unnamed_addr constant [26 x i8] c"dlm_is_lockres_migratable\00", align 1
@.str.119 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Not migratable res %.*s, lock %u:%llu on %s list\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: res %.*s, Migratable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"granted\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"converting\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blocked\00", [24 x i8] zeroinitializer }, align 32
@__func__.dlm_migrate_lockres = private unnamed_addr constant [20 x i8] c"dlm_migrate_lockres\00", align 1
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Migrating %.*s to node %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"another process is already migrating it\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"tried to migrate %.*s to %u, but the target went down.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"migration to node %u failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%.*s: timed out during migration\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%.*s: expected migration target %u is no longer up, restarting\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%.*s: caught signal during migration\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Migrating %.*s to %u, returns %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.dlm_mark_lockres_migrating = private unnamed_addr constant [27 x i8] c"dlm_mark_lockres_migrating\00", align 1
@.str.133 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dlm_mark_lockres_migrating: %.*s, from %u to %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"about to wait on migration_wq, dirty=%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"woken again: migrating? %s, dead? %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"all is well: migrating? %s, dead? %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trying again...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"aha. migration target %u just went down\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.dlm_remove_nonlocal_locks = private unnamed_addr constant [26 x i8] c"dlm_remove_nonlocal_locks\00", align 1
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"putting lock for node %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%.*s: node %u had a ref to this migrating lockres, clearing\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.dlm_add_migration_mle = private unnamed_addr constant [22 x i8] c"dlm_add_migration_mle\00", align 1
@.str.143 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tried to migrate %.*s, but some process beat me to it\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"migration error  mle: master=%u new_master=%u // request: master=%u new_master=%u // lockres=%.*s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s:%.*s: master=%u, newmaster=%u, telling master to get ref for cleared out mle during migration\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.dlm_clean_block_mle = private unnamed_addr constant [20 x i8] c"dlm_clean_block_mle\00", align 1
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mle found, but dead node %u would not have been master\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"node %u was expected master\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.dlm_do_migrate_request = private unnamed_addr constant [23 x i8] c"dlm_do_migrate_request\00", align 1
@.str.148 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: res %.*s, Error %d send MIGRATE_REQUEST to node %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unhandled error=%d!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"migrate request (node %u) returned %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%.*s: need ref for node %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"returning ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.dlm_do_assert_master = private unnamed_addr constant [21 x i8] c"dlm_do_assert_master\00", align 1
@.str.153 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sending assert master to %d (%.*s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"during assert master of %.*s to %u, got %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s: very strange, master MLE but no lockres on %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%.*s: node %u create mles on other nodes and requests a re-assert\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s: node %u has a reference to this lockres, set the bit in the refmap\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 4294967183, i64 4294967184, i64 4294967185, i64 4294967186, i64 4294967188, i64 4294967189, i64 4294967192, i64 4294967193, i64 4294967194, i64 4294967195, i64 4294967196, i64 4294967204, i64 4294967264, i64 4294967274, i64 4294967287]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.162 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 4294967274, i64 4294967284, i64 4294967293]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.172 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 389, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"dlm_mle_cache\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 70, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 437, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"dlm_lockres_cache\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 68, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 443, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"dlm_lockname_cache\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 69, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 606, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 617, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 649, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 661, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 720, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 771, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 784, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 795, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 818, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 834, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 866, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 898, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 903, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 938, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 947, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 958, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 962, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 973, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1455, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1491, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1500, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1510, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1513, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1585, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1591, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1615, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1621, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1781, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1788, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1794, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1802, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1807, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1814, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1823, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1828, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1847, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1854, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1865, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1870, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1877, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1887, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1931, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1966, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1985, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2002, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2006, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2014, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2021, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2068, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2234, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2238, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2276, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2286, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2308, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2387, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2782, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3135, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3335, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3378, i32 5 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3390, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3430, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3438, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3452, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3457, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3551, i32 5 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 365, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 379, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 476, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 488, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 539, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 540, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 628, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 262, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 263, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 80, i32 24 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1018, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1027, i32 5 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1047, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1052, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1062, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1068, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1104, i32 9 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1108, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1112, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1120, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1216, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1228, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1231, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1235, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1244, i32 6 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1251, i32 7 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1266, i32 7 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1327, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1330, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1333, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1341, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1346, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1356, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1357, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1363, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1367, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1372, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1377, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 414, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2124, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2135, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2152, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 672, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2195, i32 5 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2203, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2462, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2428, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2513, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2529, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 378, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 380, i32 10 }
@___asan_gen_.559 = private unnamed_addr constant [28 x i8] c"../fs/ocfs2/dlm/dlmcommon.h\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 382, i32 10 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2558, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2595, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2605, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2652, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2690, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2695, i32 5 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2711, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2745, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2836, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2861, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2871, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2875, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2880, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2888, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2936, i32 5 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2962, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3202, i32 5 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3209, i32 5 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3228, i32 5 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3308, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3316, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3058, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3062, i32 5 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3068, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3075, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3087, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1677, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1688, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1702, i32 4 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1718, i32 5 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1724, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.661 = private constant [28 x i8] c"../fs/ocfs2/dlm/dlmmaster.c\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1730, i32 4 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @.str, ptr @dlm_mle_cache, ptr @.str.1, ptr @dlm_lockres_cache, ptr @.str.2, ptr @dlm_lockname_cache, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @dlm_init_lockres.__key, ptr @.str.74, ptr @dlm_init_lockres.__key.75, ptr @.str.76, ptr @.str.77, ptr @dlm_init_mle.__key, ptr @.str.78, ptr @dlm_init_mle.__key.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158], section "llvm.metadata"
@0 = internal global [163 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_mle_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lockres_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lockname_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_init_lockres.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_init_lockres.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_init_mle.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_init_mle.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_is_host_down(i32 noundef %errno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %errno to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %errno, label %sw.epilog [
    i32 -9, label %entry.return_crit_edge
    i32 -111, label %entry.return_crit_edge1
    i32 -107, label %entry.return_crit_edge2
    i32 -104, label %entry.return_crit_edge3
    i32 -32, label %entry.return_crit_edge4
    i32 -112, label %entry.return_crit_edge5
    i32 -113, label %entry.return_crit_edge6
    i32 -110, label %entry.return_crit_edge7
    i32 -103, label %entry.return_crit_edge8
    i32 -100, label %entry.return_crit_edge9
    i32 -101, label %entry.return_crit_edge10
    i32 -102, label %entry.return_crit_edge11
    i32 -108, label %entry.return_crit_edge12
    i32 -92, label %entry.return_crit_edge13
    i32 -22, label %entry.return_crit_edge14
  ]

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ], [ 1, %entry.return_crit_edge5 ], [ 1, %entry.return_crit_edge6 ], [ 1, %entry.return_crit_edge7 ], [ 1, %entry.return_crit_edge8 ], [ 1, %entry.return_crit_edge9 ], [ 1, %entry.return_crit_edge10 ], [ 1, %entry.return_crit_edge11 ], [ 1, %entry.return_crit_edge12 ], [ 1, %entry.return_crit_edge13 ], [ 1, %entry.return_crit_edge14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_unlink_mle(ptr noundef %dlm, ptr nocapture noundef %mle) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i34 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.body8:                                         ; preds = %entry
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34)
  %2 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i35 = load volatile i32, ptr %master_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i34 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i35, ptr %agg.tmp.sroa.0.i34, align 4
  %lock.sroa.0.0.extract.shift.i.i36 = lshr i32 %agg.tmp.sroa.0.0.copyload.i35, 16
  %conv.i.i37 = and i32 %agg.tmp.sroa.0.0.copyload.i35, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i37, i32 %lock.sroa.0.0.extract.shift.i.i36)
  %cmp.i.i38.not = icmp eq i32 %conv.i.i37, %lock.sroa.0.0.extract.shift.i.i36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34)
  br i1 %cmp.i.i38.not, label %do.body21, label %do.end26, !prof !371

do.body21:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.end26:                                         ; preds = %do.body8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %mle, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end26.if.end31_crit_edge, label %if.then.i

do.end26.if.end31_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then.i:                                        ; preds = %do.end26
  %6 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mle, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i3.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %10 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mle, align 4
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %__hlist_del.exit.i, %do.end26.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_insert_mle(ptr noundef %dlm, ptr noundef %mle) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %master_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #10, !srcloc !374
  unreachable

do.end9:                                          ; preds = %entry
  %mnamehash = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 20
  %2 = ptrtoint ptr %mnamehash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnamehash, align 4
  %master_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  %4 = ptrtoint ptr %master_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_hash.i, align 4
  %div3.i = lshr i32 %3, 10
  %rem.i = and i32 %div3.i, 31
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %rem.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %3, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %7, i32 %rem1.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %mle, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end9.hlist_add_head.exit_crit_edge, label %do.body12.i

do.end9.hlist_add_head.exit_crit_edge:            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mle, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %do.end9.hlist_add_head.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %mle, ptr %add.ptr.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %mle, i32 0, i32 1
  %13 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %add.ptr.i, ptr %pprev34.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_hb_event_notify_attached(ptr noundef %dlm, i32 noundef %idx, i32 noundef %node_up) local_unnamed_addr #1 align 64 {
entry:
  %_m.i29 = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #10, !srcloc !375
  unreachable

do.end9:                                          ; preds = %entry
  %mle_hb_events = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 24
  %2 = ptrtoint ptr %mle_hb_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn38 = load ptr, ptr %mle_hb_events, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %mle_hb_events
  br i1 %cmp.not39, label %do.end9.for.end_crit_edge, label %for.body.lr.ph

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %node_up)
  %tobool13.not = icmp eq i32 %node_up, 0
  %div3.i.i = lshr i32 %idx, 5
  %and.i.i = and i32 %idx, 31
  %3 = shl nuw i32 1, %and.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn40 = phi ptr [ %.pn38, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %spinlock.i30 = getelementptr i8, ptr %.pn40, i32 12
  call void @_raw_spin_lock(ptr noundef %spinlock.i30) #10
  %node_map.i31 = getelementptr i8, ptr %.pn40, i32 216
  %arrayidx.i.i33 = getelementptr i32, ptr %node_map.i31, i32 %div3.i.i
  %4 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i33, align 4
  %6 = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i35 = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body
  br i1 %tobool.not.i35, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %7 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 576, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_mle_node_up, i32 noundef 379, ptr noundef nonnull @.str.71, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %for.inc

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef %idx, ptr noundef %node_map.i31) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool.not.i35, label %do.body.i36, label %if.else.i37

do.body.i36:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i29) #10
  %8 = ptrtoint ptr %_m.i29 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 576, ptr %_m.i29, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i29, ptr noundef nonnull @__func__.dlm_mle_node_down, i32 noundef 365, ptr noundef nonnull @.str.70, i32 noundef %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i29) #10
  br label %for.inc

if.else.i37:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef %idx, ptr noundef %node_map.i31) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else.i37, %do.body.i36, %if.else.i, %do.body.i
  call void @_raw_spin_unlock(ptr noundef %spinlock.i30) #10
  %9 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %mle_hb_events
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end9.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_init_mle_cache() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @dlm_mle_cache, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_destroy_mle_cache() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_mle_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_init_master_caches() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @dlm_lockres_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.bail_crit_edge, label %if.end

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call1, ptr @dlm_lockname_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.bail_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

bail:                                             ; preds = %if.end.bail_crit_edge, %entry.bail_crit_edge
  %0 = load ptr, ptr @dlm_lockname_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  store ptr null, ptr @dlm_lockname_cache, align 4
  %1 = load ptr, ptr @dlm_lockres_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  store ptr null, ptr @dlm_lockres_cache, align 4
  br label %return

return:                                           ; preds = %bail, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -12, %bail ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_destroy_master_caches() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_lockname_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  store ptr null, ptr @dlm_lockname_cache, align 4
  %1 = load ptr, ptr @dlm_lockres_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  store ptr null, ptr @dlm_lockres_cache, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_put(ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m40.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !376
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !377
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !378

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !379
  %lockname.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.body11.i, !prof !371

do.body5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 474, 0\0A.popsection", ""() #10, !srcloc !380
  unreachable

do.body11.i:                                      ; preds = %if.then.i
  %dlm1.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 11
  %3 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlm1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %5 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 576, ptr %_m.i, align 8
  %6 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lockname.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_lockres_release, i32 noundef 477, ptr noundef nonnull @.str.72, i32 noundef %7, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %res_cur_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %4, i32 0, i32 28
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res_cur_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %res_cur_count.i, i32 1, i32 3, i32 1) #10
  %8 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %res_cur_count.i, ptr %res_cur_count.i, i32 1, ptr elementtype(i32) %res_cur_count.i) #10, !srcloc !381
  %pprev.i.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %lor.lhs.false.i, label %do.body11.i.do.body39.i_crit_edge

do.body11.i.do.body39.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false.i:                                  ; preds = %do.body11.i
  %granted.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %11 = ptrtoint ptr %granted.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %granted.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %granted.i
  br i1 %cmp.i.not.i, label %lor.lhs.false23.i, label %lor.lhs.false.i.do.body39.i_crit_edge

lor.lhs.false.i.do.body39.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false.i
  %converting.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %13 = ptrtoint ptr %converting.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %converting.i, align 4
  %cmp.i278.not.i = icmp eq ptr %14, %converting.i
  br i1 %cmp.i278.not.i, label %lor.lhs.false26.i, label %lor.lhs.false23.i.do.body39.i_crit_edge

lor.lhs.false23.i.do.body39.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false23.i
  %blocked.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %15 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %blocked.i, align 4
  %cmp.i280.not.i = icmp eq ptr %16, %blocked.i
  br i1 %cmp.i280.not.i, label %lor.lhs.false29.i, label %lor.lhs.false26.i.do.body39.i_crit_edge

lor.lhs.false26.i.do.body39.i_crit_edge:          ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false26.i
  %dirty.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %17 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %dirty.i, align 4
  %cmp.i282.not.i = icmp eq ptr %18, %dirty.i
  br i1 %cmp.i282.not.i, label %lor.lhs.false32.i, label %lor.lhs.false29.i.do.body39.i_crit_edge

lor.lhs.false29.i.do.body39.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false32.i:                                ; preds = %lor.lhs.false29.i
  %recovering.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %19 = ptrtoint ptr %recovering.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %recovering.i, align 4
  %cmp.i284.not.i = icmp eq ptr %20, %recovering.i
  br i1 %cmp.i284.not.i, label %lor.lhs.false35.i, label %lor.lhs.false32.i.do.body39.i_crit_edge

lor.lhs.false32.i.do.body39.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false35.i:                                ; preds = %lor.lhs.false32.i
  %purge.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %21 = ptrtoint ptr %purge.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %purge.i, align 4
  %cmp.i286.not.i = icmp eq ptr %22, %purge.i
  br i1 %cmp.i286.not.i, label %lor.lhs.false35.i.do.body93.i_crit_edge, label %lor.lhs.false35.i.do.body39.i_crit_edge

lor.lhs.false35.i.do.body39.i_crit_edge:          ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

lor.lhs.false35.i.do.body93.i_crit_edge:          ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body93.i

do.body39.i:                                      ; preds = %lor.lhs.false35.i.do.body39.i_crit_edge, %lor.lhs.false32.i.do.body39.i_crit_edge, %lor.lhs.false29.i.do.body39.i_crit_edge, %lor.lhs.false26.i.do.body39.i_crit_edge, %lor.lhs.false23.i.do.body39.i_crit_edge, %lor.lhs.false.i.do.body39.i_crit_edge, %do.body11.i.do.body39.i_crit_edge
  %cond.i = phi i32 [ 72, %do.body11.i.do.body39.i_crit_edge ], [ 32, %lor.lhs.false.i.do.body39.i_crit_edge ], [ 32, %lor.lhs.false23.i.do.body39.i_crit_edge ], [ 32, %lor.lhs.false26.i.do.body39.i_crit_edge ], [ 32, %lor.lhs.false29.i.do.body39.i_crit_edge ], [ 32, %lor.lhs.false32.i.do.body39.i_crit_edge ], [ 32, %lor.lhs.false35.i.do.body39.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i) #10
  %23 = ptrtoint ptr %_m40.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606847552, ptr %_m40.i, align 8
  %24 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lockname.i, align 8
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 8
  %granted53.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %28 = ptrtoint ptr %granted53.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %granted53.i, align 4
  %cmp.i291.not.i = icmp eq ptr %29, %granted53.i
  %cond58.i = select i1 %cmp.i291.not.i, i32 32, i32 71
  %converting59.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %30 = ptrtoint ptr %converting59.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %converting59.i, align 4
  %cmp.i293.not.i = icmp eq ptr %31, %converting59.i
  %cond64.i = select i1 %cmp.i293.not.i, i32 32, i32 67
  %blocked65.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %32 = ptrtoint ptr %blocked65.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %blocked65.i, align 4
  %cmp.i295.not.i = icmp eq ptr %33, %blocked65.i
  %cond70.i = select i1 %cmp.i295.not.i, i32 32, i32 66
  %dirty71.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %34 = ptrtoint ptr %dirty71.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %dirty71.i, align 4
  %cmp.i297.not.i = icmp eq ptr %35, %dirty71.i
  %cond76.i = select i1 %cmp.i297.not.i, i32 32, i32 68
  %recovering77.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %36 = ptrtoint ptr %recovering77.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %recovering77.i, align 4
  %cmp.i299.not.i = icmp eq ptr %37, %recovering77.i
  %cond82.i = select i1 %cmp.i299.not.i, i32 32, i32 82
  %purge83.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %38 = ptrtoint ptr %purge83.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %purge83.i, align 4
  %cmp.i301.not.i = icmp eq ptr %39, %purge83.i
  %cond88.i = select i1 %cmp.i301.not.i, i32 32, i32 80
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i, ptr noundef nonnull @__func__.dlm_lockres_release, i32 noundef 498, ptr noundef nonnull @.str.73, i32 noundef %25, ptr noundef %27, i32 noundef %cond.i, i32 noundef %cond58.i, i32 noundef %cond64.i, i32 noundef %cond70.i, i32 noundef %cond76.i, i32 noundef %cond82.i, i32 noundef %cond88.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i) #10
  call void @dlm_print_one_lock_resource(ptr noundef %res) #10
  br label %do.body93.i

do.body93.i:                                      ; preds = %do.body39.i, %lor.lhs.false35.i.do.body93.i_crit_edge
  %40 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i304.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i304.not.i, label %do.body115.i, label %do.body106.i, !prof !378

do.body106.i:                                     ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #10, !srcloc !382
  unreachable

do.body115.i:                                     ; preds = %do.body93.i
  %granted116.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %42 = ptrtoint ptr %granted116.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %granted116.i, align 4
  %cmp.i306.not.i = icmp eq ptr %43, %granted116.i
  br i1 %cmp.i306.not.i, label %do.body137.i, label %do.body128.i, !prof !378

do.body128.i:                                     ; preds = %do.body115.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #10, !srcloc !383
  unreachable

do.body137.i:                                     ; preds = %do.body115.i
  %converting138.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %44 = ptrtoint ptr %converting138.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %converting138.i, align 4
  %cmp.i308.not.i = icmp eq ptr %45, %converting138.i
  br i1 %cmp.i308.not.i, label %do.body159.i, label %do.body150.i, !prof !378

do.body150.i:                                     ; preds = %do.body137.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 507, 0\0A.popsection", ""() #10, !srcloc !384
  unreachable

do.body159.i:                                     ; preds = %do.body137.i
  %blocked160.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %46 = ptrtoint ptr %blocked160.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %blocked160.i, align 4
  %cmp.i310.not.i = icmp eq ptr %47, %blocked160.i
  br i1 %cmp.i310.not.i, label %do.body181.i, label %do.body172.i, !prof !378

do.body172.i:                                     ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #10, !srcloc !385
  unreachable

do.body181.i:                                     ; preds = %do.body159.i
  %dirty182.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %48 = ptrtoint ptr %dirty182.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %dirty182.i, align 4
  %cmp.i312.not.i = icmp eq ptr %49, %dirty182.i
  br i1 %cmp.i312.not.i, label %do.body203.i, label %do.body194.i, !prof !378

do.body194.i:                                     ; preds = %do.body181.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #10, !srcloc !386
  unreachable

do.body203.i:                                     ; preds = %do.body181.i
  %recovering204.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %50 = ptrtoint ptr %recovering204.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %recovering204.i, align 4
  %cmp.i314.not.i = icmp eq ptr %51, %recovering204.i
  br i1 %cmp.i314.not.i, label %do.body225.i, label %do.body216.i, !prof !378

do.body216.i:                                     ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #10, !srcloc !387
  unreachable

do.body225.i:                                     ; preds = %do.body203.i
  %purge226.i = getelementptr %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %52 = ptrtoint ptr %purge226.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %purge226.i, align 4
  %cmp.i316.not.i = icmp eq ptr %53, %purge226.i
  br i1 %cmp.i316.not.i, label %dlm_lockres_release.exit, label %do.body238.i, !prof !378

do.body238.i:                                     ; preds = %do.body225.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 511, 0\0A.popsection", ""() #10, !srcloc !388
  unreachable

dlm_lockres_release.exit:                         ; preds = %do.body225.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = load ptr, ptr @dlm_lockname_cache, align 4
  %55 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i, align 8
  call void @kmem_cache_free(ptr noundef %54, ptr noundef %56) #10
  %57 = load ptr, ptr @dlm_lockres_cache, align 4
  call void @kmem_cache_free(ptr noundef %57, ptr noundef %res) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dlm_lockres_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_new_lockres(ptr noundef %dlm, ptr noundef %name, i32 noundef %namelen) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_lockres_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @dlm_lockname_cache, align 4
  %call.i17 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3392) #10
  %name2 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i17, ptr %name2, align 8
  %tobool5.not = icmp eq ptr %call.i17, null
  br i1 %tobool5.not, label %if.then9.critedge, label %if.end7

if.end7:                                          ; preds = %if.end
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %call.i17, ptr %name, i32 %namelen)
  %4 = ptrtoint ptr %lockname.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %namelen, ptr %lockname.i, align 8
  %call.i18 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name, i32 noundef %namelen) #13
  %hash.i = getelementptr inbounds %struct.anon.3, ptr %lockname.i, i32 0, i32 1
  %5 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i18, ptr %hash.i, align 4
  %wq.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @dlm_init_lockres.__key) #10
  %spinlock.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @dlm_init_lockres.__key.75, i16 noundef signext 3) #10
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i, align 4
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %granted.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %granted.i, ptr %granted.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %granted.i, ptr %prev.i.i, align 8
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %converting.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %converting.i, ptr %converting.i, align 4
  %prev.i51.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i51.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %converting.i, ptr %prev.i51.i, align 8
  %blocked.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %blocked.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %blocked.i, ptr %blocked.i, align 4
  %prev.i52.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %blocked.i, ptr %prev.i52.i, align 8
  %dirty.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %dirty.i, ptr %dirty.i, align 4
  %prev.i53.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev.i53.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dirty.i, ptr %prev.i53.i, align 8
  %recovering.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %recovering.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %recovering.i, ptr %recovering.i, align 4
  %prev.i54.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %recovering.i, ptr %prev.i54.i, align 8
  %purge.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %purge.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %purge.i, ptr %purge.i, align 4
  %prev.i55.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev.i55.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %purge.i, ptr %prev.i55.i, align 8
  %tracking.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %tracking.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %tracking.i, ptr %tracking.i, align 4
  %prev.i56.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i56.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tracking.i, ptr %prev.i56.i, align 8
  %asts_reserved.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %asts_reserved.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %asts_reserved.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %asts_reserved.i, align 8
  %migration_pending.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 12
  %23 = ptrtoint ptr %migration_pending.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %migration_pending.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %migration_pending.i, align 4
  %inflight_locks.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %inflight_locks.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %inflight_locks.i, align 8
  %inflight_assert_workers.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %inflight_assert_workers.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %inflight_assert_workers.i, align 4
  %dlm8.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %dlm8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dlm, ptr %dlm8.i, align 8
  %refs.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  %27 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %refs.i, align 8
  %res_tot_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 27
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res_tot_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %res_tot_count.i, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %res_tot_count.i, ptr %res_tot_count.i, i32 1, ptr elementtype(i32) %res_tot_count.i) #10, !srcloc !389
  %res_cur_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 28
  %call.i.i50.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res_cur_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %res_cur_count.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %res_cur_count.i, ptr %res_cur_count.i, i32 1, ptr elementtype(i32) %res_cur_count.i) #10, !srcloc !389
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %30 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock.i, align 4
  %31 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_set_lockres_owner.exit.i, !prof !371

do.body4.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %if.end7
  %owner8.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 16
  %32 = ptrtoint ptr %owner8.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %owner8.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 17
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 16, ptr %state.i, align 2
  %last_used.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %last_used.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %last_used.i, align 4
  %track_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %track_lock.i) #10
  %tracking_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 6
  %prev.i57.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i57.i, align 4
  %call.i.i58.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tracking.i, ptr noundef %36, ptr noundef %tracking_list.i) #10
  br i1 %call.i.i58.i, label %if.end.i.i.i, label %dlm_set_lockres_owner.exit.i.dlm_init_lockres.exit_crit_edge

dlm_set_lockres_owner.exit.i.dlm_init_lockres.exit_crit_edge: ; preds = %dlm_set_lockres_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_init_lockres.exit

if.end.i.i.i:                                     ; preds = %dlm_set_lockres_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tracking.i, ptr %prev.i57.i, align 4
  %38 = ptrtoint ptr %tracking.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tracking_list.i, ptr %tracking.i, align 4
  %39 = ptrtoint ptr %prev.i56.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i56.i, align 8
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %tracking.i, ptr %36, align 4
  br label %dlm_init_lockres.exit

dlm_init_lockres.exit:                            ; preds = %if.end.i.i.i, %dlm_set_lockres_owner.exit.i.dlm_init_lockres.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %track_lock.i) #10
  %lvb.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 18
  %41 = call ptr @memset(ptr %lvb.i, i32 0, i32 64)
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i, i32 0, i32 21
  %42 = call ptr @memset(ptr %refmap.i, i32 0, i32 32)
  br label %cleanup

if.then9.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %43 = load ptr, ptr @dlm_lockres_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9.critedge, %dlm_init_lockres.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %dlm_init_lockres.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then9.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_set_refmap_bit(ptr nocapture readnone %dlm, ptr noundef %res, i32 noundef %bit) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #10, !srcloc !391
  unreachable

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 576, ptr %_m, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %3 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_lockres_set_refmap_bit, i32 noundef 607, ptr noundef nonnull @.str.3, i32 noundef %4, ptr noundef %6, i32 noundef %bit, ptr noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %refmap = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  call void @_set_bit(i32 noundef %bit, ptr noundef %refmap) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_clear_refmap_bit(ptr nocapture readnone %dlm, ptr noundef %res, i32 noundef %bit) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 615, 0\0A.popsection", ""() #10, !srcloc !392
  unreachable

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 576, ptr %_m, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %3 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_lockres_clear_refmap_bit, i32 noundef 618, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef %6, i32 noundef %bit, ptr noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %refmap = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  call void @_clear_bit(i32 noundef %bit, ptr noundef %refmap) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_grab_inflight_ref(ptr nocapture noundef readonly %dlm, ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 636, 0\0A.popsection", ""() #10, !srcloc !393
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inflight_locks.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 19
  %2 = ptrtoint ptr %inflight_locks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inflight_locks.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %inflight_locks.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %4 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 576, ptr %_m.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %7 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lockname.i, align 8
  %name2.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name2.i, align 8
  %11 = tail call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.__dlm_lockres_grab_inflight_ref, i32 noundef 630, ptr noundef nonnull @.str.77, ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %inc.i, ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_drop_inflight_ref(ptr nocapture noundef readonly %dlm, ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #10, !srcloc !394
  unreachable

do.body8:                                         ; preds = %entry
  %inflight_locks = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 19
  %2 = ptrtoint ptr %inflight_locks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inflight_locks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body16, label %do.end21, !prof !371

do.body16:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #10, !srcloc !395
  unreachable

do.end21:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %inflight_locks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %inflight_locks, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 576, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %8 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lockname, align 8
  %name27 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name27, align 8
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_lockres_drop_inflight_ref, i32 noundef 651, ptr noundef nonnull @.str.5, ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %dec, ptr noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_lockres_grab_inflight_worker(ptr nocapture noundef readonly %dlm, ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 659, 0\0A.popsection", ""() #10, !srcloc !396
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inflight_assert_workers = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 20
  %2 = ptrtoint ptr %inflight_assert_workers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inflight_assert_workers, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %inflight_assert_workers, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 576, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %7 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lockname, align 8
  %name12 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name12, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_lockres_grab_inflight_worker, i32 noundef 663, ptr noundef nonnull @.str.6, ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %inc) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_get_lock_resource(ptr noundef %dlm, ptr noundef %lockid, i32 noundef %namelen, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i418.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i625 = alloca i32, align 4
  %bdi.i.i = alloca %struct.dlm_bitmap_diff_iter, align 4
  %_m.i.i626 = alloca i64, align 8
  %_m21.i.i = alloca i64, align 8
  %_m29.i.i = alloca i64, align 8
  %_m40.i.i = alloca i64, align 8
  %_m56.i.i = alloca i64, align 8
  %_m69.i.i = alloca i64, align 8
  %_m80.i.i = alloca i64, align 8
  %_m.i627 = alloca i64, align 8
  %_m20.i = alloca i64, align 8
  %_m47.i = alloca i64, align 8
  %_m69.i = alloca i64, align 8
  %_m102.i = alloca i64, align 8
  %_m113.i = alloca i64, align 8
  %_m128.i = alloca i64, align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %_m227.i = alloca i64, align 8
  %_m241.i = alloca i64, align 8
  %_m257.i = alloca i64, align 8
  %_m291.i = alloca i64, align 8
  %iter.i = alloca %struct.dlm_node_iter, align 4
  %master.i = alloca i8, align 1
  %_m.i614 = alloca i64, align 8
  %_m49.i = alloca i64, align 8
  %_m60.i = alloca i64, align 8
  %agg.tmp.sroa.0.i36.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i604 = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i597 = alloca i32, align 4
  %_m.i.i577 = alloca i64, align 8
  %agg.tmp.sroa.0.i.i578 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i570 = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %mle = alloca ptr, align 4
  %iter = alloca %struct.dlm_node_iter, align 4
  %_m = alloca i64, align 8
  %_m87 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  %_m120 = alloca i64, align 8
  %_m142 = alloca i64, align 8
  %_m189 = alloca i64, align 8
  %_m216 = alloca i64, align 8
  %_m233 = alloca i64, align 8
  %_m246 = alloca i64, align 8
  %_m264 = alloca i64, align 8
  %_m307 = alloca i64, align 8
  %_m329 = alloca i64, align 8
  %_m346 = alloca i64, align 8
  %_m362 = alloca i64, align 8
  %_m377 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mle) #10
  %0 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mle, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #10
  %1 = call ptr @memset(ptr %iter, i32 255, i32 36)
  %tobool.not = icmp eq ptr %lockid, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 716, 0\0A.popsection", ""() #10, !srcloc !397
  unreachable

do.end9:                                          ; preds = %entry
  %call = tail call i32 @full_name_hash(ptr noundef null, ptr noundef nonnull %lockid, i32 noundef %namelen) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 576, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 720, ptr noundef nonnull @.str.7, ptr noundef nonnull %lockid, i32 noundef %namelen) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %and127 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  %name193.c569 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  br label %lookup.outer

lookup.outer:                                     ; preds = %if.end113.lookup.outer_crit_edge, %do.end9
  %res.0.ph = phi ptr [ %call114, %if.end113.lookup.outer_crit_edge ], [ null, %do.end9 ]
  %alloc_mle.0.ph = phi ptr [ %call110, %if.end113.lookup.outer_crit_edge ], [ null, %do.end9 ]
  %tobool99.not = icmp eq ptr %res.0.ph, null
  br label %lookup

lookup:                                           ; preds = %lookup.backedge, %lookup.outer
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call16 = call ptr @__dlm_lookup_lockres_full(ptr noundef %dlm, ptr noundef nonnull %lockid, i32 noundef %namelen, i32 noundef %call) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end98, label %if.then18

if.then18:                                        ; preds = %lookup
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %spinlock20 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock20) #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call16, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call16)
  br label %lookup.backedge

if.end25:                                         ; preds = %if.then18
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 16
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  br i1 %cmp, label %if.then27, label %if.end50

if.then27:                                        ; preds = %if.end25
  call void @__dlm_wait_on_lockres_flags(ptr noundef nonnull %call16, i32 noundef 16434) #10
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp31 = icmp eq i8 %8, -1
  br i1 %cmp31, label %do.body40, label %do.end48, !prof !371

do.body40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #10, !srcloc !398
  unreachable

do.end48:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call16)
  br label %lookup.backedge

if.end50:                                         ; preds = %if.end25
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 17
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 2
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool53.not = icmp eq i16 %11, 0
  br i1 %tobool53.not, label %if.end78, label %do.body55

do.body55:                                        ; preds = %if.end50
  %12 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %13)
  %cmp59 = icmp eq i8 %6, %13
  br i1 %cmp59, label %do.body68, label %do.end76, !prof !371

do.body68:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 753, 0\0A.popsection", ""() #10, !srcloc !399
  unreachable

do.end76:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dlm_wait_on_lockres_flags(ptr noundef nonnull %call16, i32 noundef 64) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call16)
  br label %lookup.backedge

if.end78:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %14 = ptrtoint ptr %spinlock20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock20, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %dlm_lockres_grab_inflight_ref.exit, !prof !371

do.body4.i:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 636, 0\0A.popsection", ""() #10, !srcloc !393
  unreachable

dlm_lockres_grab_inflight_ref.exit:               ; preds = %if.end78
  %inflight_locks.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 19
  %16 = ptrtoint ptr %inflight_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inflight_locks.i.i, align 8
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %inflight_locks.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %18 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 576, ptr %_m.i.i, align 8
  %19 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name193.c569, align 4
  %lockname.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 1
  %21 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lockname.i.i, align 8
  %name2.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call16, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name2.i.i, align 8
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.__dlm_lockres_grab_inflight_ref, i32 noundef 630, ptr noundef nonnull @.str.77, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %inc.i.i, ptr noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  br i1 %tobool99.not, label %dlm_lockres_grab_inflight_ref.exit.leave_crit_edge, label %if.then81

dlm_lockres_grab_inflight_ref.exit.leave_crit_edge: ; preds = %dlm_lockres_grab_inflight_ref.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then81:                                        ; preds = %dlm_lockres_grab_inflight_ref.exit
  %track_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %track_lock) #10
  %tracking = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 9
  %26 = ptrtoint ptr %tracking to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %tracking, align 4
  %cmp.i.not = icmp eq ptr %27, %tracking
  br i1 %cmp.i.not, label %do.body86, label %if.then84

if.then84:                                        ; preds = %if.then81
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tracking) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then84.list_del_init.exit_crit_edge

if.then84.list_del_init.exit_crit_edge:           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %tracking to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tracking, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then84.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %tracking to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %tracking, ptr %tracking, align 4
  %prev.i3.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tracking, ptr %prev.i3.i, align 4
  br label %if.end95

do.body86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m87) #10
  %36 = ptrtoint ptr %_m87 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606847552, ptr %_m87, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 1
  %37 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m87, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 774, ptr noundef nonnull @.str.8, i32 noundef %38, ptr noundef %40) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m87) #10
  br label %if.end95

if.end95:                                         ; preds = %do.body86, %list_del_init.exit
  call void @_raw_spin_unlock(ptr noundef %track_lock) #10
  call void @dlm_lockres_put(ptr noundef nonnull %res.0.ph)
  br label %leave

if.end98:                                         ; preds = %lookup
  br i1 %tobool99.not, label %if.then100, label %do.body119

if.then100:                                       ; preds = %if.end98
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #10
  %41 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 576, ptr %_m103, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 784, ptr noundef nonnull @.str.9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #10
  %42 = load ptr, ptr @dlm_mle_cache, align 4
  %call110 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %42, i32 noundef 3136) #10
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.then100.if.end420_crit_edge, label %if.end113

if.then100.if.end420_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end420

if.end113:                                        ; preds = %if.then100
  %call114 = call ptr @dlm_new_lockres(ptr noundef %dlm, ptr noundef nonnull %lockid, i32 noundef %namelen)
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %if.end113.if.then419_crit_edge, label %if.end113.lookup.outer_crit_edge

if.end113.lookup.outer_crit_edge:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %lookup.outer

if.end113.if.then419_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then419

do.body119:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120) #10
  %43 = ptrtoint ptr %_m120 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 576, ptr %_m120, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 795, ptr noundef nonnull @.str.10, ptr noundef nonnull %res.0.ph) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120) #10
  br i1 %tobool128.not, label %if.end134, label %if.then129

if.then129:                                       ; preds = %do.body119
  %spinlock130 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock130) #10
  %44 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %node_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i570)
  %46 = ptrtoint ptr %spinlock130 to i32
  call void @__asan_load4_noabort(i32 %46)
  %agg.tmp.sroa.0.0.copyload.i.i572 = load volatile i32, ptr %spinlock130, align 4
  %47 = ptrtoint ptr %agg.tmp.sroa.0.i.i570 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i572, ptr %agg.tmp.sroa.0.i.i570, align 4
  %lock.sroa.0.0.extract.shift.i.i.i573 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i572, 16
  %conv.i.i.i574 = and i32 %agg.tmp.sroa.0.0.copyload.i.i572, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i574, i32 %lock.sroa.0.0.extract.shift.i.i.i573)
  %cmp.i.i.not.i575 = icmp eq i32 %conv.i.i.i574, %lock.sroa.0.0.extract.shift.i.i.i573
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i570)
  br i1 %cmp.i.i.not.i575, label %do.body4.i576, label %do.end7.i, !prof !371

do.body4.i576:                                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !400
  unreachable

do.end7.i:                                        ; preds = %if.then129
  %owner8.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 16
  %48 = ptrtoint ptr %owner8.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %owner8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %45)
  %cmp.not.i = icmp eq i8 %49, %45
  br i1 %cmp.not.i, label %do.end7.i.dlm_change_lockres_owner.exit_crit_edge, label %if.then11.i

do.end7.i.dlm_change_lockres_owner.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_change_lockres_owner.exit

if.then11.i:                                      ; preds = %do.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %50 = ptrtoint ptr %spinlock130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock130, align 4
  %51 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_set_lockres_owner.exit.i, !prof !371

do.body4.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %owner8.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %45, ptr %owner8.i, align 4
  br label %dlm_change_lockres_owner.exit

dlm_change_lockres_owner.exit:                    ; preds = %dlm_set_lockres_owner.exit.i, %do.end7.i.dlm_change_lockres_owner.exit_crit_edge
  call void @__dlm_insert_lockres(ptr noundef %dlm, ptr noundef nonnull %res.0.ph) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i578)
  %53 = ptrtoint ptr %spinlock130 to i32
  call void @__asan_load4_noabort(i32 %53)
  %agg.tmp.sroa.0.0.copyload.i.i580 = load volatile i32, ptr %spinlock130, align 4
  %54 = ptrtoint ptr %agg.tmp.sroa.0.i.i578 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i580, ptr %agg.tmp.sroa.0.i.i578, align 4
  %lock.sroa.0.0.extract.shift.i.i.i581 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i580, 16
  %conv.i.i.i582 = and i32 %agg.tmp.sroa.0.0.copyload.i.i580, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i582, i32 %lock.sroa.0.0.extract.shift.i.i.i581)
  %cmp.i.i.not.i583 = icmp eq i32 %conv.i.i.i582, %lock.sroa.0.0.extract.shift.i.i.i581
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i578)
  br i1 %cmp.i.i.not.i583, label %do.body4.i584, label %dlm_lockres_grab_inflight_ref.exit591, !prof !371

do.body4.i584:                                    ; preds = %dlm_change_lockres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 636, 0\0A.popsection", ""() #10, !srcloc !393
  unreachable

dlm_lockres_grab_inflight_ref.exit591:            ; preds = %dlm_change_lockres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  %inflight_locks.i.i585 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 19
  %55 = ptrtoint ptr %inflight_locks.i.i585 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inflight_locks.i.i585, align 8
  %inc.i.i586 = add i32 %56, 1
  store i32 %inc.i.i586, ptr %inflight_locks.i.i585, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i577) #10
  %57 = ptrtoint ptr %_m.i.i577 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 576, ptr %_m.i.i577, align 8
  %58 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name193.c569, align 4
  %lockname.i.i588 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 1
  %60 = ptrtoint ptr %lockname.i.i588 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lockname.i.i588, align 8
  %name2.i.i589 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %name2.i.i589 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name2.i.i589, align 8
  %64 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i577, ptr noundef nonnull @__func__.__dlm_lockres_grab_inflight_ref, i32 noundef 630, ptr noundef nonnull @.str.77, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %inc.i.i586, ptr noundef %64) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i577) #10
  br label %wake_waiters

if.end134:                                        ; preds = %do.body119
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %call135 = call fastcc i32 @dlm_find_mle(ptr noundef %dlm, ptr noundef nonnull %mle, ptr noundef nonnull %lockid, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.else207, label %if.then137

if.then137:                                       ; preds = %if.end134
  %65 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mle, align 4
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %68, label %lor.lhs.false [
    i32 1, label %do.body141
    i32 2, label %land.rhs.critedge
  ]

do.body141:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m142) #10
  %70 = ptrtoint ptr %_m142 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 1152921504606847552, ptr %_m142, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m142, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 818, ptr noundef nonnull @.str.11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m142) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 819, 0\0A.popsection", ""() #10, !srcloc !401
  unreachable

lor.lhs.false:                                    ; preds = %if.then137
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %66, i32 0, i32 12
  %71 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp161.not = icmp eq i8 %72, -1
  br i1 %cmp161.not, label %lor.lhs.false.if.end225_crit_edge, label %if.then201.critedge

lor.lhs.false.if.end225_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end225

land.rhs.critedge:                                ; preds = %if.then137
  %master166 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %66, i32 0, i32 12
  %73 = ptrtoint ptr %master166 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %master166, align 4
  %75 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp170 = icmp eq i8 %74, %76
  br i1 %cmp170, label %do.body179, label %if.then204.critedge.critedge, !prof !371

do.body179:                                       ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 831, 0\0A.popsection", ""() #10, !srcloc !402
  unreachable

if.then201.critedge:                              ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m189) #10
  %77 = ptrtoint ptr %_m189 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 576, ptr %_m189, align 8
  %78 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m189, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 836, ptr noundef nonnull @.str.12, ptr noundef %79, i32 noundef %namelen, ptr noundef nonnull %lockid, ptr noundef nonnull @.str.14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m189) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %80 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mle, align 4
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %hb_events.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %83, %hb_events.i.i
  br i1 %cmp.i.not.i.i, label %if.then201.critedge.dlm_mle_detach_hb_events.exit_crit_edge, label %if.then.i.i

if.then201.critedge.dlm_mle_detach_hb_events.exit_crit_edge: ; preds = %if.then201.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit

if.then.i.i:                                      ; preds = %if.then201.critedge
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %81, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i.i, align 4
  %86 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hb_events.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %90 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %hb_events.i.i, ptr %hb_events.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %81, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %hb_events.i.i, ptr %prev.i3.i.i.i, align 4
  br label %dlm_mle_detach_hb_events.exit

dlm_mle_detach_hb_events.exit:                    ; preds = %list_del_init.exit.i.i, %if.then201.critedge.dlm_mle_detach_hb_events.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %92 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mle, align 4
  %dlm1.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dlm1.i, align 4
  %spinlock.i593 = getelementptr inbounds %struct.dlm_ctxt, ptr %95, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i593) #10
  %master_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %95, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i) #10
  call fastcc void @__dlm_put_mle(ptr noundef %93) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i593) #10
  %96 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %mle, align 4
  br label %lookup.backedge

lookup.backedge:                                  ; preds = %if.then204.critedge.critedge, %dlm_mle_detach_hb_events.exit, %do.end76, %do.end48, %if.then23
  br label %lookup

if.then204.critedge.critedge:                     ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m189) #10
  %97 = ptrtoint ptr %_m189 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 576, ptr %_m189, align 8
  %98 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m189, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 836, ptr noundef nonnull @.str.12, ptr noundef %99, i32 noundef %namelen, ptr noundef nonnull %lockid, ptr noundef nonnull @.str.13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m189) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %100 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mle, align 4
  %dlm1.i594 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %dlm1.i594 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dlm1.i594, align 4
  %spinlock.i595 = getelementptr inbounds %struct.dlm_ctxt, ptr %103, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i595) #10
  %master_lock.i596 = getelementptr inbounds %struct.dlm_ctxt, ptr %103, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i596) #10
  call fastcc void @__dlm_put_mle(ptr noundef %101) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i596) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i595) #10
  %104 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %mle, align 4
  call void @msleep(i32 noundef 100) #10
  br label %lookup.backedge

if.else207:                                       ; preds = %if.end134
  %105 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %alloc_mle.0.ph, ptr %mle, align 4
  call fastcc void @dlm_init_mle(ptr noundef %alloc_mle.0.ph, i32 noundef 1, ptr noundef %dlm, ptr noundef nonnull %res.0.ph, ptr noundef null, i32 noundef 0)
  %106 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %node_num, align 4
  %conv209 = zext i8 %107 to i32
  %108 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mle, align 4
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %109, i32 0, i32 8
  call void @_set_bit(i32 noundef %conv209, ptr noundef %maybe_map) #10
  %110 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i597)
  %112 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %112)
  %agg.tmp.sroa.0.0.copyload.i.i599 = load volatile i32, ptr %master_lock, align 4
  %113 = ptrtoint ptr %agg.tmp.sroa.0.i.i597 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i599, ptr %agg.tmp.sroa.0.i.i597, align 4
  %lock.sroa.0.0.extract.shift.i.i.i600 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i599, 16
  %conv.i.i.i601 = and i32 %agg.tmp.sroa.0.0.copyload.i.i599, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i601, i32 %lock.sroa.0.0.extract.shift.i.i.i600)
  %cmp.i.i.not.i602 = icmp eq i32 %conv.i.i.i601, %lock.sroa.0.0.extract.shift.i.i.i600
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i597)
  br i1 %cmp.i.i.not.i602, label %do.body4.i603, label %do.end9.i, !prof !371

do.body4.i603:                                    ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #10, !srcloc !374
  unreachable

do.end9.i:                                        ; preds = %if.else207
  %mnamehash.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %111, i32 0, i32 20
  %114 = ptrtoint ptr %mnamehash.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mnamehash.i, align 4
  %master_hash.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  %116 = ptrtoint ptr %master_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %master_hash.i.i, align 4
  %div3.i.i = lshr i32 %115, 10
  %rem.i.i = and i32 %div3.i.i, 31
  %arrayidx.i.i = getelementptr ptr, ptr %117, i32 %rem.i.i
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i, align 4
  %rem1.i.i = and i32 %115, 1023
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %119, i32 %rem1.i.i
  %120 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i.i, align 4
  %122 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %111, align 4
  %tobool.not.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i, label %do.end9.i.__dlm_insert_mle.exit_crit_edge, label %do.body12.i.i

do.end9.i.__dlm_insert_mle.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_insert_mle.exit

do.body12.i.i:                                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %111, ptr %pprev.i.i, align 4
  br label %__dlm_insert_mle.exit

__dlm_insert_mle.exit:                            ; preds = %do.body12.i.i, %do.end9.i.__dlm_insert_mle.exit_crit_edge
  %124 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %111, ptr %add.ptr.i.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %111, i32 0, i32 1
  %125 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %add.ptr.i.i, ptr %pprev34.i.i, align 4
  %recovery_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 20
  %call211 = call i32 @_find_first_bit_be(ptr noundef %recovery_map, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 255
  br i1 %cmp212, label %do.body215, label %__dlm_insert_mle.exit.if.end225_crit_edge

__dlm_insert_mle.exit.if.end225_crit_edge:        ; preds = %__dlm_insert_mle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end225

do.body215:                                       ; preds = %__dlm_insert_mle.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m216) #10
  %126 = ptrtoint ptr %_m216 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 576, ptr %_m216, align 8
  %127 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m216, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 868, ptr noundef nonnull @.str.15, ptr noundef %128, i32 noundef %namelen, ptr noundef nonnull %lockid, i32 noundef %call211) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m216) #10
  br label %if.end225

if.end225:                                        ; preds = %do.body215, %__dlm_insert_mle.exit.if.end225_crit_edge, %lor.lhs.false.if.end225_crit_edge
  %alloc_mle.1 = phi ptr [ null, %do.body215 ], [ null, %__dlm_insert_mle.exit.if.end225_crit_edge ], [ %alloc_mle.0.ph, %lor.lhs.false.if.end225_crit_edge ]
  %wait_on_recovery.0 = phi i32 [ 1, %do.body215 ], [ 0, %__dlm_insert_mle.exit.if.end225_crit_edge ], [ 0, %lor.lhs.false.if.end225_crit_edge ]
  call void @__dlm_insert_lockres(ptr noundef %dlm, ptr noundef nonnull %res.0.ph) #10
  %inflight_locks.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 19
  %129 = ptrtoint ptr %inflight_locks.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %inflight_locks.i, align 8
  %inc.i = add i32 %130, 1
  store i32 %inc.i, ptr %inflight_locks.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %131 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 576, ptr %_m.i, align 8
  %132 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name193.c569, align 4
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 1
  %134 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %lockname.i, align 8
  %name2.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name2.i, align 8
  %138 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.__dlm_lockres_grab_inflight_ref, i32 noundef 630, ptr noundef nonnull @.str.77, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %inc.i, ptr noundef %138) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %139 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mle, align 4
  %dlm1.i605 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %dlm1.i605 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dlm1.i605, align 4
  %spinlock.i606 = getelementptr inbounds %struct.dlm_ctxt, ptr %142, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i604)
  %143 = ptrtoint ptr %spinlock.i606 to i32
  call void @__asan_load4_noabort(i32 %143)
  %agg.tmp.sroa.0.0.copyload.i.i607 = load volatile i32, ptr %spinlock.i606, align 4
  %144 = ptrtoint ptr %agg.tmp.sroa.0.i.i604 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i607, ptr %agg.tmp.sroa.0.i.i604, align 4
  %lock.sroa.0.0.extract.shift.i.i.i608 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i607, 16
  %conv.i.i.i609 = and i32 %agg.tmp.sroa.0.0.copyload.i.i607, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i609, i32 %lock.sroa.0.0.extract.shift.i.i.i608)
  %cmp.i.i.not.i610 = icmp eq i32 %conv.i.i.i609, %lock.sroa.0.0.extract.shift.i.i.i608
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i604)
  br i1 %cmp.i.i.not.i610, label %do.body5.i, label %do.body11.i, !prof !371

do.body5.i:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #10, !srcloc !403
  unreachable

do.body11.i:                                      ; preds = %if.end225
  %master_lock.i611 = getelementptr inbounds %struct.dlm_ctxt, ptr %142, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i36.i)
  %145 = ptrtoint ptr %master_lock.i611 to i32
  call void @__asan_load4_noabort(i32 %145)
  %agg.tmp.sroa.0.0.copyload.i37.i = load volatile i32, ptr %master_lock.i611, align 4
  %146 = ptrtoint ptr %agg.tmp.sroa.0.i36.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i37.i, ptr %agg.tmp.sroa.0.i36.i, align 4
  %lock.sroa.0.0.extract.shift.i.i38.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i37.i, 16
  %conv.i.i39.i = and i32 %agg.tmp.sroa.0.0.copyload.i37.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i39.i, i32 %lock.sroa.0.0.extract.shift.i.i38.i)
  %cmp.i.i40.not.i = icmp eq i32 %conv.i.i39.i, %lock.sroa.0.0.extract.shift.i.i38.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i36.i)
  br i1 %cmp.i.i40.not.i, label %do.body24.i, label %do.end32.i, !prof !371

do.body24.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #10, !srcloc !404
  unreachable

do.end32.i:                                       ; preds = %do.body11.i
  %inuse.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %140, i32 0, i32 7
  %147 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %inuse.i, align 4
  %inc.i612 = add i32 %148, 1
  store i32 %inc.i612, ptr %inuse.i, align 4
  %mle_refs.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %140, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mle_refs.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mle_refs.i, i32 1, i32 3, i32 1) #10
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mle_refs.i, ptr %mle_refs.i, i32 1, ptr elementtype(i32) %mle_refs.i) #10, !srcloc !405
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end32.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !371

do.end32.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end32.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %150 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %.not.i.i.i.i.i = icmp sgt i32 %150, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_get_mle_inuse.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !378

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_get_mle_inuse.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_get_mle_inuse.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end32.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end32.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %mle_refs.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dlm_get_mle_inuse.exit

dlm_get_mle_inuse.exit:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_get_mle_inuse.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %namelen)
  %cmp.i613 = icmp eq i32 %namelen, 9
  %recovery_map257 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 20
  %domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %curnode.i.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter.i, i32 0, i32 1
  %curnode.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter, i32 0, i32 1
  %spinlock.i628 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 14
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 16
  %orig_bm1.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 1
  %cur_bm2.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 2
  %arrayidx.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 0
  %arrayidx.1.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 1
  %arrayidx.2.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 2
  %arrayidx.3.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 3
  %arrayidx.4.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 4
  %arrayidx.5.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 5
  %arrayidx.6.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 6
  %arrayidx.7.i.i.i = getelementptr inbounds %struct.dlm_bitmap_diff_iter, ptr %bdi.i.i, i32 0, i32 3, i32 7
  br label %redo_request

redo_request:                                     ; preds = %redo_request.backedge, %dlm_get_mle_inuse.exit
  %blocked.0 = phi i32 [ %call135, %dlm_get_mle_inuse.exit ], [ %blocked.3, %redo_request.backedge ]
  %tries.0 = phi i32 [ 0, %dlm_get_mle_inuse.exit ], [ %tries.0.be, %redo_request.backedge ]
  %wait_on_recovery.1 = phi i32 [ %wait_on_recovery.0, %dlm_get_mle_inuse.exit ], [ 1, %redo_request.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_on_recovery.1)
  %tobool228.not789 = icmp eq i32 %wait_on_recovery.1, 0
  br i1 %tobool228.not789, label %redo_request.while.end_crit_edge, label %redo_request.while.body_crit_edge

redo_request.while.body_crit_edge:                ; preds = %redo_request
  br label %while.body

redo_request.while.end_crit_edge:                 ; preds = %redo_request
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.backedge, %redo_request.while.body_crit_edge
  br i1 %cmp.i613, label %land.lhs.true.i, label %while.body.if.end255_crit_edge

while.body.if.end255_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

land.lhs.true.i:                                  ; preds = %while.body
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %lockid, ptr noundef nonnull dereferenceable(9) @.str.81, i32 9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp1.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp1.i, label %do.body232, label %land.lhs.true.i.if.end255_crit_edge

land.lhs.true.i.if.end255_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

do.body232:                                       ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m233) #10
  %151 = ptrtoint ptr %_m233 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 576, ptr %_m233, align 8
  %152 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m233, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 899, ptr noundef nonnull @.str.16, ptr noundef %153) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m233) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %master.i) #10
  %154 = ptrtoint ptr %master.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -1, ptr %master.i, align 1
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %155 = call ptr @memcpy(ptr %iter.i, ptr %domain_map.i, i32 32)
  %156 = ptrtoint ptr %curnode.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %curnode.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end37.i.while.cond.outer.i_crit_edge, %do.body232
  %ret.0.ph.i = phi i32 [ %ret.1.i, %if.end37.i.while.cond.outer.i_crit_edge ], [ 0, %do.body232 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %157 = ptrtoint ptr %curnode.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %curnode.i.i, align 4
  %add.i.i = add i32 %158, 1
  %call.i.i616 = call i32 @_find_next_bit_be(ptr noundef nonnull %iter.i, i32 noundef 255, i32 noundef %add.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i.i616)
  %cmp.i.i = icmp sgt i32 %call.i.i616, 254
  %.call.i.i = select i1 %cmp.i.i, i32 255, i32 %call.i.i616
  %.call8.i.i = select i1 %cmp.i.i, i32 -2, i32 %call.i.i616
  %159 = ptrtoint ptr %curnode.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %.call.i.i, ptr %curnode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.call8.i.i)
  %cmp.i617 = icmp sgt i32 %.call8.i.i, -1
  br i1 %cmp.i617, label %while.body.i, label %while.cond.i.dlm_pre_master_reco_lockres.exit_crit_edge

while.cond.i.dlm_pre_master_reco_lockres.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_pre_master_reco_lockres.exit

while.body.i:                                     ; preds = %while.cond.i
  %160 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %node_num, align 4
  %conv.i618 = zext i8 %161 to i32
  %cmp2.i = icmp eq i32 %.call8.i.i, %conv.i618
  br i1 %cmp2.i, label %while.body.i.while.cond.i_crit_edge, label %if.end.i619

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end.i619:                                      ; preds = %while.body.i
  %conv4.i = trunc i32 %.call8.i.i to i8
  %call5.i = call i32 @dlm_do_master_requery(ptr noundef %dlm, ptr noundef %res.0.ph, i8 noundef zeroext %conv4.i, ptr noundef nonnull %master.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i619.if.end37.i_crit_edge

if.end.i619.if.end37.i_crit_edge:                 ; preds = %if.end.i619
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.end.i619
  %162 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call5.i, label %do.body.i [
    i32 -512, label %if.then8.i.if.end26.i_crit_edge
    i32 -4, label %if.then8.i.if.end26.i_crit_edge1139
    i32 -28, label %if.then8.i.if.end26.i_crit_edge1140
    i32 -122, label %if.then8.i.if.end26.i_crit_edge1141
  ]

if.then8.i.if.end26.i_crit_edge1141:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then8.i.if.end26.i_crit_edge1140:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then8.i.if.end26.i_crit_edge1139:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then8.i.if.end26.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.body.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i614) #10
  %163 = ptrtoint ptr %_m.i614 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 1152921504606847552, ptr %_m.i614, align 8
  %conv24.i = sext i32 %call5.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i614, ptr noundef nonnull @__func__.dlm_pre_master_reco_lockres, i32 noundef 2183, ptr noundef nonnull @.str.18, i64 noundef %conv24.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i614) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.then8.i.if.end26.i_crit_edge, %if.then8.i.if.end26.i_crit_edge1139, %if.then8.i.if.end26.i_crit_edge1140, %if.then8.i.if.end26.i_crit_edge1141
  %call27.i = call i32 @dlm_is_host_down(i32 noundef %call5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.body30.i, label %if.end26.i.if.end37.i_crit_edge

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

do.body30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2185, 0\0A.popsection", ""() #10, !srcloc !406
  unreachable

if.end37.i:                                       ; preds = %if.end26.i.if.end37.i_crit_edge, %if.end.i619.if.end37.i_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %if.end.i619.if.end37.i_crit_edge ], [ 0, %if.end26.i.if.end37.i_crit_edge ]
  %164 = ptrtoint ptr %master.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %master.i, align 1
  %cmp39.not.i = icmp eq i8 %165, -1
  br i1 %cmp39.not.i, label %if.end37.i.while.cond.outer.i_crit_edge, label %if.then41.i

if.end37.i.while.cond.outer.i_crit_edge:          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %166 = ptrtoint ptr %master.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %master.i, align 1
  %conv43.i = zext i8 %167 to i32
  %div3.i.i620 = lshr i32 %conv43.i, 5
  %arrayidx.i.i621 = getelementptr i32, ptr %recovery_map257, i32 %div3.i.i620
  %168 = ptrtoint ptr %arrayidx.i.i621 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %arrayidx.i.i621, align 4
  %and.i.i = and i32 %conv43.i, 31
  %170 = shl nuw i32 1, %and.i.i
  %171 = and i32 %170, %169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool46.not.i = icmp eq i32 %171, 0
  br i1 %tobool46.not.i, label %if.then41.i.if.end57.i_crit_edge, label %do.body48.i

if.then41.i.if.end57.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

do.body48.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49.i) #10
  %172 = ptrtoint ptr %_m49.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 2305843009213694528, ptr %_m49.i, align 8
  %173 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49.i, ptr noundef nonnull @__func__.dlm_pre_master_reco_lockres, i32 noundef 2199, ptr noundef nonnull @.str.115, ptr noundef %174, i32 noundef %.call8.i.i, i32 noundef %conv43.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49.i) #10
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.body48.i, %if.then41.i.if.end57.i_crit_edge
  %ret.2.i = phi i32 [ -11, %do.body48.i ], [ %ret.1.i, %if.then41.i.if.end57.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60.i) #10
  %175 = ptrtoint ptr %_m60.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 576, ptr %_m60.i, align 8
  %176 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name193.c569, align 4
  %178 = ptrtoint ptr %master.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %master.i, align 1
  %conv65.i = zext i8 %179 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60.i, ptr noundef nonnull @__func__.dlm_pre_master_reco_lockres, i32 noundef 2204, ptr noundef nonnull @.str.116, ptr noundef %177, i32 noundef %conv65.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60.i) #10
  br label %dlm_pre_master_reco_lockres.exit

dlm_pre_master_reco_lockres.exit:                 ; preds = %if.end57.i, %while.cond.i.dlm_pre_master_reco_lockres.exit_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %if.end57.i ], [ %ret.0.ph.i, %while.cond.i.dlm_pre_master_reco_lockres.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %master.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool242.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool242.not, label %dlm_pre_master_reco_lockres.exit.while.end_crit_edge, label %do.body245

dlm_pre_master_reco_lockres.exit.while.end_crit_edge: ; preds = %dlm_pre_master_reco_lockres.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body245:                                       ; preds = %dlm_pre_master_reco_lockres.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m246) #10
  %180 = ptrtoint ptr %_m246 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 576, ptr %_m246, align 8
  %181 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m246, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 904, ptr noundef nonnull @.str.17, ptr noundef %182) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m246) #10
  call void @msleep(i32 noundef 500) #10
  br label %while.body.backedge

if.end255:                                        ; preds = %land.lhs.true.i.if.end255_crit_edge, %while.body.if.end255_crit_edge
  call void @dlm_kick_recovery_thread(ptr noundef %dlm) #10
  call void @msleep(i32 noundef 1000) #10
  call void @dlm_wait_for_recovery(ptr noundef %dlm) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call259 = call i32 @_find_first_bit_be(ptr noundef %recovery_map257, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call259)
  %cmp260 = icmp slt i32 %call259, 255
  br i1 %cmp260, label %if.then276, label %if.end273

if.end273:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %while.end

if.then276:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m264) #10
  %183 = ptrtoint ptr %_m264 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 576, ptr %_m264, align 8
  %184 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m264, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 919, ptr noundef nonnull @.str.15, ptr noundef %185, i32 noundef %namelen, ptr noundef nonnull %lockid, i32 noundef %call259) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m264) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %conv277 = trunc i32 %call259 to i8
  call void @dlm_wait_for_node_recovery(ptr noundef %dlm, i8 noundef zeroext %conv277, i32 noundef 10000) #10
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then276, %do.body245
  br label %while.body

while.end:                                        ; preds = %if.end273, %dlm_pre_master_reco_lockres.exit.while.end_crit_edge, %redo_request.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked.0)
  %tobool279.not = icmp eq i32 %blocked.0, 0
  br i1 %tobool279.not, label %if.end281, label %while.end.wait_crit_edge

while.end.wait_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait

if.end281:                                        ; preds = %while.end
  %186 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mle, align 4
  %vote_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %187, i32 0, i32 9
  %188 = call ptr @memcpy(ptr %iter, ptr %vote_map, i32 32)
  %189 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %curnode.i, align 4
  %call.i791 = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef 0) #10
  %190 = call i32 @llvm.smin.i32(i32 %call.i791, i32 255)
  %191 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %curnode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i791)
  %192 = icmp ult i32 %call.i791, 255
  br i1 %192, label %if.end281.while.body287_crit_edge, label %if.end281.wait_crit_edge

if.end281.wait_crit_edge:                         ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait

if.end281.while.body287_crit_edge:                ; preds = %if.end281
  br label %while.body287

while.body287:                                    ; preds = %if.end339.while.body287_crit_edge, %if.end281.while.body287_crit_edge
  %.call8.i796 = phi i32 [ %call.i, %if.end339.while.body287_crit_edge ], [ %call.i791, %if.end281.while.body287_crit_edge ]
  %193 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mle, align 4
  %call288 = call fastcc i32 @dlm_do_master_request(ptr noundef %res.0.ph, ptr noundef %194, i32 noundef %.call8.i796)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %cmp289 = icmp slt i32 %call288, 0
  br i1 %cmp289, label %if.then291, label %while.body287.if.end316_crit_edge

while.body287.if.end316_crit_edge:                ; preds = %while.body287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316

if.then291:                                       ; preds = %while.body287
  %195 = zext i32 %call288 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call288, label %do.body306 [
    i32 -512, label %if.then291.if.end316_crit_edge
    i32 -4, label %if.then291.if.end316_crit_edge1142
    i32 -28, label %if.then291.if.end316_crit_edge1143
    i32 -122, label %if.then291.if.end316_crit_edge1144
  ]

if.then291.if.end316_crit_edge1144:               ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316

if.then291.if.end316_crit_edge1143:               ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316

if.then291.if.end316_crit_edge1142:               ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316

if.then291.if.end316_crit_edge:                   ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316

do.body306:                                       ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m307) #10
  %196 = ptrtoint ptr %_m307 to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 1152921504606847552, ptr %_m307, align 8
  %conv311 = sext i32 %call288 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m307, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 938, ptr noundef nonnull @.str.18, i64 noundef %conv311) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m307) #10
  br label %if.end316

if.end316:                                        ; preds = %do.body306, %if.then291.if.end316_crit_edge, %if.then291.if.end316_crit_edge1142, %if.then291.if.end316_crit_edge1143, %if.then291.if.end316_crit_edge1144, %while.body287.if.end316_crit_edge
  %197 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mle, align 4
  %master317 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %198, i32 0, i32 12
  %199 = ptrtoint ptr %master317 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %master317, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %200)
  %cmp319.not = icmp eq i8 %200, -1
  br i1 %cmp319.not, label %if.end316.if.end339_crit_edge, label %if.then321

if.end316.if.end339_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end339

if.then321:                                       ; preds = %if.end316
  %conv318 = zext i8 %200 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.call8.i796, i32 %conv318)
  %cmp324.not = icmp ult i32 %.call8.i796, %conv318
  br i1 %cmp324.not, label %do.body328, label %if.then321.wait_crit_edge

if.then321.wait_crit_edge:                        ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait

do.body328:                                       ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m329) #10
  %201 = ptrtoint ptr %_m329 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 576, ptr %_m329, align 8
  %202 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name193.c569, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m329, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 949, ptr noundef nonnull @.str.19, ptr noundef %203, i32 noundef %namelen, ptr noundef nonnull %lockid, i32 noundef %.call8.i796, i32 noundef %conv318) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m329) #10
  br label %if.end339

if.end339:                                        ; preds = %do.body328, %if.end316.if.end339_crit_edge
  %204 = ptrtoint ptr %curnode.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %curnode.i, align 4
  %add.i = add i32 %205, 1
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef %add.i) #10
  %206 = call i32 @llvm.smin.i32(i32 %call.i, i32 255)
  %207 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %curnode.i, align 4
  %208 = icmp ult i32 %call.i, 255
  br i1 %208, label %if.end339.while.body287_crit_edge, label %if.end339.wait_crit_edge

if.end339.wait_crit_edge:                         ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait

if.end339.while.body287_crit_edge:                ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body287

wait:                                             ; preds = %if.end339.wait_crit_edge, %if.then321.wait_crit_edge, %if.end281.wait_crit_edge, %while.end.wait_crit_edge
  %209 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mle, align 4
  %spinlock33.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 3
  %master.i632 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 12
  %vote_map.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9
  %node_map.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11
  %response_map.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 10
  %add.ptr.1.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 1
  %add.ptr5.1.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 1
  %add.ptr.2.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 2
  %add.ptr5.2.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 2
  %add.ptr.3.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 3
  %add.ptr5.3.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 3
  %add.ptr.4.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 4
  %add.ptr5.4.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 4
  %add.ptr.5.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 5
  %add.ptr5.5.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 5
  %add.ptr.6.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 6
  %add.ptr5.6.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 6
  %add.ptr.7.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 9, i32 7
  %add.ptr5.7.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %210, i32 0, i32 11, i32 7
  %maybe_map.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 8
  %type.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 14
  %mleres.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 17
  %woken.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 5
  %wq.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %210, i32 0, i32 4
  br label %recheck.i.outer

recheck.i.outer:                                  ; preds = %cleanup.i, %wait
  %blocked.1.ph = phi i32 [ %blocked.3, %cleanup.i ], [ %blocked.0, %wait ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked.1.ph)
  %tobool149.not.i = icmp eq i32 %blocked.1.ph, 0
  br label %recheck.i

recheck.i:                                        ; preds = %recheck.i.backedge, %recheck.i.outer
  call void @_raw_spin_lock(ptr noundef %spinlock.i628) #10
  %211 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %212)
  %cmp.not.i633 = icmp eq i8 %212, -1
  br i1 %cmp.not.i633, label %if.end31.i, label %do.body.i634

do.body.i634:                                     ; preds = %recheck.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i627) #10
  %213 = ptrtoint ptr %_m.i627 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 576, ptr %_m.i627, align 8
  %214 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %name193.c569, align 4
  %216 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %lockname.i, align 8
  %218 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %name2.i, align 8
  %conv6.i = zext i8 %212 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i627, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1019, ptr noundef nonnull @.str.82, ptr noundef %215, i32 noundef %217, ptr noundef %219, i32 noundef %conv6.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i627) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i628) #10
  %220 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %owner.i, align 4
  %222 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %221, i8 %223)
  %cmp11.not.i = icmp eq i8 %221, %223
  br i1 %cmp11.not.i, label %do.body.i634.do.body376_crit_edge, label %if.then13.i

do.body.i634.do.body376_crit_edge:                ; preds = %do.body.i634
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body376

if.then13.i:                                      ; preds = %do.body.i634
  %conv9.i = zext i8 %221 to i32
  %call.i635 = call fastcc i32 @dlm_do_master_request(ptr noundef %res.0.ph, ptr noundef %210, i32 noundef %conv9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i635)
  %cmp16.i = icmp slt i32 %call.i635, 0
  br i1 %cmp16.i, label %do.body19.i, label %if.then13.i.do.body376_crit_edge

if.then13.i.do.body376_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body376

do.body19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20.i) #10
  %224 = ptrtoint ptr %_m20.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 1152921504606847552, ptr %_m20.i, align 8
  %225 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %owner.i, align 4
  %conv25.i = zext i8 %226 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1027, ptr noundef nonnull @.str.83, i32 noundef %conv25.i, i32 noundef %call.i635) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20.i) #10
  call void @msleep(i32 noundef 500) #10
  br label %recheck.i.backedge

if.end31.i:                                       ; preds = %recheck.i
  call void @_raw_spin_unlock(ptr noundef %spinlock.i628) #10
  call void @_raw_spin_lock(ptr noundef %spinlock33.i) #10
  %227 = ptrtoint ptr %master.i632 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %master.i632, align 4
  %bcmp.i636 = call i32 @bcmp(ptr noundef dereferenceable(32) %vote_map.i, ptr noundef dereferenceable(32) %node_map.i, i32 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i636)
  %cmp36.not.i = icmp eq i32 %bcmp.i636, 0
  br i1 %cmp36.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m47.i) #10
  %229 = ptrtoint ptr %_m47.i to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 576, ptr %_m47.i, align 8
  %230 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name193.c569, align 4
  %232 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %lockname.i, align 8
  %234 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m47.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1048, ptr noundef nonnull @.str.84, ptr noundef %231, i32 noundef %233, ptr noundef %235) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m47.i) #10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bdi.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i626) #10
  %236 = ptrtoint ptr %_m.i.i626 to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 576, ptr %_m.i.i626, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i626, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1217, ptr noundef nonnull @.str.92) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i626) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i625)
  %237 = ptrtoint ptr %spinlock33.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %agg.tmp.sroa.0.0.copyload.i.i.i637 = load volatile i32, ptr %spinlock33.i, align 4
  %238 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i625 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i637, ptr %agg.tmp.sroa.0.i.i.i625, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i638 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i637, 16
  %conv.i.i.i.i639 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i637, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i639, i32 %lock.sroa.0.0.extract.shift.i.i.i.i638)
  %cmp.i.i.not.i.i640 = icmp eq i32 %conv.i.i.i.i639, %lock.sroa.0.0.extract.shift.i.i.i.i638
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i625)
  br i1 %cmp.i.i.not.i.i640, label %do.body7.i.i, label %if.end.i.i.i, !prof !371

do.body7.i.i:                                     ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1219, 0\0A.popsection", ""() #10, !srcloc !407
  unreachable

if.end.i.i.i:                                     ; preds = %if.then45.i
  %239 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 -1, ptr %bdi.i.i, align 4
  %240 = ptrtoint ptr %orig_bm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %vote_map.i, ptr %orig_bm1.i.i.i, align 4
  %241 = ptrtoint ptr %cur_bm2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %node_map.i, ptr %cur_bm2.i.i.i, align 4
  %242 = ptrtoint ptr %vote_map.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %vote_map.i, align 4
  %244 = ptrtoint ptr %node_map.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %node_map.i, align 4
  %or.i.i.i = xor i32 %245, %243
  %246 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %247 = ptrtoint ptr %add.ptr.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr.1.i.i.i, align 4
  %249 = ptrtoint ptr %add.ptr5.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %add.ptr5.1.i.i.i, align 4
  %or.1.i.i.i = xor i32 %250, %248
  %251 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %or.1.i.i.i, ptr %arrayidx.1.i.i.i, align 4
  %252 = ptrtoint ptr %add.ptr.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %add.ptr.2.i.i.i, align 4
  %254 = ptrtoint ptr %add.ptr5.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %add.ptr5.2.i.i.i, align 4
  %or.2.i.i.i = xor i32 %255, %253
  %256 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %or.2.i.i.i, ptr %arrayidx.2.i.i.i, align 4
  %257 = ptrtoint ptr %add.ptr.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %add.ptr.3.i.i.i, align 4
  %259 = ptrtoint ptr %add.ptr5.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %add.ptr5.3.i.i.i, align 4
  %or.3.i.i.i = xor i32 %260, %258
  %261 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %or.3.i.i.i, ptr %arrayidx.3.i.i.i, align 4
  %262 = ptrtoint ptr %add.ptr.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %add.ptr.4.i.i.i, align 4
  %264 = ptrtoint ptr %add.ptr5.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %add.ptr5.4.i.i.i, align 4
  %or.4.i.i.i = xor i32 %265, %263
  %266 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %or.4.i.i.i, ptr %arrayidx.4.i.i.i, align 4
  %267 = ptrtoint ptr %add.ptr.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %add.ptr.5.i.i.i, align 4
  %269 = ptrtoint ptr %add.ptr5.5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %add.ptr5.5.i.i.i, align 4
  %or.5.i.i.i = xor i32 %270, %268
  %271 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %or.5.i.i.i, ptr %arrayidx.5.i.i.i, align 4
  %272 = ptrtoint ptr %add.ptr.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %add.ptr.6.i.i.i, align 4
  %274 = ptrtoint ptr %add.ptr5.6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %add.ptr5.6.i.i.i, align 4
  %or.6.i.i.i = xor i32 %275, %273
  %276 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %or.6.i.i.i, ptr %arrayidx.6.i.i.i, align 4
  %277 = ptrtoint ptr %add.ptr.7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %add.ptr.7.i.i.i, align 4
  %279 = ptrtoint ptr %add.ptr5.7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %add.ptr5.7.i.i.i, align 4
  %or.7.i.i.i = xor i32 %280, %278
  %281 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %or.7.i.i.i, ptr %arrayidx.7.i.i.i, align 4
  %call.i.i417.i = call i32 @_find_next_bit_be(ptr noundef %arrayidx.i.i.i, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i.i417.i)
  %cmp2.i.i.i = icmp sgt i32 %call.i.i417.i, 254
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, label %dlm_bitmap_diff_iter_next.exit.i.i

if.end.i.i.i.dlm_restart_lock_mastery.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_restart_lock_mastery.exit.i

dlm_bitmap_diff_iter_next.exit.i.i:               ; preds = %if.end.i.i.i
  %282 = ptrtoint ptr %orig_bm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %orig_bm1.i.i.i, align 4
  %div3.i.i.i.i = lshr i32 %call.i.i417.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %283, i32 %div3.i.i.i.i
  %284 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %286 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %call.i.i417.i, ptr %bdi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i417.i)
  %cmp160.i.i = icmp sgt i32 %call.i.i417.i, -1
  br i1 %cmp160.i.i, label %while.body.lr.ph.i.i, label %dlm_bitmap_diff_iter_next.exit.i.i.dlm_restart_lock_mastery.exit.i_crit_edge

dlm_bitmap_diff_iter_next.exit.i.i.dlm_restart_lock_mastery.exit.i_crit_edge: ; preds = %dlm_bitmap_diff_iter_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_restart_lock_mastery.exit.i

while.body.lr.ph.i.i:                             ; preds = %dlm_bitmap_diff_iter_next.exit.i.i
  %and.i.i.i.i = and i32 %call.i.i417.i, 31
  %287 = shl nuw i32 1, %and.i.i.i.i
  %288 = and i32 %285, %287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool.not.i.i.i = icmp eq i32 %288, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked.1.ph)
  %tobool47.not.i.i = icmp eq i32 %blocked.1.ph, 0
  %spec.select = select i1 %tobool.not.i.i.i, i32 1, i32 -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %dlm_bitmap_diff_iter_next.exit159.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %node.0162.i.i = phi i32 [ %call.i145.i.i, %dlm_bitmap_diff_iter_next.exit159.i.i.while.body.i.i_crit_edge ], [ %call.i.i417.i, %while.body.lr.ph.i.i ]
  %sc.2161.i.i = phi i32 [ %..i153.i.i, %dlm_bitmap_diff_iter_next.exit159.i.i.while.body.i.i_crit_edge ], [ %spec.select, %while.body.lr.ph.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sc.2161.i.i)
  %cmp18.i.i = icmp eq i32 %sc.2161.i.i, 1
  br i1 %cmp18.i.i, label %do.body20.i.i, label %do.body39.i.i

do.body20.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m21.i.i) #10
  %289 = ptrtoint ptr %_m21.i.i to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 2305843009213694528, ptr %_m21.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m21.i.i, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1228, ptr noundef nonnull @.str.93, i32 noundef %node.0162.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m21.i.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m29.i.i) #10
  %290 = ptrtoint ptr %_m29.i.i to i32
  call void @__asan_store8_noabort(i32 %290)
  store i64 576, ptr %_m29.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m29.i.i, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1231, ptr noundef nonnull @.str.94) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m29.i.i) #10
  call void @_clear_bit(i32 noundef %node.0162.i.i, ptr noundef %response_map.i) #10
  call void @_set_bit(i32 noundef %node.0162.i.i, ptr noundef %vote_map.i) #10
  br label %if.end109.i.i

do.body39.i.i:                                    ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i.i) #10
  %291 = ptrtoint ptr %_m40.i.i to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 1152921504606847552, ptr %_m40.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i.i, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1235, ptr noundef nonnull @.str.95, i32 noundef %node.0162.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i.i) #10
  br i1 %tobool47.not.i.i, label %do.body39.i.i.if.end94thread-pre-split.i.i_crit_edge, label %if.then48.i.i

do.body39.i.i.if.end94thread-pre-split.i.i_crit_edge: ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94thread-pre-split.i.i

if.then48.i.i:                                    ; preds = %do.body39.i.i
  %call50.i.i = call i32 @_find_first_bit_be(ptr noundef %maybe_map.i.i, i32 noundef 255) #10
  call void @_clear_bit(i32 noundef %node.0162.i.i, ptr noundef %maybe_map.i.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %node.0162.i.i, i32 %call50.i.i)
  %cmp53.i.i = icmp eq i32 %node.0162.i.i, %call50.i.i
  br i1 %cmp53.i.i, label %do.body55.i.i, label %if.then48.i.i.if.end94thread-pre-split.i.i_crit_edge

if.then48.i.i.if.end94thread-pre-split.i.i_crit_edge: ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94thread-pre-split.i.i

do.body55.i.i:                                    ; preds = %if.then48.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56.i.i) #10
  %292 = ptrtoint ptr %_m56.i.i to i32
  call void @__asan_store8_noabort(i32 %292)
  store i64 576, ptr %_m56.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56.i.i, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1246, ptr noundef nonnull @.str.96, i32 noundef %node.0162.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56.i.i) #10
  %add.i.i641 = add nuw nsw i32 %node.0162.i.i, 1
  %call65.i.i = call i32 @_find_next_bit_be(ptr noundef %maybe_map.i.i, i32 noundef 255, i32 noundef %add.i.i641) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call65.i.i)
  %cmp66.i.i = icmp slt i32 %call65.i.i, 255
  br i1 %cmp66.i.i, label %do.body68.i.i, label %do.body79.i.i

do.body68.i.i:                                    ; preds = %do.body55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i.i) #10
  %293 = ptrtoint ptr %_m69.i.i to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 576, ptr %_m69.i.i, align 8
  %294 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %name193.c569, align 4
  %296 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %lockname.i, align 8
  %298 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i.i, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1256, ptr noundef nonnull @.str.97, ptr noundef %295, i32 noundef %297, ptr noundef %299, i32 noundef %call65.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i.i) #10
  br label %if.end94thread-pre-split.i.i

do.body79.i.i:                                    ; preds = %do.body55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80.i.i) #10
  %300 = ptrtoint ptr %_m80.i.i to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 576, ptr %_m80.i.i, align 8
  %301 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %name193.c569, align 4
  %303 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %lockname.i, align 8
  %305 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80.i.i, ptr noundef nonnull @__func__.dlm_restart_lock_mastery, i32 noundef 1271, ptr noundef nonnull @.str.98, ptr noundef %302, i32 noundef %304, ptr noundef %306) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80.i.i) #10
  %307 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 1, ptr %type.i.i, align 4
  %308 = ptrtoint ptr %mleres.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %res.0.ph, ptr %mleres.i.i, align 4
  br label %if.end94.i.i

if.end94thread-pre-split.i.i:                     ; preds = %do.body68.i.i, %if.then48.i.i.if.end94thread-pre-split.i.i_crit_edge, %do.body39.i.i.if.end94thread-pre-split.i.i_crit_edge
  %309 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %.pr.i.i = load i32, ptr %type.i.i, align 4
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.end94thread-pre-split.i.i, %do.body79.i.i
  %310 = phi i32 [ %.pr.i.i, %if.end94thread-pre-split.i.i ], [ 1, %do.body79.i.i ]
  %311 = call ptr @memset(ptr %maybe_map.i.i, i32 0, i32 32)
  %312 = call ptr @memset(ptr %response_map.i, i32 0, i32 32)
  %313 = call ptr @memcpy(ptr %vote_map.i, ptr %node_map.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %cmp104.not.i.i = icmp eq i32 %310, 0
  br i1 %cmp104.not.i.i, label %if.end94.i.i.if.end109.i.i_crit_edge, label %if.then105.i.i

if.end94.i.i.if.end109.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i.i

if.then105.i.i:                                   ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %314 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %node_num, align 4
  %conv.i.i = zext i8 %315 to i32
  call void @_set_bit(i32 noundef %conv.i.i, ptr noundef %maybe_map.i.i) #10
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.then105.i.i, %if.end94.i.i.if.end109.i.i_crit_edge, %do.body20.i.i
  %316 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %bdi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %317)
  %cmp.i142.i.i = icmp sgt i32 %317, 254
  br i1 %cmp.i142.i.i, label %if.end109.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, label %if.end.i147.i.i

if.end109.i.i.dlm_restart_lock_mastery.exit.i_crit_edge: ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_restart_lock_mastery.exit.i

if.end.i147.i.i:                                  ; preds = %if.end109.i.i
  %add.i144.i.i = add nsw i32 %317, 1
  %call.i145.i.i = call i32 @_find_next_bit_be(ptr noundef %arrayidx.i.i.i, i32 noundef 255, i32 noundef %add.i144.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call.i145.i.i)
  %cmp2.i146.i.i = icmp sgt i32 %call.i145.i.i, 254
  br i1 %cmp2.i146.i.i, label %if.end.i147.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, label %dlm_bitmap_diff_iter_next.exit159.i.i

if.end.i147.i.i.dlm_restart_lock_mastery.exit.i_crit_edge: ; preds = %if.end.i147.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_restart_lock_mastery.exit.i

dlm_bitmap_diff_iter_next.exit159.i.i:            ; preds = %if.end.i147.i.i
  %318 = ptrtoint ptr %orig_bm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %orig_bm1.i.i.i, align 4
  %div3.i.i149.i.i = lshr i32 %call.i145.i.i, 5
  %arrayidx.i.i150.i.i = getelementptr i32, ptr %319, i32 %div3.i.i149.i.i
  %320 = ptrtoint ptr %arrayidx.i.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load volatile i32, ptr %arrayidx.i.i150.i.i, align 4
  %and.i.i151.i.i = and i32 %call.i145.i.i, 31
  %322 = shl nuw i32 1, %and.i.i151.i.i
  %323 = and i32 %321, %322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool.not.i152.i.i = icmp eq i32 %323, 0
  %..i153.i.i = select i1 %tobool.not.i152.i.i, i32 1, i32 -1
  %324 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %call.i145.i.i, ptr %bdi.i.i, align 4
  %cmp.i.i642 = icmp sgt i32 %call.i145.i.i, -1
  br i1 %cmp.i.i642, label %dlm_bitmap_diff_iter_next.exit159.i.i.while.body.i.i_crit_edge, label %dlm_bitmap_diff_iter_next.exit159.i.i.dlm_restart_lock_mastery.exit.i_crit_edge

dlm_bitmap_diff_iter_next.exit159.i.i.dlm_restart_lock_mastery.exit.i_crit_edge: ; preds = %dlm_bitmap_diff_iter_next.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_restart_lock_mastery.exit.i

dlm_bitmap_diff_iter_next.exit159.i.i.while.body.i.i_crit_edge: ; preds = %dlm_bitmap_diff_iter_next.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

dlm_restart_lock_mastery.exit.i:                  ; preds = %dlm_bitmap_diff_iter_next.exit159.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, %if.end.i147.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, %if.end109.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, %dlm_bitmap_diff_iter_next.exit.i.i.dlm_restart_lock_mastery.exit.i_crit_edge, %if.end.i.i.i.dlm_restart_lock_mastery.exit.i_crit_edge
  %cmp83.i = phi i1 [ false, %if.end.i.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ false, %dlm_bitmap_diff_iter_next.exit.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ true, %if.end109.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ true, %if.end.i147.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ true, %dlm_bitmap_diff_iter_next.exit159.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ 0, %dlm_bitmap_diff_iter_next.exit.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ -11, %if.end109.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ -11, %if.end.i147.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ], [ -11, %dlm_bitmap_diff_iter_next.exit159.i.i.dlm_restart_lock_mastery.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bdi.i.i) #10
  %325 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp60.i = icmp eq i32 %326, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked.1.ph)
  %tobool62.not.i = icmp eq i32 %blocked.1.ph, 0
  %brmerge.i = select i1 %tobool62.not.i, i1 true, i1 %cmp60.i
  %brmerge.not.i = xor i1 %brmerge.i, true
  %327 = select i1 %tobool62.not.i, i1 %cmp60.i, i1 false
  %or.cond.i = select i1 %brmerge.not.i, i1 true, i1 %327
  br i1 %or.cond.i, label %do.body68.i, label %dlm_restart_lock_mastery.exit.i.if.end81.i_crit_edge

dlm_restart_lock_mastery.exit.i.if.end81.i_crit_edge: ; preds = %dlm_restart_lock_mastery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

do.body68.i:                                      ; preds = %dlm_restart_lock_mastery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv61.i = zext i1 %cmp60.i to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i) #10
  %328 = ptrtoint ptr %_m69.i to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 576, ptr %_m69.i, align 8
  %329 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %name193.c569, align 4
  %331 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %lockname.i, align 8
  %333 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1054, ptr noundef nonnull @.str.85, ptr noundef %330, i32 noundef %332, ptr noundef %334, i32 noundef %blocked.1.ph, i32 noundef %conv61.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i) #10
  br label %if.end81.i

if.end81.i:                                       ; preds = %do.body68.i, %dlm_restart_lock_mastery.exit.i.if.end81.i_crit_edge
  %blocked.3 = phi i32 [ %conv61.i, %do.body68.i ], [ %blocked.1.ph, %dlm_restart_lock_mastery.exit.i.if.end81.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock33.i) #10
  br i1 %cmp83.i, label %dlm_wait_for_lock_mastery.exit, label %cleanup.i

cleanup.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113.i) #10
  %335 = ptrtoint ptr %_m113.i to i32
  call void @__asan_store8_noabort(i32 %335)
  store i64 576, ptr %_m113.i, align 8
  %336 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %name193.c569, align 4
  %338 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %lockname.i, align 8
  %340 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1064, ptr noundef nonnull @.str.86, ptr noundef %337, i32 noundef %339, ptr noundef %341) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113.i) #10
  br label %recheck.i.outer

if.else.i:                                        ; preds = %if.end31.i
  %bcmp411.i = call i32 @bcmp(ptr noundef dereferenceable(32) %vote_map.i, ptr noundef dereferenceable(32) %response_map.i, i32 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp411.i)
  %cmp42.i = icmp eq i32 %bcmp411.i, 0
  br i1 %cmp42.i, label %if.end141.i, label %if.end141.thread.i

if.end141.thread.i:                               ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m128.i) #10
  %342 = ptrtoint ptr %_m128.i to i32
  call void @__asan_store8_noabort(i32 %342)
  store i64 576, ptr %_m128.i, align 8
  %343 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %name193.c569, align 4
  %345 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %lockname.i, align 8
  %347 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m128.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1070, ptr noundef nonnull @.str.87, ptr noundef %344, i32 noundef %346, ptr noundef %348) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m128.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %228)
  %cmp143.not426.not.i = icmp eq i8 %228, -1
  call void @_raw_spin_unlock(ptr noundef %spinlock33.i) #10
  br i1 %cmp143.not426.not.i, label %if.end141.thread.i.if.then165.i_crit_edge, label %if.end141.thread.i.if.end302.i_crit_edge

if.end141.thread.i.if.end302.i_crit_edge:         ; preds = %if.end141.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

if.end141.thread.i.if.then165.i_crit_edge:        ; preds = %if.end141.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then165.i

if.end141.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %228)
  %cmp143.not.not.i = icmp eq i8 %228, -1
  br i1 %cmp143.not.not.i, label %land.lhs.true148.i, label %if.end162.i

land.lhs.true148.i:                               ; preds = %if.end141.i
  br i1 %tobool149.not.i, label %if.then150.i, label %land.lhs.true148.i.if.end162.thread.i_crit_edge

land.lhs.true148.i.if.end162.thread.i_crit_edge:  ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.thread.i

if.then150.i:                                     ; preds = %land.lhs.true148.i
  %call152.i = call i32 @_find_first_bit_be(ptr noundef %maybe_map.i.i, i32 noundef 255) #10
  %349 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %node_num, align 4
  %conv154.i = zext i8 %350 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call152.i, i32 %conv154.i)
  %cmp155.not.i = icmp slt i32 %call152.i, %conv154.i
  br i1 %cmp155.not.i, label %if.then150.i.if.end162.thread.i_crit_edge, label %if.then254.i

if.then150.i.if.end162.thread.i_crit_edge:        ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.thread.i

if.end162.thread.i:                               ; preds = %if.then150.i.if.end162.thread.i_crit_edge, %land.lhs.true148.i.if.end162.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock33.i) #10
  br label %if.then165.i

if.end162.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock33.i) #10
  br label %if.end302.i

if.then165.i:                                     ; preds = %if.end162.thread.i, %if.end141.thread.i.if.then165.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %woken.i, i32 noundef 4) #10
  %351 = ptrtoint ptr %woken.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store volatile i32 0, ptr %woken.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.88, i32 noundef 1106) #10
  %call.i.i415.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %352 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %353)
  %cmp175.i = icmp eq i32 %353, 1
  br i1 %cmp175.i, label %if.then165.i.if.end219.i_crit_edge, label %if.then188.i

if.then165.i.if.end219.i_crit_edge:               ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end219.i

if.then188.i:                                     ; preds = %if.then165.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %354 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %call190474.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %call.i.i416475.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %355 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %356)
  %cmp194476.i = icmp eq i32 %356, 1
  br i1 %cmp194476.i, label %if.then188.i.for.end.i_crit_edge, label %if.then188.i.cleanup215.i_crit_edge

if.then188.i.cleanup215.i_crit_edge:              ; preds = %if.then188.i
  br label %cleanup215.i

if.then188.i.for.end.i_crit_edge:                 ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup215.i:                                     ; preds = %cleanup215.i.cleanup215.i_crit_edge, %if.then188.i.cleanup215.i_crit_edge
  %__ret189.1477.i = phi i32 [ %__ret189.1.i, %cleanup215.i.cleanup215.i_crit_edge ], [ 500, %if.then188.i.cleanup215.i_crit_edge ]
  %call214.i = call i32 @schedule_timeout(i32 noundef %__ret189.1477.i) #10
  %call190.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %call.i.i416.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %357 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %358)
  %cmp194.i = icmp eq i32 %358, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214.i)
  %tobool200.not.i = icmp eq i32 %call214.i, 0
  %359 = select i1 %cmp194.i, i1 %tobool200.not.i, i1 false
  %__ret189.1.i = select i1 %359, i32 1, i32 %call214.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret189.1.i)
  %tobool207.not.i = icmp eq i32 %__ret189.1.i, 0
  %360 = select i1 %cmp194.i, i1 true, i1 %tobool207.not.i
  br i1 %360, label %cleanup215.i.for.end.i_crit_edge, label %cleanup215.i.cleanup215.i_crit_edge

cleanup215.i.cleanup215.i_crit_edge:              ; preds = %cleanup215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup215.i

cleanup215.i.for.end.i_crit_edge:                 ; preds = %cleanup215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup215.i.for.end.i_crit_edge, %if.then188.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %if.end219.i

if.end219.i:                                      ; preds = %for.end.i, %if.then165.i.if.end219.i_crit_edge
  %361 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %362)
  %cmp223.i = icmp eq i8 %362, -1
  br i1 %cmp223.i, label %cleanup250.i, label %cleanup250.thread.i

cleanup250.thread.i:                              ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m241.i) #10
  %363 = ptrtoint ptr %_m241.i to i32
  call void @__asan_store8_noabort(i32 %363)
  store i64 576, ptr %_m241.i, align 8
  %conv246.i = zext i8 %362 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m241.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1112, ptr noundef nonnull @.str.90, i32 noundef %conv246.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m241.i) #10
  br label %do.body376

cleanup250.i:                                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m227.i) #10
  %364 = ptrtoint ptr %_m227.i to i32
  call void @__asan_store8_noabort(i32 %364)
  store i64 576, ptr %_m227.i, align 8
  %365 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %name193.c569, align 4
  %367 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %lockname.i, align 8
  %369 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m227.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1109, ptr noundef nonnull @.str.89, ptr noundef %366, i32 noundef %368, ptr noundef %370) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m227.i) #10
  br label %recheck.i.backedge

recheck.i.backedge:                               ; preds = %cleanup250.i, %do.body19.i
  br label %recheck.i

if.then254.i:                                     ; preds = %if.then150.i
  %371 = ptrtoint ptr %master.i632 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %350, ptr %master.i632, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock33.i) #10
  %372 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %node_num, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m257.i) #10
  %374 = ptrtoint ptr %_m257.i to i32
  call void @__asan_store8_noabort(i32 %374)
  store i64 576, ptr %_m257.i, align 8
  %375 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %lockname.i, align 8
  %377 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %name2.i, align 8
  %conv265.i = zext i8 %373 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m257.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1121, ptr noundef nonnull @.str.91, i32 noundef %376, ptr noundef %378, i32 noundef %conv265.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m257.i) #10
  %call271.i = call fastcc i32 @dlm_do_assert_master(ptr noundef %dlm, ptr noundef %res.0.ph, ptr noundef %vote_map.i, i32 noundef 0) #10
  %379 = zext i32 %call271.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %379, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call271.i, label %do.body290.i [
    i32 0, label %if.then254.i.if.end302.i_crit_edge
    i32 -512, label %if.then254.i.if.end302.i_crit_edge1145
    i32 -4, label %if.then254.i.if.end302.i_crit_edge1146
    i32 -28, label %if.then254.i.if.end302.i_crit_edge1147
    i32 -122, label %if.then254.i.if.end302.i_crit_edge1148
  ]

if.then254.i.if.end302.i_crit_edge1148:           ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

if.then254.i.if.end302.i_crit_edge1147:           ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

if.then254.i.if.end302.i_crit_edge1146:           ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

if.then254.i.if.end302.i_crit_edge1145:           ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

if.then254.i.if.end302.i_crit_edge:               ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

do.body290.i:                                     ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m291.i) #10
  %380 = ptrtoint ptr %_m291.i to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 1152921504606847552, ptr %_m291.i, align 8
  %conv295.i = sext i32 %call271.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m291.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1129, ptr noundef nonnull @.str.18, i64 noundef %conv295.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m291.i) #10
  br label %if.end302.i

if.end302.i:                                      ; preds = %do.body290.i, %if.then254.i.if.end302.i_crit_edge, %if.then254.i.if.end302.i_crit_edge1145, %if.then254.i.if.end302.i_crit_edge1146, %if.then254.i.if.end302.i_crit_edge1147, %if.then254.i.if.end302.i_crit_edge1148, %if.end162.i, %if.end141.thread.i.if.end302.i_crit_edge
  %m.0.i = phi i8 [ %373, %do.body290.i ], [ %373, %if.then254.i.if.end302.i_crit_edge ], [ %373, %if.then254.i.if.end302.i_crit_edge1145 ], [ %373, %if.then254.i.if.end302.i_crit_edge1146 ], [ %373, %if.then254.i.if.end302.i_crit_edge1147 ], [ %373, %if.then254.i.if.end302.i_crit_edge1148 ], [ %228, %if.end162.i ], [ %228, %if.end141.thread.i.if.end302.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %spinlock.i628) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i418.i)
  %381 = ptrtoint ptr %spinlock.i628 to i32
  call void @__asan_load4_noabort(i32 %381)
  %agg.tmp.sroa.0.0.copyload.i.i420.i = load volatile i32, ptr %spinlock.i628, align 4
  %382 = ptrtoint ptr %agg.tmp.sroa.0.i.i418.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i420.i, ptr %agg.tmp.sroa.0.i.i418.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i421.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i420.i, 16
  %conv.i.i.i422.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i420.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i422.i, i32 %lock.sroa.0.0.extract.shift.i.i.i421.i)
  %cmp.i.i.not.i423.i = icmp eq i32 %conv.i.i.i422.i, %lock.sroa.0.0.extract.shift.i.i.i421.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i418.i)
  br i1 %cmp.i.i.not.i423.i, label %do.body4.i.i643, label %do.end7.i.i, !prof !371

do.body4.i.i643:                                  ; preds = %if.end302.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !400
  unreachable

do.end7.i.i:                                      ; preds = %if.end302.i
  %383 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %384, i8 %m.0.i)
  %cmp.not.i.i = icmp eq i8 %384, %m.0.i
  br i1 %cmp.not.i.i, label %do.end7.i.i.dlm_change_lockres_owner.exit.i_crit_edge, label %if.then11.i.i

do.end7.i.i.dlm_change_lockres_owner.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_change_lockres_owner.exit.i

if.then11.i.i:                                    ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %385 = ptrtoint ptr %spinlock.i628 to i32
  call void @__asan_load4_noabort(i32 %385)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %spinlock.i628, align 4
  %386 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %dlm_set_lockres_owner.exit.i.i, !prof !371

do.body4.i.i.i:                                   ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i.i:                   ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %387 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %m.0.i, ptr %owner.i, align 4
  br label %dlm_change_lockres_owner.exit.i

dlm_change_lockres_owner.exit.i:                  ; preds = %dlm_set_lockres_owner.exit.i.i, %do.end7.i.i.dlm_change_lockres_owner.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock.i628) #10
  br label %do.body376

dlm_wait_for_lock_mastery.exit:                   ; preds = %if.end81.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m102.i) #10
  %388 = ptrtoint ptr %_m102.i to i32
  call void @__asan_store8_noabort(i32 %388)
  store i64 1152921504606847552, ptr %_m102.i, align 8
  %conv106.i = sext i32 %ret.0.lcssa.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m102.i, ptr noundef nonnull @__func__.dlm_wait_for_lock_mastery, i32 noundef 1059, ptr noundef nonnull @.str.18, i64 noundef %conv106.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m102.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m346) #10
  %389 = ptrtoint ptr %_m346 to i32
  call void @__asan_store8_noabort(i32 %389)
  store i64 576, ptr %_m346, align 8
  %390 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %name193.c569, align 4
  %392 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %lockname.i, align 8
  %394 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m346, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 960, ptr noundef nonnull @.str.20, ptr noundef %391, i32 noundef %393, ptr noundef %395, i32 noundef %blocked.3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m346) #10
  %inc = add i32 %tries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %cmp358 = icmp sgt i32 %inc, 20
  br i1 %cmp358, label %do.body361, label %dlm_wait_for_lock_mastery.exit.redo_request.backedge_crit_edge

dlm_wait_for_lock_mastery.exit.redo_request.backedge_crit_edge: ; preds = %dlm_wait_for_lock_mastery.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %redo_request.backedge

do.body361:                                       ; preds = %dlm_wait_for_lock_mastery.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m362) #10
  %396 = ptrtoint ptr %_m362 to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 1152921504606847552, ptr %_m362, align 8
  %397 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %name193.c569, align 4
  %399 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %lockname.i, align 8
  %401 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %name2.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m362, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 965, ptr noundef nonnull @.str.21, ptr noundef %398, i32 noundef %400, ptr noundef %402, i32 noundef %blocked.3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m362) #10
  call void @dlm_print_one_lock_resource(ptr noundef %res.0.ph) #10
  %403 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %mle, align 4
  call void @dlm_print_one_mle(ptr noundef %404) #10
  br label %redo_request.backedge

redo_request.backedge:                            ; preds = %do.body361, %dlm_wait_for_lock_mastery.exit.redo_request.backedge_crit_edge
  %tries.0.be = phi i32 [ 0, %do.body361 ], [ %inc, %dlm_wait_for_lock_mastery.exit.redo_request.backedge_crit_edge ]
  br label %redo_request

do.body376:                                       ; preds = %dlm_change_lockres_owner.exit.i, %cleanup250.thread.i, %if.then13.i.do.body376_crit_edge, %do.body.i634.do.body376_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m377) #10
  %405 = ptrtoint ptr %_m377 to i32
  call void @__asan_store8_noabort(i32 %405)
  store i64 576, ptr %_m377, align 8
  %406 = ptrtoint ptr %name193.c569 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %name193.c569, align 4
  %408 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %lockname.i, align 8
  %410 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %name2.i, align 8
  %412 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %owner.i, align 4
  %conv387 = zext i8 %413 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m377, ptr noundef nonnull @__func__.dlm_get_lock_resource, i32 noundef 974, ptr noundef nonnull @.str.22, ptr noundef %407, i32 noundef %409, ptr noundef %411, i32 noundef %conv387) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m377) #10
  %414 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %415)
  %cmp394 = icmp eq i8 %415, -1
  br i1 %cmp394, label %do.body403, label %do.end411, !prof !371

do.body403:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 976, 0\0A.popsection", ""() #10, !srcloc !408
  unreachable

do.end411:                                        ; preds = %do.body376
  %416 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %mle, align 4
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i646 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %hb_events.i.i646 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load volatile ptr, ptr %hb_events.i.i646, align 4
  %cmp.i.not.i.i647 = icmp eq ptr %419, %hb_events.i.i646
  br i1 %cmp.i.not.i.i647, label %do.end411.dlm_mle_detach_hb_events.exit655_crit_edge, label %if.then.i.i649

do.end411.dlm_mle_detach_hb_events.exit655_crit_edge: ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit655

if.then.i.i649:                                   ; preds = %do.end411
  %call.i.i.i.i648 = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i646) #10
  br i1 %call.i.i.i.i648, label %if.end.i.i.i.i652, label %if.then.i.i649.list_del_init.exit.i.i654_crit_edge

if.then.i.i649.list_del_init.exit.i.i654_crit_edge: ; preds = %if.then.i.i649
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i654

if.end.i.i.i.i652:                                ; preds = %if.then.i.i649
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i650 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %417, i32 0, i32 1, i32 1
  %420 = ptrtoint ptr %prev.i.i.i.i650 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %prev.i.i.i.i650, align 4
  %422 = ptrtoint ptr %hb_events.i.i646 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %hb_events.i.i646, align 4
  %prev1.i.i.i.i.i651 = getelementptr inbounds %struct.list_head, ptr %423, i32 0, i32 1
  %424 = ptrtoint ptr %prev1.i.i.i.i.i651 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %421, ptr %prev1.i.i.i.i.i651, align 4
  %425 = ptrtoint ptr %421 to i32
  call void @__asan_store4_noabort(i32 %425)
  store volatile ptr %423, ptr %421, align 4
  br label %list_del_init.exit.i.i654

list_del_init.exit.i.i654:                        ; preds = %if.end.i.i.i.i652, %if.then.i.i649.list_del_init.exit.i.i654_crit_edge
  %426 = ptrtoint ptr %hb_events.i.i646 to i32
  call void @__asan_store4_noabort(i32 %426)
  store volatile ptr %hb_events.i.i646, ptr %hb_events.i.i646, align 4
  %prev.i3.i.i.i653 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %417, i32 0, i32 1, i32 1
  %427 = ptrtoint ptr %prev.i3.i.i.i653 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %hb_events.i.i646, ptr %prev.i3.i.i.i653, align 4
  br label %dlm_mle_detach_hb_events.exit655

dlm_mle_detach_hb_events.exit655:                 ; preds = %list_del_init.exit.i.i654, %do.end411.dlm_mle_detach_hb_events.exit655_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %428 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %mle, align 4
  %dlm1.i656 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %429, i32 0, i32 2
  %430 = ptrtoint ptr %dlm1.i656 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dlm1.i656, align 4
  %spinlock.i657 = getelementptr inbounds %struct.dlm_ctxt, ptr %431, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i657) #10
  %master_lock.i658 = getelementptr inbounds %struct.dlm_ctxt, ptr %431, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i658) #10
  call fastcc void @__dlm_put_mle(ptr noundef %429) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i658) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i657) #10
  %432 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %mle, align 4
  %dlm1.i659 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %433, i32 0, i32 2
  %434 = ptrtoint ptr %dlm1.i659 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %dlm1.i659, align 4
  %spinlock.i660 = getelementptr inbounds %struct.dlm_ctxt, ptr %435, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i660) #10
  %master_lock.i661 = getelementptr inbounds %struct.dlm_ctxt, ptr %435, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i661) #10
  %inuse.i662 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %433, i32 0, i32 7
  %436 = ptrtoint ptr %inuse.i662 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %inuse.i662, align 4
  %dec.i = add i32 %437, -1
  store i32 %dec.i, ptr %inuse.i662, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %433) #10
  br label %wake_waiters

wake_waiters:                                     ; preds = %dlm_mle_detach_hb_events.exit655, %dlm_lockres_grab_inflight_ref.exit591
  %master_lock.i661.sink = phi ptr [ %master_lock.i661, %dlm_mle_detach_hb_events.exit655 ], [ %spinlock130, %dlm_lockres_grab_inflight_ref.exit591 ]
  %spinlock.i660.sink = phi ptr [ %spinlock.i660, %dlm_mle_detach_hb_events.exit655 ], [ %spinlock, %dlm_lockres_grab_inflight_ref.exit591 ]
  %alloc_mle.2 = phi ptr [ %alloc_mle.1, %dlm_mle_detach_hb_events.exit655 ], [ %alloc_mle.0.ph, %dlm_lockres_grab_inflight_ref.exit591 ]
  call void @_raw_spin_unlock(ptr noundef %master_lock.i661.sink) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i660.sink) #10
  %spinlock412 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock412) #10
  %state413 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 17
  %438 = ptrtoint ptr %state413 to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %state413, align 2
  %440 = and i16 %439, -17
  store i16 %440, ptr %state413, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock412) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0.ph, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %leave

leave:                                            ; preds = %wake_waiters, %if.end95, %dlm_lockres_grab_inflight_ref.exit.leave_crit_edge
  %res.1 = phi ptr [ %res.0.ph, %wake_waiters ], [ %call16, %if.end95 ], [ %call16, %dlm_lockres_grab_inflight_ref.exit.leave_crit_edge ]
  %alloc_mle.3 = phi ptr [ %alloc_mle.2, %wake_waiters ], [ %alloc_mle.0.ph, %if.end95 ], [ %alloc_mle.0.ph, %dlm_lockres_grab_inflight_ref.exit.leave_crit_edge ]
  %tobool418.not = icmp eq ptr %alloc_mle.3, null
  br i1 %tobool418.not, label %leave.if.end420_crit_edge, label %leave.if.then419_crit_edge

leave.if.then419_crit_edge:                       ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then419

leave.if.end420_crit_edge:                        ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end420

if.then419:                                       ; preds = %leave.if.then419_crit_edge, %if.end113.if.then419_crit_edge
  %alloc_mle.3688 = phi ptr [ %alloc_mle.3, %leave.if.then419_crit_edge ], [ %call110, %if.end113.if.then419_crit_edge ]
  %res.1687 = phi ptr [ %res.1, %leave.if.then419_crit_edge ], [ null, %if.end113.if.then419_crit_edge ]
  %441 = load ptr, ptr @dlm_mle_cache, align 4
  call void @kmem_cache_free(ptr noundef %441, ptr noundef nonnull %alloc_mle.3688) #10
  br label %if.end420

if.end420:                                        ; preds = %if.then419, %leave.if.end420_crit_edge, %if.then100.if.end420_crit_edge
  %res.1682 = phi ptr [ %res.1687, %if.then419 ], [ %res.1, %leave.if.end420_crit_edge ], [ null, %if.then100.if.end420_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mle) #10
  ret ptr %res.1682
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dlm_lookup_lockres_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_wait_on_lockres_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_insert_lockres(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_find_mle(ptr noundef %dlm, ptr nocapture noundef writeonly %mle, ptr noundef %name, i32 noundef %namelen) unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %master_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #10, !srcloc !409
  unreachable

do.end9:                                          ; preds = %entry
  %call10 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name, i32 noundef %namelen) #13
  %master_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  %2 = ptrtoint ptr %master_hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_hash.i, align 4
  %div3.i = lshr i32 %call10, 10
  %rem.i = and i32 %div3.i, 31
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %rem.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %call10, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %5, i32 %rem1.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmpmle.046 = load ptr, ptr %add.ptr.i, align 4
  %tobool14.not47 = icmp eq ptr %tmpmle.046, null
  br i1 %tobool14.not47, label %do.end9.cleanup_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9.for.body_crit_edge
  %tmpmle.048 = phi ptr [ %tmpmle.0, %for.inc.for.body_crit_edge ], [ %tmpmle.046, %do.end9.for.body_crit_edge ]
  %dlm1.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %tmpmle.048, i32 0, i32 2
  %7 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlm1.i, align 4
  %cmp.not.i = icmp eq ptr %8, %dlm
  br i1 %cmp.not.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %mnamelen.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %tmpmle.048, i32 0, i32 19
  %9 = ptrtoint ptr %mnamelen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mnamelen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %namelen)
  %cmp2.not.i = icmp eq i32 %10, %namelen
  br i1 %cmp2.not.i, label %dlm_mle_equal.exit, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

dlm_mle_equal.exit:                               ; preds = %if.end.i
  %mname.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %tmpmle.048, i32 0, i32 18
  %bcmp.i = tail call i32 @bcmp(ptr %name, ptr %mname.i, i32 %namelen) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp3.not.i.not, label %if.end18, label %dlm_mle_equal.exit.for.inc_crit_edge

dlm_mle_equal.exit.for.inc_crit_edge:             ; preds = %dlm_mle_equal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %dlm_mle_equal.exit
  %mle_refs.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %tmpmle.048, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mle_refs.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mle_refs.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mle_refs.i, ptr %mle_refs.i, i32 1, ptr elementtype(i32) %mle_refs.i) #10, !srcloc !405
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !371

if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end18
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dlm_get_mle.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !378

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dlm_get_mle.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_get_mle.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end18.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %mle_refs.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %dlm_get_mle.exit

dlm_get_mle.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dlm_get_mle.exit_crit_edge
  %13 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmpmle.048, ptr %mle, align 4
  br label %cleanup

for.inc:                                          ; preds = %dlm_mle_equal.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %tmpmle.048 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmpmle.0 = load ptr, ptr %tmpmle.048, align 4
  %tobool14.not = icmp eq ptr %tmpmle.0, null
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dlm_get_mle.exit, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %dlm_get_mle.exit ], [ 0, %do.end9.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_put_mle(ptr noundef %mle) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm1 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 2
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %master_lock) #10
  tail call fastcc void @__dlm_put_mle(ptr noundef %mle)
  tail call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_init_mle(ptr noundef %mle, i32 noundef %type, ptr noundef %dlm, ptr noundef %res, ptr noundef %name, i32 noundef %namelen) unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #10, !srcloc !410
  unreachable

do.end7:                                          ; preds = %entry
  %dlm8 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 2
  %2 = ptrtoint ptr %dlm8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dlm, ptr %dlm8, align 4
  %type9 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 14
  %3 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %type9, align 4
  %4 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mle, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %mle, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pprev.i, align 4
  %hb_events = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 1
  %6 = ptrtoint ptr %hb_events to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %hb_events, ptr %hb_events, align 4
  %prev.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hb_events, ptr %prev.i, align 4
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 8
  %8 = call ptr @memset(ptr %maybe_map, i32 0, i32 32)
  %spinlock11 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock11, ptr noundef nonnull @.str.78, ptr noundef nonnull @dlm_init_mle.__key, i16 noundef signext 3) #10
  %wq = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.80, ptr noundef nonnull @dlm_init_mle.__key.79) #10
  %woken = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %woken, i32 noundef 4) #10
  %9 = ptrtoint ptr %woken to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %woken, align 4
  %mle_refs = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mle_refs, i32 noundef 4) #10
  %10 = ptrtoint ptr %mle_refs to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %mle_refs, align 4
  %response_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 10
  %11 = call ptr @memset(ptr %response_map, i32 0, i32 32)
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 12
  %12 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %master, align 4
  %new_master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 13
  %13 = ptrtoint ptr %new_master to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %new_master, align 1
  %inuse = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 7
  %14 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %inuse, align 4
  %15 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %switch = icmp ult i32 %16, 3
  br i1 %switch, label %do.end35, label %do.body30.critedge

do.body30.critedge:                               ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 273, 0\0A.popsection", ""() #10, !srcloc !411
  unreachable

do.end35:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp37 = icmp eq i32 %16, 1
  br i1 %cmp37, label %do.body39, label %do.body62

do.body39:                                        ; preds = %do.end35
  %tobool40.not = icmp eq ptr %res, null
  br i1 %tobool40.not, label %do.body50, label %do.end55, !prof !371

do.body50:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 276, 0\0A.popsection", ""() #10, !srcloc !412
  unreachable

do.end55:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %mleres = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 17
  %17 = ptrtoint ptr %mleres to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %res, ptr %mleres, align 4
  %mname = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 18
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name57 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %name57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name57, align 8
  %20 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lockname, align 8
  %22 = call ptr @memcpy(ptr %mname, ptr %19, i32 %21)
  %23 = load i32, ptr %lockname, align 8
  %mnamelen = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 19
  %24 = ptrtoint ptr %mnamelen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mnamelen, align 4
  %hash = getelementptr inbounds %struct.anon.3, ptr %lockname, i32 0, i32 1
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash, align 4
  br label %if.end85

do.body62:                                        ; preds = %do.end35
  %tobool63.not = icmp eq ptr %name, null
  br i1 %tobool63.not, label %do.body73, label %do.end78, !prof !371

do.body73:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #10, !srcloc !413
  unreachable

do.end78:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  %mleres79 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 17
  %27 = ptrtoint ptr %mleres79 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %mleres79, align 4
  %mname80 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 18
  %28 = call ptr @memcpy(ptr %mname80, ptr %name, i32 %namelen)
  %mnamelen82 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 19
  %29 = ptrtoint ptr %mnamelen82 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %namelen, ptr %mnamelen82, align 4
  %call83 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef nonnull %name, i32 noundef %namelen) #13
  br label %if.end85

if.end85:                                         ; preds = %do.end78, %do.end55
  %call83.sink = phi i32 [ %call83, %do.end78 ], [ %26, %do.end55 ]
  %mnamehash84 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 20
  %30 = ptrtoint ptr %mnamehash84 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call83.sink, ptr %mnamehash84, align 4
  %arrayidx = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 25, i32 %16
  %call.i.i148 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #10, !srcloc !389
  %32 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type9, align 4
  %arrayidx88 = getelementptr %struct.dlm_ctxt, ptr %dlm, i32 0, i32 26, i32 %33
  %call.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx88, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx88, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx88, ptr %arrayidx88, i32 1, ptr elementtype(i32) %arrayidx88) #10, !srcloc !389
  %node_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 11
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %35 = call ptr @memcpy(ptr %node_map, ptr %domain_map, i32 32)
  %vote_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 9
  %36 = call ptr @memcpy(ptr %vote_map, ptr %domain_map, i32 32)
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %37 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %node_num, align 4
  %conv = zext i8 %38 to i32
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %vote_map) #10
  %39 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %node_num, align 4
  %conv97 = zext i8 %40 to i32
  tail call void @_clear_bit(i32 noundef %conv97, ptr noundef %node_map) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %41 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %41)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %42 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !371

do.body4.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #10, !srcloc !414
  unreachable

do.end7.i:                                        ; preds = %if.end85
  %mle_hb_events.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 24
  %prev.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 24, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hb_events, ptr noundef %44, ptr noundef %mle_hb_events.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end7.i.__dlm_mle_attach_hb_events.exit_crit_edge

do.end7.i.__dlm_mle_attach_hb_events.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_mle_attach_hb_events.exit

if.end.i.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hb_events, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %hb_events to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %mle_hb_events.i, ptr %hb_events, align 4
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %hb_events, ptr %44, align 4
  br label %__dlm_mle_attach_hb_events.exit

__dlm_mle_attach_hb_events.exit:                  ; preds = %if.end.i.i.i, %do.end7.i.__dlm_mle_attach_hb_events.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_recovery_thread(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_wait_for_recovery(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_wait_for_node_recovery(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_do_master_request(ptr nocapture noundef readonly %res, ptr noundef %mle, i32 noundef %to) unnamed_addr #1 align 64 {
entry:
  %request = alloca %struct.dlm_master_request, align 4
  %response = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m35 = alloca i64, align 8
  %_m53 = alloca i64, align 8
  %_m79 = alloca i64, align 8
  %_m89 = alloca i64, align 8
  %_m107 = alloca i64, align 8
  %_m117 = alloca i64, align 8
  %_m125 = alloca i64, align 8
  %_m138 = alloca i64, align 8
  %_m149 = alloca i64, align 8
  %_m161 = alloca i64, align 8
  %_m169 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm1 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 2
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response) #10
  %2 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %response, align 4
  %3 = call ptr @memset(ptr %request, i32 0, i32 72)
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %node_num, align 4
  %6 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %request, align 4
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 14
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %do.body3, label %do.end8, !prof !371

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1316, 0\0A.popsection", ""() #10, !srcloc !415
  unreachable

do.end8:                                          ; preds = %entry
  %mnamelen = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 19
  %9 = ptrtoint ptr %mnamelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mnamelen, align 4
  %conv = trunc i32 %10 to i8
  %namelen = getelementptr inbounds %struct.dlm_master_request, ptr %request, i32 0, i32 1
  %11 = ptrtoint ptr %namelen to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %namelen, align 1
  %name = getelementptr inbounds %struct.dlm_master_request, ptr %request, i32 0, i32 4
  %mname = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 18
  %conv11 = and i32 %10, 255
  %12 = call ptr @memcpy(ptr %name, ptr %mname, i32 %conv11)
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 13
  %conv12 = trunc i32 %to to i8
  %spinlock = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 3
  br label %again

again:                                            ; preds = %again.backedge, %do.end8
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key, align 4
  %call = call i32 @o2net_send_message(i32 noundef 500, i32 noundef %14, ptr noundef nonnull %request, i32 noundef 72, i8 noundef zeroext %conv12, ptr noundef nonnull %response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then15, label %if.end114

if.then15:                                        ; preds = %again
  %15 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call, label %if.else60 [
    i32 -3, label %do.body19
    i32 -22, label %do.body34
    i32 -12, label %do.body52
  ]

do.body19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1327, ptr noundef nonnull @.str.99) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1328, 0\0A.popsection", ""() #10, !srcloc !416
  unreachable

do.body34:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #10
  %17 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606847552, ptr %_m35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1330, ptr noundef nonnull @.str.100) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #10, !srcloc !417
  unreachable

do.body52:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53) #10
  %18 = ptrtoint ptr %_m53 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606847552, ptr %_m53, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1334, ptr noundef nonnull @.str.101) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53) #10
  br label %again.backedge

again.backedge:                                   ; preds = %do.body160, %do.body52
  call void @msleep(i32 noundef 50) #10
  br label %again

if.else60:                                        ; preds = %if.then15
  %call61 = call i32 @dlm_is_host_down(i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %do.body106

if.then63:                                        ; preds = %if.else60
  %19 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call, label %do.body78 [
    i32 -512, label %if.then63.if.end87_crit_edge
    i32 -4, label %if.then63.if.end87_crit_edge286
    i32 -28, label %if.then63.if.end87_crit_edge287
    i32 -122, label %if.then63.if.end87_crit_edge288
  ]

if.then63.if.end87_crit_edge288:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then63.if.end87_crit_edge287:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then63.if.end87_crit_edge286:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then63.if.end87_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.body78:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79) #10
  %20 = ptrtoint ptr %_m79 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606847552, ptr %_m79, align 8
  %conv83 = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1340, ptr noundef nonnull @.str.18, i64 noundef %conv83) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79) #10
  br label %if.end87

if.end87:                                         ; preds = %do.body78, %if.then63.if.end87_crit_edge, %if.then63.if.end87_crit_edge286, %if.then63.if.end87_crit_edge287, %if.then63.if.end87_crit_edge288
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89) #10
  %21 = ptrtoint ptr %_m89 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606847552, ptr %_m89, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1341, ptr noundef nonnull @.str.102) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1342, 0\0A.popsection", ""() #10, !srcloc !418
  unreachable

do.body106:                                       ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m107) #10
  %22 = ptrtoint ptr %_m107 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606847552, ptr %_m107, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m107, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1346, ptr noundef nonnull @.str.103, i32 noundef %to) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m107) #10
  br label %out

if.end114:                                        ; preds = %again
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %23 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %response, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %24, label %do.body168 [
    i32 1, label %sw.bb
    i32 0, label %do.body137
    i32 2, label %do.body148
    i32 3, label %do.body160
  ]

sw.bb:                                            ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %response_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 10
  call void @_set_bit(i32 noundef %to, ptr noundef %response_map) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117) #10
  %26 = ptrtoint ptr %_m117 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 576, ptr %_m117, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1356, ptr noundef nonnull @.str.104, i32 noundef %to) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m125) #10
  %27 = ptrtoint ptr %_m125 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 576, ptr %_m125, align 8
  %name129 = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name129, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %30 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lockname, align 8
  %name131 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %name131 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name131, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m125, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1359, ptr noundef nonnull @.str.105, ptr noundef %29, i32 noundef %31, ptr noundef %33, i32 noundef %to) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m125) #10
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 12
  %34 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv12, ptr %master, align 4
  br label %sw.epilog

do.body137:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m138) #10
  %35 = ptrtoint ptr %_m138 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 576, ptr %_m138, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m138, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1363, ptr noundef nonnull @.str.106, i32 noundef %to) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m138) #10
  %response_map145 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 10
  call void @_set_bit(i32 noundef %to, ptr noundef %response_map145) #10
  br label %sw.epilog

do.body148:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149) #10
  %36 = ptrtoint ptr %_m149 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 576, ptr %_m149, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1367, ptr noundef nonnull @.str.107, i32 noundef %to) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149) #10
  %response_map156 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 10
  call void @_set_bit(i32 noundef %to, ptr noundef %response_map156) #10
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 8
  call void @_set_bit(i32 noundef %to, ptr noundef %maybe_map) #10
  br label %sw.epilog

do.body160:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m161) #10
  %37 = ptrtoint ptr %_m161 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 576, ptr %_m161, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m161, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1372, ptr noundef nonnull @.str.108, i32 noundef %to) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m161) #10
  %38 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %response, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %again.backedge

do.body168:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m169) #10
  %39 = ptrtoint ptr %_m169 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606847552, ptr %_m169, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m169, ptr noundef nonnull @__func__.dlm_do_master_request, i32 noundef 1377, ptr noundef nonnull @.str.109, i32 noundef %24) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m169) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1378, 0\0A.popsection", ""() #10, !srcloc !419
  unreachable

sw.epilog:                                        ; preds = %do.body148, %do.body137, %sw.bb
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %out

out:                                              ; preds = %sw.epilog, %do.body106
  %ret.0 = phi i32 [ %call, %do.body106 ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %request) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_mle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_master_request_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i413 = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %tmpmle = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m61 = alloca i64, align 8
  %_m79 = alloca i64, align 8
  %_m103 = alloca i64, align 8
  %_m120 = alloca i64, align 8
  %_m197 = alloca i64, align 8
  %_m222 = alloca i64, align 8
  %_m246 = alloca i64, align 8
  %_m274 = alloca i64, align 8
  %_m293 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpmle) #10
  %0 = ptrtoint ptr %tmpmle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmpmle, align 4
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dlm_domain_fully_joined(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.then310_crit_edge, label %if.end4

if.end.if.then310_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then310

if.end4:                                          ; preds = %if.end
  %name5 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %namelen7 = getelementptr inbounds %struct.dlm_master_request, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %namelen7 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %namelen7, align 1
  %conv = zext i8 %2 to i32
  %call8 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name5, i32 noundef %conv) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp = icmp ugt i8 %2, 32
  br i1 %cmp, label %if.end4.if.then310_crit_edge, label %way_up_top.preheader

if.end4.if.then310_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then310

way_up_top.preheader:                             ; preds = %if.end4
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  %master_lock171 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 22
  br label %way_up_top.outer

way_up_top.outer:                                 ; preds = %if.then176.way_up_top.outer_crit_edge, %way_up_top.preheader
  %mle.0.ph = phi ptr [ null, %way_up_top.preheader ], [ %call179, %if.then176.way_up_top.outer_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call12470 = tail call ptr @__dlm_lookup_lockres(ptr noundef %data, ptr noundef %name5, i32 noundef %conv, i32 noundef %call8) #10
  %tobool13.not471 = icmp eq ptr %call12470, null
  br i1 %tobool13.not471, label %way_up_top.outer.if.end170_crit_edge, label %way_up_top.outer.if.then14_crit_edge

way_up_top.outer.if.then14_crit_edge:             ; preds = %way_up_top.outer
  br label %if.then14

way_up_top.outer.if.end170_crit_edge:             ; preds = %way_up_top.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then14:                                        ; preds = %if.then19.if.then14_crit_edge, %way_up_top.outer.if.then14_crit_edge
  %call12472 = phi ptr [ %call12, %if.then19.if.then14_crit_edge ], [ %call12470, %way_up_top.outer.if.then14_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %spinlock16 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call12472, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock16) #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call12472, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then14
  tail call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  tail call void @dlm_lockres_put(ptr noundef nonnull %call12472)
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call12 = tail call ptr @__dlm_lookup_lockres(ptr noundef %data, ptr noundef %name5, i32 noundef %conv, i32 noundef %call8) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then19.if.end170_crit_edge, label %if.then19.if.then14_crit_edge

if.then19.if.then14_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then19.if.end170_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.end21:                                         ; preds = %if.then14
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call12472, i32 0, i32 17
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 2
  %conv22 = zext i16 %6 to i32
  %and = and i32 %conv22, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end33, label %if.then24

if.then24:                                        ; preds = %if.end21
  tail call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 576, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1456, ptr noundef nonnull @.str.23) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %tobool30.not = icmp eq ptr %mle.0.ph, null
  br i1 %tobool30.not, label %if.then24.if.then306_crit_edge, label %if.then31

if.then24.if.then306_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %8 = load ptr, ptr @dlm_mle_cache, align 4
  call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %mle.0.ph) #10
  br label %if.then306

if.end33:                                         ; preds = %if.end21
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %call12472, i32 0, i32 16
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %owner, align 4
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %11 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp36 = icmp eq i8 %10, %12
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end33
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 4
  %conv39 = zext i8 %14 to i32
  tail call void @dlm_lockres_set_refmap_bit(ptr undef, ptr noundef nonnull %call12472, i32 noundef %conv39)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  %tobool41.not = icmp eq ptr %mle.0.ph, null
  br i1 %tobool41.not, label %if.then38.do.body273_crit_edge, label %if.then42

if.then38.do.body273_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body273

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load ptr, ptr @dlm_mle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %mle.0.ph) #10
  br label %do.body273

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp46.not = icmp eq i8 %10, -1
  br i1 %cmp46.not, label %if.end54, label %if.then48

if.then48:                                        ; preds = %if.else
  tail call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  %tobool50.not = icmp eq ptr %mle.0.ph, null
  br i1 %tobool50.not, label %if.then48.if.then306_crit_edge, label %if.then51

if.then48.if.then306_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %16 = load ptr, ptr @dlm_mle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %mle.0.ph) #10
  br label %if.then306

if.end54:                                         ; preds = %if.else
  %and57 = and i32 %conv22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body60, label %if.end74

do.body60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61) #10
  %17 = ptrtoint ptr %_m61 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606847552, ptr %_m61, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1492, ptr noundef nonnull @.str.24) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1493, 0\0A.popsection", ""() #10, !srcloc !420
  unreachable

if.end74:                                         ; preds = %if.end54
  tail call void @_raw_spin_lock(ptr noundef %master_lock171) #10
  %call75 = call fastcc i32 @dlm_find_mle(ptr noundef %data, ptr noundef nonnull %tmpmle, ptr noundef %name5, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body78, label %if.end92

do.body78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79) #10
  %18 = ptrtoint ptr %_m79 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606847552, ptr %_m79, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1500, ptr noundef nonnull @.str.25) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1501, 0\0A.popsection", ""() #10, !srcloc !421
  unreachable

if.end92:                                         ; preds = %if.end74
  %19 = ptrtoint ptr %tmpmle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tmpmle, align 4
  %spinlock93 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock93) #10
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %22, label %if.else137 [
    i32 0, label %if.end92.if.then159_crit_edge
    i32 2, label %do.body102
  ]

if.end92.if.then159_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then159

do.body102:                                       ; preds = %if.end92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m103) #10
  %24 = ptrtoint ptr %_m103 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 576, ptr %_m103, align 8
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 12
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %master, align 4
  %conv107 = zext i8 %26 to i32
  %new_master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 13
  %27 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %new_master, align 1
  %conv108 = zext i8 %28 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m103, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1511, ptr noundef nonnull @.str.26, i32 noundef %conv107, i32 noundef %conv108) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m103) #10
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %master, align 4
  %31 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp116 = icmp eq i8 %30, %32
  br i1 %cmp116, label %do.body119, label %do.body102.if.then159_crit_edge

do.body102.if.then159_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then159

do.body119:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120) #10
  %33 = ptrtoint ptr %_m120 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606847552, ptr %_m120, align 8
  %34 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %new_master, align 1
  %conv125 = zext i8 %35 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1515, ptr noundef nonnull @.str.27, i32 noundef %conv125) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1516, 0\0A.popsection", ""() #10, !srcloc !422
  unreachable

if.else137:                                       ; preds = %if.end92
  %master138 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 12
  %36 = ptrtoint ptr %master138 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %master138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp140.not = icmp eq i8 %37, -1
  br i1 %cmp140.not, label %if.else137.if.then159_crit_edge, label %if.then142

if.else137.if.then159_crit_edge:                  ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then159

if.then142:                                       ; preds = %if.else137
  %38 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp147 = icmp eq i8 %37, %39
  br i1 %cmp147, label %if.then149, label %if.then142.if.end163_crit_edge

if.then142.if.end163_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then149:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf, align 4
  %conv151 = zext i8 %41 to i32
  tail call void @dlm_lockres_set_refmap_bit(ptr undef, ptr noundef nonnull %call12472, i32 noundef %conv151)
  br label %if.end163

if.then159:                                       ; preds = %if.else137.if.then159_crit_edge, %do.body102.if.then159_crit_edge, %if.end92.if.then159_crit_edge
  %response.0.ph = phi i8 [ 2, %if.else137.if.then159_crit_edge ], [ 0, %do.body102.if.then159_crit_edge ], [ 0, %if.end92.if.then159_crit_edge ]
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buf, align 4
  %conv161 = zext i8 %43 to i32
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 8
  call void @_set_bit(i32 noundef %conv161, ptr noundef %maybe_map) #10
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %if.then149, %if.then142.if.end163_crit_edge
  %tobool271.not = phi i1 [ false, %if.then149 ], [ true, %if.then142.if.end163_crit_edge ], [ true, %if.then159 ]
  %response.0424 = phi i8 [ 1, %if.then149 ], [ 0, %if.then142.if.end163_crit_edge ], [ %response.0.ph, %if.then159 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock93) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock171) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  call fastcc void @dlm_put_mle(ptr noundef %20)
  %tobool167.not = icmp eq ptr %mle.0.ph, null
  br i1 %tobool167.not, label %if.end163.send_response_crit_edge, label %if.then168

if.end163.send_response_crit_edge:                ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_response

if.then168:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  %44 = load ptr, ptr @dlm_mle_cache, align 4
  call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %mle.0.ph) #10
  br label %send_response

if.end170:                                        ; preds = %if.then19.if.end170_crit_edge, %way_up_top.outer.if.end170_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %master_lock171) #10
  %call172 = call fastcc i32 @dlm_find_mle(ptr noundef %data, ptr noundef nonnull %tmpmle, ptr noundef %name5, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then174, label %if.else212

if.then174:                                       ; preds = %if.end170
  %tobool175.not = icmp eq ptr %mle.0.ph, null
  br i1 %tobool175.not, label %if.then176, label %if.end207

if.then176:                                       ; preds = %if.then174
  tail call void @_raw_spin_unlock(ptr noundef %master_lock171) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %45 = load ptr, ptr @dlm_mle_cache, align 4
  %call179 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %45, i32 noundef 3136) #10
  %tobool180.not = icmp eq ptr %call179, null
  br i1 %tobool180.not, label %do.body196, label %if.then176.way_up_top.outer_crit_edge

if.then176.way_up_top.outer_crit_edge:            ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  br label %way_up_top.outer

do.body196:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m197) #10
  %46 = ptrtoint ptr %_m197 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606847552, ptr %_m197, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m197, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1570, ptr noundef nonnull @.str.18, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m197) #10
  br label %if.then310

if.end207:                                        ; preds = %if.then174
  tail call fastcc void @dlm_init_mle(ptr noundef nonnull %mle.0.ph, i32 noundef 0, ptr noundef %data, ptr noundef null, ptr noundef %name5, i32 noundef %conv)
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %buf, align 4
  %conv209 = zext i8 %48 to i32
  %maybe_map210 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0.ph, i32 0, i32 8
  tail call void @_set_bit(i32 noundef %conv209, ptr noundef %maybe_map210) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %49 = ptrtoint ptr %master_lock171 to i32
  call void @__asan_load4_noabort(i32 %49)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %master_lock171, align 4
  %50 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !371

do.body4.i:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #10, !srcloc !374
  unreachable

do.end9.i:                                        ; preds = %if.end207
  %mnamehash.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0.ph, i32 0, i32 20
  %51 = ptrtoint ptr %mnamehash.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mnamehash.i, align 8
  %master_hash.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 23
  %53 = ptrtoint ptr %master_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %master_hash.i.i, align 4
  %div3.i.i = lshr i32 %52, 10
  %rem.i.i = and i32 %div3.i.i, 31
  %arrayidx.i.i = getelementptr ptr, ptr %54, i32 %rem.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %rem1.i.i = and i32 %52, 1023
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %56, i32 %rem1.i.i
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i.i, align 4
  %59 = ptrtoint ptr %mle.0.ph to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %mle.0.ph, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %do.end9.i.__dlm_insert_mle.exit_crit_edge, label %do.body12.i.i

do.end9.i.__dlm_insert_mle.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_insert_mle.exit

do.body12.i.i:                                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %mle.0.ph, ptr %pprev.i.i, align 4
  br label %__dlm_insert_mle.exit

__dlm_insert_mle.exit:                            ; preds = %do.body12.i.i, %do.end9.i.__dlm_insert_mle.exit_crit_edge
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %mle.0.ph, ptr %add.ptr.i.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %mle.0.ph, i32 0, i32 1
  %62 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %add.ptr.i.i, ptr %pprev34.i.i, align 4
  br label %if.end265

if.else212:                                       ; preds = %if.end170
  %63 = ptrtoint ptr %tmpmle to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tmpmle, align 4
  %spinlock213 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %64, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock213) #10
  %master214 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %master214 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %master214, align 4
  %node_num216 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %67 = ptrtoint ptr %node_num216 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %node_num216, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp218 = icmp eq i8 %66, %68
  br i1 %cmp218, label %do.body221, label %if.end235

do.body221:                                       ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m222) #10
  %69 = ptrtoint ptr %_m222 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 1152921504606847552, ptr %_m222, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m222, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1585, ptr noundef nonnull @.str.28) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m222) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1586, 0\0A.popsection", ""() #10, !srcloc !423
  unreachable

if.end235:                                        ; preds = %if.else212
  %type236 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %64, i32 0, i32 14
  %70 = ptrtoint ptr %type236 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type236, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %71, label %if.else257 [
    i32 0, label %if.end235.if.end259_crit_edge
    i32 2, label %do.body245
  ]

if.end235.if.end259_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end259

do.body245:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m246) #10
  %73 = ptrtoint ptr %_m246 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 576, ptr %_m246, align 8
  %conv251 = zext i8 %66 to i32
  %new_master252 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %64, i32 0, i32 13
  %74 = ptrtoint ptr %new_master252 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %new_master252, align 1
  %conv253 = zext i8 %75 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m246, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1592, ptr noundef nonnull @.str.29, i32 noundef %conv251, i32 noundef %conv253) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m246) #10
  br label %if.end259

if.else257:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end259

if.end259:                                        ; preds = %if.else257, %do.body245, %if.end235.if.end259_crit_edge
  %response.1 = phi i8 [ 0, %do.body245 ], [ 2, %if.else257 ], [ 0, %if.end235.if.end259_crit_edge ]
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %buf, align 4
  %conv261 = zext i8 %77 to i32
  %maybe_map262 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %64, i32 0, i32 8
  call void @_set_bit(i32 noundef %conv261, ptr noundef %maybe_map262) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock213) #10
  br label %if.end265

if.end265:                                        ; preds = %if.end259, %__dlm_insert_mle.exit
  %response.2 = phi i8 [ %response.1, %if.end259 ], [ 0, %__dlm_insert_mle.exit ]
  call void @_raw_spin_unlock(ptr noundef %master_lock171) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br i1 %tobool173.not, label %if.end265.if.then310_crit_edge, label %if.then269

if.end265.if.then310_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then310

if.then269:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %tmpmle to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tmpmle, align 4
  %dlm1.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dlm1.i, align 4
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %81, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %master_lock.i412 = getelementptr inbounds %struct.dlm_ctxt, ptr %81, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i412) #10
  call fastcc void @__dlm_put_mle(ptr noundef %79) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i412) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %if.then310

send_response:                                    ; preds = %if.then168, %if.end163.send_response_crit_edge
  br i1 %tobool271.not, label %send_response.if.then306_crit_edge, label %send_response.do.body273_crit_edge

send_response.do.body273_crit_edge:               ; preds = %send_response
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body273

send_response.if.then306_crit_edge:               ; preds = %send_response
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then306

do.body273:                                       ; preds = %send_response.do.body273_crit_edge, %if.then42, %if.then38.do.body273_crit_edge
  %response.3439 = phi i8 [ %response.0424, %send_response.do.body273_crit_edge ], [ 1, %if.then42 ], [ 1, %if.then38.do.body273_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m274) #10
  %82 = ptrtoint ptr %_m274 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 576, ptr %_m274, align 8
  %83 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %node_num, align 4
  %conv279 = zext i8 %84 to i32
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %call12472, i32 0, i32 1
  %85 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lockname, align 8
  %name282 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call12472, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name282, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m274, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1616, ptr noundef nonnull @.str.30, i32 noundef %conv279, i32 noundef %86, ptr noundef %88) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m274) #10
  call void @_raw_spin_lock(ptr noundef %spinlock16) #10
  %89 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %buf, align 4
  %call288 = call i32 @dlm_dispatch_assert_master(ptr noundef %data, ptr noundef nonnull %call12472, i32 noundef 0, i8 noundef zeroext %90, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %cmp289 = icmp slt i32 %call288, 0
  br i1 %cmp289, label %do.body292, label %if.else301

do.body292:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m293) #10
  %91 = ptrtoint ptr %_m293 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 1152921504606847552, ptr %_m293, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m293, ptr noundef nonnull @__func__.dlm_master_request_handler, i32 noundef 1621, ptr noundef nonnull @.str.31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m293) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call12472)
  br label %if.then310

if.else301:                                       ; preds = %do.body273
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i413)
  %92 = ptrtoint ptr %spinlock16 to i32
  call void @__asan_load4_noabort(i32 %92)
  %agg.tmp.sroa.0.0.copyload.i.i415 = load volatile i32, ptr %spinlock16, align 4
  %93 = ptrtoint ptr %agg.tmp.sroa.0.i.i413 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i415, ptr %agg.tmp.sroa.0.i.i413, align 4
  %lock.sroa.0.0.extract.shift.i.i.i416 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i415, 16
  %conv.i.i.i417 = and i32 %agg.tmp.sroa.0.0.copyload.i.i415, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i417, i32 %lock.sroa.0.0.extract.shift.i.i.i416)
  %cmp.i.i.not.i418 = icmp eq i32 %conv.i.i.i417, %lock.sroa.0.0.extract.shift.i.i.i416
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i413)
  br i1 %cmp.i.i.not.i418, label %do.body4.i419, label %if.end308, !prof !371

do.body4.i419:                                    ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 659, 0\0A.popsection", ""() #10, !srcloc !396
  unreachable

if.then306:                                       ; preds = %send_response.if.then306_crit_edge, %if.then51, %if.then48.if.then306_crit_edge, %if.then31, %if.then24.if.then306_crit_edge
  %response.3431445 = phi i8 [ 0, %if.then48.if.then306_crit_edge ], [ 0, %if.then51 ], [ 3, %if.then24.if.then306_crit_edge ], [ 3, %if.then31 ], [ %response.0424, %send_response.if.then306_crit_edge ]
  call void @dlm_lockres_put(ptr noundef nonnull %call12472)
  br label %if.then310

if.end308:                                        ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #12
  %inflight_assert_workers.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call12472, i32 0, i32 20
  %94 = ptrtoint ptr %inflight_assert_workers.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %inflight_assert_workers.i, align 4
  %inc.i = add i32 %95, 1
  store i32 %inc.i, ptr %inflight_assert_workers.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %96 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 576, ptr %_m.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %97 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name.i, align 4
  %99 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lockname, align 8
  %101 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name282, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.__dlm_lockres_grab_inflight_worker, i32 noundef 663, ptr noundef nonnull @.str.6, ptr noundef %98, i32 noundef %100, ptr noundef %102, i32 noundef %inc.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock16) #10
  br label %if.end311

if.then310:                                       ; preds = %if.then306, %do.body292, %if.then269, %if.end265.if.then310_crit_edge, %do.body196, %if.end4.if.then310_crit_edge, %if.end.if.then310_crit_edge
  %response.4.ph = phi i8 [ %response.3431445, %if.then306 ], [ 3, %do.body292 ], [ %response.2, %if.then269 ], [ %response.2, %if.end265.if.then310_crit_edge ], [ 3, %do.body196 ], [ 0, %if.end.if.then310_crit_edge ], [ 22, %if.end4.if.then310_crit_edge ]
  call void @dlm_put(ptr noundef %data) #10
  br label %if.end311

if.end311:                                        ; preds = %if.then310, %if.end308
  %response.4452 = phi i8 [ %response.4.ph, %if.then310 ], [ %response.3439, %if.end308 ]
  %conv312 = zext i8 %response.4452 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end311, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv312, %if.end311 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpmle) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_domain_fully_joined(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dlm_lookup_lockres(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_dispatch_assert_master(ptr noundef %dlm, ptr noundef %res, i32 noundef %ignore_higher, i8 noundef zeroext %request_from, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %2 = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %func.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dlm_assert_master_worker, ptr %func.i, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %data1.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data1.i, align 8
  %dlm2.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dlm2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dlm, ptr %dlm2.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %res, ptr %1, align 4
  %ignore_higher2 = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %10 = trunc i32 %ignore_higher to i8
  %bf.shl = shl i8 %10, 7
  %11 = ptrtoint ptr %ignore_higher2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.shl, ptr %ignore_higher2, align 8
  %request_from4 = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %request_from4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %request_from, ptr %request_from4, align 8
  %flags6 = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_higher)
  %tobool7.not = icmp eq i32 %ignore_higher, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %14 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 576, ptr %_m, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %15 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_dispatch_assert_master, i32 noundef 2069, ptr noundef nonnull @.str.53, i32 noundef %16, ptr noundef %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end13

if.end13:                                         ; preds = %do.body, %if.end.if.end13_crit_edge
  %work_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 44
  call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_list = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 43, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %20, ptr noundef %work_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add_tail.exit_crit_edge

if.end13.list_add_tail.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %work_list, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end13.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  %dlm_worker = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 37
  %25 = ptrtoint ptr %dlm_worker to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dlm_worker, align 4
  %dispatched_work = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 42
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %dispatched_work) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_assert_master_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef writeonly %ret_data) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i34.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i664 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i645 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i646 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %mle = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m15 = alloca i64, align 8
  %_m27 = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m60 = alloca i64, align 8
  %_m71 = alloca i64, align 8
  %_m92 = alloca i64, align 8
  %_m107 = alloca i64, align 8
  %_m133 = alloca i64, align 8
  %_m156 = alloca i64, align 8
  %_m192 = alloca i64, align 8
  %_m203 = alloca i64, align 8
  %_m221 = alloca i64, align 8
  %_m239 = alloca i64, align 8
  %_m293 = alloca i64, align 8
  %_m374 = alloca i64, align 8
  %_m401 = alloca i64, align 8
  %_m427 = alloca i64, align 8
  %_m438 = alloca i64, align 8
  %_m454 = alloca i64, align 8
  %_m466 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mle) #10
  %0 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mle, align 4
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup480_crit_edge, label %if.end

entry.cleanup480_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup480

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %namelen3 = getelementptr inbounds %struct.dlm_assert_master, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %namelen3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %namelen3, align 1
  %conv = zext i8 %2 to i32
  %call4 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name1, i32 noundef %conv) #13
  %flags5 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 2
  %3 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp = icmp ugt i8 %2, 32
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1781, ptr noundef nonnull @.str.32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end423.thread

if.end11:                                         ; preds = %if.end
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.end11.if.end22_crit_edge, label %do.body14

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.body14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m15) #10
  %6 = ptrtoint ptr %_m15 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 576, ptr %_m15, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m15, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1788, ptr noundef nonnull @.str.33, i32 noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m15) #10
  br label %if.end22

if.end22:                                         ; preds = %do.body14, %if.end11.if.end22_crit_edge
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %call23 = call fastcc i32 @dlm_find_mle(ptr noundef %data, ptr noundef nonnull %mle, ptr noundef %name1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body26, label %if.else

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #10
  %7 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 576, ptr %_m27, align 8
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 4
  %conv31 = zext i8 %9 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1796, ptr noundef nonnull @.str.34, i32 noundef %conv31, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #10
  br label %if.end122

if.else:                                          ; preds = %if.end22
  %10 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mle, align 4
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %11, i32 0, i32 8
  %call36 = call i32 @_find_first_bit_be(ptr noundef %maybe_map, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call36)
  %cmp37 = icmp sgt i32 %call36, 254
  br i1 %cmp37, label %do.body40, label %if.else50

do.body40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #10
  %12 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 576, ptr %_m41, align 8
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 4
  %conv46 = zext i8 %14 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1804, ptr noundef nonnull @.str.35, i32 noundef %conv46, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #10
  br label %if.end84

if.else50:                                        ; preds = %if.else
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 4
  %conv52 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %conv52)
  %cmp53.not = icmp eq i32 %call36, %conv52
  br i1 %cmp53.not, label %if.else50.if.end84_crit_edge, label %if.then55

if.else50.if.end84_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then55:                                        ; preds = %if.else50
  %and56 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body70, label %do.body59

do.body59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60) #10
  %17 = ptrtoint ptr %_m60 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 576, ptr %_m60, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1808, ptr noundef nonnull @.str.36, i32 noundef %conv52, i32 noundef %call36) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60) #10
  br label %if.end84

do.body70:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71) #10
  %18 = ptrtoint ptr %_m71 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 576, ptr %_m71, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1818, ptr noundef nonnull @.str.37, i32 noundef %call36, i32 noundef %conv52, i32 noundef %conv, ptr noundef %name1, i32 noundef %call36, i32 noundef %conv52) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71) #10
  br label %if.end84

if.end84:                                         ; preds = %do.body70, %do.body59, %if.else50.if.end84_crit_edge, %do.body40
  %19 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mle, align 4
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp85 = icmp eq i32 %22, 2
  br i1 %cmp85, label %if.then87, label %if.end84.if.end122_crit_edge

if.end84.if.end122_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then87:                                        ; preds = %if.end84
  %and88 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else102, label %do.body91

do.body91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m92) #10
  %23 = ptrtoint ptr %_m92 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 576, ptr %_m92, align 8
  %name96 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %24 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name96, align 4
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 4
  %conv98 = zext i8 %27 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m92, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1826, ptr noundef nonnull @.str.38, ptr noundef %25, i32 noundef %conv, ptr noundef %name1, i32 noundef %conv98) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m92) #10
  br label %if.end122

if.else102:                                       ; preds = %if.then87
  %and103 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %cleanup, label %if.else102.if.end122_crit_edge

if.else102.if.end122_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

cleanup:                                          ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m107) #10
  %28 = ptrtoint ptr %_m107 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 576, ptr %_m107, align 8
  %name111 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %29 = ptrtoint ptr %name111 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name111, align 4
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 4
  %conv113 = zext i8 %32 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m107, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1831, ptr noundef nonnull @.str.39, ptr noundef %30, i32 noundef %conv, ptr noundef %name1, i32 noundef %conv113) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m107) #10
  %33 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mle, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %34)
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %if.end423.thread

if.end122:                                        ; preds = %if.else102.if.end122_crit_edge, %do.body91, %if.end84.if.end122_crit_edge, %do.body26
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  %call124 = call ptr @__dlm_lookup_lockres(ptr noundef %data, ptr noundef %name1, i32 noundef %conv, i32 noundef %call4) #10
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %if.end255, label %if.then126

if.then126:                                       ; preds = %if.end122
  %spinlock127 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock127) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 17
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %state, align 2
  %conv128 = zext i16 %36 to i32
  %and129 = and i32 %conv128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end142, label %do.body132

do.body132:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m133) #10
  %37 = ptrtoint ptr %_m133 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606847552, ptr %_m133, align 8
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf, align 4
  %conv138 = zext i8 %39 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m133, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1848, ptr noundef nonnull @.str.40, i32 noundef %conv138, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m133) #10
  br label %do.body465

if.end142:                                        ; preds = %if.then126
  %40 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mle, align 4
  %tobool143.not = icmp eq ptr %41, null
  br i1 %tobool143.not, label %if.then144, label %if.else174

if.then144:                                       ; preds = %if.end142
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 16
  %42 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp146.not = icmp eq i8 %43, -1
  br i1 %cmp146.not, label %if.then144.if.end255.thread_crit_edge, label %land.lhs.true

if.then144.if.end255.thread_crit_edge:            ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255.thread

land.lhs.true:                                    ; preds = %if.then144
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp152.not = icmp eq i8 %43, %45
  br i1 %cmp152.not, label %land.lhs.true.if.end255.thread_crit_edge, label %do.body155

land.lhs.true.if.end255.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255.thread

do.body155:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m156) #10
  %46 = ptrtoint ptr %_m156 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606847552, ptr %_m156, align 8
  %conv161 = zext i8 %45 to i32
  %conv163 = zext i8 %43 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m156, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1857, ptr noundef nonnull @.str.41, i32 noundef %conv161, i32 noundef %conv163, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m156) #10
  call void @__dlm_print_one_lock_resource(ptr noundef nonnull %call124) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1859, 0\0A.popsection", ""() #10, !srcloc !424
  unreachable

if.else174:                                       ; preds = %if.end142
  %type175 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %41, i32 0, i32 14
  %47 = ptrtoint ptr %type175 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp176.not = icmp eq i32 %48, 2
  br i1 %cmp176.not, label %if.else231, label %if.then178

if.then178:                                       ; preds = %if.else174
  %owner179 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 16
  %49 = ptrtoint ptr %owner179 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %owner179, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp181.not = icmp eq i8 %50, -1
  br i1 %cmp181.not, label %if.end214, label %if.then183

if.then183:                                       ; preds = %if.then178
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp188 = icmp eq i8 %50, %52
  br i1 %cmp188, label %do.body191, label %do.body202

do.body191:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m192) #10
  %53 = ptrtoint ptr %_m192 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 576, ptr %_m192, align 8
  %conv197 = zext i8 %50 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m192, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1867, ptr noundef nonnull @.str.42, i32 noundef %conv197, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m192) #10
  br label %if.end255.thread

do.body202:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m203) #10
  %54 = ptrtoint ptr %_m203 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 1152921504606847552, ptr %_m203, align 8
  %conv208 = zext i8 %52 to i32
  %conv210 = zext i8 %50 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m203, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1873, ptr noundef nonnull @.str.43, i32 noundef %conv208, i32 noundef %conv210, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m203) #10
  br label %do.body465

if.end214:                                        ; preds = %if.then178
  %and217 = and i32 %conv128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %do.body220, label %if.end214.if.end255.thread_crit_edge

if.end214.if.end255.thread_crit_edge:             ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255.thread

do.body220:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m221) #10
  %55 = ptrtoint ptr %_m221 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606847552, ptr %_m221, align 8
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %buf, align 4
  %conv226 = zext i8 %57 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m221, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1881, ptr noundef nonnull @.str.44, i32 noundef %conv226, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m221) #10
  br label %do.body465

if.else231:                                       ; preds = %if.else174
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf, align 4
  %new_master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %41, i32 0, i32 13
  %60 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %new_master, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp235.not = icmp eq i8 %59, %61
  br i1 %cmp235.not, label %if.else231.if.end255.thread_crit_edge, label %do.body238

if.else231.if.end255.thread_crit_edge:            ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255.thread

do.body238:                                       ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m239) #10
  %62 = ptrtoint ptr %_m239 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1152921504606847552, ptr %_m239, align 8
  %conv244 = zext i8 %59 to i32
  %conv246 = zext i8 %61 to i32
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %41, i32 0, i32 12
  %63 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %master, align 4
  %conv247 = zext i8 %64 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m239, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1891, ptr noundef nonnull @.str.45, i32 noundef %conv244, i32 noundef %conv246, i32 noundef %conv247, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m239) #10
  br label %do.body465

if.end255:                                        ; preds = %if.end122
  %65 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mle, align 4
  %tobool256.not = icmp eq ptr %66, null
  br i1 %tobool256.not, label %if.end449.thread, label %if.end255.if.then257_crit_edge

if.end255.if.then257_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

if.end449.thread:                                 ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup480

if.end255.thread:                                 ; preds = %if.else231.if.end255.thread_crit_edge, %if.end214.if.end255.thread_crit_edge, %do.body191, %land.lhs.true.if.end255.thread_crit_edge, %if.then144.if.end255.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock127) #10
  %67 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mle, align 4
  %tobool256.not673 = icmp eq ptr %68, null
  br i1 %tobool256.not673, label %if.then392, label %if.end255.thread.if.then257_crit_edge

if.end255.thread.if.then257_crit_edge:            ; preds = %if.end255.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

if.then257:                                       ; preds = %if.end255.thread.if.then257_crit_edge, %if.end255.if.then257_crit_edge
  %69 = phi ptr [ %68, %if.end255.thread.if.then257_crit_edge ], [ %66, %if.end255.if.then257_crit_edge ]
  %spinlock258 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %69, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock258) #10
  %70 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mle, align 4
  %type259 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %type259 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type259, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %73, label %while.cond.preheader [
    i32 0, label %if.then257.if.end281_crit_edge
    i32 2, label %if.then257.if.end281_crit_edge713
  ]

if.then257.if.end281_crit_edge713:                ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

if.then257.if.end281_crit_edge:                   ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

while.cond.preheader:                             ; preds = %if.then257
  %75 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mle, align 4
  %response_map699 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %76, i32 0, i32 10
  %call268700 = call i32 @_find_next_bit_be(ptr noundef %response_map699, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call268700)
  %cmp269701 = icmp slt i32 %call268700, 255
  br i1 %cmp269701, label %while.body.lr.ph, label %while.cond.preheader.if.end281_crit_edge

while.cond.preheader.if.end281_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end280.while.body_crit_edge, %while.body.lr.ph
  %call268702 = phi i32 [ %call268700, %while.body.lr.ph ], [ %call268, %if.end280.while.body_crit_edge ]
  %77 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %node_num, align 4
  %conv271 = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call268702, i32 %conv271)
  %cmp272.not = icmp eq i32 %call268702, %conv271
  br i1 %cmp272.not, label %while.body.if.end280_crit_edge, label %land.lhs.true274

while.body.if.end280_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

land.lhs.true274:                                 ; preds = %while.body
  %79 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf, align 4
  %conv276 = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call268702, i32 %conv276)
  %cmp277.not = icmp eq i32 %call268702, %conv276
  br i1 %cmp277.not, label %land.lhs.true274.if.end280_crit_edge, label %land.lhs.true274.if.end281_crit_edge

land.lhs.true274.if.end281_crit_edge:             ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

land.lhs.true274.if.end280_crit_edge:             ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

if.end280:                                        ; preds = %land.lhs.true274.if.end280_crit_edge, %while.body.if.end280_crit_edge
  %81 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mle, align 4
  %response_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %82, i32 0, i32 10
  %add = add nsw i32 %call268702, 1
  %call268 = call i32 @_find_next_bit_be(ptr noundef %response_map, i32 noundef 255, i32 noundef %add) #10
  %cmp269 = icmp slt i32 %call268, 255
  br i1 %cmp269, label %if.end280.while.body_crit_edge, label %if.end280.if.end281_crit_edge

if.end280.if.end281_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

if.end280.while.body_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end281:                                        ; preds = %if.end280.if.end281_crit_edge, %land.lhs.true274.if.end281_crit_edge, %while.cond.preheader.if.end281_crit_edge, %if.then257.if.end281_crit_edge, %if.then257.if.end281_crit_edge713
  %master_request.0 = phi i32 [ 0, %if.then257.if.end281_crit_edge ], [ 0, %if.then257.if.end281_crit_edge713 ], [ 0, %while.cond.preheader.if.end281_crit_edge ], [ 0, %if.end280.if.end281_crit_edge ], [ 1, %land.lhs.true274.if.end281_crit_edge ]
  %tobool357.not = phi i1 [ false, %if.then257.if.end281_crit_edge ], [ false, %if.then257.if.end281_crit_edge713 ], [ true, %while.cond.preheader.if.end281_crit_edge ], [ true, %land.lhs.true274.if.end281_crit_edge ], [ true, %if.end280.if.end281_crit_edge ]
  %extra_ref.0 = phi i32 [ 1, %if.then257.if.end281_crit_edge ], [ 1, %if.then257.if.end281_crit_edge713 ], [ 0, %while.cond.preheader.if.end281_crit_edge ], [ 0, %land.lhs.true274.if.end281_crit_edge ], [ 0, %if.end280.if.end281_crit_edge ]
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %buf, align 4
  %85 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mle, align 4
  %master283 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %master283 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %84, ptr %master283, align 4
  %woken = getelementptr inbounds %struct.dlm_master_list_entry, ptr %86, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %woken, i32 noundef 4) #10
  %88 = ptrtoint ptr %woken to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 1, ptr %woken, align 4
  %89 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mle, align 4
  %wq = getelementptr inbounds %struct.dlm_master_list_entry, ptr %90, i32 0, i32 4
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %91 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mle, align 4
  %spinlock284 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %92, i32 0, i32 3
  call void @_raw_spin_unlock(ptr noundef %spinlock284) #10
  br i1 %tobool125.not, label %if.end281.if.end337_crit_edge, label %if.then286

if.end281.if.end337_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end337

if.then286:                                       ; preds = %if.end281
  %spinlock287 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock287) #10
  %93 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mle, align 4
  %type288 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %94, i32 0, i32 14
  %95 = ptrtoint ptr %type288 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp289 = icmp eq i32 %96, 2
  br i1 %cmp289, label %do.body292, label %if.else329

do.body292:                                       ; preds = %if.then286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m293) #10
  %97 = ptrtoint ptr %_m293 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 576, ptr %_m293, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 1
  %98 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lockname, align 8
  %name299 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %name299 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %name299, align 8
  %node_num300 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 12
  %102 = ptrtoint ptr %node_num300 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %node_num300, align 4
  %conv301 = zext i8 %103 to i32
  %new_master302 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %94, i32 0, i32 13
  %104 = ptrtoint ptr %new_master302 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %new_master302, align 1
  %conv303 = zext i8 %105 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m293, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1934, ptr noundef nonnull @.str.46, i32 noundef %99, ptr noundef %101, i32 noundef %conv301, i32 noundef %conv303) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m293) #10
  %state307 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 17
  %106 = ptrtoint ptr %state307 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %state307, align 2
  %108 = and i16 %107, -33
  store i16 %108, ptr %state307, align 2
  %109 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mle, align 4
  %new_master311 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %110, i32 0, i32 13
  %111 = ptrtoint ptr %new_master311 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %new_master311, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %113 = ptrtoint ptr %spinlock287 to i32
  call void @__asan_load4_noabort(i32 %113)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock287, align 4
  %114 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !371

do.body4.i:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !400
  unreachable

do.end7.i:                                        ; preds = %do.body292
  %owner8.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 16
  %115 = ptrtoint ptr %owner8.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %owner8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %112)
  %cmp.not.i = icmp eq i8 %116, %112
  br i1 %cmp.not.i, label %do.end7.i.dlm_change_lockres_owner.exit_crit_edge, label %if.then11.i

do.end7.i.dlm_change_lockres_owner.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_change_lockres_owner.exit

if.then11.i:                                      ; preds = %do.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %117 = ptrtoint ptr %spinlock287 to i32
  call void @__asan_load4_noabort(i32 %117)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock287, align 4
  %118 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_set_lockres_owner.exit.i, !prof !371

do.body4.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %owner8.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %112, ptr %owner8.i, align 4
  br label %dlm_change_lockres_owner.exit

dlm_change_lockres_owner.exit:                    ; preds = %dlm_set_lockres_owner.exit.i, %do.end7.i.dlm_change_lockres_owner.exit_crit_edge
  %120 = ptrtoint ptr %state307 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %state307, align 2
  %122 = and i16 %121, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool316.not = icmp eq i16 %122, 0
  br i1 %tobool316.not, label %if.then334.critedge, label %do.body320, !prof !378

do.body320:                                       ; preds = %dlm_change_lockres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1938, 0\0A.popsection", ""() #10, !srcloc !425
  unreachable

if.else329:                                       ; preds = %if.then286
  %master330 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %94, i32 0, i32 12
  %123 = ptrtoint ptr %master330 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %master330, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i646)
  %125 = ptrtoint ptr %spinlock287 to i32
  call void @__asan_load4_noabort(i32 %125)
  %agg.tmp.sroa.0.0.copyload.i.i648 = load volatile i32, ptr %spinlock287, align 4
  %126 = ptrtoint ptr %agg.tmp.sroa.0.i.i646 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i648, ptr %agg.tmp.sroa.0.i.i646, align 4
  %lock.sroa.0.0.extract.shift.i.i.i649 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i648, 16
  %conv.i.i.i650 = and i32 %agg.tmp.sroa.0.0.copyload.i.i648, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i650, i32 %lock.sroa.0.0.extract.shift.i.i.i649)
  %cmp.i.i.not.i651 = icmp eq i32 %conv.i.i.i650, %lock.sroa.0.0.extract.shift.i.i.i649
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i646)
  br i1 %cmp.i.i.not.i651, label %do.body4.i652, label %do.end7.i655, !prof !371

do.body4.i652:                                    ; preds = %if.else329
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #10, !srcloc !400
  unreachable

do.end7.i655:                                     ; preds = %if.else329
  %owner8.i653 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 16
  %127 = ptrtoint ptr %owner8.i653 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %owner8.i653, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %124)
  %cmp.not.i654 = icmp eq i8 %128, %124
  br i1 %cmp.not.i654, label %do.end7.i655.dlm_change_lockres_owner.exit663_crit_edge, label %if.then11.i660

do.end7.i655.dlm_change_lockres_owner.exit663_crit_edge: ; preds = %do.end7.i655
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_change_lockres_owner.exit663

if.then11.i660:                                   ; preds = %do.end7.i655
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i645)
  %129 = ptrtoint ptr %spinlock287 to i32
  call void @__asan_load4_noabort(i32 %129)
  %agg.tmp.sroa.0.0.copyload.i.i.i656 = load volatile i32, ptr %spinlock287, align 4
  %130 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i645 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i656, ptr %agg.tmp.sroa.0.i.i.i645, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i657 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i656, 16
  %conv.i.i.i.i658 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i656, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i658, i32 %lock.sroa.0.0.extract.shift.i.i.i.i657)
  %cmp.i.i.not.i.i659 = icmp eq i32 %conv.i.i.i.i658, %lock.sroa.0.0.extract.shift.i.i.i.i657
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i645)
  br i1 %cmp.i.i.not.i.i659, label %do.body4.i.i661, label %dlm_set_lockres_owner.exit.i662, !prof !371

do.body4.i.i661:                                  ; preds = %if.then11.i660
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i662:                  ; preds = %if.then11.i660
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %owner8.i653 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %124, ptr %owner8.i653, align 4
  br label %dlm_change_lockres_owner.exit663

dlm_change_lockres_owner.exit663:                 ; preds = %dlm_set_lockres_owner.exit.i662, %do.end7.i655.dlm_change_lockres_owner.exit663_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock287) #10
  br label %if.end337

if.then334.critedge:                              ; preds = %dlm_change_lockres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %spinlock287) #10
  %wq335 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq335, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end337

if.end337:                                        ; preds = %if.then334.critedge, %dlm_change_lockres_owner.exit663, %if.end281.if.end337_crit_edge
  %have_lockres_ref.0 = phi i32 [ 0, %if.end281.if.end337_crit_edge ], [ 1, %dlm_change_lockres_owner.exit663 ], [ 1, %if.then334.critedge ]
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %132 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mle, align 4
  %mle_refs = getelementptr inbounds %struct.dlm_master_list_entry, ptr %133, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mle_refs, i32 noundef 4) #10
  %134 = ptrtoint ptr %mle_refs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %mle_refs, align 4
  %136 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mle, align 4
  %inuse = getelementptr inbounds %struct.dlm_master_list_entry, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp340 = icmp sgt i32 %139, 0
  br i1 %cmp340, label %if.then342, label %if.else356

if.then342:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp345 = icmp sgt i32 %135, 2
  br i1 %tobool357.not, label %land.lhs.true350, label %if.then342.if.end370_crit_edge

if.then342.if.end370_crit_edge:                   ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end370

land.lhs.true350:                                 ; preds = %if.then342
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp351 = icmp sgt i32 %135, 1
  br i1 %cmp351, label %land.lhs.true350.if.end385_crit_edge, label %land.lhs.true350.do.body373_crit_edge

land.lhs.true350.do.body373_crit_edge:            ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body373

land.lhs.true350.if.end385_crit_edge:             ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end385

if.else356:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp359 = icmp sgt i32 %135, 1
  br i1 %tobool357.not, label %land.lhs.true364, label %if.else356.if.end370_crit_edge

if.else356.if.end370_crit_edge:                   ; preds = %if.else356
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end370

land.lhs.true364:                                 ; preds = %if.else356
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp365 = icmp sgt i32 %135, 0
  br i1 %cmp365, label %land.lhs.true364.if.end385_crit_edge, label %land.lhs.true364.do.body373_crit_edge

land.lhs.true364.do.body373_crit_edge:            ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body373

land.lhs.true364.if.end385_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end385

if.end370:                                        ; preds = %if.else356.if.end370_crit_edge, %if.then342.if.end370_crit_edge
  %tobool371.not = phi i1 [ %cmp345, %if.then342.if.end370_crit_edge ], [ %cmp359, %if.else356.if.end370_crit_edge ]
  br i1 %tobool371.not, label %if.end370.if.end385_crit_edge, label %if.end370.do.body373_crit_edge

if.end370.do.body373_crit_edge:                   ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body373

if.end370.if.end385_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end385

do.body373:                                       ; preds = %if.end370.do.body373_crit_edge, %land.lhs.true364.do.body373_crit_edge, %land.lhs.true350.do.body373_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m374) #10
  %140 = ptrtoint ptr %_m374 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 1152921504606847552, ptr %_m374, align 8
  %name378 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %141 = ptrtoint ptr %name378 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name378, align 4
  %143 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %buf, align 4
  %conv380 = zext i8 %144 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m374, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1969, ptr noundef nonnull @.str.47, ptr noundef %142, i32 noundef %conv, ptr noundef %name1, i32 noundef %conv380, i32 noundef %135, i32 noundef %extra_ref.0, i32 noundef %139) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m374) #10
  %145 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mle, align 4
  call void @dlm_print_one_mle(ptr noundef %146) #10
  br label %if.end385

if.end385:                                        ; preds = %do.body373, %if.end370.if.end385_crit_edge, %land.lhs.true364.if.end385_crit_edge, %land.lhs.true350.if.end385_crit_edge
  %147 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i664)
  %149 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %149)
  %agg.tmp.sroa.0.0.copyload.i.i666 = load volatile i32, ptr %spinlock, align 4
  %150 = ptrtoint ptr %agg.tmp.sroa.0.i.i664 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i666, ptr %agg.tmp.sroa.0.i.i664, align 4
  %lock.sroa.0.0.extract.shift.i.i.i667 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i666, 16
  %conv.i.i.i668 = and i32 %agg.tmp.sroa.0.0.copyload.i.i666, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i668, i32 %lock.sroa.0.0.extract.shift.i.i.i667)
  %cmp.i.i.not.i669 = icmp eq i32 %conv.i.i.i668, %lock.sroa.0.0.extract.shift.i.i.i667
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i664)
  br i1 %cmp.i.i.not.i669, label %do.body4.i670, label %do.body8.i, !prof !371

do.body4.i670:                                    ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.body8.i:                                       ; preds = %if.end385
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i)
  %151 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %151)
  %agg.tmp.sroa.0.0.copyload.i35.i = load volatile i32, ptr %master_lock, align 4
  %152 = ptrtoint ptr %agg.tmp.sroa.0.i34.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i35.i, ptr %agg.tmp.sroa.0.i34.i, align 4
  %lock.sroa.0.0.extract.shift.i.i36.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i35.i, 16
  %conv.i.i37.i = and i32 %agg.tmp.sroa.0.0.copyload.i35.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i37.i, i32 %lock.sroa.0.0.extract.shift.i.i36.i)
  %cmp.i.i38.not.i = icmp eq i32 %conv.i.i37.i, %lock.sroa.0.0.extract.shift.i.i36.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i)
  br i1 %cmp.i.i38.not.i, label %do.body21.i, label %do.end26.i, !prof !371

do.body21.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.end26.i:                                       ; preds = %do.body8.i
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %148, i32 0, i32 1
  %153 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.i, label %do.end26.i.__dlm_unlink_mle.exit_crit_edge, label %if.then.i.i

do.end26.i.__dlm_unlink_mle.exit_crit_edge:       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_unlink_mle.exit

if.then.i.i:                                      ; preds = %do.end26.i
  %155 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %148, align 4
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %156, ptr %154, align 4
  %tobool.not.i3.i.i = icmp eq ptr %156, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  %158 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %154, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %159 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %148, align 4
  %160 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %pprev.i.i, align 4
  br label %__dlm_unlink_mle.exit

__dlm_unlink_mle.exit:                            ; preds = %__hlist_del.exit.i.i, %do.end26.i.__dlm_unlink_mle.exit_crit_edge
  %161 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mle, align 4
  %hb_events.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %hb_events.i, align 4
  %cmp.i.not.i = icmp eq ptr %164, %hb_events.i
  br i1 %cmp.i.not.i, label %__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge, label %if.then.i

__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge: ; preds = %__dlm_unlink_mle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_mle_detach_hb_events.exit

if.then.i:                                        ; preds = %__dlm_unlink_mle.exit
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %162, i32 0, i32 1, i32 1
  %165 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %prev.i.i.i, align 4
  %167 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hb_events.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev1.i.i.i.i, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %168, ptr %166, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %171 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %hb_events.i, ptr %hb_events.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %162, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %hb_events.i, ptr %prev.i3.i.i, align 4
  br label %__dlm_mle_detach_hb_events.exit

__dlm_mle_detach_hb_events.exit:                  ; preds = %list_del_init.exit.i, %__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge
  %173 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mle, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %174)
  br i1 %tobool357.not, label %__dlm_mle_detach_hb_events.exit.done_crit_edge, label %if.then387

__dlm_mle_detach_hb_events.exit.done_crit_edge:   ; preds = %__dlm_mle_detach_hb_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then387:                                       ; preds = %__dlm_mle_detach_hb_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mle, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %176)
  br label %done

if.then392:                                       ; preds = %if.end255.thread
  %owner393 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 16
  %177 = ptrtoint ptr %owner393 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %owner393, align 4
  %179 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %178, i8 %180)
  %cmp397.not = icmp eq i8 %178, %180
  br i1 %cmp397.not, label %if.then392.done.thread682_crit_edge, label %do.body400

if.then392.done.thread682_crit_edge:              ; preds = %if.then392
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.thread682

do.body400:                                       ; preds = %if.then392
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m401) #10
  %181 = ptrtoint ptr %_m401 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 576, ptr %_m401, align 8
  %conv406 = zext i8 %180 to i32
  %conv408 = zext i8 %178 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m401, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 1987, ptr noundef nonnull @.str.48, i32 noundef %conv406, i32 noundef %conv408, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m401) #10
  br label %done.thread682

if.end423.thread:                                 ; preds = %cleanup, %do.body
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup480

done.thread682:                                   ; preds = %do.body400, %if.then392.done.thread682_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %if.then417

done:                                             ; preds = %if.then387, %__dlm_mle_detach_hb_events.exit.done_crit_edge
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br i1 %tobool125.not, label %done.if.end423_crit_edge, label %done.if.then417_crit_edge

done.if.then417_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then417

done.if.end423_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end423

if.then417:                                       ; preds = %done.if.then417_crit_edge, %done.thread682
  %have_lockres_ref.1687 = phi i32 [ 0, %done.thread682 ], [ %have_lockres_ref.0, %done.if.then417_crit_edge ]
  %master_request.1686 = phi i32 [ 0, %done.thread682 ], [ %master_request.0, %done.if.then417_crit_edge ]
  %spinlock418 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock418) #10
  %state419 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call124, i32 0, i32 17
  %182 = ptrtoint ptr %state419 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %state419, align 2
  %184 = or i16 %183, 8192
  store i16 %184, ptr %state419, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock418) #10
  %185 = ptrtoint ptr %ret_data to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call124, ptr %ret_data, align 4
  br label %if.end423

if.end423:                                        ; preds = %if.then417, %done.if.end423_crit_edge
  %have_lockres_ref.2679 = phi i32 [ %have_lockres_ref.1687, %if.then417 ], [ %have_lockres_ref.0, %done.if.end423_crit_edge ]
  %master_request.2678 = phi i32 [ %master_request.1686, %if.then417 ], [ %master_request.0, %done.if.end423_crit_edge ]
  call void @dlm_put(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master_request.2678)
  %tobool424.not = icmp eq i32 %master_request.2678, 0
  br i1 %tobool424.not, label %if.end449, label %do.body426

do.body426:                                       ; preds = %if.end423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m427) #10
  %186 = ptrtoint ptr %_m427 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 576, ptr %_m427, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m427, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 2002, ptr noundef nonnull @.str.49) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m427) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_lockres_ref.2679)
  %tobool435.not = icmp eq i32 %have_lockres_ref.2679, 0
  br i1 %tobool435.not, label %do.body437, label %do.body426.if.then451_crit_edge

do.body426.if.then451_crit_edge:                  ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then451

do.body437:                                       ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m438) #10
  %187 = ptrtoint ptr %_m438 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 1152921504606847552, ptr %_m438, align 8
  %188 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %buf, align 4
  %conv443 = zext i8 %189 to i32
  %name444 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %190 = ptrtoint ptr %name444 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %name444, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m438, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 2008, ptr noundef nonnull @.str.50, i32 noundef %conv443, ptr noundef %191, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m438) #10
  br label %cleanup480

if.end449:                                        ; preds = %if.end423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_lockres_ref.2679)
  %tobool450.not = icmp eq i32 %have_lockres_ref.2679, 0
  br i1 %tobool450.not, label %if.end449.cleanup480_crit_edge, label %if.end449.if.then451_crit_edge

if.end449.if.then451_crit_edge:                   ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then451

if.end449.cleanup480_crit_edge:                   ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup480

if.then451:                                       ; preds = %if.end449.if.then451_crit_edge, %do.body426.if.then451_crit_edge
  %ret.0698 = phi i32 [ 2, %if.end449.if.then451_crit_edge ], [ 3, %do.body426.if.then451_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m454) #10
  %192 = ptrtoint ptr %_m454 to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 576, ptr %_m454, align 8
  %name458 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %193 = ptrtoint ptr %name458 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %name458, align 4
  %195 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %buf, align 4
  %conv460 = zext i8 %196 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m454, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 2015, ptr noundef nonnull @.str.51, ptr noundef %194, i32 noundef %conv, ptr noundef %name1, i32 noundef %conv460) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m454) #10
  br label %cleanup480

do.body465:                                       ; preds = %do.body238, %do.body220, %do.body202, %do.body132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m466) #10
  %197 = ptrtoint ptr %_m466 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 1152921504606847552, ptr %_m466, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m466, ptr noundef nonnull @__func__.dlm_assert_master_handler, i32 noundef 2022, ptr noundef nonnull @.str.52) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m466) #10
  call void @__dlm_print_one_lock_resource(ptr noundef nonnull %call124) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock127) #10
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %198 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mle, align 4
  %tobool475.not = icmp eq ptr %199, null
  br i1 %tobool475.not, label %do.body465.if.end477_crit_edge, label %if.then476

do.body465.if.end477_crit_edge:                   ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end477

if.then476:                                       ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %199)
  br label %if.end477

if.end477:                                        ; preds = %if.then476, %do.body465.if.end477_crit_edge
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %200 = ptrtoint ptr %ret_data to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call124, ptr %ret_data, align 4
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup480

cleanup480:                                       ; preds = %if.end477, %if.then451, %if.end449.cleanup480_crit_edge, %do.body437, %if.end423.thread, %if.end449.thread, %entry.cleanup480_crit_edge
  %retval.0 = phi i32 [ -22, %if.end477 ], [ 0, %entry.cleanup480_crit_edge ], [ %ret.0698, %if.then451 ], [ 0, %if.end449.cleanup480_crit_edge ], [ 0, %if.end423.thread ], [ 1, %do.body437 ], [ 0, %if.end449.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mle) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dlm_put_mle(ptr noundef %mle) unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i34.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i51.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %agg.tmp.sroa.0.i56 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm1 = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 2
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.body11, !prof !371

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #10, !srcloc !426
  unreachable

do.body11:                                        ; preds = %entry
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i56)
  %4 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i57 = load volatile i32, ptr %master_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i56 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i57, ptr %agg.tmp.sroa.0.i56, align 4
  %lock.sroa.0.0.extract.shift.i.i58 = lshr i32 %agg.tmp.sroa.0.0.copyload.i57, 16
  %conv.i.i59 = and i32 %agg.tmp.sroa.0.0.copyload.i57, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i59, i32 %lock.sroa.0.0.extract.shift.i.i58)
  %cmp.i.i60.not = icmp eq i32 %conv.i.i59, %lock.sroa.0.0.extract.shift.i.i58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i56)
  br i1 %cmp.i.i60.not, label %do.body24, label %do.end32, !prof !371

do.body24:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #10, !srcloc !427
  unreachable

do.end32:                                         ; preds = %do.body11
  %mle_refs = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mle_refs, i32 noundef 4) #10
  %6 = ptrtoint ptr %mle_refs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mle_refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool34.not = icmp eq i32 %7, 0
  br i1 %tobool34.not, label %do.body36, label %if.else

do.body36:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__dlm_put_mle, i32 noundef 222, ptr noundef nonnull @.str.69, ptr noundef %mle) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @dlm_print_one_mle(ptr noundef %mle) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 224, 0\0A.popsection", ""() #10, !srcloc !428
  unreachable

if.else:                                          ; preds = %do.end32
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mle_refs, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !376
  tail call void @llvm.prefetch.p0(ptr %mle_refs, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mle_refs, ptr %mle_refs, i32 1, ptr elementtype(i32) %mle_refs) #10, !srcloc !377
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !378

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %mle_refs, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !379
  %10 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dlm1, align 4
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %11, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %12 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock.i, align 4
  %13 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body5.i, label %do.body11.i, !prof !371

do.body5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 411, 0\0A.popsection", ""() #10, !srcloc !429
  unreachable

do.body11.i:                                      ; preds = %if.then.i
  %master_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %11, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i51.i)
  %14 = ptrtoint ptr %master_lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i52.i = load volatile i32, ptr %master_lock.i, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i51.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i52.i, ptr %agg.tmp.sroa.0.i51.i, align 4
  %lock.sroa.0.0.extract.shift.i.i53.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i52.i, 16
  %conv.i.i54.i = and i32 %agg.tmp.sroa.0.0.copyload.i52.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i54.i, i32 %lock.sroa.0.0.extract.shift.i.i53.i)
  %cmp.i.i55.not.i = icmp eq i32 %conv.i.i54.i, %lock.sroa.0.0.extract.shift.i.i53.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i51.i)
  br i1 %cmp.i.i55.not.i, label %do.body24.i, label %do.body33.i, !prof !371

do.body24.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 412, 0\0A.popsection", ""() #10, !srcloc !430
  unreachable

do.body33.i:                                      ; preds = %do.body11.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %16 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 576, ptr %_m.i, align 8
  %mnamelen.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 19
  %17 = ptrtoint ptr %mnamelen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mnamelen.i, align 4
  %mname.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 18
  %type.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 14
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_mle_release, i32 noundef 415, ptr noundef nonnull @.str.110, i32 noundef %18, ptr noundef %mname.i, i32 noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %21 = ptrtoint ptr %spinlock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock.i, align 4
  %22 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.body8.i.i, !prof !371

do.body4.i.i:                                     ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.body8.i.i:                                     ; preds = %do.body33.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i.i)
  %23 = ptrtoint ptr %master_lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %agg.tmp.sroa.0.0.copyload.i35.i.i = load volatile i32, ptr %master_lock.i, align 4
  %24 = ptrtoint ptr %agg.tmp.sroa.0.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i35.i.i, ptr %agg.tmp.sroa.0.i34.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i36.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i35.i.i, 16
  %conv.i.i37.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i35.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i37.i.i, i32 %lock.sroa.0.0.extract.shift.i.i36.i.i)
  %cmp.i.i38.not.i.i = icmp eq i32 %conv.i.i37.i.i, %lock.sroa.0.0.extract.shift.i.i36.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i.i)
  br i1 %cmp.i.i38.not.i.i, label %do.body21.i.i, label %do.end26.i.i, !prof !371

do.body21.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.end26.i.i:                                     ; preds = %do.body8.i.i
  %pprev.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %do.end26.i.i.__dlm_unlink_mle.exit.i_crit_edge, label %if.then.i.i.i

do.end26.i.i.__dlm_unlink_mle.exit.i_crit_edge:   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_unlink_mle.exit.i

if.then.i.i.i:                                    ; preds = %do.end26.i.i
  %27 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mle, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %26, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %31 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %mle, align 4
  %32 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %__dlm_unlink_mle.exit.i

__dlm_unlink_mle.exit.i:                          ; preds = %__hlist_del.exit.i.i.i, %do.end26.i.i.__dlm_unlink_mle.exit.i_crit_edge
  %hb_events.i.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 1
  %33 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hb_events.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %34, %hb_events.i.i
  br i1 %cmp.i.not.i.i, label %__dlm_unlink_mle.exit.i.dlm_mle_release.exit_crit_edge, label %if.then.i.i

__dlm_unlink_mle.exit.i.dlm_mle_release.exit_crit_edge: ; preds = %__dlm_unlink_mle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_release.exit

if.then.i.i:                                      ; preds = %__dlm_unlink_mle.exit.i
  %call.i.i.i.i62 = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i) #10
  br i1 %call.i.i.i.i62, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i.i, align 4
  %37 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hb_events.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %41 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %hb_events.i.i, ptr %hb_events.i.i, align 4
  %prev.i3.i.i.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %hb_events.i.i, ptr %prev.i3.i.i.i, align 4
  br label %dlm_mle_release.exit

dlm_mle_release.exit:                             ; preds = %list_del_init.exit.i.i, %__dlm_unlink_mle.exit.i.dlm_mle_release.exit_crit_edge
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 4
  %arrayidx.i = getelementptr %struct.dlm_ctxt, ptr %11, i32 0, i32 26, i32 %44
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !381
  %46 = load ptr, ptr @dlm_mle_cache, align 4
  call void @kmem_cache_free(ptr noundef %46, ptr noundef %mle) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dlm_mle_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_print_one_lock_resource(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_assert_master_post_handler(i32 noundef %status, ptr nocapture noundef readnone %data, ptr noundef %ret_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ret_data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %ret_data, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %ret_data, i32 0, i32 17
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 2
  %2 = and i16 %1, -8193
  store i16 %2, ptr %state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %ret_data, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @dlm_lockres_put(ptr noundef nonnull %ret_data)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_assert_master_worker(ptr nocapture noundef readonly %item, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %nodemap = alloca [8 x i32], align 4
  %_m = alloca i64, align 8
  %_m32 = alloca i64, align 8
  %_m65 = alloca i64, align 8
  %_m77 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nodemap) #10
  %dlm1 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %u = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %ignore_higher3 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %ignore_higher3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ignore_higher3, align 4
  %request_from5 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %request_from5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %request_from5, align 4
  %flags7 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags7, align 4
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 18
  %9 = call ptr @memcpy(ptr %nodemap, ptr %domain_map, i32 32)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_num, align 4
  %conv = zext i8 %11 to i32
  call void @_clear_bit(i32 noundef %conv, ptr noundef nonnull %nodemap) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %conv11 = zext i8 %6 to i32
  call void @_clear_bit(i32 noundef %conv11, ptr noundef nonnull %nodemap) #10
  %12 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %node_num, align 4
  %conv14 = zext i8 %13 to i32
  %add117 = add nuw nsw i32 %conv14, 1
  %call118 = call i32 @_find_next_bit_be(ptr noundef nonnull %nodemap, i32 noundef 255, i32 noundef %add117) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call118)
  %cmp119 = icmp sgt i32 %call118, 254
  br i1 %cmp119, label %if.then.if.end19_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.then.if.end_crit_edge
  %call120 = phi i32 [ %call, %if.end.if.end_crit_edge ], [ %call118, %if.then.if.end_crit_edge ]
  call void @_clear_bit(i32 noundef %call120, ptr noundef nonnull %nodemap) #10
  %add = add nsw i32 %call120, 1
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %nodemap, i32 noundef 255, i32 noundef %add) #10
  %cmp = icmp sgt i32 %call, 254
  br i1 %cmp, label %if.end.if.end19_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %spinlock20 = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock20) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %state, align 2
  %16 = and i16 %15, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool22.not = icmp eq i16 %16, 0
  br i1 %tobool22.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %17 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 576, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_assert_master_worker, i32 noundef 2126, ptr noundef nonnull @.str.111) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  br label %put

if.else:                                          ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %18 = ptrtoint ptr %spinlock20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock20, align 4
  %19 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body11.i, !prof !371

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3487, 0\0A.popsection", ""() #10, !srcloc !431
  unreachable

do.body11.i:                                      ; preds = %if.else
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %state, align 2
  %22 = and i16 %21, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool15.not.i = icmp eq i16 %22, 0
  br i1 %tobool15.not.i, label %__dlm_lockres_reserve_ast.exit, label %do.body23.i, !prof !378

do.body23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3491, 0\0A.popsection", ""() #10, !srcloc !432
  unreachable

__dlm_lockres_reserve_ast.exit:                   ; preds = %do.body11.i
  %asts_reserved.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %asts_reserved.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %asts_reserved.i, i32 1, i32 3, i32 1) #10
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %asts_reserved.i, ptr %asts_reserved.i, i32 1, ptr elementtype(i32) %asts_reserved.i) #10, !srcloc !389
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m32) #10
  %24 = ptrtoint ptr %_m32 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 576, ptr %_m32, align 8
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lockname, align 8
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %29 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %node_num, align 4
  %conv38 = zext i8 %30 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m32, ptr noundef nonnull @__func__.dlm_assert_master_worker, i32 noundef 2136, ptr noundef nonnull @.str.112, i32 noundef %26, ptr noundef %28, i32 noundef %conv38) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m32) #10
  %call43 = call fastcc i32 @dlm_do_assert_master(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %nodemap, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %__dlm_lockres_reserve_ast.exit.if.end75_crit_edge

__dlm_lockres_reserve_ast.exit.if.end75_crit_edge: ; preds = %__dlm_lockres_reserve_ast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then46:                                        ; preds = %__dlm_lockres_reserve_ast.exit
  %call47 = call i32 @dlm_is_host_down(i32 noundef %call43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.then46.if.end75_crit_edge

if.then46.if.end75_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then49:                                        ; preds = %if.then46
  %31 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call43, label %do.body64 [
    i32 -512, label %if.then49.if.end75_crit_edge
    i32 -4, label %if.then49.if.end75_crit_edge121
    i32 -28, label %if.then49.if.end75_crit_edge122
    i32 -122, label %if.then49.if.end75_crit_edge123
  ]

if.then49.if.end75_crit_edge123:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then49.if.end75_crit_edge122:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then49.if.end75_crit_edge121:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then49.if.end75_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.body64:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #10
  %32 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606847552, ptr %_m65, align 8
  %conv69 = sext i32 %call43 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.dlm_assert_master_worker, i32 noundef 2141, ptr noundef nonnull @.str.18, i64 noundef %conv69) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #10
  br label %if.end75

if.end75:                                         ; preds = %do.body64, %if.then49.if.end75_crit_edge, %if.then49.if.end75_crit_edge121, %if.then49.if.end75_crit_edge122, %if.then49.if.end75_crit_edge123, %if.then46.if.end75_crit_edge, %__dlm_lockres_reserve_ast.exit.if.end75_crit_edge
  call void @dlm_lockres_release_ast(ptr noundef %1, ptr noundef %3)
  br label %put

put:                                              ; preds = %if.end75, %do.body
  call void @_raw_spin_lock(ptr noundef %spinlock20) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %33 = ptrtoint ptr %spinlock20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock20, align 4
  %34 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.body8.i.i, !prof !371

do.body4.i.i:                                     ; preds = %put
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 669, 0\0A.popsection", ""() #10, !srcloc !433
  unreachable

do.body8.i.i:                                     ; preds = %put
  %inflight_assert_workers.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 20
  %35 = ptrtoint ptr %inflight_assert_workers.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inflight_assert_workers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i, label %do.body16.i.i, label %dlm_lockres_drop_inflight_worker.exit, !prof !371

do.body16.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 670, 0\0A.popsection", ""() #10, !srcloc !434
  unreachable

dlm_lockres_drop_inflight_worker.exit:            ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i.i = add i32 %36, -1
  %37 = ptrtoint ptr %inflight_assert_workers.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dec.i.i, ptr %inflight_assert_workers.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %38 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 576, ptr %_m.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name.i.i, align 4
  %lockname.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %lockname.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lockname.i.i, align 8
  %name27.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %name27.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name27.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.__dlm_lockres_drop_inflight_worker, i32 noundef 674, ptr noundef nonnull @.str.114, ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %dec.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock20) #10
  call void @dlm_lockres_put(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m77) #10
  %45 = ptrtoint ptr %_m77 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 576, ptr %_m77, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m77, ptr noundef nonnull @__func__.dlm_assert_master_worker, i32 noundef 2152, ptr noundef nonnull @.str.113) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m77) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nodemap) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_drop_lockres_ref(ptr nocapture noundef readonly %dlm, ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %deref = alloca %struct.dlm_deref_lockres, align 4
  %r = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m28 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %deref) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #10
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r, align 4, !annotation !435
  %lockname1 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %lockname1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp ugt i32 %4, 64
  br i1 %cmp, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2224, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

do.end9:                                          ; preds = %entry
  %5 = call ptr @memset(ptr %deref, i32 0, i32 72)
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %6 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %node_num, align 4
  %node_idx = getelementptr inbounds %struct.dlm_deref_lockres, ptr %deref, i32 0, i32 2
  %8 = ptrtoint ptr %node_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %node_idx, align 2
  %conv = trunc i32 %4 to i8
  %namelen10 = getelementptr inbounds %struct.dlm_deref_lockres, ptr %deref, i32 0, i32 3
  %9 = ptrtoint ptr %namelen10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %namelen10, align 1
  %name11 = getelementptr inbounds %struct.dlm_deref_lockres, ptr %deref, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %name11, ptr %2, i32 %4)
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 4
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %owner, align 4
  %call = call i32 @o2net_send_message(i32 noundef 507, i32 noundef %12, ptr noundef nonnull %deref, i32 noundef 72, i8 noundef zeroext %14, ptr noundef nonnull %r) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %do.body15, label %if.else

do.body15:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606847552, ptr %_m, align 8
  %name18 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %16 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name18, align 4
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %owner, align 4
  %conv20 = zext i8 %19 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_drop_lockres_ref, i32 noundef 2235, ptr noundef nonnull @.str.54, ptr noundef %17, i32 noundef %4, ptr noundef %2, i32 noundef %call, i32 noundef %conv20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end50

if.else:                                          ; preds = %do.end9
  %20 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24 = icmp slt i32 %21, 0
  br i1 %cmp24, label %do.body27, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body27:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m28) #10
  %22 = ptrtoint ptr %_m28 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606847552, ptr %_m28, align 8
  %name32 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %23 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name32, align 4
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %owner, align 4
  %conv34 = zext i8 %26 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m28, ptr noundef nonnull @__func__.dlm_drop_lockres_ref, i32 noundef 2239, ptr noundef nonnull @.str.55, ptr noundef %24, i32 noundef %4, ptr noundef %2, i32 noundef %conv34, i32 noundef %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m28) #10
  call void @dlm_print_one_lock_resource(ptr noundef %res) #10
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %28)
  %cmp38 = icmp eq i32 %28, -12
  br i1 %cmp38, label %do.body41, label %do.body27.if.end50_crit_edge

do.body27.if.end50_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2242, 0\0A.popsection", ""() #10, !srcloc !437
  unreachable

if.end50:                                         ; preds = %do.body27.if.end50_crit_edge, %if.else.if.end50_crit_edge, %do.body15
  %ret.0 = phi i32 [ %call, %do.body15 ], [ %call, %do.body27.if.end50_crit_edge ], [ %21, %if.else.if.end50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %deref) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2net_send_message(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_deref_lockres_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m16 = alloca i64, align 8
  %_m31 = alloca i64, align 8
  %_m78 = alloca i64, align 8
  %_m110 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %name1 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %namelen3 = getelementptr inbounds %struct.dlm_deref_lockres, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %namelen3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %namelen3, align 1
  %conv = zext i8 %1 to i32
  %node_idx = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 3
  %2 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %node_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp = icmp ugt i8 %1, 32
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_deref_lockres_handler, i32 noundef 2272, ptr noundef nonnull @.str.32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end125

if.end9:                                          ; preds = %if.end
  %conv11 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp12 = icmp eq i8 %3, -1
  br i1 %cmp12, label %do.body15, label %if.end24

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m16) #10
  %5 = ptrtoint ptr %_m16 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606847552, ptr %_m16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m16, ptr noundef nonnull @__func__.dlm_deref_lockres_handler, i32 noundef 2276, ptr noundef nonnull @.str.56, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m16) #10
  br label %if.end125

if.end24:                                         ; preds = %if.end9
  %call25 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name1, i32 noundef %conv) #13
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call26 = tail call ptr @__dlm_lookup_lockres_full(ptr noundef %data, ptr noundef %name1, i32 noundef %conv, i32 noundef %call25) #10
  %tobool27.not = icmp eq ptr %call26, null
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br i1 %tobool27.not, label %if.then28, label %if.end39

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m31) #10
  %6 = ptrtoint ptr %_m31 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606847552, ptr %_m31, align 8
  %name35 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %7 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name35, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m31, ptr noundef nonnull @__func__.dlm_deref_lockres_handler, i32 noundef 2287, ptr noundef nonnull @.str.57, ptr noundef %8, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m31) #10
  br label %if.end125

if.end39:                                         ; preds = %if.end24
  %spinlock41 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock41) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 17
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 2
  %conv42 = zext i16 %10 to i32
  %and43 = and i32 %conv42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body46, label %if.end91

do.body46:                                        ; preds = %if.end39
  %and49 = and i32 %conv42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.end62, label %do.body54, !prof !378

do.body54:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2296, 0\0A.popsection", ""() #10, !srcloc !438
  unreachable

do.end62:                                         ; preds = %do.body46
  %refmap = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 21
  %div3.i = lshr i32 %conv11, 5
  %arrayidx.i = getelementptr i32, ptr %refmap, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv11, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool66.not = icmp eq i32 %14, 0
  br i1 %tobool66.not, label %do.body77, label %if.then67

if.then67:                                        ; preds = %do.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %15 = ptrtoint ptr %spinlock41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock41, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %if.then75, !prof !371

do.body4.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 615, 0\0A.popsection", ""() #10, !srcloc !392
  unreachable

if.then75:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %17 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 576, ptr %_m.i, align 8
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 1
  %18 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lockname.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 8
  %22 = tail call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_lockres_clear_refmap_bit, i32 noundef 618, ptr noundef nonnull @.str.4, i32 noundef %19, ptr noundef %21, i32 noundef %conv11, ptr noundef %22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @_clear_bit(i32 noundef %conv11, ptr noundef %refmap) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock41) #10
  call void @dlm_lockres_calc_usage(ptr noundef %data, ptr noundef nonnull %call26) #10
  br label %if.then124

do.body77:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock41) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m78) #10
  %23 = ptrtoint ptr %_m78 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1152921504606847552, ptr %_m78, align 8
  %name82 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %24 = ptrtoint ptr %name82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name82, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 1
  %26 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lockname, align 8
  %name85 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %name85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name85, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m78, ptr noundef nonnull @__func__.dlm_deref_lockres_handler, i32 noundef 2310, ptr noundef nonnull @.str.58, ptr noundef %25, i32 noundef %27, ptr noundef %29, i32 noundef %conv11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m78) #10
  call void @dlm_print_one_lock_resource(ptr noundef nonnull %call26) #10
  br label %if.then124

if.end91:                                         ; preds = %if.end39
  tail call void @_raw_spin_unlock(ptr noundef %spinlock41) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3392, i32 noundef 36) #15
  %tobool93.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool93.not, label %do.body109, label %if.end119

do.body109:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110) #10
  %31 = ptrtoint ptr %_m110 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606847552, ptr %_m110, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110, ptr noundef nonnull @__func__.dlm_deref_lockres_handler, i32 noundef 2320, ptr noundef nonnull @.str.18, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110) #10
  br label %if.then124

if.end119:                                        ; preds = %if.end91
  %32 = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %33 = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %34 = call ptr @memset(ptr %33, i32 0, i32 12)
  %func.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dlm_deref_lockres_worker, ptr %func.i, align 8
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %data1.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %data1.i, align 8
  %dlm2.i = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %dlm2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data, ptr %dlm2.i, align 4
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call26, ptr %32, align 4
  %deref_node = getelementptr inbounds %struct.dlm_work_item, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %41 = ptrtoint ptr %deref_node to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %3, ptr %deref_node, align 8
  %work_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_list = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 43, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %43, ptr noundef %work_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end119.list_add_tail.exit_crit_edge

if.end119.list_add_tail.exit_crit_edge:           ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %work_list, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end119.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  %dlm_worker = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 37
  %48 = ptrtoint ptr %dlm_worker to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dlm_worker, align 4
  %dispatched_work = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 42
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %dispatched_work) #10
  br label %cleanup

if.then124:                                       ; preds = %do.body109, %do.body77, %if.then75
  %ret.0 = phi i32 [ -12, %do.body109 ], [ 0, %do.body77 ], [ 0, %if.then75 ]
  call void @dlm_lockres_put(ptr noundef nonnull %call26)
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.then28, %do.body15, %do.body
  %ret.0193 = phi i32 [ %ret.0, %if.then124 ], [ -22, %do.body ], [ -22, %do.body15 ], [ -22, %if.then28 ]
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0193, %if.end125 ], [ 1, %list_add_tail.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_calc_usage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_deref_lockres_worker(ptr nocapture noundef readonly %item, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m30 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm1 = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %dlm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm1, align 4
  %u = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %deref_node = getelementptr inbounds %struct.dlm_work_item, ptr %item, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %deref_node to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %deref_node, align 4
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 2
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !378

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2451, 0\0A.popsection", ""() #10, !srcloc !439
  unreachable

do.end10:                                         ; preds = %entry
  tail call void @__dlm_wait_on_lockres_flags(ptr noundef %3, i32 noundef 8192) #10
  %conv11 = zext i8 %5 to i32
  %refmap = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 21
  %div3.i = lshr i32 %conv11, 5
  %arrayidx.i = getelementptr i32, ptr %refmap, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv11, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %do.body29.critedge, label %if.then13

if.then13:                                        ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %13 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %dlm_lockres_clear_refmap_bit.exit, !prof !371

do.body4.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 615, 0\0A.popsection", ""() #10, !srcloc !392
  unreachable

dlm_lockres_clear_refmap_bit.exit:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %15 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 576, ptr %_m.i, align 8
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lockname.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 8
  %20 = tail call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_lockres_clear_refmap_bit, i32 noundef 618, ptr noundef nonnull @.str.4, i32 noundef %17, ptr noundef %19, i32 noundef %conv11, ptr noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @_clear_bit(i32 noundef %conv11, ptr noundef %refmap) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call fastcc void @dlm_drop_lockres_ref_done(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %21 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 576, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %24 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lockname.i, align 8
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_deref_lockres_worker, i32 noundef 2463, ptr noundef nonnull @.str.117, ptr noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %conv11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @dlm_lockres_calc_usage(ptr noundef %1, ptr noundef %3) #10
  br label %if.end43

do.body29.critedge:                               ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  tail call fastcc void @dlm_drop_lockres_ref_done(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #10
  %28 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1152921504606847552, ptr %_m30, align 8
  %name34 = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name34, align 4
  %lockname35 = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %lockname35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lockname35, align 8
  %name38 = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name38, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.dlm_deref_lockres_worker, i32 noundef 2468, ptr noundef nonnull @.str.58, ptr noundef %30, i32 noundef %32, ptr noundef %34, i32 noundef %conv11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #10
  call void @dlm_print_one_lock_resource(ptr noundef %3) #10
  br label %if.end43

if.end43:                                         ; preds = %do.body29.critedge, %dlm_lockres_clear_refmap_bit.exit
  call void @dlm_lockres_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_deref_lockres_done_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #1 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m16 = alloca i64, align 8
  %_m31 = alloca i64, align 8
  %_m48 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  %name1 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %namelen3 = getelementptr inbounds %struct.dlm_deref_lockres_done, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %namelen3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %namelen3, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp = icmp ugt i8 %1, 32
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_deref_lockres_done_handler, i32 noundef 2364, ptr noundef nonnull @.str.32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end65

if.end9:                                          ; preds = %if.end
  %node_idx = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 3
  %3 = ptrtoint ptr %node_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %node_idx, align 2
  %conv11 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp12 = icmp eq i8 %4, -1
  br i1 %cmp12, label %do.body15, label %if.end24

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m16) #10
  %5 = ptrtoint ptr %_m16 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606847552, ptr %_m16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m16, ptr noundef nonnull @__func__.dlm_deref_lockres_done_handler, i32 noundef 2368, ptr noundef nonnull @.str.56, i32 noundef 255) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m16) #10
  br label %if.end65

if.end24:                                         ; preds = %if.end9
  %call25 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name1, i32 noundef %conv) #13
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call26 = tail call ptr @__dlm_lookup_lockres_full(ptr noundef %data, ptr noundef %name1, i32 noundef %conv, i32 noundef %call25) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.end39

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m31) #10
  %6 = ptrtoint ptr %_m31 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606847552, ptr %_m31, align 8
  %name35 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %7 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name35, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m31, ptr noundef nonnull @__func__.dlm_deref_lockres_done_handler, i32 noundef 2379, ptr noundef nonnull @.str.57, ptr noundef %8, i32 noundef %conv, ptr noundef %name1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m31) #10
  br label %if.end65

if.end39:                                         ; preds = %if.end24
  %spinlock40 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock40) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 17
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %state, align 2
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool43.not = icmp eq i16 %11, 0
  br i1 %tobool43.not, label %if.then44, label %if.end60

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock40) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m48) #10
  %12 = ptrtoint ptr %_m48 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2305843009213694528, ptr %_m48, align 8
  %name52 = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 11
  %13 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name52, align 4
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 1
  %15 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lockname, align 8
  %name55 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name55, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m48, ptr noundef nonnull @__func__.dlm_deref_lockres_done_handler, i32 noundef 2389, ptr noundef nonnull @.str.59, ptr noundef %14, i32 noundef %16, ptr noundef %18, i32 noundef %conv11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m48) #10
  br label %if.then64

if.end60:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dlm_do_purge_lockres(ptr noundef %data, ptr noundef nonnull %call26) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock40) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %call26, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %if.then64

if.then64:                                        ; preds = %if.end60, %if.then44
  call void @dlm_lockres_put(ptr noundef nonnull %call26)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then28, %do.body15, %do.body
  %ret.0104 = phi i32 [ 0, %if.then64 ], [ -22, %do.body ], [ -22, %do.body15 ], [ -22, %if.then28 ]
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0104, %if.end65 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dlm_do_purge_lockres(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_empty_lockres(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i208.i.i = alloca i32, align 4
  %_m.i209.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i.i503.i = alloca i32, align 4
  %_m.i.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i504.i = alloca i32, align 4
  %_m.i505.i = alloca i64, align 8
  %_m162.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i497.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %_m64.i.i = alloca i64, align 8
  %__wq_entry98.i.i = alloca %struct.wait_queue_entry, align 4
  %_m142.i.i = alloca i64, align 8
  %_m159.i.i = alloca i64, align 8
  %_m182.i.i = alloca i64, align 8
  %_m198.i.i = alloca i64, align 8
  %agg.tmp.sroa.0.i36.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %oldmle.i = alloca ptr, align 4
  %_m.i73 = alloca i64, align 8
  %_m24.i = alloca i64, align 8
  %_m54.i = alloca i64, align 8
  %_m76.i = alloca i64, align 8
  %_m89.i = alloca i64, align 8
  %_m128.i = alloca i64, align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %_m217.i = alloca i64, align 8
  %_m233.i = alloca i64, align 8
  %_m255.i = alloca i64, align 8
  %_m287.i = alloca i64, align 8
  %agg.tmp.sroa.0.i101.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i51 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m72.i = alloca i64, align 8
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2767, 0\0A.popsection", ""() #10, !srcloc !440
  unreachable

do.end9:                                          ; preds = %entry
  %spinlock10 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %2 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock10, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !371

do.body4.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2491, 0\0A.popsection", ""() #10, !srcloc !441
  unreachable

do.end9.i:                                        ; preds = %do.end9
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %state.i, align 2
  %6 = and i16 %5, 16418
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %if.end18.i, label %do.end9.i.if.end15.thread_crit_edge

do.end9.i.if.end15.thread_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

if.end18.i:                                       ; preds = %do.end9.i
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %owner.i, align 4
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %10 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not.i = icmp eq i8 %9, %11
  br i1 %cmp.not.i, label %dlm_list_idx_to_ptr.exit.i, label %if.end18.i.if.end15.thread_crit_edge

if.end18.i.if.end15.thread_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

dlm_list_idx_to_ptr.exit.i:                       ; preds = %if.end18.i
  %converting.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %granted.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %blocked.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %12 = ptrtoint ptr %granted.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn114.i = load ptr, ptr %granted.i.i, align 4
  %cmp28.not115.i = icmp eq ptr %.pn114.i, %granted.i.i
  br i1 %cmp28.not115.i, label %dlm_list_idx_to_ptr.exit.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge, label %dlm_list_idx_to_ptr.exit.i.for.body32.i_crit_edge

dlm_list_idx_to_ptr.exit.i.for.body32.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.i
  br label %for.body32.i

dlm_list_idx_to_ptr.exit.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.1.i

for.body32.i:                                     ; preds = %if.then38.i.for.body32.i_crit_edge, %dlm_list_idx_to_ptr.exit.i.for.body32.i_crit_edge
  %.pn117.i = phi ptr [ %.pn.i, %if.then38.i.for.body32.i_crit_edge ], [ %.pn114.i, %dlm_list_idx_to_ptr.exit.i.for.body32.i_crit_edge ]
  %nonlocal.1116.i = phi i32 [ %inc.i, %if.then38.i.for.body32.i_crit_edge ], [ 0, %dlm_list_idx_to_ptr.exit.i.for.body32.i_crit_edge ]
  %node.i = getelementptr i8, ptr %.pn117.i, i32 -1
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %node.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %9)
  %cmp36.not.i = icmp eq i8 %14, %9
  br i1 %cmp36.not.i, label %for.body32.i.if.end39.i_crit_edge, label %if.then38.i

for.body32.i.if.end39.i_crit_edge:                ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then38.i:                                      ; preds = %for.body32.i
  %inc.i = add i32 %nonlocal.1116.i, 1
  %15 = ptrtoint ptr %.pn117.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn117.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn.i, %granted.i.i
  br i1 %cmp28.not.i, label %if.then38.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge, label %if.then38.i.for.body32.i_crit_edge

if.then38.i.for.body32.i_crit_edge:               ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i

if.then38.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.1.i

if.end39.i:                                       ; preds = %for.body32.2.i.if.end39.i_crit_edge, %for.body32.1.i.if.end39.i_crit_edge, %for.body32.i.if.end39.i_crit_edge
  %switch.selectcmp9.i.i = phi ptr [ @.str.123, %for.body32.2.i.if.end39.i_crit_edge ], [ @.str.122, %for.body32.1.i.if.end39.i_crit_edge ], [ @.str.121, %for.body32.i.if.end39.i_crit_edge ]
  %.pn117.lcssa.i = phi ptr [ %.pn117.2.i, %for.body32.2.i.if.end39.i_crit_edge ], [ %.pn117.1.i, %for.body32.1.i.if.end39.i_crit_edge ], [ %.pn117.i, %for.body32.i.if.end39.i_crit_edge ]
  %lock.0.le.i = getelementptr i8, ptr %.pn117.lcssa.i, i32 -16
  %16 = ptrtoint ptr %lock.0.le.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lock.0.le.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %18 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 576, ptr %_m.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %21 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lockname.i, align 8
  %name47.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %name47.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name47.i, align 8
  %shr.i.i = lshr i64 %17, 56
  %conv.i.i50 = trunc i64 %shr.i.i to i32
  %and.i.i = and i64 %17, 72057594037927935
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_is_lockres_migratable, i32 noundef 2518, ptr noundef nonnull @.str.119, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %conv.i.i50, i64 noundef %and.i.i, ptr noundef nonnull %switch.selectcmp9.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %if.end15.thread

dlm_list_idx_to_ptr.exit.1.i:                     ; preds = %if.then38.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge, %dlm_list_idx_to_ptr.exit.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge
  %nonlocal.1.lcssa.i = phi i32 [ 0, %dlm_list_idx_to_ptr.exit.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge ], [ %inc.i, %if.then38.i.dlm_list_idx_to_ptr.exit.1.i_crit_edge ]
  %25 = ptrtoint ptr %converting.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn114.1.i = load ptr, ptr %converting.i.i, align 4
  %cmp28.not115.1.i = icmp eq ptr %.pn114.1.i, %converting.i.i
  br i1 %cmp28.not115.1.i, label %dlm_list_idx_to_ptr.exit.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge, label %dlm_list_idx_to_ptr.exit.1.i.for.body32.1.i_crit_edge

dlm_list_idx_to_ptr.exit.1.i.for.body32.1.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.1.i
  br label %for.body32.1.i

dlm_list_idx_to_ptr.exit.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.2.i

for.body32.1.i:                                   ; preds = %if.then38.1.i.for.body32.1.i_crit_edge, %dlm_list_idx_to_ptr.exit.1.i.for.body32.1.i_crit_edge
  %.pn117.1.i = phi ptr [ %.pn.1.i, %if.then38.1.i.for.body32.1.i_crit_edge ], [ %.pn114.1.i, %dlm_list_idx_to_ptr.exit.1.i.for.body32.1.i_crit_edge ]
  %nonlocal.1116.1.i = phi i32 [ %inc.1.i, %if.then38.1.i.for.body32.1.i_crit_edge ], [ %nonlocal.1.lcssa.i, %dlm_list_idx_to_ptr.exit.1.i.for.body32.1.i_crit_edge ]
  %node.1.i = getelementptr i8, ptr %.pn117.1.i, i32 -1
  %26 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %node.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %9)
  %cmp36.not.1.i = icmp eq i8 %27, %9
  br i1 %cmp36.not.1.i, label %for.body32.1.i.if.end39.i_crit_edge, label %if.then38.1.i

for.body32.1.i.if.end39.i_crit_edge:              ; preds = %for.body32.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then38.1.i:                                    ; preds = %for.body32.1.i
  %inc.1.i = add i32 %nonlocal.1116.1.i, 1
  %28 = ptrtoint ptr %.pn117.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.1.i = load ptr, ptr %.pn117.1.i, align 4
  %cmp28.not.1.i = icmp eq ptr %.pn.1.i, %converting.i.i
  br i1 %cmp28.not.1.i, label %if.then38.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge, label %if.then38.1.i.for.body32.1.i_crit_edge

if.then38.1.i.for.body32.1.i_crit_edge:           ; preds = %if.then38.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.1.i

if.then38.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge: ; preds = %if.then38.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.2.i

dlm_list_idx_to_ptr.exit.2.i:                     ; preds = %if.then38.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge, %dlm_list_idx_to_ptr.exit.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge
  %nonlocal.1.lcssa.1.i = phi i32 [ %nonlocal.1.lcssa.i, %dlm_list_idx_to_ptr.exit.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge ], [ %inc.1.i, %if.then38.1.i.dlm_list_idx_to_ptr.exit.2.i_crit_edge ]
  %29 = ptrtoint ptr %blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn114.2.i = load ptr, ptr %blocked.i.i, align 4
  %cmp28.not115.2.i = icmp eq ptr %.pn114.2.i, %blocked.i.i
  br i1 %cmp28.not115.2.i, label %dlm_list_idx_to_ptr.exit.2.i.for.inc60.2.i_crit_edge, label %dlm_list_idx_to_ptr.exit.2.i.for.body32.2.i_crit_edge

dlm_list_idx_to_ptr.exit.2.i.for.body32.2.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.2.i
  br label %for.body32.2.i

dlm_list_idx_to_ptr.exit.2.i.for.inc60.2.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60.2.i

for.body32.2.i:                                   ; preds = %if.then38.2.i.for.body32.2.i_crit_edge, %dlm_list_idx_to_ptr.exit.2.i.for.body32.2.i_crit_edge
  %.pn117.2.i = phi ptr [ %.pn.2.i, %if.then38.2.i.for.body32.2.i_crit_edge ], [ %.pn114.2.i, %dlm_list_idx_to_ptr.exit.2.i.for.body32.2.i_crit_edge ]
  %nonlocal.1116.2.i = phi i32 [ %inc.2.i, %if.then38.2.i.for.body32.2.i_crit_edge ], [ %nonlocal.1.lcssa.1.i, %dlm_list_idx_to_ptr.exit.2.i.for.body32.2.i_crit_edge ]
  %node.2.i = getelementptr i8, ptr %.pn117.2.i, i32 -1
  %30 = ptrtoint ptr %node.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %node.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %9)
  %cmp36.not.2.i = icmp eq i8 %31, %9
  br i1 %cmp36.not.2.i, label %for.body32.2.i.if.end39.i_crit_edge, label %if.then38.2.i

for.body32.2.i.if.end39.i_crit_edge:              ; preds = %for.body32.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then38.2.i:                                    ; preds = %for.body32.2.i
  %inc.2.i = add i32 %nonlocal.1116.2.i, 1
  %32 = ptrtoint ptr %.pn117.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.2.i = load ptr, ptr %.pn117.2.i, align 4
  %cmp28.not.2.i = icmp eq ptr %.pn.2.i, %blocked.i.i
  br i1 %cmp28.not.2.i, label %if.then38.2.i.for.inc60.2.i_crit_edge, label %if.then38.2.i.for.body32.2.i_crit_edge

if.then38.2.i.for.body32.2.i_crit_edge:           ; preds = %if.then38.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.2.i

if.then38.2.i.for.inc60.2.i_crit_edge:            ; preds = %if.then38.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60.2.i

for.inc60.2.i:                                    ; preds = %if.then38.2.i.for.inc60.2.i_crit_edge, %dlm_list_idx_to_ptr.exit.2.i.for.inc60.2.i_crit_edge
  %nonlocal.1.lcssa.2.i = phi i32 [ %nonlocal.1.lcssa.1.i, %dlm_list_idx_to_ptr.exit.2.i.for.inc60.2.i_crit_edge ], [ %inc.2.i, %if.then38.2.i.for.inc60.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonlocal.1.lcssa.2.i)
  %tobool63.not.i = icmp eq i32 %nonlocal.1.lcssa.2.i, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %for.inc60.2.i.if.then13_crit_edge

for.inc60.2.i.if.then13_crit_edge:                ; preds = %for.inc60.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then64.i:                                      ; preds = %for.inc60.2.i
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  %call65.i = tail call i32 @_find_first_bit_be(ptr noundef %refmap.i, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call65.i)
  %cmp66.i = icmp sgt i32 %call65.i, 254
  br i1 %cmp66.i, label %if.then64.i.if.end15.thread_crit_edge, label %if.then64.i.if.then13_crit_edge

if.then64.i.if.then13_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then64.i.if.end15.thread_crit_edge:            ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

if.then13:                                        ; preds = %if.then64.i.if.then13_crit_edge, %for.inc60.2.i.if.then13_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m72.i) #10
  %33 = ptrtoint ptr %_m72.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 576, ptr %_m72.i, align 8
  %name76.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %34 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name76.i, align 4
  %lockname77.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %36 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lockname77.i, align 8
  %name80.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m72.i, ptr noundef nonnull @__func__.dlm_is_lockres_migratable, i32 noundef 2530, ptr noundef nonnull @.str.120, ptr noundef %35, i32 noundef %37, ptr noundef %39) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m72.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i51)
  %40 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %40)
  %agg.tmp.sroa.0.0.copyload.i.i53 = load volatile i32, ptr %spinlock, align 4
  %41 = ptrtoint ptr %agg.tmp.sroa.0.i.i51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i53, ptr %agg.tmp.sroa.0.i.i51, align 4
  %lock.sroa.0.0.extract.shift.i.i.i54 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i53, 16
  %conv.i.i.i55 = and i32 %agg.tmp.sroa.0.0.copyload.i.i53, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i55, i32 %lock.sroa.0.0.extract.shift.i.i.i54)
  %cmp.i.i.not.i56 = icmp eq i32 %conv.i.i.i55, %lock.sroa.0.0.extract.shift.i.i.i54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i51)
  br i1 %cmp.i.i.not.i56, label %do.body4.i57, label %do.body10.i, !prof !371

do.body4.i57:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2985, 0\0A.popsection", ""() #10, !srcloc !442
  unreachable

do.body10.i:                                      ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i101.i)
  %42 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %agg.tmp.sroa.0.0.copyload.i102.i = load volatile i32, ptr %spinlock10, align 4
  %43 = ptrtoint ptr %agg.tmp.sroa.0.i101.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i102.i, ptr %agg.tmp.sroa.0.i101.i, align 4
  %lock.sroa.0.0.extract.shift.i.i103.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i102.i, 16
  %conv.i.i104.i = and i32 %agg.tmp.sroa.0.0.copyload.i102.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i104.i, i32 %lock.sroa.0.0.extract.shift.i.i103.i)
  %cmp.i.i105.not.i = icmp eq i32 %conv.i.i104.i, %lock.sroa.0.0.extract.shift.i.i103.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i101.i)
  br i1 %cmp.i.i105.not.i, label %do.body24.i, label %dlm_list_idx_to_ptr.exit.i62, !prof !371

do.body24.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2986, 0\0A.popsection", ""() #10, !srcloc !443
  unreachable

dlm_list_idx_to_ptr.exit.i62:                     ; preds = %do.body10.i
  %exit_domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 19
  %44 = ptrtoint ptr %granted.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn109.i = load ptr, ptr %granted.i.i, align 4
  %cmp35.not110.i = icmp eq ptr %.pn109.i, %granted.i.i
  br i1 %cmp35.not110.i, label %dlm_list_idx_to_ptr.exit.i62.dlm_list_idx_to_ptr.exit.1.i66_crit_edge, label %for.body38.lr.ph.i

dlm_list_idx_to_ptr.exit.i62.dlm_list_idx_to_ptr.exit.1.i66_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.1.i66

for.body38.lr.ph.i:                               ; preds = %dlm_list_idx_to_ptr.exit.i62
  %45 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %node_num.i, align 4
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.inc.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %.pn111.i = phi ptr [ %.pn109.i, %for.body38.lr.ph.i ], [ %.pn.i65, %for.inc.i.for.body38.i_crit_edge ]
  %node.i63 = getelementptr i8, ptr %.pn111.i, i32 -1
  %47 = ptrtoint ptr %node.i63 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %node.i63, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %46)
  %cmp40.i = icmp eq i8 %48, %46
  br i1 %cmp40.i, label %for.body38.i.for.inc.i_crit_edge, label %if.end43.i

for.body38.i.for.inc.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end43.i:                                       ; preds = %for.body38.i
  %conv.i = zext i8 %48 to i32
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %exit_domain_map.i, i32 %div3.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i64 = and i32 %conv.i, 31
  %51 = shl nuw i32 1, %and.i.i64
  %52 = and i32 %50, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool48.not.i = icmp eq i32 %52, 0
  br i1 %tobool48.not.i, label %if.end15.loopexit126, label %if.end43.i.for.inc.i_crit_edge

if.end43.i.for.inc.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end43.i.for.inc.i_crit_edge, %for.body38.i.for.inc.i_crit_edge
  %53 = ptrtoint ptr %.pn111.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i65 = load ptr, ptr %.pn111.i, align 4
  %cmp35.not.i = icmp eq ptr %.pn.i65, %granted.i.i
  br i1 %cmp35.not.i, label %for.inc.i.dlm_list_idx_to_ptr.exit.1.i66_crit_edge, label %for.inc.i.for.body38.i_crit_edge

for.inc.i.for.body38.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i

for.inc.i.dlm_list_idx_to_ptr.exit.1.i66_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.1.i66

dlm_list_idx_to_ptr.exit.1.i66:                   ; preds = %for.inc.i.dlm_list_idx_to_ptr.exit.1.i66_crit_edge, %dlm_list_idx_to_ptr.exit.i62.dlm_list_idx_to_ptr.exit.1.i66_crit_edge
  %54 = ptrtoint ptr %converting.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn109.1.i = load ptr, ptr %converting.i.i, align 4
  %cmp35.not110.1.i = icmp eq ptr %.pn109.1.i, %converting.i.i
  br i1 %cmp35.not110.1.i, label %dlm_list_idx_to_ptr.exit.1.i66.dlm_list_idx_to_ptr.exit.2.i69_crit_edge, label %for.body38.lr.ph.1.i

dlm_list_idx_to_ptr.exit.1.i66.dlm_list_idx_to_ptr.exit.2.i69_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.1.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.2.i69

for.body38.lr.ph.1.i:                             ; preds = %dlm_list_idx_to_ptr.exit.1.i66
  %55 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %node_num.i, align 4
  br label %for.body38.1.i

for.body38.1.i:                                   ; preds = %for.inc.1.i.for.body38.1.i_crit_edge, %for.body38.lr.ph.1.i
  %.pn111.1.i = phi ptr [ %.pn109.1.i, %for.body38.lr.ph.1.i ], [ %.pn.1.i68, %for.inc.1.i.for.body38.1.i_crit_edge ]
  %node.1.i67 = getelementptr i8, ptr %.pn111.1.i, i32 -1
  %57 = ptrtoint ptr %node.1.i67 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %node.1.i67, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %56)
  %cmp40.1.i = icmp eq i8 %58, %56
  br i1 %cmp40.1.i, label %for.body38.1.i.for.inc.1.i_crit_edge, label %if.end43.1.i

for.body38.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body38.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end43.1.i:                                     ; preds = %for.body38.1.i
  %conv.1.i = zext i8 %58 to i32
  %div3.i.1.i = lshr i32 %conv.1.i, 5
  %arrayidx.i.1.i = getelementptr i32, ptr %exit_domain_map.i, i32 %div3.i.1.i
  %59 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.1.i, align 4
  %and.i.1.i = and i32 %conv.1.i, 31
  %61 = shl nuw i32 1, %and.i.1.i
  %62 = and i32 %60, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool48.not.1.i = icmp eq i32 %62, 0
  br i1 %tobool48.not.1.i, label %if.end15.loopexit125, label %if.end43.1.i.for.inc.1.i_crit_edge

if.end43.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end43.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end43.1.i.for.inc.1.i_crit_edge, %for.body38.1.i.for.inc.1.i_crit_edge
  %63 = ptrtoint ptr %.pn111.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.1.i68 = load ptr, ptr %.pn111.1.i, align 4
  %cmp35.not.1.i = icmp eq ptr %.pn.1.i68, %converting.i.i
  br i1 %cmp35.not.1.i, label %for.inc.1.i.dlm_list_idx_to_ptr.exit.2.i69_crit_edge, label %for.inc.1.i.for.body38.1.i_crit_edge

for.inc.1.i.for.body38.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.1.i

for.inc.1.i.dlm_list_idx_to_ptr.exit.2.i69_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_list_idx_to_ptr.exit.2.i69

dlm_list_idx_to_ptr.exit.2.i69:                   ; preds = %for.inc.1.i.dlm_list_idx_to_ptr.exit.2.i69_crit_edge, %dlm_list_idx_to_ptr.exit.1.i66.dlm_list_idx_to_ptr.exit.2.i69_crit_edge
  %64 = ptrtoint ptr %blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn109.2.i = load ptr, ptr %blocked.i.i, align 4
  %cmp35.not110.2.i = icmp eq ptr %.pn109.2.i, %blocked.i.i
  br i1 %cmp35.not110.2.i, label %dlm_list_idx_to_ptr.exit.2.i69.for.inc58.2.i_crit_edge, label %for.body38.lr.ph.2.i

dlm_list_idx_to_ptr.exit.2.i69.for.inc58.2.i_crit_edge: ; preds = %dlm_list_idx_to_ptr.exit.2.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc58.2.i

for.body38.lr.ph.2.i:                             ; preds = %dlm_list_idx_to_ptr.exit.2.i69
  %65 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %node_num.i, align 4
  br label %for.body38.2.i

for.body38.2.i:                                   ; preds = %for.inc.2.i.for.body38.2.i_crit_edge, %for.body38.lr.ph.2.i
  %.pn111.2.i = phi ptr [ %.pn109.2.i, %for.body38.lr.ph.2.i ], [ %.pn.2.i71, %for.inc.2.i.for.body38.2.i_crit_edge ]
  %node.2.i70 = getelementptr i8, ptr %.pn111.2.i, i32 -1
  %67 = ptrtoint ptr %node.2.i70 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %node.2.i70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %66)
  %cmp40.2.i = icmp eq i8 %68, %66
  br i1 %cmp40.2.i, label %for.body38.2.i.for.inc.2.i_crit_edge, label %if.end43.2.i

for.body38.2.i.for.inc.2.i_crit_edge:             ; preds = %for.body38.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end43.2.i:                                     ; preds = %for.body38.2.i
  %conv.2.i = zext i8 %68 to i32
  %div3.i.2.i = lshr i32 %conv.2.i, 5
  %arrayidx.i.2.i = getelementptr i32, ptr %exit_domain_map.i, i32 %div3.i.2.i
  %69 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %arrayidx.i.2.i, align 4
  %and.i.2.i = and i32 %conv.2.i, 31
  %71 = shl nuw i32 1, %and.i.2.i
  %72 = and i32 %70, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool48.not.2.i = icmp eq i32 %72, 0
  br i1 %tobool48.not.2.i, label %if.end15.loopexit, label %if.end43.2.i.for.inc.2.i_crit_edge

if.end43.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end43.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end43.2.i.for.inc.2.i_crit_edge, %for.body38.2.i.for.inc.2.i_crit_edge
  %73 = ptrtoint ptr %.pn111.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn.2.i71 = load ptr, ptr %.pn111.2.i, align 4
  %cmp35.not.2.i = icmp eq ptr %.pn.2.i71, %blocked.i.i
  br i1 %cmp35.not.2.i, label %for.inc.2.i.for.inc58.2.i_crit_edge, label %for.inc.2.i.for.body38.2.i_crit_edge

for.inc.2.i.for.body38.2.i_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.2.i

for.inc.2.i.for.inc58.2.i_crit_edge:              ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc58.2.i

for.inc58.2.i:                                    ; preds = %for.inc.2.i.for.inc58.2.i_crit_edge, %dlm_list_idx_to_ptr.exit.2.i69.for.inc58.2.i_crit_edge
  %refmap.i72 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  %call61113.i = call i32 @_find_next_bit_be(ptr noundef %refmap.i72, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call61113.i)
  %cmp62114.i = icmp sgt i32 %call61113.i, 254
  br i1 %cmp62114.i, label %for.inc58.2.i.if.end15.thread_crit_edge, label %for.inc58.2.i.if.end65.i_crit_edge

for.inc58.2.i.if.end65.i_crit_edge:               ; preds = %for.inc58.2.i
  br label %if.end65.i

for.inc58.2.i.if.end15.thread_crit_edge:          ; preds = %for.inc58.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

if.end65.i:                                       ; preds = %while.cond.backedge.i.if.end65.i_crit_edge, %for.inc58.2.i.if.end65.i_crit_edge
  %call61115.i = phi i32 [ %call61.i, %while.cond.backedge.i.if.end65.i_crit_edge ], [ %call61113.i, %for.inc58.2.i.if.end65.i_crit_edge ]
  %74 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %node_num.i, align 4
  %conv67.i = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call61115.i, i32 %conv67.i)
  %cmp68.i = icmp eq i32 %call61115.i, %conv67.i
  br i1 %cmp68.i, label %if.end65.i.while.cond.backedge.i_crit_edge, label %if.end71.i

if.end65.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end71.i.while.cond.backedge.i_crit_edge, %if.end65.i.while.cond.backedge.i_crit_edge
  %add.i = add nsw i32 %call61115.i, 1
  %call61.i = call i32 @_find_next_bit_be(ptr noundef %refmap.i72, i32 noundef 255, i32 noundef %add.i) #10
  %cmp62.i = icmp sgt i32 %call61.i, 254
  br i1 %cmp62.i, label %while.cond.backedge.i.if.end15.thread_crit_edge, label %while.cond.backedge.i.if.end65.i_crit_edge

while.cond.backedge.i.if.end65.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

while.cond.backedge.i.if.end15.thread_crit_edge:  ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

if.end71.i:                                       ; preds = %if.end65.i
  %div3.i96.i = lshr i32 %call61115.i, 5
  %arrayidx.i97.i = getelementptr i32, ptr %exit_domain_map.i, i32 %div3.i96.i
  %76 = ptrtoint ptr %arrayidx.i97.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i97.i, align 4
  %and.i98.i = and i32 %call61115.i, 31
  %78 = shl nuw i32 1, %and.i98.i
  %79 = and i32 %77, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool75.not.i = icmp eq i32 %79, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end71.i.while.cond.backedge.i_crit_edge

if.end71.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

if.end77.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv78.i = trunc i32 %call61115.i to i8
  %.pre = and i32 %call61115.i, 255
  br label %if.end15

if.end15.thread:                                  ; preds = %while.cond.backedge.i.if.end15.thread_crit_edge, %for.inc58.2.i.if.end15.thread_crit_edge, %if.then64.i.if.end15.thread_crit_edge, %if.end39.i, %if.end18.i.if.end15.thread_crit_edge, %do.end9.i.if.end15.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  br label %leave

if.end15.loopexit:                                ; preds = %if.end43.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.2.i.le = zext i8 %68 to i32
  br label %if.end15

if.end15.loopexit125:                             ; preds = %if.end43.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.1.i.le = zext i8 %58 to i32
  br label %if.end15

if.end15.loopexit126:                             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.le = zext i8 %48 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.end15.loopexit126, %if.end15.loopexit125, %if.end15.loopexit, %if.end77.i
  %conv.pre-phi = phi i32 [ %.pre, %if.end77.i ], [ %conv.2.i.le, %if.end15.loopexit ], [ %conv.1.i.le, %if.end15.loopexit125 ], [ %conv.i.le, %if.end15.loopexit126 ]
  %target.0 = phi i8 [ %conv78.i, %if.end77.i ], [ %68, %if.end15.loopexit ], [ %58, %if.end15.loopexit125 ], [ %48, %if.end15.loopexit126 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %target.0)
  %cmp = icmp eq i8 %target.0, -1
  br i1 %cmp, label %if.end15.leave_crit_edge, label %if.end19

if.end15.leave_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end19:                                         ; preds = %if.end15
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldmle.i) #10
  %80 = ptrtoint ptr %oldmle.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %oldmle.i, align 4
  %call.i = call ptr @dlm_grab(ptr noundef %dlm) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %dlm_migrate_lockres.exit.thread, label %if.end.i

dlm_migrate_lockres.exit.thread:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldmle.i) #10
  br label %do.body24

if.end.i:                                         ; preds = %if.end19
  %81 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name80.i, align 8
  %83 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lockname77.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i73) #10
  %85 = ptrtoint ptr %_m.i73 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 576, ptr %_m.i73, align 8
  %86 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name76.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i73, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2559, ptr noundef nonnull @.str.125, ptr noundef %87, i32 noundef %84, ptr noundef %82, i32 noundef %conv.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i73) #10
  %call7.i = call i32 @__get_free_pages(i32 noundef 3136, i32 noundef 0) #10
  %88 = inttoptr i32 %call7.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body23.i, label %if.end33.i

do.body23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m24.i) #10
  %89 = ptrtoint ptr %_m24.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 1152921504606847552, ptr %_m24.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m24.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2565, ptr noundef nonnull @.str.18, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m24.i) #10
  br label %if.then277.i

if.end33.i:                                       ; preds = %if.end.i
  %90 = load ptr, ptr @dlm_mle_cache, align 4
  %call34.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %90, i32 noundef 3136) #10
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %do.body53.i, label %if.end64.i

do.body53.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54.i) #10
  %91 = ptrtoint ptr %_m54.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 1152921504606847552, ptr %_m54.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2571, ptr noundef nonnull @.str.18, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54.i) #10
  br label %if.then277.i

if.end64.i:                                       ; preds = %if.end33.i
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %master_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i) #10
  %92 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %node_num.i, align 4
  %call65.i78 = call fastcc i32 @dlm_add_migration_mle(ptr noundef %dlm, ptr noundef %res, ptr noundef nonnull %call34.i, ptr noundef nonnull %oldmle.i, ptr noundef %82, i32 noundef %84, i8 noundef zeroext %target.0, i8 noundef zeroext %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call65.i78)
  %cmp66.not.i = icmp eq i32 %call65.i78, -17
  br i1 %cmp66.not.i, label %if.then119.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end64.i
  %dlm1.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 2
  %94 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %95, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %96 = ptrtoint ptr %spinlock.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock.i.i, align 4
  %97 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body5.i.i, label %do.body11.i.i, !prof !371

do.body5.i.i:                                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #10, !srcloc !403
  unreachable

do.body11.i.i:                                    ; preds = %if.then68.i
  %master_lock.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %95, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i36.i.i)
  %98 = ptrtoint ptr %master_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %agg.tmp.sroa.0.0.copyload.i37.i.i = load volatile i32, ptr %master_lock.i.i, align 4
  %99 = ptrtoint ptr %agg.tmp.sroa.0.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i37.i.i, ptr %agg.tmp.sroa.0.i36.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i38.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i37.i.i, 16
  %conv.i.i39.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i37.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i39.i.i, i32 %lock.sroa.0.0.extract.shift.i.i38.i.i)
  %cmp.i.i40.not.i.i = icmp eq i32 %conv.i.i39.i.i, %lock.sroa.0.0.extract.shift.i.i38.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i36.i.i)
  br i1 %cmp.i.i40.not.i.i, label %do.body24.i.i, label %do.end32.i.i, !prof !371

do.body24.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #10, !srcloc !404
  unreachable

do.end32.i.i:                                     ; preds = %do.body11.i.i
  %inuse.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 7
  %100 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %inuse.i.i, align 4
  %inc.i.i = add i32 %101, 1
  store i32 %inc.i.i, ptr %inuse.i.i, align 4
  %mle_refs.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mle_refs.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mle_refs.i.i, i32 1, i32 3, i32 1) #10
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mle_refs.i.i, ptr %mle_refs.i.i, i32 1, ptr elementtype(i32) %mle_refs.i.i) #10, !srcloc !405
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %do.end32.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !371

do.end32.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %do.end32.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %103 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %.not.i.i.i.i.i.i = icmp sgt i32 %103, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end83.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !378

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end83.i_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %do.end32.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %do.end32.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %mle_refs.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end83.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %master_lock.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %104 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 576, ptr %_m.i.i, align 8
  %105 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %lockname77.i, align 8
  %107 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name80.i, align 8
  %109 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %node_num.i, align 4
  %conv.i.i79 = zext i8 %110 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_mark_lockres_migrating, i32 noundef 2838, ptr noundef nonnull @.str.133, i32 noundef %106, ptr noundef %108, i32 noundef %conv.i.i79, i32 noundef %conv.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %migration_pending.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 12
  %111 = ptrtoint ptr %migration_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i.i = load i8, ptr %migration_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool4.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool4.not.i.i, label %do.end16.i.i, label %do.body8.i.i, !prof !378

do.body8.i.i:                                     ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2842, 0\0A.popsection", ""() #10, !srcloc !444
  unreachable

do.end16.i.i:                                     ; preds = %if.end83.i
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  %112 = ptrtoint ptr %migration_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %bf.set.i.i, ptr %migration_pending.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %113 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %113)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %spinlock10, align 4
  %114 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.not.i.i.i, label %do.body4.i.i.i, label %do.end7.i.i.i, !prof !371

do.body4.i.i.i:                                   ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3487, 0\0A.popsection", ""() #10, !srcloc !431
  unreachable

do.end7.i.i.i:                                    ; preds = %do.end16.i.i
  %115 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %state.i, align 2
  %117 = and i16 %116, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool8.not.i.i.i = icmp eq i16 %117, 0
  br i1 %tobool8.not.i.i.i, label %do.end7.i.i.i.do.body11.i.i.i_crit_edge, label %if.then9.i.i.i

do.end7.i.i.i.do.body11.i.i.i_crit_edge:          ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.i.i.i

if.then9.i.i.i:                                   ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dlm_print_one_lock_resource(ptr noundef %res) #10
  br label %do.body11.i.i.i

do.body11.i.i.i:                                  ; preds = %if.then9.i.i.i, %do.end7.i.i.i.do.body11.i.i.i_crit_edge
  %118 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %state.i, align 2
  %120 = and i16 %119, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool15.not.i.i.i = icmp eq i16 %120, 0
  br i1 %tobool15.not.i.i.i, label %__dlm_lockres_reserve_ast.exit.i.i, label %do.body23.i.i.i, !prof !378

do.body23.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3491, 0\0A.popsection", ""() #10, !srcloc !432
  unreachable

__dlm_lockres_reserve_ast.exit.i.i:               ; preds = %do.body11.i.i.i
  %asts_reserved.i.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %asts_reserved.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %asts_reserved.i.i.i, i32 1, i32 3, i32 1) #10
  %121 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %asts_reserved.i.i.i, ptr %asts_reserved.i.i.i, i32 1, ptr elementtype(i32) %asts_reserved.i.i.i) #10, !srcloc !389
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef %res) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %122 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %state.i, align 2
  %124 = and i16 %123, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool24.not.i.i = icmp eq i16 %124, 0
  br i1 %tobool24.not.i.i, label %do.end40.i.i, label %do.body32.i.i, !prof !378

do.body32.i.i:                                    ; preds = %__dlm_lockres_reserve_ast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2854, 0\0A.popsection", ""() #10, !srcloc !445
  unreachable

do.end40.i.i:                                     ; preds = %__dlm_lockres_reserve_ast.exit.i.i
  %or.i.i = or i16 %123, 4096
  %125 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %or.i.i, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @__might_sleep(ptr noundef nonnull @.str.88, i32 noundef 2858) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %126 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %128 = and i16 %127, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool52.not.i.i = icmp eq i16 %128, 0
  br i1 %tobool52.not.i.i, label %do.end40.i.i.do.end62.i.i_crit_edge, label %if.end54.i.i

do.end40.i.i.do.end62.i.i_crit_edge:              ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62.i.i

if.end54.i.i:                                     ; preds = %do.end40.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  %129 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #10
  %ast_wq.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 40
  %call55387.i.i = call i32 @prepare_to_wait_event(ptr noundef %ast_wq.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %130 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %132 = and i16 %131, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool57.not388.i.i = icmp eq i16 %132, 0
  br i1 %tobool57.not388.i.i, label %if.end54.i.i.for.end.i.i_crit_edge, label %if.end54.i.i.cleanup.i.i_crit_edge

if.end54.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end54.i.i
  br label %cleanup.i.i

if.end54.i.i.for.end.i.i_crit_edge:               ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end54.i.i.cleanup.i.i_crit_edge
  call void @schedule() #10
  %call55.i.i = call i32 @prepare_to_wait_event(ptr noundef %ast_wq.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %133 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %135 = and i16 %134, 8
  %tobool57.not.i.i = icmp eq i16 %135, 0
  br i1 %tobool57.not.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end54.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %ast_wq.i.i, ptr noundef nonnull %__wq_entry.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  br label %do.end62.i.i

do.end62.i.i:                                     ; preds = %for.end.i.i, %do.end40.i.i.do.end62.i.i_crit_edge
  call void @dlm_lockres_release_ast(ptr noundef %dlm, ptr noundef %res) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m64.i.i) #10
  %136 = ptrtoint ptr %_m64.i.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 576, ptr %_m64.i.i, align 8
  %137 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %state.i, align 2
  %139 = and i16 %138, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool71.not.i.i = icmp eq i16 %139, 0
  %cond.i.i = select i1 %tobool71.not.i.i, ptr @.str.136, ptr @.str.135
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m64.i.i, ptr noundef nonnull @__func__.dlm_mark_lockres_migrating, i32 noundef 2862, ptr noundef nonnull @.str.134, ptr noundef nonnull %cond.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m64.i.i) #10
  %domain_map.i.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %div3.i.i.i.i = lshr i32 %conv.pre-phi, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %domain_map.i.i.i, i32 %div3.i.i.i.i
  %and.i.i.i.i = and i32 %conv.pre-phi, 31
  %140 = shl nuw i32 1, %and.i.i.i.i
  %migration_wq.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 41
  br label %again.i.i

again.i.i:                                        ; preds = %do.body181.i.i, %do.end62.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.88, i32 noundef 2869) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %141 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %143 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %145 = and i32 %144, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool5.not.i.i.i = icmp eq i32 %145, 0
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %146 = and i16 %142, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool84.not381.i.i = icmp ne i16 %146, 0
  %tobool84.not.i.i = select i1 %tobool5.not.i.i.i, i1 true, i1 %tobool84.not381.i.i
  br i1 %tobool84.not.i.i, label %again.i.i.do.body158.i.i_crit_edge, label %if.then97.i.i

again.i.i.do.body158.i.i_crit_edge:               ; preds = %again.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body158.i.i

if.then97.i.i:                                    ; preds = %again.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry98.i.i) #10
  %147 = call ptr @memset(ptr %__wq_entry98.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry98.i.i, i32 noundef 0) #10
  br label %for.cond101.i.i

for.cond101.i.i:                                  ; preds = %cleanup130.i.i, %if.then97.i.i
  %__ret99.0.i.i = phi i32 [ 100, %if.then97.i.i ], [ %call129.i.i, %cleanup130.i.i ]
  %call103.i.i = call i32 @prepare_to_wait_event(ptr noundef %migration_wq.i.i, ptr noundef nonnull %__wq_entry98.i.i, i32 noundef 1) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %148 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %150 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %152 = and i32 %151, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool5.not.i357.i.i = icmp ne i32 %152, 0
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %153 = and i16 %149, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool106.not382.i.i = icmp eq i16 %153, 0
  %tobool106.not.i.i = select i1 %tobool5.not.i357.i.i, i1 %tobool106.not382.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret99.0.i.i)
  %tobool111.not.i.i = icmp eq i32 %__ret99.0.i.i, 0
  %spec.store.select269.i.i = select i1 %tobool111.not.i.i, i32 1, i32 %__ret99.0.i.i
  %__ret99.1.i.i = select i1 %tobool106.not.i.i, i32 %__ret99.0.i.i, i32 %spec.store.select269.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret99.1.i.i)
  %tobool118.not.i.i = icmp eq i32 %__ret99.1.i.i, 0
  %not.tobool106.not.i.i = xor i1 %tobool106.not.i.i, true
  %154 = select i1 %not.tobool106.not.i.i, i1 true, i1 %tobool118.not.i.i
  br i1 %154, label %for.end133.i.i, label %if.end125.i.i

if.end125.i.i:                                    ; preds = %for.cond101.i.i
  %tobool126.not.i.i = icmp eq i32 %call103.i.i, 0
  br i1 %tobool126.not.i.i, label %cleanup130.i.i, label %if.end125.i.i.if.end137.i.i_crit_edge

if.end125.i.i.if.end137.i.i_crit_edge:            ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i.i

cleanup130.i.i:                                   ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call129.i.i = call i32 @schedule_timeout(i32 noundef %__ret99.1.i.i) #10
  br label %for.cond101.i.i

for.end133.i.i:                                   ; preds = %for.cond101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %migration_wq.i.i, ptr noundef nonnull %__wq_entry98.i.i) #10
  br label %if.end137.i.i

if.end137.i.i:                                    ; preds = %for.end133.i.i, %if.end125.i.i.if.end137.i.i_crit_edge
  %__ret99.2374.i.i = phi i32 [ %__ret99.1.i.i, %for.end133.i.i ], [ %call103.i.i, %if.end125.i.i.if.end137.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry98.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret99.2374.i.i)
  %cmp.i.i80 = icmp slt i32 %__ret99.2374.i.i, 0
  br i1 %cmp.i.i80, label %do.body141.i.i, label %if.end137.i.i.do.body158.i.i_crit_edge

if.end137.i.i.do.body158.i.i_crit_edge:           ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body158.i.i

do.body141.i.i:                                   ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m142.i.i) #10
  %155 = ptrtoint ptr %_m142.i.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 576, ptr %_m142.i.i, align 8
  %156 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %state.i, align 2
  %158 = and i16 %157, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %158)
  %tobool149.not.i.i = icmp eq i16 %158, 0
  %cond150.i.i = select i1 %tobool149.not.i.i, ptr @.str.136, ptr @.str.135
  %159 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %161 = and i32 %160, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool153.not.i.i = icmp eq i32 %161, 0
  %cond154.i.i = select i1 %tobool153.not.i.i, ptr @.str.135, ptr @.str.136
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m142.i.i, ptr noundef nonnull @__func__.dlm_mark_lockres_migrating, i32 noundef 2873, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond150.i.i, ptr noundef nonnull %cond154.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m142.i.i) #10
  br label %if.end177.i.i

do.body158.i.i:                                   ; preds = %if.end137.i.i.do.body158.i.i_crit_edge, %again.i.i.do.body158.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m159.i.i) #10
  %162 = ptrtoint ptr %_m159.i.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 576, ptr %_m159.i.i, align 8
  %163 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %state.i, align 2
  %165 = and i16 %164, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool166.not.i.i = icmp eq i16 %165, 0
  %cond167.i.i = select i1 %tobool166.not.i.i, ptr @.str.136, ptr @.str.135
  %166 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %168 = and i32 %167, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool172.not.i.i = icmp eq i32 %168, 0
  %cond173.i.i = select i1 %tobool172.not.i.i, ptr @.str.135, ptr @.str.136
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m159.i.i, ptr noundef nonnull @__func__.dlm_mark_lockres_migrating, i32 noundef 2877, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond167.i.i, ptr noundef nonnull %cond173.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m159.i.i) #10
  br label %if.end177.i.i

if.end177.i.i:                                    ; preds = %do.body158.i.i, %do.body141.i.i
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %169 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %171 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %173 = and i32 %172, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool5.not.i368.i.i = icmp ne i32 %173, 0
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %174 = and i16 %170, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool179.not383.i.i = icmp eq i16 %174, 0
  %tobool179.not.i.i = select i1 %tobool5.not.i368.i.i, i1 %tobool179.not383.i.i, i1 false
  br i1 %tobool179.not.i.i, label %do.body181.i.i, label %if.end189.i.i

do.body181.i.i:                                   ; preds = %if.end177.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m182.i.i) #10
  %175 = ptrtoint ptr %_m182.i.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 576, ptr %_m182.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m182.i.i, ptr noundef nonnull @__func__.dlm_mark_lockres_migrating, i32 noundef 2880, ptr noundef nonnull @.str.139) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m182.i.i) #10
  br label %again.i.i

if.end189.i.i:                                    ; preds = %if.end177.i.i
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %176 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %178 = and i32 %177, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool195.not.i.i = icmp eq i32 %178, 0
  br i1 %tobool195.not.i.i, label %do.body197.i.i, label %if.end189.i.i.if.end206.i.i_crit_edge

if.end189.i.i.if.end206.i.i_crit_edge:            ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i.i

do.body197.i.i:                                   ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m198.i.i) #10
  %179 = ptrtoint ptr %_m198.i.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 1152921504606847552, ptr %_m198.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m198.i.i, ptr noundef nonnull @__func__.dlm_mark_lockres_migrating, i32 noundef 2889, ptr noundef nonnull @.str.140, i32 noundef %conv.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m198.i.i) #10
  br label %if.end206.i.i

if.end206.i.i:                                    ; preds = %do.body197.i.i, %if.end189.i.i.if.end206.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %180 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %state.i, align 2
  %182 = and i16 %181, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool213.not.i.i = icmp eq i16 %182, 0
  br i1 %tobool213.not.i.i, label %do.body223.i.i, label %do.end231.i.i, !prof !371

do.body223.i.i:                                   ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2900, 0\0A.popsection", ""() #10, !srcloc !446
  unreachable

do.end231.i.i:                                    ; preds = %if.end206.i.i
  %and234.i.i = and i16 %181, -4097
  %183 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %and234.i.i, ptr %state.i, align 2
  br i1 %tobool195.not.i.i, label %if.else261.i.i, label %do.body238.i.i

do.body238.i.i:                                   ; preds = %do.end231.i.i
  %184 = and i16 %181, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool242.not.i.i = icmp eq i16 %184, 0
  br i1 %tobool242.not.i.i, label %do.body252.i.i, label %do.body238.i.i.land.lhs.true109.i_crit_edge, !prof !371

do.body238.i.i.land.lhs.true109.i_crit_edge:      ; preds = %do.body238.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true109.i

do.body252.i.i:                                   ; preds = %do.body238.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2903, 0\0A.popsection", ""() #10, !srcloc !447
  unreachable

if.else261.i.i:                                   ; preds = %do.end231.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %migration_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %bf.load263.i.i = load i8, ptr %migration_pending.i.i, align 4
  %bf.clear264.i.i = and i8 %bf.load263.i.i, 127
  store i8 %bf.clear264.i.i, ptr %migration_pending.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89.i) #10
  %186 = ptrtoint ptr %_m89.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 1152921504606847552, ptr %_m89.i, align 8
  %187 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %lockname77.i, align 8
  %189 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2607, ptr noundef nonnull @.str.127, i32 noundef %188, ptr noundef %190, i32 noundef %conv.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %191 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %state.i, align 2
  %193 = and i16 %192, -33
  store i16 %193, ptr %state.i, align 2
  br label %land.lhs.true109.i

land.lhs.true109.i:                               ; preds = %if.else261.i.i, %do.body238.i.i.land.lhs.true109.i_crit_edge
  %ret.0549.i = phi i32 [ -22, %if.else261.i.i ], [ %call65.i78, %do.body238.i.i.land.lhs.true109.i_crit_edge ]
  %wake.0548.i = phi i32 [ 1, %if.else261.i.i ], [ 0, %do.body238.i.i.land.lhs.true109.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %194 = ptrtoint ptr %oldmle.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %oldmle.i, align 4
  %tobool110.not.i = icmp eq ptr %195, null
  br i1 %tobool110.not.i, label %land.lhs.true109.i.if.end112.i_crit_edge, label %if.then111.i

land.lhs.true109.i.if.end112.i_crit_edge:         ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112.i

if.then111.i:                                     ; preds = %land.lhs.true109.i
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %hb_events.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile ptr, ptr %hb_events.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %197, %hb_events.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then111.i.dlm_mle_detach_hb_events.exit.i_crit_edge, label %if.then.i.i.i

if.then111.i.dlm_mle_detach_hb_events.exit.i_crit_edge: ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit.i

if.then.i.i.i:                                    ; preds = %if.then111.i
  %call.i.i.i.i437.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i.i) #10
  br i1 %call.i.i.i.i437.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %195, i32 0, i32 1, i32 1
  %198 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %200 = ptrtoint ptr %hb_events.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hb_events.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %199, ptr %prev1.i.i.i.i.i.i, align 4
  %203 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %201, ptr %199, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %204 = ptrtoint ptr %hb_events.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %hb_events.i.i.i, ptr %hb_events.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %195, i32 0, i32 1, i32 1
  %205 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %hb_events.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  br label %dlm_mle_detach_hb_events.exit.i

dlm_mle_detach_hb_events.exit.i:                  ; preds = %list_del_init.exit.i.i.i, %if.then111.i.dlm_mle_detach_hb_events.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %dlm1.i438.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %195, i32 0, i32 2
  %206 = ptrtoint ptr %dlm1.i438.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dlm1.i438.i, align 4
  %spinlock.i439.i = getelementptr inbounds %struct.dlm_ctxt, ptr %207, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i439.i) #10
  %master_lock.i440.i = getelementptr inbounds %struct.dlm_ctxt, ptr %207, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i440.i) #10
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %195) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i440.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i439.i) #10
  br label %if.end112.i

if.end112.i:                                      ; preds = %dlm_mle_detach_hb_events.exit.i, %land.lhs.true109.i.if.end112.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0549.i)
  %cmp113.i = icmp slt i32 %ret.0549.i, 0
  br i1 %cmp113.i, label %if.then117.i, label %if.end122.i

if.then117.i:                                     ; preds = %if.end112.i
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i442.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1
  %208 = ptrtoint ptr %hb_events.i.i442.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile ptr, ptr %hb_events.i.i442.i, align 8
  %cmp.i.not.i.i443.i = icmp eq ptr %209, %hb_events.i.i442.i
  br i1 %cmp.i.not.i.i443.i, label %if.then117.i.dlm_mle_detach_hb_events.exit451.i_crit_edge, label %if.then.i.i445.i

if.then117.i.dlm_mle_detach_hb_events.exit451.i_crit_edge: ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit451.i

if.then.i.i445.i:                                 ; preds = %if.then117.i
  %call.i.i.i.i444.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i442.i) #10
  br i1 %call.i.i.i.i444.i, label %if.end.i.i.i.i448.i, label %if.then.i.i445.i.list_del_init.exit.i.i450.i_crit_edge

if.then.i.i445.i.list_del_init.exit.i.i450.i_crit_edge: ; preds = %if.then.i.i445.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i450.i

if.end.i.i.i.i448.i:                              ; preds = %if.then.i.i445.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i446.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %210 = ptrtoint ptr %prev.i.i.i.i446.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prev.i.i.i.i446.i, align 4
  %212 = ptrtoint ptr %hb_events.i.i442.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hb_events.i.i442.i, align 8
  %prev1.i.i.i.i.i447.i = getelementptr inbounds %struct.list_head, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %prev1.i.i.i.i.i447.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %211, ptr %prev1.i.i.i.i.i447.i, align 4
  %215 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile ptr %213, ptr %211, align 4
  br label %list_del_init.exit.i.i450.i

list_del_init.exit.i.i450.i:                      ; preds = %if.end.i.i.i.i448.i, %if.then.i.i445.i.list_del_init.exit.i.i450.i_crit_edge
  %216 = ptrtoint ptr %hb_events.i.i442.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %hb_events.i.i442.i, ptr %hb_events.i.i442.i, align 8
  %prev.i3.i.i.i449.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %217 = ptrtoint ptr %prev.i3.i.i.i449.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %hb_events.i.i442.i, ptr %prev.i3.i.i.i449.i, align 4
  br label %dlm_mle_detach_hb_events.exit451.i

dlm_mle_detach_hb_events.exit451.i:               ; preds = %list_del_init.exit.i.i450.i, %if.then117.i.dlm_mle_detach_hb_events.exit451.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %218 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i453.i = getelementptr inbounds %struct.dlm_ctxt, ptr %219, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i453.i) #10
  %master_lock.i454.i = getelementptr inbounds %struct.dlm_ctxt, ptr %219, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i454.i) #10
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i454.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i453.i) #10
  %220 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i456.i = getelementptr inbounds %struct.dlm_ctxt, ptr %221, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i456.i) #10
  %master_lock.i457.i = getelementptr inbounds %struct.dlm_ctxt, ptr %221, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i457.i) #10
  %222 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %inuse.i.i, align 4
  %dec.i.i = add i32 %223, -1
  store i32 %dec.i.i, ptr %inuse.i.i, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i457.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i456.i) #10
  br label %if.then277.i

if.then119.i:                                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %master_lock.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m76.i) #10
  %224 = ptrtoint ptr %_m76.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 576, ptr %_m76.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m76.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2595, ptr noundef nonnull @.str.126) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m76.i) #10
  %225 = load ptr, ptr @dlm_mle_cache, align 4
  call void @kmem_cache_free(ptr noundef %225, ptr noundef nonnull %call34.i) #10
  br label %if.then277.i

if.end122.i:                                      ; preds = %if.end112.i
  %dlm_worker.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 37
  %226 = ptrtoint ptr %dlm_worker.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dlm_worker.i, align 4
  call void @flush_workqueue(ptr noundef %227) #10
  %call123.i = call i32 @dlm_send_one_lockres(ptr noundef %dlm, ptr noundef %res, ptr noundef nonnull %88, i8 noundef zeroext %target.0, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %cmp124.i = icmp slt i32 %call123.i, 0
  br i1 %cmp124.i, label %do.body127.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end122.i
  %woken.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 5
  %wq.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 4
  br label %while.cond.i

do.body127.i:                                     ; preds = %if.end122.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m128.i) #10
  %228 = ptrtoint ptr %_m128.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 576, ptr %_m128.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m128.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2653, ptr noundef nonnull @.str.128, i32 noundef %conv.pre-phi, i32 noundef %call123.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m128.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i460.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1
  %229 = ptrtoint ptr %hb_events.i.i460.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile ptr, ptr %hb_events.i.i460.i, align 8
  %cmp.i.not.i.i461.i = icmp eq ptr %230, %hb_events.i.i460.i
  br i1 %cmp.i.not.i.i461.i, label %do.body127.i.dlm_mle_detach_hb_events.exit469.i_crit_edge, label %if.then.i.i463.i

do.body127.i.dlm_mle_detach_hb_events.exit469.i_crit_edge: ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit469.i

if.then.i.i463.i:                                 ; preds = %do.body127.i
  %call.i.i.i.i462.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i460.i) #10
  br i1 %call.i.i.i.i462.i, label %if.end.i.i.i.i466.i, label %if.then.i.i463.i.list_del_init.exit.i.i468.i_crit_edge

if.then.i.i463.i.list_del_init.exit.i.i468.i_crit_edge: ; preds = %if.then.i.i463.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i468.i

if.end.i.i.i.i466.i:                              ; preds = %if.then.i.i463.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i464.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %231 = ptrtoint ptr %prev.i.i.i.i464.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %prev.i.i.i.i464.i, align 4
  %233 = ptrtoint ptr %hb_events.i.i460.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hb_events.i.i460.i, align 8
  %prev1.i.i.i.i.i465.i = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %prev1.i.i.i.i.i465.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %232, ptr %prev1.i.i.i.i.i465.i, align 4
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile ptr %234, ptr %232, align 4
  br label %list_del_init.exit.i.i468.i

list_del_init.exit.i.i468.i:                      ; preds = %if.end.i.i.i.i466.i, %if.then.i.i463.i.list_del_init.exit.i.i468.i_crit_edge
  %237 = ptrtoint ptr %hb_events.i.i460.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %hb_events.i.i460.i, ptr %hb_events.i.i460.i, align 8
  %prev.i3.i.i.i467.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %238 = ptrtoint ptr %prev.i3.i.i.i467.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %hb_events.i.i460.i, ptr %prev.i3.i.i.i467.i, align 4
  br label %dlm_mle_detach_hb_events.exit469.i

dlm_mle_detach_hb_events.exit469.i:               ; preds = %list_del_init.exit.i.i468.i, %do.body127.i.dlm_mle_detach_hb_events.exit469.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %239 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i471.i = getelementptr inbounds %struct.dlm_ctxt, ptr %240, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i471.i) #10
  %master_lock.i472.i = getelementptr inbounds %struct.dlm_ctxt, ptr %240, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i472.i) #10
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i472.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i471.i) #10
  %241 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i474.i = getelementptr inbounds %struct.dlm_ctxt, ptr %242, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i474.i) #10
  %master_lock.i475.i = getelementptr inbounds %struct.dlm_ctxt, ptr %242, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i475.i) #10
  %243 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %inuse.i.i, align 4
  %dec.i477.i = add i32 %244, -1
  store i32 %dec.i477.i, ptr %inuse.i.i, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i475.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i474.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %245 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %state.i, align 2
  %247 = and i16 %246, -33
  store i16 %247, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %call142.i = call i32 @dlm_is_host_down(i32 noundef %call123.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %dlm_mle_detach_hb_events.exit469.i.if.then277.i_crit_edge, label %if.then144.i

dlm_mle_detach_hb_events.exit469.i.if.then277.i_crit_edge: ; preds = %dlm_mle_detach_hb_events.exit469.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then277.i

if.then144.i:                                     ; preds = %dlm_mle_detach_hb_events.exit469.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_wait_for_node_death(ptr noundef %dlm, i8 noundef zeroext %target.0, i32 noundef 5000) #10
  br label %if.then277.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  call void @__might_sleep(ptr noundef nonnull @.str.88, i32 noundef 2683) #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %248 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %249)
  %cmp155.i = icmp eq i32 %249, 1
  br i1 %cmp155.i, label %while.cond.i.if.then205.i_crit_edge, label %if.then168.i

while.cond.i.if.then205.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then205.i

if.then168.i:                                     ; preds = %while.cond.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %250 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %call171581.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i433582.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %251 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %252)
  %cmp175583.i = icmp eq i32 %252, 1
  br i1 %cmp175583.i, label %if.then168.i.for.end.i_crit_edge, label %if.then168.i.if.end194.i_crit_edge

if.then168.i.if.end194.i_crit_edge:               ; preds = %if.then168.i
  br label %if.end194.i

if.then168.i.for.end.i_crit_edge:                 ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end194.i:                                      ; preds = %cleanup.i.if.end194.i_crit_edge, %if.then168.i.if.end194.i_crit_edge
  %__ret169.1585.i = phi i32 [ %__ret169.1.i, %cleanup.i.if.end194.i_crit_edge ], [ 500, %if.then168.i.if.end194.i_crit_edge ]
  %call171584.i = phi i32 [ %call171.i, %cleanup.i.if.end194.i_crit_edge ], [ %call171581.i, %if.then168.i.if.end194.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171584.i)
  %tobool195.not.i = icmp eq i32 %call171584.i, 0
  br i1 %tobool195.not.i, label %cleanup.i, label %if.end194.i.if.end201.i_crit_edge

if.end194.i.if.end201.i_crit_edge:                ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201.i

cleanup.i:                                        ; preds = %if.end194.i
  %call198.i = call i32 @schedule_timeout(i32 noundef %__ret169.1585.i) #10
  %call171.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i433.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %253 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %254)
  %cmp175.i = icmp eq i32 %254, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i)
  %tobool181.not.i = icmp eq i32 %call198.i, 0
  %255 = select i1 %cmp175.i, i1 %tobool181.not.i, i1 false
  %__ret169.1.i = select i1 %255, i32 1, i32 %call198.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret169.1.i)
  %tobool188.not.i = icmp eq i32 %__ret169.1.i, 0
  %256 = select i1 %cmp175.i, i1 true, i1 %tobool188.not.i
  br i1 %256, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end194.i_crit_edge

cleanup.i.if.end194.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then168.i.for.end.i_crit_edge
  %__ret169.1.lcssa.i = phi i32 [ 500, %if.then168.i.for.end.i_crit_edge ], [ %__ret169.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #10
  br label %if.end201.i

if.end201.i:                                      ; preds = %for.end.i, %if.end194.i.if.end201.i_crit_edge
  %__ret169.2557.i = phi i32 [ %__ret169.1.lcssa.i, %for.end.i ], [ %call171584.i, %if.end194.i.if.end201.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__ret169.2557.i)
  %cmp203.i = icmp sgt i32 %__ret169.2557.i, -1
  br i1 %cmp203.i, label %if.end201.i.if.then205.i_crit_edge, label %do.body254.i

if.end201.i.if.then205.i_crit_edge:               ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then205.i

if.then205.i:                                     ; preds = %if.end201.i.if.then205.i_crit_edge, %while.cond.i.if.then205.i_crit_edge
  %call.i.i434.i = call zeroext i1 @__kasan_check_read(ptr noundef %woken.i, i32 noundef 4) #10
  %257 = ptrtoint ptr %woken.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %woken.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %258)
  %cmp208.i = icmp eq i32 %258, 1
  br i1 %cmp208.i, label %if.then205.i.while.end.i_crit_edge, label %lor.lhs.false.i

if.then205.i.while.end.i_crit_edge:               ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

lor.lhs.false.i:                                  ; preds = %if.then205.i
  %259 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %260, i8 %target.0)
  %cmp212.i = icmp eq i8 %260, %target.0
  br i1 %cmp212.i, label %lor.lhs.false.i.while.end.i_crit_edge, label %do.body216.i

lor.lhs.false.i.while.end.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.body216.i:                                     ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m217.i) #10
  %261 = ptrtoint ptr %_m217.i to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 576, ptr %_m217.i, align 8
  %262 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name76.i, align 4
  %264 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %lockname77.i, align 8
  %266 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m217.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2691, ptr noundef nonnull @.str.129, ptr noundef %263, i32 noundef %265, ptr noundef %267) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m217.i) #10
  %call229.i = call i32 @dlm_is_node_dead(ptr noundef %dlm, i8 noundef zeroext %target.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i)
  %tobool230.not.i = icmp eq i32 %call229.i, 0
  br i1 %tobool230.not.i, label %do.body216.i.while.cond.i.backedge_crit_edge, label %do.body232.i

do.body216.i.while.cond.i.backedge_crit_edge:     ; preds = %do.body216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.backedge

do.body232.i:                                     ; preds = %do.body216.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m233.i) #10
  %268 = ptrtoint ptr %_m233.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 576, ptr %_m233.i, align 8
  %269 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %name76.i, align 4
  %271 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %lockname77.i, align 8
  %273 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m233.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2698, ptr noundef nonnull @.str.130, ptr noundef %270, i32 noundef %272, ptr noundef %274, i32 noundef %conv.pre-phi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m233.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i479.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1
  %275 = ptrtoint ptr %hb_events.i.i479.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile ptr, ptr %hb_events.i.i479.i, align 8
  %cmp.i.not.i.i480.i = icmp eq ptr %276, %hb_events.i.i479.i
  br i1 %cmp.i.not.i.i480.i, label %do.body232.i.dlm_mle_detach_hb_events.exit488.i_crit_edge, label %if.then.i.i482.i

do.body232.i.dlm_mle_detach_hb_events.exit488.i_crit_edge: ; preds = %do.body232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit488.i

if.then.i.i482.i:                                 ; preds = %do.body232.i
  %call.i.i.i.i481.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i479.i) #10
  br i1 %call.i.i.i.i481.i, label %if.end.i.i.i.i485.i, label %if.then.i.i482.i.list_del_init.exit.i.i487.i_crit_edge

if.then.i.i482.i.list_del_init.exit.i.i487.i_crit_edge: ; preds = %if.then.i.i482.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i487.i

if.end.i.i.i.i485.i:                              ; preds = %if.then.i.i482.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i483.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %277 = ptrtoint ptr %prev.i.i.i.i483.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %prev.i.i.i.i483.i, align 4
  %279 = ptrtoint ptr %hb_events.i.i479.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hb_events.i.i479.i, align 8
  %prev1.i.i.i.i.i484.i = getelementptr inbounds %struct.list_head, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %prev1.i.i.i.i.i484.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %278, ptr %prev1.i.i.i.i.i484.i, align 4
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %282)
  store volatile ptr %280, ptr %278, align 4
  br label %list_del_init.exit.i.i487.i

list_del_init.exit.i.i487.i:                      ; preds = %if.end.i.i.i.i485.i, %if.then.i.i482.i.list_del_init.exit.i.i487.i_crit_edge
  %283 = ptrtoint ptr %hb_events.i.i479.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile ptr %hb_events.i.i479.i, ptr %hb_events.i.i479.i, align 8
  %prev.i3.i.i.i486.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %284 = ptrtoint ptr %prev.i3.i.i.i486.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %hb_events.i.i479.i, ptr %prev.i3.i.i.i486.i, align 4
  br label %dlm_mle_detach_hb_events.exit488.i

dlm_mle_detach_hb_events.exit488.i:               ; preds = %list_del_init.exit.i.i487.i, %do.body232.i.dlm_mle_detach_hb_events.exit488.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %285 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i490.i = getelementptr inbounds %struct.dlm_ctxt, ptr %286, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i490.i) #10
  %master_lock.i491.i = getelementptr inbounds %struct.dlm_ctxt, ptr %286, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i491.i) #10
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i491.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i490.i) #10
  %287 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i493.i = getelementptr inbounds %struct.dlm_ctxt, ptr %288, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i493.i) #10
  %master_lock.i494.i = getelementptr inbounds %struct.dlm_ctxt, ptr %288, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i494.i) #10
  %289 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %inuse.i.i, align 4
  %dec.i496.i = add i32 %290, -1
  store i32 %dec.i496.i, ptr %inuse.i.i, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i494.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i493.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  %291 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %state.i, align 2
  %293 = and i16 %292, -33
  store i16 %293, ptr %state.i, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  br label %if.then277.i

do.body254.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m255.i) #10
  %294 = ptrtoint ptr %_m255.i to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 576, ptr %_m255.i, align 8
  %295 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %name76.i, align 4
  %297 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %lockname77.i, align 8
  %299 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m255.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2712, ptr noundef nonnull @.str.131, ptr noundef %296, i32 noundef %298, ptr noundef %300) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m255.i) #10
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body254.i, %do.body216.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

while.end.i:                                      ; preds = %lor.lhs.false.i.while.end.i_crit_edge, %if.then205.i.while.end.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i497.i)
  %301 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %301)
  %agg.tmp.sroa.0.0.copyload.i.i499.i = load volatile i32, ptr %spinlock10, align 4
  %302 = ptrtoint ptr %agg.tmp.sroa.0.i.i497.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i499.i, ptr %agg.tmp.sroa.0.i.i497.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i500.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i499.i, 16
  %conv.i.i.i501.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i499.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i501.i, i32 %lock.sroa.0.0.extract.shift.i.i.i500.i)
  %cmp.i.i.not.i502.i = icmp eq i32 %conv.i.i.i501.i, %lock.sroa.0.0.extract.shift.i.i.i500.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i497.i)
  br i1 %cmp.i.i.not.i502.i, label %do.body4.i.i, label %dlm_set_lockres_owner.exit.i, !prof !371

do.body4.i.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %while.end.i
  %303 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %target.0, ptr %owner.i, align 4
  %304 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %state.i, align 2
  %306 = and i16 %305, -33
  store i16 %306, ptr %state.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i504.i)
  %307 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %307)
  %agg.tmp.sroa.0.0.copyload.i.i507.i = load volatile i32, ptr %spinlock10, align 4
  %308 = ptrtoint ptr %agg.tmp.sroa.0.i.i504.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i507.i, ptr %agg.tmp.sroa.0.i.i504.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i508.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i507.i, 16
  %conv.i.i.i509.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i507.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i509.i, i32 %lock.sroa.0.0.extract.shift.i.i.i508.i)
  %cmp.i.i.not.i510.i = icmp eq i32 %conv.i.i.i509.i, %lock.sroa.0.0.extract.shift.i.i.i508.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i504.i)
  br i1 %cmp.i.i.not.i510.i, label %do.body4.i511.i, label %do.body10.i.i, !prof !371

do.body4.i511.i:                                  ; preds = %dlm_set_lockres_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2929, 0\0A.popsection", ""() #10, !srcloc !448
  unreachable

do.body10.i.i:                                    ; preds = %dlm_set_lockres_owner.exit.i
  %309 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %310, i8 %target.0)
  %cmp.i513.i = icmp eq i8 %310, %target.0
  br i1 %cmp.i513.i, label %do.body20.i.i, label %for.cond.preheader.i.i, !prof !371

for.cond.preheader.i.i:                           ; preds = %do.body10.i.i
  %refmap.i.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  br label %for.body.i.i

do.body20.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2931, 0\0A.popsection", ""() #10, !srcloc !449
  unreachable

while.cond.preheader.i.i:                         ; preds = %for.end.i522.i
  %call151229.i.i = call i32 @_find_next_bit_be(ptr noundef %refmap.i.i.i, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call151229.i.i)
  %cmp152230.i.i = icmp sgt i32 %call151229.i.i, 254
  br i1 %cmp152230.i.i, label %while.cond.preheader.i.i.dlm_remove_nonlocal_locks.exit.i_crit_edge, label %while.cond.preheader.i.i.if.end155.i.i_crit_edge

while.cond.preheader.i.i.if.end155.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %if.end155.i.i

while.cond.preheader.i.i.dlm_remove_nonlocal_locks.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remove_nonlocal_locks.exit.i

for.body.i.i:                                     ; preds = %for.end.i522.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %queue.0228.i.i = phi ptr [ %granted.i.i, %for.cond.preheader.i.i ], [ %incdec.ptr.i.i, %for.end.i522.i.for.body.i.i_crit_edge ]
  %i.0227.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i521.i, %for.end.i522.i.for.body.i.i_crit_edge ]
  %311 = ptrtoint ptr %queue.0228.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %queue.0228.i.i, align 4
  %cmp38.not222.i.i = icmp eq ptr %312, %queue.0228.i.i
  br i1 %cmp38.not222.i.i, label %for.body.i.i.for.end.i522.i_crit_edge, label %for.body.i.i.for.body42.i.i_crit_edge

for.body.i.i.for.body42.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body42.i.i

for.body.i.i.for.end.i522.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i522.i

for.body42.i.i:                                   ; preds = %for.inc.i.i.for.body42.i.i_crit_edge, %for.body.i.i.for.body42.i.i_crit_edge
  %.pn.in223.i.i = phi ptr [ %.pn226.i.i, %for.inc.i.i.for.body42.i.i_crit_edge ], [ %312, %for.body.i.i.for.body42.i.i_crit_edge ]
  %lock.0225.i.i = getelementptr i8, ptr %.pn.in223.i.i, i32 -16
  %313 = ptrtoint ptr %.pn.in223.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pn226.i.i = load ptr, ptr %.pn.in223.i.i, align 8
  %node.i.i = getelementptr i8, ptr %.pn.in223.i.i, i32 -1
  %314 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %node.i.i, align 1
  %316 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %node_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %315, i8 %317)
  %cmp46.not.i.i = icmp eq i8 %315, %317
  br i1 %cmp46.not.i.i, label %for.body42.i.i.for.inc.i.i_crit_edge, label %do.body49.i.i

for.body42.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.body49.i.i:                                    ; preds = %for.body42.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i505.i) #10
  %318 = ptrtoint ptr %_m.i505.i to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 576, ptr %_m.i505.i, align 8
  %319 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %node.i.i, align 1
  %conv54.i.i = zext i8 %320 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i505.i, ptr noundef nonnull @__func__.dlm_remove_nonlocal_locks, i32 noundef 2937, ptr noundef nonnull @.str.141, i32 noundef %conv54.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i505.i) #10
  %ast_list.i.i = getelementptr i8, ptr %.pn.in223.i.i, i32 8
  %321 = ptrtoint ptr %ast_list.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load volatile ptr, ptr %ast_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %322, %ast_list.i.i
  br i1 %cmp.i.not.i.i, label %do.body79.i.i, label %do.body70.i.i, !prof !378

do.body70.i.i:                                    ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2939, 0\0A.popsection", ""() #10, !srcloc !450
  unreachable

do.body79.i.i:                                    ; preds = %do.body49.i.i
  %bast_list.i.i = getelementptr i8, ptr %.pn.in223.i.i, i32 16
  %323 = ptrtoint ptr %bast_list.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load volatile ptr, ptr %bast_list.i.i, align 4
  %cmp.i206.not.i.i = icmp eq ptr %324, %bast_list.i.i
  br i1 %cmp.i206.not.i.i, label %do.body100.i.i, label %do.body91.i.i, !prof !378

do.body91.i.i:                                    ; preds = %do.body79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2940, 0\0A.popsection", ""() #10, !srcloc !451
  unreachable

do.body100.i.i:                                   ; preds = %do.body79.i.i
  %ast_pending.i.i = getelementptr i8, ptr %.pn.in223.i.i, i32 92
  %325 = ptrtoint ptr %ast_pending.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %bf.load.i515.i = load i8, ptr %ast_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i515.i)
  %tobool101.not.i.i = icmp sgt i8 %bf.load.i515.i, -1
  br i1 %tobool101.not.i.i, label %do.body118.i.i, label %do.body109.i.i, !prof !378

do.body109.i.i:                                   ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2941, 0\0A.popsection", ""() #10, !srcloc !452
  unreachable

do.body118.i.i:                                   ; preds = %do.body100.i.i
  %326 = and i8 %bf.load.i515.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool122.not.i.i = icmp eq i8 %326, 0
  br i1 %tobool122.not.i.i, label %do.end138.i.i, label %do.body130.i.i, !prof !378

do.body130.i.i:                                   ; preds = %do.body118.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2942, 0\0A.popsection", ""() #10, !srcloc !453
  unreachable

do.end138.i.i:                                    ; preds = %do.body118.i.i
  %327 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %node.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i503.i)
  %329 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %329)
  %agg.tmp.sroa.0.0.copyload.i.i.i516.i = load volatile i32, ptr %spinlock10, align 4
  %330 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i503.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i516.i, ptr %agg.tmp.sroa.0.i.i.i503.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i517.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i516.i, 16
  %conv.i.i.i.i518.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i516.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i518.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i517.i)
  %cmp.i.i.not.i.i519.i = icmp eq i32 %conv.i.i.i.i518.i, %lock.sroa.0.0.extract.shift.i.i.i.i517.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i503.i)
  br i1 %cmp.i.i.not.i.i519.i, label %do.body4.i.i520.i, label %dlm_lockres_clear_refmap_bit.exit.i.i, !prof !371

do.body4.i.i520.i:                                ; preds = %do.end138.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 615, 0\0A.popsection", ""() #10, !srcloc !392
  unreachable

dlm_lockres_clear_refmap_bit.exit.i.i:            ; preds = %do.end138.i.i
  %conv141.i.i = zext i8 %328 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  %331 = ptrtoint ptr %_m.i.i.i to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 576, ptr %_m.i.i.i, align 8
  %332 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %lockname77.i, align 8
  %334 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %name80.i, align 8
  %336 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i.i, ptr noundef nonnull @__func__.dlm_lockres_clear_refmap_bit, i32 noundef 618, ptr noundef nonnull @.str.4, i32 noundef %333, ptr noundef %335, i32 noundef %conv141.i.i, ptr noundef %336) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i.i) #10
  call void @_clear_bit(i32 noundef %conv141.i.i, ptr noundef %refmap.i.i.i) #10
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in223.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %dlm_lockres_clear_refmap_bit.exit.i.i.list_del_init.exit.i.i_crit_edge

dlm_lockres_clear_refmap_bit.exit.i.i.list_del_init.exit.i.i_crit_edge: ; preds = %dlm_lockres_clear_refmap_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %dlm_lockres_clear_refmap_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in223.i.i, i32 0, i32 1
  %337 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %prev.i.i.i.i, align 4
  %339 = ptrtoint ptr %.pn.in223.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %.pn.in223.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %338, ptr %prev1.i.i.i.i.i, align 4
  %342 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %342)
  store volatile ptr %340, ptr %338, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %dlm_lockres_clear_refmap_bit.exit.i.i.list_del_init.exit.i.i_crit_edge
  %343 = ptrtoint ptr %.pn.in223.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store volatile ptr %.pn.in223.i.i, ptr %.pn.in223.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in223.i.i, i32 0, i32 1
  %344 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %.pn.in223.i.i, ptr %prev.i3.i.i.i, align 4
  call void @dlm_lock_put(ptr noundef %lock.0225.i.i) #10
  call void @dlm_lock_put(ptr noundef %lock.0225.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del_init.exit.i.i, %for.body42.i.i.for.inc.i.i_crit_edge
  %cmp38.not.i.i = icmp eq ptr %.pn226.i.i, %queue.0228.i.i
  br i1 %cmp38.not.i.i, label %for.inc.i.i.for.end.i522.i_crit_edge, label %for.inc.i.i.for.body42.i.i_crit_edge

for.inc.i.i.for.body42.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42.i.i

for.inc.i.i.for.end.i522.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i522.i

for.end.i522.i:                                   ; preds = %for.inc.i.i.for.end.i522.i_crit_edge, %for.body.i.i.for.end.i522.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.list_head, ptr %queue.0228.i.i, i32 1
  %inc.i521.i = add nuw nsw i32 %i.0227.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i521.i, 3
  br i1 %exitcond.not.i.i, label %while.cond.preheader.i.i, label %for.end.i522.i.for.body.i.i_crit_edge

for.end.i522.i.for.body.i.i_crit_edge:            ; preds = %for.end.i522.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end155.i.i:                                    ; preds = %if.end171.i.i.if.end155.i.i_crit_edge, %while.cond.preheader.i.i.if.end155.i.i_crit_edge
  %call151231.i.i = phi i32 [ %call151.i.i, %if.end171.i.i.if.end155.i.i_crit_edge ], [ %call151229.i.i, %while.cond.preheader.i.i.if.end155.i.i_crit_edge ]
  %345 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %node_num.i, align 4
  %conv157.i.i = zext i8 %346 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call151231.i.i, i32 %conv157.i.i)
  %cmp158.not.i.i = icmp eq i32 %call151231.i.i, %conv157.i.i
  br i1 %cmp158.not.i.i, label %if.end155.i.i.if.end171.i.i_crit_edge, label %do.body161.i.i

if.end155.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

do.body161.i.i:                                   ; preds = %if.end155.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m162.i.i) #10
  %347 = ptrtoint ptr %_m162.i.i to i32
  call void @__asan_store8_noabort(i32 %347)
  store i64 576, ptr %_m162.i.i, align 8
  %348 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %name76.i, align 4
  %350 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %lockname77.i, align 8
  %352 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m162.i.i, ptr noundef nonnull @__func__.dlm_remove_nonlocal_locks, i32 noundef 2964, ptr noundef nonnull @.str.142, ptr noundef %349, i32 noundef %351, ptr noundef %353, i32 noundef %call151231.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m162.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i208.i.i)
  %354 = ptrtoint ptr %spinlock10 to i32
  call void @__asan_load4_noabort(i32 %354)
  %agg.tmp.sroa.0.0.copyload.i.i211.i.i = load volatile i32, ptr %spinlock10, align 4
  %355 = ptrtoint ptr %agg.tmp.sroa.0.i.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i211.i.i, ptr %agg.tmp.sroa.0.i.i208.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i212.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i211.i.i, 16
  %conv.i.i.i213.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i211.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i213.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i212.i.i)
  %cmp.i.i.not.i214.i.i = icmp eq i32 %conv.i.i.i213.i.i, %lock.sroa.0.0.extract.shift.i.i.i212.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i208.i.i)
  br i1 %cmp.i.i.not.i214.i.i, label %do.body4.i215.i.i, label %dlm_lockres_clear_refmap_bit.exit219.i.i, !prof !371

do.body4.i215.i.i:                                ; preds = %do.body161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 615, 0\0A.popsection", ""() #10, !srcloc !392
  unreachable

dlm_lockres_clear_refmap_bit.exit219.i.i:         ; preds = %do.body161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i209.i.i) #10
  %356 = ptrtoint ptr %_m.i209.i.i to i32
  call void @__asan_store8_noabort(i32 %356)
  store i64 576, ptr %_m.i209.i.i, align 8
  %357 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %lockname77.i, align 8
  %359 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %name80.i, align 8
  %361 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i209.i.i, ptr noundef nonnull @__func__.dlm_lockres_clear_refmap_bit, i32 noundef 618, ptr noundef nonnull @.str.4, i32 noundef %358, ptr noundef %360, i32 noundef %call151231.i.i, ptr noundef %361) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i209.i.i) #10
  call void @_clear_bit(i32 noundef %call151231.i.i, ptr noundef %refmap.i.i.i) #10
  br label %if.end171.i.i

if.end171.i.i:                                    ; preds = %dlm_lockres_clear_refmap_bit.exit219.i.i, %if.end155.i.i.if.end171.i.i_crit_edge
  %inc172.i.i = add nsw i32 %call151231.i.i, 1
  %call151.i.i = call i32 @_find_next_bit_be(ptr noundef %refmap.i.i.i, i32 noundef 255, i32 noundef %inc172.i.i) #10
  %cmp152.i.i = icmp sgt i32 %call151.i.i, 254
  br i1 %cmp152.i.i, label %if.end171.i.i.dlm_remove_nonlocal_locks.exit.i_crit_edge, label %if.end171.i.i.if.end155.i.i_crit_edge

if.end171.i.i.if.end155.i.i_crit_edge:            ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155.i.i

if.end171.i.i.dlm_remove_nonlocal_locks.exit.i_crit_edge: ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_remove_nonlocal_locks.exit.i

dlm_remove_nonlocal_locks.exit.i:                 ; preds = %if.end171.i.i.dlm_remove_nonlocal_locks.exit.i_crit_edge, %while.cond.preheader.i.i.dlm_remove_nonlocal_locks.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock10) #10
  %wq274.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq274.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i524.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1
  %362 = ptrtoint ptr %hb_events.i.i524.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load volatile ptr, ptr %hb_events.i.i524.i, align 8
  %cmp.i.not.i.i525.i = icmp eq ptr %363, %hb_events.i.i524.i
  br i1 %cmp.i.not.i.i525.i, label %dlm_remove_nonlocal_locks.exit.i.leave.i_crit_edge, label %if.then.i.i527.i

dlm_remove_nonlocal_locks.exit.i.leave.i_crit_edge: ; preds = %dlm_remove_nonlocal_locks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave.i

if.then.i.i527.i:                                 ; preds = %dlm_remove_nonlocal_locks.exit.i
  %call.i.i.i.i526.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i524.i) #10
  br i1 %call.i.i.i.i526.i, label %if.end.i.i.i.i530.i, label %if.then.i.i527.i.list_del_init.exit.i.i532.i_crit_edge

if.then.i.i527.i.list_del_init.exit.i.i532.i_crit_edge: ; preds = %if.then.i.i527.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i532.i

if.end.i.i.i.i530.i:                              ; preds = %if.then.i.i527.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i528.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %364 = ptrtoint ptr %prev.i.i.i.i528.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %prev.i.i.i.i528.i, align 4
  %366 = ptrtoint ptr %hb_events.i.i524.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %hb_events.i.i524.i, align 8
  %prev1.i.i.i.i.i529.i = getelementptr inbounds %struct.list_head, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %prev1.i.i.i.i.i529.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %365, ptr %prev1.i.i.i.i.i529.i, align 4
  %369 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %369)
  store volatile ptr %367, ptr %365, align 4
  br label %list_del_init.exit.i.i532.i

list_del_init.exit.i.i532.i:                      ; preds = %if.end.i.i.i.i530.i, %if.then.i.i527.i.list_del_init.exit.i.i532.i_crit_edge
  %370 = ptrtoint ptr %hb_events.i.i524.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store volatile ptr %hb_events.i.i524.i, ptr %hb_events.i.i524.i, align 8
  %prev.i3.i.i.i531.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %call34.i, i32 0, i32 1, i32 1
  %371 = ptrtoint ptr %prev.i3.i.i.i531.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %hb_events.i.i524.i, ptr %prev.i3.i.i.i531.i, align 4
  br label %leave.i

leave.i:                                          ; preds = %list_del_init.exit.i.i532.i, %dlm_remove_nonlocal_locks.exit.i.leave.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %372 = ptrtoint ptr %dlm1.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dlm1.i.i, align 8
  %spinlock.i535.i = getelementptr inbounds %struct.dlm_ctxt, ptr %373, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i535.i) #10
  %master_lock.i536.i = getelementptr inbounds %struct.dlm_ctxt, ptr %373, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i536.i) #10
  %374 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %inuse.i.i, align 4
  %dec.i538.i = add i32 %375, -1
  store i32 %dec.i538.i, ptr %inuse.i.i, align 4
  call fastcc void @__dlm_put_mle(ptr noundef %call34.i) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i536.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i535.i) #10
  call void @dlm_lockres_calc_usage(ptr noundef %dlm, ptr noundef %res) #10
  br label %if.end278.i

if.then277.i:                                     ; preds = %dlm_mle_detach_hb_events.exit488.i, %if.then144.i, %dlm_mle_detach_hb_events.exit469.i.if.then277.i_crit_edge, %if.then119.i, %dlm_mle_detach_hb_events.exit451.i, %do.body53.i, %do.body23.i
  %wake.1.ph.i = phi i32 [ 0, %do.body23.i ], [ 0, %do.body53.i ], [ 1, %dlm_mle_detach_hb_events.exit488.i ], [ 1, %dlm_mle_detach_hb_events.exit469.i.if.then277.i_crit_edge ], [ 1, %if.then144.i ], [ 0, %if.then119.i ], [ %wake.0548.i, %dlm_mle_detach_hb_events.exit451.i ]
  %ret.1.ph.i = phi i32 [ -12, %do.body23.i ], [ -12, %do.body53.i ], [ -22, %dlm_mle_detach_hb_events.exit488.i ], [ %call123.i, %dlm_mle_detach_hb_events.exit469.i.if.then277.i_crit_edge ], [ %call123.i, %if.then144.i ], [ -17, %if.then119.i ], [ %ret.0549.i, %dlm_mle_detach_hb_events.exit451.i ]
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef %res) #10
  br label %if.end278.i

if.end278.i:                                      ; preds = %if.then277.i, %leave.i
  %ret.1569.i = phi i32 [ %ret.1.ph.i, %if.then277.i ], [ 0, %leave.i ]
  %wake.1567.i = phi i32 [ %wake.1.ph.i, %if.then277.i ], [ %wake.0548.i, %leave.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wake.1567.i)
  %tobool279.not.i = icmp eq i32 %wake.1567.i, 0
  br i1 %tobool279.not.i, label %if.end278.i.if.end282.i_crit_edge, label %if.then280.i

if.end278.i.if.end282.i_crit_edge:                ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282.i

if.then280.i:                                     ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #12
  %wq281.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq281.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end282.i

if.end282.i:                                      ; preds = %if.then280.i, %if.end278.i.if.end282.i_crit_edge
  br i1 %tobool8.not.i, label %if.end282.i.dlm_migrate_lockres.exit_crit_edge, label %if.then284.i

if.end282.i.dlm_migrate_lockres.exit_crit_edge:   ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_migrate_lockres.exit

if.then284.i:                                     ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_pages(i32 noundef %call7.i, i32 noundef 0) #10
  br label %dlm_migrate_lockres.exit

dlm_migrate_lockres.exit:                         ; preds = %if.then284.i, %if.end282.i.dlm_migrate_lockres.exit_crit_edge
  call void @dlm_put(ptr noundef %dlm) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m287.i) #10
  %376 = ptrtoint ptr %_m287.i to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 576, ptr %_m287.i, align 8
  %377 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %name76.i, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m287.i, ptr noundef nonnull @__func__.dlm_migrate_lockres, i32 noundef 2746, ptr noundef nonnull @.str.132, ptr noundef %378, i32 noundef %84, ptr noundef %82, i32 noundef %conv.pre-phi, i32 noundef %ret.1569.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m287.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldmle.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1569.i)
  %tobool22.not = icmp eq i32 %ret.1569.i, 0
  br i1 %tobool22.not, label %dlm_migrate_lockres.exit.if.end33_crit_edge, label %dlm_migrate_lockres.exit.do.body24_crit_edge

dlm_migrate_lockres.exit.do.body24_crit_edge:     ; preds = %dlm_migrate_lockres.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

dlm_migrate_lockres.exit.if.end33_crit_edge:      ; preds = %dlm_migrate_lockres.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body24:                                        ; preds = %dlm_migrate_lockres.exit.do.body24_crit_edge, %dlm_migrate_lockres.exit.thread
  %retval.0.i8392 = phi i32 [ -22, %dlm_migrate_lockres.exit.thread ], [ %ret.1569.i, %dlm_migrate_lockres.exit.do.body24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %379 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 576, ptr %_m, align 8
  %380 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %name76.i, align 4
  %382 = ptrtoint ptr %lockname77.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %lockname77.i, align 8
  %384 = ptrtoint ptr %name80.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %name80.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_empty_lockres, i32 noundef 2784, ptr noundef nonnull @.str.60, ptr noundef %381, i32 noundef %383, ptr noundef %385, i32 noundef %conv.pre-phi, i32 noundef %retval.0.i8392) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end33

if.end33:                                         ; preds = %do.body24, %dlm_migrate_lockres.exit.if.end33_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  br label %leave

leave:                                            ; preds = %if.end33, %if.end15.leave_crit_edge, %if.end15.thread
  %lock_dropped.0 = phi i32 [ 0, %if.end15.leave_crit_edge ], [ 1, %if.end33 ], [ 0, %if.end15.thread ]
  ret i32 %lock_dropped.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lock_basts_flushed(ptr noundef %dlm, ptr noundef %lock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ast_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %ast_lock) #10
  %spinlock = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %bast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3
  %0 = ptrtoint ptr %bast_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bast_list, align 4
  %cmp.i.not = icmp eq ptr %1, %bast_list
  br i1 %cmp.i.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bast_pending = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %2 = ptrtoint ptr %bast_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %bast_pending, align 4
  %3 = lshr i8 %bf.load, 6
  %.lobit = and i8 %3, 1
  %4 = xor i8 %.lobit, 1
  %5 = zext i8 %4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %5, %land.rhs ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  tail call void @_raw_spin_unlock(ptr noundef %ast_lock) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_migrate_request_handler(ptr noundef %msg, i32 noundef %len, ptr noundef %data, ptr nocapture noundef readnone %ret_data) local_unnamed_addr #1 align 64 {
entry:
  %oldmle = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldmle) #10
  %0 = ptrtoint ptr %oldmle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %oldmle, align 4
  %call = tail call ptr @dlm_grab(ptr noundef %data) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 4
  %namelen3 = getelementptr inbounds %struct.o2net_msg, ptr %msg, i32 1, i32 1
  %1 = ptrtoint ptr %namelen3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %namelen3, align 2
  %conv = zext i8 %2 to i32
  %call4 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %name1, i32 noundef %conv) #13
  %3 = load ptr, ptr @dlm_mle_cache, align 4
  %call5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3136) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.leave_crit_edge, label %if.end8

if.end.leave_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.end8:                                          ; preds = %if.end
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %call9 = tail call ptr @__dlm_lookup_lockres(ptr noundef %data, ptr noundef %name1, i32 noundef %conv, i32 noundef %call4) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.if.end26_crit_edge, label %if.then11

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then11:                                        ; preds = %if.end8
  %spinlock12 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call9, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock12) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %call9, i32 0, i32 17
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %state, align 2
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool14.not = icmp eq i16 %6, 0
  br i1 %tobool14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_migrate_request_handler, i32 noundef 3136, ptr noundef nonnull @.str.61) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %8 = load ptr, ptr @dlm_mle_cache, align 4
  call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %call5) #10
  br label %unlock

if.end21:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i16 %5, 32
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %or, ptr %state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %spinlock12) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.end8.if.end26_crit_edge
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %data, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %new_master = getelementptr inbounds %struct.dlm_migrate_request, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %new_master, align 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 4
  %call27 = call fastcc i32 @dlm_add_migration_mle(ptr noundef %data, ptr noundef %call9, ptr noundef nonnull %call5, ptr noundef nonnull %oldmle, ptr noundef %name1, i32 noundef %conv, i8 noundef zeroext %11, i8 noundef zeroext %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %14 = load ptr, ptr @dlm_mle_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %call5) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  br label %unlock

unlock:                                           ; preds = %if.end30, %if.then15
  %ret.0 = phi i32 [ -22, %if.then15 ], [ %call27, %if.end30 ]
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %15 = ptrtoint ptr %oldmle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oldmle, align 4
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %unlock.if.end35_crit_edge, label %if.then34

unlock.if.end35_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %unlock
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %hb_events.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hb_events.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %hb_events.i.i
  br i1 %cmp.i.not.i.i, label %if.then34.dlm_mle_detach_hb_events.exit_crit_edge, label %if.then.i.i

if.then34.dlm_mle_detach_hb_events.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_mle_detach_hb_events.exit

if.then.i.i:                                      ; preds = %if.then34
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %16, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hb_events.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %25 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %hb_events.i.i, ptr %hb_events.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %16, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %hb_events.i.i, ptr %prev.i3.i.i.i, align 4
  br label %dlm_mle_detach_hb_events.exit

dlm_mle_detach_hb_events.exit:                    ; preds = %list_del_init.exit.i.i, %if.then34.dlm_mle_detach_hb_events.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %dlm1.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %16, i32 0, i32 2
  %27 = ptrtoint ptr %dlm1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dlm1.i, align 4
  %spinlock.i74 = getelementptr inbounds %struct.dlm_ctxt, ptr %28, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock.i74) #10
  %master_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %28, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock.i) #10
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %16) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i74) #10
  br label %if.end35

if.end35:                                         ; preds = %dlm_mle_detach_hb_events.exit, %unlock.if.end35_crit_edge
  br i1 %tobool10.not, label %if.end35.leave_crit_edge, label %if.then37

if.end35.leave_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void @dlm_lockres_put(ptr noundef nonnull %call9)
  br label %leave

leave:                                            ; preds = %if.then37, %if.end35.leave_crit_edge, %if.end.leave_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then37 ], [ %ret.0, %if.end35.leave_crit_edge ], [ -12, %if.end.leave_crit_edge ]
  call void @dlm_put(ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %leave, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %leave ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldmle) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_add_migration_mle(ptr noundef %dlm, ptr noundef %res, ptr noundef %mle, ptr nocapture noundef %oldmle, ptr noundef %name, i32 noundef %namelen, i8 noundef zeroext %new_master, i8 noundef zeroext %master) unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i141 = alloca i32, align 4
  %agg.tmp.sroa.0.i34.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i135 = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m49 = alloca i64, align 8
  %_m76 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oldmle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %oldmle, align 4
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %1 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body10, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3191, 0\0A.popsection", ""() #10, !srcloc !454
  unreachable

do.body10:                                        ; preds = %entry
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i135)
  %3 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i136 = load volatile i32, ptr %master_lock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i135 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i136, ptr %agg.tmp.sroa.0.i135, align 4
  %lock.sroa.0.0.extract.shift.i.i137 = lshr i32 %agg.tmp.sroa.0.0.copyload.i136, 16
  %conv.i.i138 = and i32 %agg.tmp.sroa.0.0.copyload.i136, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i138, i32 %lock.sroa.0.0.extract.shift.i.i137)
  %cmp.i.i139.not = icmp eq i32 %conv.i.i138, %lock.sroa.0.0.extract.shift.i.i137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i135)
  br i1 %cmp.i.i139.not, label %do.body23, label %do.end31, !prof !371

do.body23:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3192, 0\0A.popsection", ""() #10, !srcloc !455
  unreachable

do.end31:                                         ; preds = %do.body10
  %call32 = tail call fastcc i32 @dlm_find_mle(ptr noundef %dlm, ptr noundef %oldmle, ptr noundef %name, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end31.if.end89_crit_edge, label %if.then34

do.end31.if.end89_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then34:                                        ; preds = %do.end31
  %5 = ptrtoint ptr %oldmle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oldmle, align 4
  %spinlock35 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spinlock35) #10
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then36, label %if.else69

if.then36:                                        ; preds = %if.then34
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %9 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %node_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %master)
  %cmp38 = icmp eq i8 %10, %master
  br i1 %cmp38, label %cleanup.thread, label %do.body48

cleanup.thread:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 576, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_add_migration_mle, i32 noundef 3204, ptr noundef nonnull @.str.143, i32 noundef %namelen, ptr noundef %name) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock35) #10
  br label %cleanup93

do.body48:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %master to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #10
  %12 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606847552, ptr %_m49, align 8
  %master53 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 12
  %13 = ptrtoint ptr %master53 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %master53, align 4
  %conv54 = zext i8 %14 to i32
  %new_master55 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 13
  %15 = ptrtoint ptr %new_master55 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %new_master55, align 1
  %conv56 = zext i8 %16 to i32
  %conv58 = zext i8 %new_master to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.dlm_add_migration_mle, i32 noundef 3215, ptr noundef nonnull @.str.144, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv, i32 noundef %conv58, i32 noundef %namelen, ptr noundef %name) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3216, 0\0A.popsection", ""() #10, !srcloc !456
  unreachable

if.else69:                                        ; preds = %if.then34
  %master70 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 12
  %17 = ptrtoint ptr %master70 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %master, ptr %master70, align 4
  %woken = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %woken, i32 noundef 4) #10
  %18 = ptrtoint ptr %woken to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %woken, align 4
  %wq = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %19 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %20 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body8.i, !prof !371

do.body4.i:                                       ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.body8.i:                                       ; preds = %if.else69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i)
  %21 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %agg.tmp.sroa.0.0.copyload.i35.i = load volatile i32, ptr %master_lock, align 4
  %22 = ptrtoint ptr %agg.tmp.sroa.0.i34.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i35.i, ptr %agg.tmp.sroa.0.i34.i, align 4
  %lock.sroa.0.0.extract.shift.i.i36.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i35.i, 16
  %conv.i.i37.i = and i32 %agg.tmp.sroa.0.0.copyload.i35.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i37.i, i32 %lock.sroa.0.0.extract.shift.i.i36.i)
  %cmp.i.i38.not.i = icmp eq i32 %conv.i.i37.i, %lock.sroa.0.0.extract.shift.i.i36.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i)
  br i1 %cmp.i.i38.not.i, label %do.body21.i, label %do.end26.i, !prof !371

do.body21.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.end26.i:                                       ; preds = %do.body8.i
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %do.end26.i.__dlm_unlink_mle.exit_crit_edge, label %if.then.i.i

do.end26.i.__dlm_unlink_mle.exit_crit_edge:       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_unlink_mle.exit

if.then.i.i:                                      ; preds = %do.end26.i
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %6, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %24, align 4
  %tobool.not.i3.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %24, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %6, align 4
  %30 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i.i, align 4
  br label %__dlm_unlink_mle.exit

__dlm_unlink_mle.exit:                            ; preds = %__hlist_del.exit.i.i, %do.end26.i.__dlm_unlink_mle.exit_crit_edge
  %hb_events.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hb_events.i, align 4
  %cmp.i.not.i = icmp eq ptr %32, %hb_events.i
  br i1 %cmp.i.not.i, label %__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge, label %if.then.i

__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge: ; preds = %__dlm_unlink_mle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_mle_detach_hb_events.exit

if.then.i:                                        ; preds = %__dlm_unlink_mle.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hb_events.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %39 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %hb_events.i, ptr %hb_events.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %6, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hb_events.i, ptr %prev.i3.i.i, align 4
  br label %__dlm_mle_detach_hb_events.exit

__dlm_mle_detach_hb_events.exit:                  ; preds = %list_del_init.exit.i, %__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp72 = icmp eq i32 %42, 1
  br i1 %cmp72, label %if.then74, label %__dlm_mle_detach_hb_events.exit.cleanup_crit_edge

__dlm_mle_detach_hb_events.exit.cleanup_crit_edge: ; preds = %__dlm_mle_detach_hb_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then74:                                        ; preds = %__dlm_mle_detach_hb_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m76) #10
  %43 = ptrtoint ptr %_m76 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 576, ptr %_m76, align 8
  %name80 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %44 = ptrtoint ptr %name80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name80, align 4
  %conv81 = zext i8 %master to i32
  %conv82 = zext i8 %new_master to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m76, ptr noundef nonnull @__func__.dlm_add_migration_mle, i32 noundef 3233, ptr noundef nonnull @.str.145, ptr noundef %45, i32 noundef %namelen, ptr noundef %name, i32 noundef %conv81, i32 noundef %conv82) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m76) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %__dlm_mle_detach_hb_events.exit.cleanup_crit_edge
  %ret.0 = phi i32 [ 1, %if.then74 ], [ 0, %__dlm_mle_detach_hb_events.exit.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %spinlock35) #10
  br label %if.end89

if.end89:                                         ; preds = %cleanup, %do.end31.if.end89_crit_edge
  %ret.2 = phi i32 [ %ret.0, %cleanup ], [ 0, %do.end31.if.end89_crit_edge ]
  call fastcc void @dlm_init_mle(ptr noundef %mle, i32 noundef 2, ptr noundef %dlm, ptr noundef %res, ptr noundef %name, i32 noundef %namelen)
  %new_master90 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 13
  %46 = ptrtoint ptr %new_master90 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %new_master, ptr %new_master90, align 1
  %master91 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 12
  %47 = ptrtoint ptr %master91 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %master, ptr %master91, align 4
  %conv92 = zext i8 %new_master to i32
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 8
  call void @_set_bit(i32 noundef %conv92, ptr noundef %maybe_map) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i141)
  %48 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %agg.tmp.sroa.0.0.copyload.i.i143 = load volatile i32, ptr %master_lock, align 4
  %49 = ptrtoint ptr %agg.tmp.sroa.0.i.i141 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i143, ptr %agg.tmp.sroa.0.i.i141, align 4
  %lock.sroa.0.0.extract.shift.i.i.i144 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i143, 16
  %conv.i.i.i145 = and i32 %agg.tmp.sroa.0.0.copyload.i.i143, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i145, i32 %lock.sroa.0.0.extract.shift.i.i.i144)
  %cmp.i.i.not.i146 = icmp eq i32 %conv.i.i.i145, %lock.sroa.0.0.extract.shift.i.i.i144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i141)
  br i1 %cmp.i.i.not.i146, label %do.body4.i147, label %do.end9.i, !prof !371

do.body4.i147:                                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #10, !srcloc !374
  unreachable

do.end9.i:                                        ; preds = %if.end89
  %mnamehash.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 20
  %50 = ptrtoint ptr %mnamehash.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mnamehash.i, align 4
  %master_hash.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  %52 = ptrtoint ptr %master_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master_hash.i.i, align 4
  %div3.i.i = lshr i32 %51, 10
  %rem.i.i = and i32 %div3.i.i, 31
  %arrayidx.i.i = getelementptr ptr, ptr %53, i32 %rem.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  %rem1.i.i = and i32 %51, 1023
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %55, i32 %rem1.i.i
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i.i, align 4
  %58 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %mle, align 4
  %tobool.not.i.i148 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i148, label %do.end9.i.__dlm_insert_mle.exit_crit_edge, label %do.body12.i.i

do.end9.i.__dlm_insert_mle.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_insert_mle.exit

do.body12.i.i:                                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i149 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %pprev.i.i149 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %mle, ptr %pprev.i.i149, align 4
  br label %__dlm_insert_mle.exit

__dlm_insert_mle.exit:                            ; preds = %do.body12.i.i, %do.end9.i.__dlm_insert_mle.exit_crit_edge
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %mle, ptr %add.ptr.i.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %mle, i32 0, i32 1
  %61 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %add.ptr.i.i, ptr %pprev34.i.i, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %__dlm_insert_mle.exit, %cleanup.thread
  %retval.1 = phi i32 [ %ret.2, %__dlm_insert_mle.exit ], [ -17, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_clean_master_list(ptr noundef %dlm, i8 noundef zeroext %dead_node) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i180 = alloca i32, align 4
  %agg.tmp.sroa.0.i34.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m20.i = alloca i64, align 8
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m83 = alloca i64, align 8
  %_m96 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 576, ptr %_m, align 8
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %conv = zext i8 %dead_node to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_clean_master_list, i32 noundef 3335, ptr noundef nonnull @.str.62, ptr noundef %2, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %3 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i215 = load volatile i32, ptr %spinlock, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i215, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i216 = lshr i32 %agg.tmp.sroa.0.0.copyload.i215, 16
  %conv.i.i217 = and i32 %agg.tmp.sroa.0.0.copyload.i215, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i217, i32 %lock.sroa.0.0.extract.shift.i.i216)
  %cmp.i.i.not218 = icmp eq i32 %conv.i.i217, %lock.sroa.0.0.extract.shift.i.i216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not218, label %entry.do.body7_crit_edge, label %do.end15.lr.ph, !prof !371

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

do.end15.lr.ph:                                   ; preds = %entry
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  %master_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  br label %do.end15

do.body7:                                         ; preds = %dlm_reset_mleres_owner.exit.do.body7_crit_edge, %entry.do.body7_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3337, 0\0A.popsection", ""() #10, !srcloc !457
  unreachable

do.end15:                                         ; preds = %dlm_reset_mleres_owner.exit.do.end15_crit_edge, %do.end15.lr.ph
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  br label %for.body

for.body:                                         ; preds = %for.inc123.for.body_crit_edge, %do.end15
  %i.0214 = phi i32 [ 0, %do.end15 ], [ %inc, %for.inc123.for.body_crit_edge ]
  %5 = ptrtoint ptr %master_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master_hash.i, align 4
  %div3.i = lshr i32 %i.0214, 10
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %i.0214, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %8, i32 %rem1.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %tobool22.not210 = icmp eq ptr %10, null
  br i1 %tobool22.not210, label %for.body.for.inc123_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc123_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %mle.0211 = phi ptr [ %12, %for.inc.land.rhs_crit_edge ], [ %10, %for.body.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %mle.0211 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mle.0211, align 4
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 14
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %switch = icmp ult i32 %14, 3
  br i1 %switch, label %do.end52, label %do.body44.critedge

do.body44.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3346, 0\0A.popsection", ""() #10, !srcloc !458
  unreachable

do.end52:                                         ; preds = %land.rhs
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %14, label %if.end62 [
    i32 1, label %do.end52.for.inc_crit_edge
    i32 0, label %do.end7.i
  ]

do.end52.for.inc_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end7.i:                                        ; preds = %do.end52
  %spinlock.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock.i) #10
  %maybe_map.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 8
  %call.i = call i32 @_find_first_bit_be(ptr noundef %maybe_map.i, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv)
  %cmp8.not.i = icmp eq i32 %call.i, %conv
  br i1 %cmp8.not.i, label %do.body19.i, label %do.body11.i

do.body11.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %16 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 576, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_clean_block_mle, i32 noundef 3309, ptr noundef nonnull @.str.146, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  br label %for.inc

do.body19.i:                                      ; preds = %do.end7.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m20.i) #10
  %17 = ptrtoint ptr %_m20.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 576, ptr %_m20.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m20.i, ptr noundef nonnull @__func__.dlm_clean_block_mle, i32 noundef 3316, ptr noundef nonnull @.str.147, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m20.i) #10
  %woken.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %woken.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %woken.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %woken.i, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i) #10
  %wq.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 4
  call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %hb_events.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1
  %19 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hb_events.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, %hb_events.i.i
  br i1 %cmp.i.not.i.i, label %do.body19.i.__dlm_mle_detach_hb_events.exit.i_crit_edge, label %if.then.i.i

do.body19.i.__dlm_mle_detach_hb_events.exit.i_crit_edge: ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_mle_detach_hb_events.exit.i

if.then.i.i:                                      ; preds = %do.body19.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hb_events.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %27 = ptrtoint ptr %hb_events.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %hb_events.i.i, ptr %hb_events.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hb_events.i.i, ptr %prev.i3.i.i.i, align 4
  br label %__dlm_mle_detach_hb_events.exit.i

__dlm_mle_detach_hb_events.exit.i:                ; preds = %list_del_init.exit.i.i, %do.body19.i.__dlm_mle_detach_hb_events.exit.i_crit_edge
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %mle.0211) #10
  br label %for.inc

if.end62:                                         ; preds = %do.end52
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 12
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %master, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %dead_node)
  %cmp65.not = icmp eq i8 %30, %dead_node
  br i1 %cmp65.not, label %if.end62.if.end73_crit_edge, label %land.lhs.true67

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true67:                                  ; preds = %if.end62
  %new_master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 13
  %31 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %new_master, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %dead_node)
  %cmp70.not = icmp eq i8 %32, %dead_node
  br i1 %cmp70.not, label %land.lhs.true67.if.end73_crit_edge, label %land.lhs.true67.for.inc_crit_edge

land.lhs.true67.for.inc_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true67.if.end73_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true67.if.end73_crit_edge, %if.end62.if.end73_crit_edge
  %new_master74 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 13
  %33 = ptrtoint ptr %new_master74 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %new_master74, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %dead_node)
  %cmp77 = icmp eq i8 %34, %dead_node
  br i1 %cmp77, label %land.lhs.true79, label %if.end73.if.end94_crit_edge

if.end73.if.end94_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true79:                                  ; preds = %if.end73
  %inuse = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 7
  %35 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool80.not = icmp eq i32 %36, 0
  br i1 %tobool80.not, label %land.lhs.true79.if.end94_crit_edge, label %do.body82

land.lhs.true79.if.end94_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.body82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83) #10
  %37 = ptrtoint ptr %_m83 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 2305843009213694528, ptr %_m83, align 8
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  %conv90 = zext i8 %30 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83, ptr noundef nonnull @__func__.dlm_clean_master_list, i32 noundef 3382, ptr noundef nonnull @.str.63, ptr noundef %39, i32 noundef %conv, i32 noundef %conv90) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83) #10
  br label %for.inc

if.end94:                                         ; preds = %land.lhs.true79.if.end94_crit_edge, %if.end73.if.end94_crit_edge
  %hb_events.i.i166 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1
  %40 = ptrtoint ptr %hb_events.i.i166 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hb_events.i.i166, align 4
  %cmp.i.not.i.i167 = icmp eq ptr %41, %hb_events.i.i166
  br i1 %cmp.i.not.i.i167, label %if.end94.__dlm_mle_detach_hb_events.exit.i176_crit_edge, label %if.then.i.i169

if.end94.__dlm_mle_detach_hb_events.exit.i176_crit_edge: ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_mle_detach_hb_events.exit.i176

if.then.i.i169:                                   ; preds = %if.end94
  %call.i.i.i.i168 = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i166) #10
  br i1 %call.i.i.i.i168, label %if.end.i.i.i.i172, label %if.then.i.i169.list_del_init.exit.i.i174_crit_edge

if.then.i.i169.list_del_init.exit.i.i174_crit_edge: ; preds = %if.then.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i174

if.end.i.i.i.i172:                                ; preds = %if.then.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i170 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i.i170, align 4
  %44 = ptrtoint ptr %hb_events.i.i166 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hb_events.i.i166, align 4
  %prev1.i.i.i.i.i171 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i.i171, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del_init.exit.i.i174

list_del_init.exit.i.i174:                        ; preds = %if.end.i.i.i.i172, %if.then.i.i169.list_del_init.exit.i.i174_crit_edge
  %48 = ptrtoint ptr %hb_events.i.i166 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %hb_events.i.i166, ptr %hb_events.i.i166, align 4
  %prev.i3.i.i.i173 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i3.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %hb_events.i.i166, ptr %prev.i3.i.i.i173, align 4
  br label %__dlm_mle_detach_hb_events.exit.i176

__dlm_mle_detach_hb_events.exit.i176:             ; preds = %list_del_init.exit.i.i174, %if.end94.__dlm_mle_detach_hb_events.exit.i176_crit_edge
  %spinlock.i175 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %spinlock.i175) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %50 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %50)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock, align 4
  %51 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %do.body8.i.i, !prof !371

do.body4.i.i:                                     ; preds = %__dlm_mle_detach_hb_events.exit.i176
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.body8.i.i:                                     ; preds = %__dlm_mle_detach_hb_events.exit.i176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i.i)
  %52 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %52)
  %agg.tmp.sroa.0.0.copyload.i35.i.i = load volatile i32, ptr %master_lock, align 4
  %53 = ptrtoint ptr %agg.tmp.sroa.0.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i35.i.i, ptr %agg.tmp.sroa.0.i34.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i36.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i35.i.i, 16
  %conv.i.i37.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i35.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i37.i.i, i32 %lock.sroa.0.0.extract.shift.i.i36.i.i)
  %cmp.i.i38.not.i.i = icmp eq i32 %conv.i.i37.i.i, %lock.sroa.0.0.extract.shift.i.i36.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i.i)
  br i1 %cmp.i.i38.not.i.i, label %do.body21.i.i, label %do.end26.i.i, !prof !371

do.body21.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.end26.i.i:                                     ; preds = %do.body8.i.i
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mle.0211, i32 0, i32 1
  %54 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %do.end26.i.i.dlm_clean_migration_mle.exit_crit_edge, label %if.then.i.i.i

do.end26.i.i.dlm_clean_migration_mle.exit_crit_edge: ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_clean_migration_mle.exit

if.then.i.i.i:                                    ; preds = %do.end26.i.i
  %56 = ptrtoint ptr %mle.0211 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mle.0211, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %55, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %55, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %60 = ptrtoint ptr %mle.0211 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %mle.0211, align 4
  %61 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %dlm_clean_migration_mle.exit

dlm_clean_migration_mle.exit:                     ; preds = %__hlist_del.exit.i.i.i, %do.end26.i.i.dlm_clean_migration_mle.exit_crit_edge
  %woken.i177 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 5
  %call.i.i.i178 = call zeroext i1 @__kasan_check_write(ptr noundef %woken.i177, i32 noundef 4) #10
  %62 = ptrtoint ptr %woken.i177 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 1, ptr %woken.i177, align 4
  call void @_raw_spin_unlock(ptr noundef %spinlock.i175) #10
  %wq.i179 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 4
  call void @__wake_up(ptr noundef %wq.i179, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m96) #10
  %63 = ptrtoint ptr %_m96 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 576, ptr %_m96, align 8
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 4
  %66 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %master, align 4
  %conv103 = zext i8 %67 to i32
  %68 = ptrtoint ptr %new_master74 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %new_master74, align 1
  %conv105 = zext i8 %69 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m96, ptr noundef nonnull @__func__.dlm_clean_master_list, i32 noundef 3392, ptr noundef nonnull @.str.64, ptr noundef %65, i32 noundef %conv, i32 noundef %conv103, i32 noundef %conv105) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m96) #10
  %mname.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 18
  %mnamelen.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 19
  %70 = ptrtoint ptr %mnamelen.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mnamelen.i, align 4
  %mnamehash.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 20
  %72 = ptrtoint ptr %mnamehash.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mnamehash.i, align 4
  %call.i181 = call ptr @__dlm_lookup_lockres(ptr noundef %dlm, ptr noundef %mname.i, i32 noundef %71, i32 noundef %73) #10
  %tobool.not.i = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i, label %if.end112, label %if.then.i

if.then.i:                                        ; preds = %dlm_clean_migration_mle.exit
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  %spinlock.i182 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i181, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock.i182) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i180)
  %74 = ptrtoint ptr %spinlock.i182 to i32
  call void @__asan_load4_noabort(i32 %74)
  %agg.tmp.sroa.0.0.copyload.i.i.i183 = load volatile i32, ptr %spinlock.i182, align 4
  %75 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i183, ptr %agg.tmp.sroa.0.i.i.i180, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i184 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i183, 16
  %conv.i.i.i.i185 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i183, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i185, i32 %lock.sroa.0.0.extract.shift.i.i.i.i184)
  %cmp.i.i.not.i.i186 = icmp eq i32 %conv.i.i.i.i185, %lock.sroa.0.0.extract.shift.i.i.i.i184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i180)
  br i1 %cmp.i.i.not.i.i186, label %do.body4.i.i187, label %dlm_set_lockres_owner.exit.i, !prof !371

do.body4.i.i187:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit.i:                     ; preds = %if.then.i
  %owner8.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call.i181, i32 0, i32 16
  %76 = ptrtoint ptr %owner8.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %owner8.i.i, align 4
  call void @dlm_move_lockres_to_recovery_list(ptr noundef %dlm, ptr noundef nonnull %call.i181) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock.i182) #10
  call void @dlm_lockres_put(ptr noundef nonnull %call.i181) #10
  %77 = ptrtoint ptr %hb_events.i.i166 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %hb_events.i.i166, align 4
  %cmp.i.not.i.i189 = icmp eq ptr %78, %hb_events.i.i166
  br i1 %cmp.i.not.i.i189, label %dlm_set_lockres_owner.exit.i.dlm_reset_mleres_owner.exit_crit_edge, label %if.then.i.i191

dlm_set_lockres_owner.exit.i.dlm_reset_mleres_owner.exit_crit_edge: ; preds = %dlm_set_lockres_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dlm_reset_mleres_owner.exit

if.then.i.i191:                                   ; preds = %dlm_set_lockres_owner.exit.i
  %call.i.i.i.i190 = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i.i166) #10
  br i1 %call.i.i.i.i190, label %if.end.i.i.i.i194, label %if.then.i.i191.list_del_init.exit.i.i196_crit_edge

if.then.i.i191.list_del_init.exit.i.i196_crit_edge: ; preds = %if.then.i.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i196

if.end.i.i.i.i194:                                ; preds = %if.then.i.i191
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i192 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i.i192, align 4
  %81 = ptrtoint ptr %hb_events.i.i166 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hb_events.i.i166, align 4
  %prev1.i.i.i.i.i193 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i.i193 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i.i193, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del_init.exit.i.i196

list_del_init.exit.i.i196:                        ; preds = %if.end.i.i.i.i194, %if.then.i.i191.list_del_init.exit.i.i196_crit_edge
  %85 = ptrtoint ptr %hb_events.i.i166 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %hb_events.i.i166, ptr %hb_events.i.i166, align 4
  %prev.i3.i.i.i195 = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.0211, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i3.i.i.i195 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %hb_events.i.i166, ptr %prev.i3.i.i.i195, align 4
  br label %dlm_reset_mleres_owner.exit

dlm_reset_mleres_owner.exit:                      ; preds = %list_del_init.exit.i.i196, %dlm_set_lockres_owner.exit.i.dlm_reset_mleres_owner.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %mle.0211) #10
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %87 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %87)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %88 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %dlm_reset_mleres_owner.exit.do.body7_crit_edge, label %dlm_reset_mleres_owner.exit.do.end15_crit_edge, !prof !371

dlm_reset_mleres_owner.exit.do.end15_crit_edge:   ; preds = %dlm_reset_mleres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

dlm_reset_mleres_owner.exit.do.body7_crit_edge:   ; preds = %dlm_reset_mleres_owner.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

if.end112:                                        ; preds = %dlm_clean_migration_mle.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %mle.0211)
  br label %for.inc

for.inc:                                          ; preds = %if.end112, %do.body82, %land.lhs.true67.for.inc_crit_edge, %__dlm_mle_detach_hb_events.exit.i, %do.body11.i, %do.end52.for.inc_crit_edge
  %tobool22.not = icmp eq ptr %12, null
  br i1 %tobool22.not, label %for.inc.for.inc123_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.inc123_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc123

for.inc123:                                       ; preds = %for.inc.for.inc123_crit_edge, %for.body.for.inc123_crit_edge
  %inc = add nuw nsw i32 %i.0214, 1
  %exitcond.not = icmp eq i32 %inc, 32768
  br i1 %exitcond.not, label %for.end124, label %for.inc123.for.body_crit_edge

for.inc123.for.body_crit_edge:                    ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end124:                                       ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_finish_migration(ptr noundef %dlm, ptr noundef %res, i8 noundef zeroext %old_master) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i171 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m.i.i = alloca i64, align 8
  %migrate.i = alloca %struct.dlm_migrate_request, align 4
  %status.i = alloca i32, align 4
  %_m.i167 = alloca i64, align 8
  %_m38.i = alloca i64, align 8
  %_m58.i = alloca i64, align 8
  %_m70.i = alloca i64, align 8
  %_m105.i = alloca i64, align 8
  %_m116.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %iter = alloca %struct.dlm_node_iter, align 4
  %_m = alloca i64, align 8
  %_m27 = alloca i64, align 8
  %_m38 = alloca i64, align 8
  %_m69 = alloca i64, align 8
  %_m86 = alloca i64, align 8
  %_m105 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #10
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %0 = call ptr @memcpy(ptr %iter, ptr %domain_map, i32 32)
  %curnode.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter, i32 0, i32 1
  %1 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %curnode.i, align 4
  %conv = zext i8 %old_master to i32
  call void @_clear_bit(i32 noundef %conv, ptr noundef nonnull %iter) #10
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %2 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %node_num, align 4
  %conv2 = zext i8 %3 to i32
  call void @_clear_bit(i32 noundef %conv2, ptr noundef nonnull %iter) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %spinlock6 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %spinlock6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %4 = ptrtoint ptr %spinlock6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock6, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %dlm_lockres_set_refmap_bit.exit, !prof !371

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #10, !srcloc !391
  unreachable

dlm_lockres_set_refmap_bit.exit:                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %6 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 576, ptr %_m.i, align 8
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %7 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lockname.i, align 8
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i, align 8
  %11 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_lockres_set_refmap_bit, i32 noundef 607, ptr noundef nonnull @.str.3, i32 noundef %8, ptr noundef %10, i32 noundef %conv, ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  call void @_set_bit(i32 noundef %conv, ptr noundef %refmap.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 576, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_finish_migration, i32 noundef 3430, ptr noundef nonnull @.str.65) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %13 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %node_num, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %migrate.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #10
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status.i, align 4
  %16 = call ptr @memset(ptr %migrate.i, i32 0, i32 72)
  %17 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lockname.i, align 8
  %conv.i = trunc i32 %18 to i8
  %namelen.i = getelementptr inbounds %struct.dlm_migrate_request, ptr %migrate.i, i32 0, i32 2
  %19 = ptrtoint ptr %namelen.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %namelen.i, align 2
  %name.i169 = getelementptr inbounds %struct.dlm_migrate_request, ptr %migrate.i, i32 0, i32 5
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 8
  %conv4.i = and i32 %18, 255
  %22 = call ptr @memcpy(ptr %name.i169, ptr %21, i32 %conv4.i)
  %new_master5.i = getelementptr inbounds %struct.dlm_migrate_request, ptr %migrate.i, i32 0, i32 1
  %23 = ptrtoint ptr %new_master5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %14, ptr %new_master5.i, align 1
  %24 = ptrtoint ptr %migrate.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %old_master, ptr %migrate.i, align 4
  %25 = ptrtoint ptr %curnode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %curnode.i, align 4
  %add.i165173.i = add i32 %26, 1
  %call.i166174.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef %add.i165173.i) #10
  %27 = call i32 @llvm.smin.i32(i32 %call.i166174.i, i32 255) #10
  %28 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %curnode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i166174.i)
  %29 = icmp ult i32 %call.i166174.i, 255
  br i1 %29, label %while.body.lr.ph.lr.ph.i, label %dlm_lockres_set_refmap_bit.exit.do.body37_crit_edge

dlm_lockres_set_refmap_bit.exit.do.body37_crit_edge: ; preds = %dlm_lockres_set_refmap_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

while.body.lr.ph.lr.ph.i:                         ; preds = %dlm_lockres_set_refmap_bit.exit
  %conv11.i = zext i8 %14 to i32
  %key.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %name74.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end86.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %.call8.i169180.i = phi i32 [ %call.i166174.i, %while.body.lr.ph.lr.ph.i ], [ %call.i166.i, %if.end86.i.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph179.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %ret.1.i, %if.end86.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %.call8.i171.i = phi i32 [ %.call8.i169180.i, %while.body.lr.ph.i ], [ %call.i.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.call8.i171.i, i32 %conv)
  %cmp9.i = icmp eq i32 %.call8.i171.i, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %.call8.i171.i, i32 %conv11.i)
  %cmp12.i = icmp eq i32 %.call8.i171.i, %conv11.i
  %or.cond.i = or i1 %cmp9.i, %cmp12.i
  br i1 %or.cond.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

if.end.i:                                         ; preds = %while.body.i
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %div3.i.i = lshr i32 %.call8.i171.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %domain_map, i32 %div3.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %.call8.i171.i, 31
  %32 = shl nuw i32 1, %and.i.i
  %33 = and i32 %31, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br i1 %tobool.not.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef %.call8.i171.i, ptr noundef nonnull %iter) #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then18.i, %while.body.i.while.cond.backedge.i_crit_edge
  %34 = ptrtoint ptr %curnode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %curnode.i, align 4
  %add.i.i = add i32 %35, 1
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef %add.i.i) #10
  %36 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 255) #10
  %37 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %curnode.i, align 4
  %38 = icmp ult i32 %call.i.i, 255
  br i1 %38, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.while.end.i_crit_edge

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end20.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key.i, align 4
  %conv21.i = trunc i32 %.call8.i171.i to i8
  %call22.i = call i32 @o2net_send_message(i32 noundef 508, i32 noundef %40, ptr noundef nonnull %migrate.i, i32 noundef 72, i8 noundef zeroext %conv21.i, ptr noundef nonnull %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end20.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i167) #10
  %41 = ptrtoint ptr %_m.i167 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606847552, ptr %_m.i167, align 8
  %42 = ptrtoint ptr %name74.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name74.i, align 4
  %44 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %namelen.i, align 2
  %conv30.i = zext i8 %45 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i167, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3060, ptr noundef nonnull @.str.148, ptr noundef %43, i32 noundef %conv30.i, ptr noundef %name.i169, i32 noundef %call22.i, i32 noundef %.call8.i171.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i167) #10
  %call34.i = call i32 @dlm_is_host_down(i32 noundef %call22.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %do.body37.i, label %if.end51.i

do.body37.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38.i) #10
  %46 = ptrtoint ptr %_m38.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606847552, ptr %_m38.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38.i, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3062, ptr noundef nonnull @.str.149, i32 noundef %call22.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38.i) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3063, 0\0A.popsection", ""() #10, !srcloc !459
  unreachable

if.end51.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef %.call8.i171.i, ptr noundef nonnull %iter) #10
  br label %if.end86.i

if.else.i:                                        ; preds = %if.end20.i
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp54.i = icmp slt i32 %48, 0
  br i1 %cmp54.i, label %do.body57.i, label %if.else65.i

do.body57.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m58.i) #10
  %49 = ptrtoint ptr %_m58.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 576, ptr %_m58.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m58.i, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3069, ptr noundef nonnull @.str.150, i32 noundef %.call8.i171.i, i32 noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m58.i) #10
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status.i, align 4
  br label %if.end86.i

if.else65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp66.i = icmp eq i32 %48, 1
  br i1 %cmp66.i, label %do.body69.i, label %if.else65.i.if.end86.i_crit_edge

if.else65.i.if.end86.i_crit_edge:                 ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

do.body69.i:                                      ; preds = %if.else65.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70.i) #10
  %52 = ptrtoint ptr %_m70.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 576, ptr %_m70.i, align 8
  %53 = ptrtoint ptr %name74.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name74.i, align 4
  %55 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lockname.i, align 8
  %57 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70.i, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3077, ptr noundef nonnull @.str.151, ptr noundef %54, i32 noundef %56, ptr noundef %58, i32 noundef %.call8.i171.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70.i) #10
  call void @_raw_spin_lock(ptr noundef %spinlock6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %59 = ptrtoint ptr %spinlock6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %spinlock6, align 4
  %60 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %dlm_lockres_set_refmap_bit.exit.i, !prof !371

do.body4.i.i:                                     ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #10, !srcloc !391
  unreachable

dlm_lockres_set_refmap_bit.exit.i:                ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %61 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 576, ptr %_m.i.i, align 8
  %62 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lockname.i, align 8
  %64 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.dlm_lockres_set_refmap_bit, i32 noundef 607, ptr noundef nonnull @.str.3, i32 noundef %63, ptr noundef %65, i32 noundef %.call8.i171.i, ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  call void @_set_bit(i32 noundef %.call8.i171.i, ptr noundef %refmap.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock6) #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %dlm_lockres_set_refmap_bit.exit.i, %if.else65.i.if.end86.i_crit_edge, %do.body57.i, %if.end51.i
  %ret.1.i = phi i32 [ 0, %if.end51.i ], [ %51, %do.body57.i ], [ %call22.i, %dlm_lockres_set_refmap_bit.exit.i ], [ %call22.i, %if.else65.i.if.end86.i_crit_edge ]
  %66 = ptrtoint ptr %curnode.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %curnode.i, align 4
  %add.i165.i = add i32 %67, 1
  %call.i166.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef %add.i165.i) #10
  %68 = call i32 @llvm.smin.i32(i32 %call.i166.i, i32 255) #10
  %69 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %curnode.i, align 4
  %70 = icmp ult i32 %call.i166.i, 255
  br i1 %70, label %if.end86.i.while.body.lr.ph.i_crit_edge, label %if.end86.i.while.end.i_crit_edge

if.end86.i.while.end.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end86.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

while.end.i:                                      ; preds = %if.end86.i.while.end.i_crit_edge, %while.cond.backedge.i.while.end.i_crit_edge
  %ret.0.ph.lcssa164.i = phi i32 [ %ret.0.ph179.i, %while.cond.backedge.i.while.end.i_crit_edge ], [ %ret.1.i, %if.end86.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.lcssa164.i)
  %cmp87.i = icmp slt i32 %ret.0.ph.lcssa164.i, 0
  br i1 %cmp87.i, label %if.then89.i, label %while.end.i.do.body37_crit_edge

while.end.i.do.body37_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body37

if.then89.i:                                      ; preds = %while.end.i
  %71 = zext i32 %ret.0.ph.lcssa164.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %ret.0.ph.lcssa164.i, label %do.body104.i [
    i32 -512, label %if.then89.i.if.then11_crit_edge
    i32 -4, label %if.then89.i.if.then11_crit_edge222
    i32 -28, label %if.then89.i.if.then11_crit_edge223
    i32 -122, label %if.then89.i.if.then11_crit_edge224
  ]

if.then89.i.if.then11_crit_edge224:               ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then89.i.if.then11_crit_edge223:               ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then89.i.if.then11_crit_edge222:               ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then89.i.if.then11_crit_edge:                  ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

do.body104.i:                                     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m105.i) #10
  %72 = ptrtoint ptr %_m105.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1152921504606847552, ptr %_m105.i, align 8
  %conv109.i = sext i32 %ret.0.ph.lcssa164.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m105.i, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3085, ptr noundef nonnull @.str.18, i64 noundef %conv109.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m105.i) #10
  br label %if.then11

if.then11:                                        ; preds = %do.body104.i, %if.then89.i.if.then11_crit_edge, %if.then89.i.if.then11_crit_edge222, %if.then89.i.if.then11_crit_edge223, %if.then89.i.if.then11_crit_edge224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m116.i) #10
  %73 = ptrtoint ptr %_m116.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 576, ptr %_m116.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m116.i, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3087, ptr noundef nonnull @.str.152, i32 noundef %ret.0.ph.lcssa164.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m116.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %migrate.i) #10
  %74 = zext i32 %ret.0.ph.lcssa164.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %ret.0.ph.lcssa164.i, label %do.body26 [
    i32 -512, label %if.then11.leave_crit_edge
    i32 -4, label %if.then11.leave_crit_edge225
    i32 -28, label %if.then11.leave_crit_edge226
    i32 -122, label %if.then11.leave_crit_edge227
  ]

if.then11.leave_crit_edge227:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then11.leave_crit_edge226:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then11.leave_crit_edge225:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

if.then11.leave_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %leave

do.body26:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #10
  %75 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 1152921504606847552, ptr %_m27, align 8
  %conv31 = sext i32 %ret.0.ph.lcssa164.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.dlm_finish_migration, i32 noundef 3434, ptr noundef nonnull @.str.18, i64 noundef %conv31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #10
  br label %leave

do.body37:                                        ; preds = %while.end.i.do.body37_crit_edge, %dlm_lockres_set_refmap_bit.exit.do.body37_crit_edge
  %ret.0.ph.lcssa164192.i = phi i32 [ %ret.0.ph.lcssa164.i, %while.end.i.do.body37_crit_edge ], [ 0, %dlm_lockres_set_refmap_bit.exit.do.body37_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m116.i) #10
  %76 = ptrtoint ptr %_m116.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 576, ptr %_m116.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m116.i, ptr noundef nonnull @__func__.dlm_do_migrate_request, i32 noundef 3087, ptr noundef nonnull @.str.152, i32 noundef %ret.0.ph.lcssa164192.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m116.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %migrate.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38) #10
  %77 = ptrtoint ptr %_m38 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 576, ptr %_m38, align 8
  %78 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lockname.i, align 8
  %80 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38, ptr noundef nonnull @__func__.dlm_finish_migration, i32 noundef 3439, ptr noundef nonnull @.str.66, i32 noundef %79, ptr noundef %81) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38) #10
  %call48 = call fastcc i32 @dlm_do_assert_master(ptr noundef %dlm, ptr noundef %res, ptr noundef nonnull %iter, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %do.body37.if.end79_crit_edge

do.body37.if.end79_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then51:                                        ; preds = %do.body37
  %82 = zext i32 %call48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call48, label %do.body68 [
    i32 -512, label %if.then51.if.end79_crit_edge
    i32 -4, label %if.then51.if.end79_crit_edge228
    i32 -28, label %if.then51.if.end79_crit_edge229
    i32 -122, label %if.then51.if.end79_crit_edge230
  ]

if.then51.if.end79_crit_edge230:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then51.if.end79_crit_edge229:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then51.if.end79_crit_edge228:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then51.if.end79_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.body68:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69) #10
  %83 = ptrtoint ptr %_m69 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 1152921504606847552, ptr %_m69, align 8
  %conv73 = sext i32 %call48 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69, ptr noundef nonnull @__func__.dlm_finish_migration, i32 noundef 3446, ptr noundef nonnull @.str.18, i64 noundef %conv73) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69) #10
  br label %if.end79

if.end79:                                         ; preds = %do.body68, %if.then51.if.end79_crit_edge, %if.then51.if.end79_crit_edge228, %if.then51.if.end79_crit_edge229, %if.then51.if.end79_crit_edge230, %do.body37.if.end79_crit_edge
  %84 = call ptr @memset(ptr %iter, i32 0, i32 32)
  call void @_set_bit(i32 noundef %conv, ptr noundef nonnull %iter) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m86) #10
  %85 = ptrtoint ptr %_m86 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 576, ptr %_m86, align 8
  %86 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lockname.i, align 8
  %88 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m86, ptr noundef nonnull @__func__.dlm_finish_migration, i32 noundef 3453, ptr noundef nonnull @.str.67, i32 noundef %87, ptr noundef %89, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m86) #10
  %call100 = call fastcc i32 @dlm_do_assert_master(ptr noundef %dlm, ptr noundef %res, ptr noundef nonnull %iter, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.body104, label %if.end79.if.end112_crit_edge

if.end79.if.end112_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.body104:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m105) #10
  %90 = ptrtoint ptr %_m105 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 576, ptr %_m105, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m105, ptr noundef nonnull @__func__.dlm_finish_migration, i32 noundef 3458, ptr noundef nonnull @.str.68, i32 noundef %call100) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m105) #10
  br label %if.end112

if.end112:                                        ; preds = %do.body104, %if.end79.if.end112_crit_edge
  call void @_raw_spin_lock(ptr noundef %spinlock6) #10
  %91 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %node_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i171)
  %93 = ptrtoint ptr %spinlock6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %agg.tmp.sroa.0.0.copyload.i.i173 = load volatile i32, ptr %spinlock6, align 4
  %94 = ptrtoint ptr %agg.tmp.sroa.0.i.i171 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i173, ptr %agg.tmp.sroa.0.i.i171, align 4
  %lock.sroa.0.0.extract.shift.i.i.i174 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i173, 16
  %conv.i.i.i175 = and i32 %agg.tmp.sroa.0.0.copyload.i.i173, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i175, i32 %lock.sroa.0.0.extract.shift.i.i.i174)
  %cmp.i.i.not.i176 = icmp eq i32 %conv.i.i.i175, %lock.sroa.0.0.extract.shift.i.i.i174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i171)
  br i1 %cmp.i.i.not.i176, label %do.body4.i177, label %dlm_set_lockres_owner.exit, !prof !371

do.body4.i177:                                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmcommon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #10, !srcloc !390
  unreachable

dlm_set_lockres_owner.exit:                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %owner8.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %95 = ptrtoint ptr %owner8.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %92, ptr %owner8.i, align 4
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %state, align 2
  %98 = and i16 %97, -33
  store i16 %98, ptr %state, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock6) #10
  call void @dlm_kick_thread(ptr noundef %dlm, ptr noundef %res) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %leave

leave:                                            ; preds = %dlm_set_lockres_owner.exit, %do.body26, %if.then11.leave_crit_edge, %if.then11.leave_crit_edge225, %if.then11.leave_crit_edge226, %if.then11.leave_crit_edge227
  %ret.1 = phi i32 [ 0, %dlm_set_lockres_owner.exit ], [ %ret.0.ph.lcssa164.i, %if.then11.leave_crit_edge ], [ %ret.0.ph.lcssa164.i, %if.then11.leave_crit_edge225 ], [ %ret.0.ph.lcssa164.i, %if.then11.leave_crit_edge226 ], [ %ret.0.ph.lcssa164.i, %if.then11.leave_crit_edge227 ], [ %ret.0.ph.lcssa164.i, %do.body26 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_do_assert_master(ptr noundef %dlm, ptr noundef %res, ptr nocapture noundef readonly %nodemap, i32 noundef %flags) unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %assert = alloca %struct.dlm_assert_master, align 4
  %iter = alloca %struct.dlm_node_iter, align 4
  %r = alloca i32, align 4
  %mle = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m30 = alloca i64, align 8
  %_m42 = alloca i64, align 8
  %_m57 = alloca i64, align 8
  %_m68 = alloca i64, align 8
  %_m96 = alloca i64, align 8
  %_m108 = alloca i64, align 8
  %_m120 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %assert) #10
  %0 = call ptr @memset(ptr %assert, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #10
  %lockname1 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %lockname1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp ugt i32 %4, 64
  br i1 %cmp, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1662, 0\0A.popsection", ""() #10, !srcloc !460
  unreachable

do.end9:                                          ; preds = %entry
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 2
  %7 = or i16 %6, 8192
  store i16 %7, ptr %state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %curnode.i = getelementptr inbounds %struct.dlm_node_iter, ptr %iter, i32 0, i32 1
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %conv20 = trunc i32 %4 to i8
  %namelen21 = getelementptr inbounds %struct.dlm_assert_master, ptr %assert, i32 0, i32 1
  %name22 = getelementptr inbounds %struct.dlm_assert_master, ptr %assert, i32 0, i32 4
  %flags23 = getelementptr inbounds %struct.dlm_assert_master, ptr %assert, i32 0, i32 3
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  br label %again

again:                                            ; preds = %while.end.again_crit_edge, %do.end9
  %ret.0 = phi i32 [ 0, %do.end9 ], [ %ret.2, %while.end.again_crit_edge ]
  %8 = call ptr @memcpy(ptr %iter, ptr %nodemap, i32 32)
  %9 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %curnode.i, align 4
  %call.i197 = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef 0) #10
  %10 = call i32 @llvm.smin.i32(i32 %call.i197, i32 255)
  %11 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %curnode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i197)
  %12 = icmp ult i32 %call.i197, 255
  br i1 %12, label %again.while.body_crit_edge, label %again.if.end132_crit_edge

again.if.end132_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

again.while.body_crit_edge:                       ; preds = %again
  br label %while.body

while.body:                                       ; preds = %if.end129.while.body_crit_edge, %again.while.body_crit_edge
  %.call8.i204 = phi i32 [ %call.i, %if.end129.while.body_crit_edge ], [ %call.i197, %again.while.body_crit_edge ]
  %reassert.0203 = phi i32 [ %reassert.1, %if.end129.while.body_crit_edge ], [ 0, %again.while.body_crit_edge ]
  %ret.1202 = phi i32 [ %ret.2, %if.end129.while.body_crit_edge ], [ %ret.0, %again.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #10
  %13 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %r, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mle) #10
  %14 = ptrtoint ptr %mle to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mle, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 576, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1678, ptr noundef nonnull @.str.153, i32 noundef %.call8.i204, i32 noundef %4, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %16 = call ptr @memset(ptr %assert, i32 0, i32 72)
  %17 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %node_num, align 4
  %19 = ptrtoint ptr %assert to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %assert, align 4
  %20 = ptrtoint ptr %namelen21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20, ptr %namelen21, align 1
  %21 = call ptr @memcpy(ptr %name22, ptr %2, i32 %4)
  %22 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %flags, ptr %flags23, align 4
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key, align 4
  %conv24 = trunc i32 %.call8.i204 to i8
  %call25 = call i32 @o2net_send_message(i32 noundef 502, i32 noundef %24, ptr noundef nonnull %assert, i32 noundef 72, i8 noundef zeroext %conv24, ptr noundef nonnull %r) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.body29, label %if.else

do.body29:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #10
  %25 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606847552, ptr %_m30, align 8
  %26 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1690, ptr noundef nonnull @.str.154, i32 noundef %call25, i32 noundef 502, i32 noundef %27, i32 noundef %.call8.i204) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #10
  %call38 = call i32 @dlm_is_host_down(i32 noundef %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body41, label %do.body56

do.body41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #10
  %28 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1152921504606847552, ptr %_m42, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1692, ptr noundef nonnull @.str.149, i32 noundef %call25) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1693, 0\0A.popsection", ""() #10, !srcloc !461
  unreachable

do.body56:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57) #10
  %29 = ptrtoint ptr %_m57 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 576, ptr %_m57, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1696, ptr noundef nonnull @.str.103, i32 noundef %.call8.i204) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57) #10
  %30 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %r, align 4
  br label %if.end89

if.else:                                          ; preds = %while.body
  %31 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp64 = icmp slt i32 %32, 0
  br i1 %cmp64, label %do.body67, label %if.else.if.end89_crit_edge

if.else.if.end89_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

do.body67:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68) #10
  %33 = ptrtoint ptr %_m68 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606847552, ptr %_m68, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1703, ptr noundef nonnull @.str.155, i32 noundef %4, ptr noundef %2, i32 noundef %.call8.i204, i32 noundef %32) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68) #10
  %spinlock75 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %spinlock75) #10
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %call76 = call fastcc i32 @dlm_find_mle(ptr noundef %dlm, ptr noundef nonnull %mle, ptr noundef %2, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body67.if.end79_crit_edge, label %if.then78

do.body67.if.end79_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then78:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %mle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mle, align 4
  call void @dlm_print_one_mle(ptr noundef %35) #10
  call fastcc void @__dlm_put_mle(ptr noundef %35)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %do.body67.if.end79_crit_edge
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock75) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1713, 0\0A.popsection", ""() #10, !srcloc !462
  unreachable

if.end89:                                         ; preds = %if.else.if.end89_crit_edge, %do.body56
  %ret.2 = phi i32 [ %call25, %do.body56 ], [ %ret.1202, %if.else.if.end89_crit_edge ]
  %36 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %r, align 4
  %38 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %do.body95, label %if.end89.if.end103_crit_edge

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

do.body95:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m96) #10
  %40 = ptrtoint ptr %_m96 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606847552, ptr %_m96, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m96, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1720, ptr noundef nonnull @.str.156, i32 noundef %4, ptr noundef %2, i32 noundef %.call8.i204) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m96) #10
  br label %if.end103

if.end103:                                        ; preds = %do.body95, %if.end89.if.end103_crit_edge
  %41 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %r, align 4
  %and104 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end115_crit_edge, label %do.body107

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.body107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m108) #10
  %43 = ptrtoint ptr %_m108 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 576, ptr %_m108, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m108, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1726, ptr noundef nonnull @.str.157, i32 noundef %4, ptr noundef %2, i32 noundef %.call8.i204) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m108) #10
  br label %if.end115

if.end115:                                        ; preds = %do.body107, %if.end103.if.end115_crit_edge
  %reassert.1 = phi i32 [ 1, %do.body107 ], [ %reassert.0203, %if.end103.if.end115_crit_edge ]
  %44 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r, align 4
  %and116 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end129_crit_edge, label %do.body119

if.end115.if.end129_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

do.body119:                                       ; preds = %if.end115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m120) #10
  %46 = ptrtoint ptr %_m120 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 576, ptr %_m120, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m120, ptr noundef nonnull @__func__.dlm_do_assert_master, i32 noundef 1732, ptr noundef nonnull @.str.158, i32 noundef %4, ptr noundef %2, i32 noundef %.call8.i204) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m120) #10
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %47 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %47)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %48 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %dlm_lockres_set_refmap_bit.exit, !prof !371

do.body4.i:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #10, !srcloc !391
  unreachable

dlm_lockres_set_refmap_bit.exit:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %49 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 576, ptr %_m.i, align 8
  %50 = ptrtoint ptr %lockname1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lockname1, align 8
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 8
  %54 = call ptr @llvm.returnaddress(i32 0) #10
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.dlm_lockres_set_refmap_bit, i32 noundef 607, ptr noundef nonnull @.str.3, i32 noundef %51, ptr noundef %53, i32 noundef %.call8.i204, ptr noundef %54) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  call void @_set_bit(i32 noundef %.call8.i204, ptr noundef %refmap.i) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %if.end129

if.end129:                                        ; preds = %dlm_lockres_set_refmap_bit.exit, %if.end115.if.end129_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #10
  %55 = ptrtoint ptr %curnode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %curnode.i, align 4
  %add.i = add i32 %56, 1
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %iter, i32 noundef 255, i32 noundef %add.i) #10
  %57 = call i32 @llvm.smin.i32(i32 %call.i, i32 255)
  %58 = ptrtoint ptr %curnode.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %curnode.i, align 4
  %59 = icmp ult i32 %call.i, 255
  br i1 %59, label %if.end129.while.body_crit_edge, label %while.end

if.end129.while.body_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end129
  %tobool130.not = icmp eq i32 %reassert.1, 0
  br i1 %tobool130.not, label %while.end.if.end132_crit_edge, label %while.end.again_crit_edge

while.end.again_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

while.end.if.end132_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.end132:                                        ; preds = %while.end.if.end132_crit_edge, %again.if.end132_crit_edge
  %ret.1.lcssa218 = phi i32 [ %ret.2, %while.end.if.end132_crit_edge ], [ %ret.0, %again.if.end132_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %state, align 2
  %62 = and i16 %61, -8193
  store i16 %62, ptr %state, align 2
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %assert) #10
  ret i32 %ret.1.lcssa218
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_kick_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_lockres_reserve_ast(ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3487, 0\0A.popsection", ""() #10, !srcloc !431
  unreachable

do.end7:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 2
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool8.not = icmp eq i16 %4, 0
  br i1 %tobool8.not, label %do.end7.do.body11_crit_edge, label %if.then9

do.end7.do.body11_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dlm_print_one_lock_resource(ptr noundef %res) #10
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %do.end7.do.body11_crit_edge
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 2
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool15.not = icmp eq i16 %7, 0
  br i1 %tobool15.not, label %do.end28, label %do.body23, !prof !378

do.body23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3491, 0\0A.popsection", ""() #10, !srcloc !432
  unreachable

do.end28:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %asts_reserved = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %asts_reserved, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %asts_reserved, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %asts_reserved, ptr %asts_reserved, i32 1, ptr elementtype(i32) %asts_reserved) #10, !srcloc !389
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockres_release_ast(ptr noundef %dlm, ptr noundef %res) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asts_reserved = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 13
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  %call = tail call i32 @_atomic_dec_and_lock(ptr noundef %asts_reserved, ptr noundef %spinlock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %migration_pending = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 12
  %0 = ptrtoint ptr %migration_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %migration_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  br label %return

do.body:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %state, align 2
  %3 = and i16 %2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  br i1 %tobool5.not, label %do.end13, label %do.body9, !prof !378

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3520, 0\0A.popsection", ""() #10, !srcloc !463
  unreachable

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear = and i8 %bf.load, 127
  %4 = ptrtoint ptr %migration_pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear, ptr %migration_pending, align 4
  %5 = or i16 %2, 32
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %state, align 2
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  %wq = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %migration_wq = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %migration_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %return

return:                                           ; preds = %do.end13, %if.then2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_force_free_mles(ptr noundef %dlm) local_unnamed_addr #1 align 64 {
entry:
  %agg.tmp.sroa.0.i34.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %master_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %master_lock) #10
  %dlm_state = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 31
  %0 = ptrtoint ptr %dlm_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dlm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %do.body8, label %do.body2, !prof !378

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3544, 0\0A.popsection", ""() #10, !srcloc !464
  unreachable

do.body8:                                         ; preds = %entry
  %domain_map = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 18
  %call = tail call i32 @_find_first_bit_be(ptr noundef %domain_map, i32 noundef 255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp9 = icmp slt i32 %call, 255
  br i1 %cmp9, label %do.body17, label %for.cond.preheader, !prof !371

for.cond.preheader:                               ; preds = %do.body8
  %master_hash.i = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 23
  br label %for.body

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3545, 0\0A.popsection", ""() #10, !srcloc !465
  unreachable

for.body:                                         ; preds = %for.inc55.for.body_crit_edge, %for.cond.preheader
  %i.086 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc55.for.body_crit_edge ]
  %2 = ptrtoint ptr %master_hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_hash.i, align 4
  %div3.i = lshr i32 %i.086, 10
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %rem1.i = and i32 %i.086, 1023
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %5, i32 %rem1.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %tobool32.not82 = icmp eq ptr %7, null
  br i1 %tobool32.not82, label %for.body.for.inc55_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc55_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

land.rhs:                                         ; preds = %__dlm_mle_detach_hb_events.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %mle.083 = phi ptr [ %9, %__dlm_mle_detach_hb_events.exit.land.rhs_crit_edge ], [ %7, %for.body.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %mle.083 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mle.083, align 4
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.083, i32 0, i32 14
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp36.not = icmp eq i32 %11, 0
  br i1 %cmp36.not, label %land.rhs.if.end44_crit_edge, label %do.body38

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.body38:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606847552, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_force_free_mles, i32 noundef 3551, ptr noundef nonnull @.str.69, ptr noundef nonnull %mle.083) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  call void @dlm_print_one_mle(ptr noundef nonnull %mle.083) #10
  br label %if.end44

if.end44:                                         ; preds = %do.body38, %land.rhs.if.end44_crit_edge
  %woken = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.083, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %woken, i32 noundef 4) #10
  %13 = ptrtoint ptr %woken to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %woken, align 4
  %wq = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.083, i32 0, i32 4
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %14 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.body8.i, !prof !371

do.body4.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !372
  unreachable

do.body8.i:                                       ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i)
  %16 = ptrtoint ptr %master_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload.i35.i = load volatile i32, ptr %master_lock, align 4
  %17 = ptrtoint ptr %agg.tmp.sroa.0.i34.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i35.i, ptr %agg.tmp.sroa.0.i34.i, align 4
  %lock.sroa.0.0.extract.shift.i.i36.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i35.i, 16
  %conv.i.i37.i = and i32 %agg.tmp.sroa.0.0.copyload.i35.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i37.i, i32 %lock.sroa.0.0.extract.shift.i.i36.i)
  %cmp.i.i38.not.i = icmp eq i32 %conv.i.i37.i, %lock.sroa.0.0.extract.shift.i.i36.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i34.i)
  br i1 %cmp.i.i38.not.i, label %do.body21.i, label %do.end26.i, !prof !371

do.body21.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !373
  unreachable

do.end26.i:                                       ; preds = %do.body8.i
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %mle.083, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %do.end26.i.__dlm_unlink_mle.exit_crit_edge, label %if.then.i.i

do.end26.i.__dlm_unlink_mle.exit_crit_edge:       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_unlink_mle.exit

if.then.i.i:                                      ; preds = %do.end26.i
  %20 = ptrtoint ptr %mle.083 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mle.083, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %19, align 4
  %tobool.not.i3.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %24 = ptrtoint ptr %mle.083 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mle.083, align 4
  %25 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pprev.i.i, align 4
  br label %__dlm_unlink_mle.exit

__dlm_unlink_mle.exit:                            ; preds = %__hlist_del.exit.i.i, %do.end26.i.__dlm_unlink_mle.exit_crit_edge
  %hb_events.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.083, i32 0, i32 1
  %26 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hb_events.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %hb_events.i
  br i1 %cmp.i.not.i, label %__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge, label %if.then.i

__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge: ; preds = %__dlm_unlink_mle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dlm_mle_detach_hb_events.exit

if.then.i:                                        ; preds = %__dlm_unlink_mle.exit
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hb_events.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.083, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hb_events.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %34 = ptrtoint ptr %hb_events.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %hb_events.i, ptr %hb_events.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle.083, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %hb_events.i, ptr %prev.i3.i.i, align 4
  br label %__dlm_mle_detach_hb_events.exit

__dlm_mle_detach_hb_events.exit:                  ; preds = %list_del_init.exit.i, %__dlm_unlink_mle.exit.__dlm_mle_detach_hb_events.exit_crit_edge
  call fastcc void @__dlm_put_mle(ptr noundef nonnull %mle.083)
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %__dlm_mle_detach_hb_events.exit.for.inc55_crit_edge, label %__dlm_mle_detach_hb_events.exit.land.rhs_crit_edge

__dlm_mle_detach_hb_events.exit.land.rhs_crit_edge: ; preds = %__dlm_mle_detach_hb_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

__dlm_mle_detach_hb_events.exit.for.inc55_crit_edge: ; preds = %__dlm_mle_detach_hb_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

for.inc55:                                        ; preds = %__dlm_mle_detach_hb_events.exit.for.inc55_crit_edge, %for.body.for.inc55_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 32768
  br i1 %exitcond.not, label %for.end56, label %for.inc55.for.body_crit_edge

for.inc55.for.body_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end56:                                        ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %master_lock) #10
  call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_do_master_requery(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_drop_lockres_ref_done(ptr nocapture noundef readonly %dlm, ptr noundef %res, i8 noundef zeroext %node) unnamed_addr #1 align 64 {
entry:
  %deref = alloca %struct.dlm_deref_lockres_done, align 4
  %r = alloca i32, align 4
  %_m = alloca i64, align 8
  %_m27 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %deref) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #10
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r, align 4, !annotation !435
  %lockname1 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %lockname1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lockname1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp ugt i32 %4, 64
  br i1 %cmp, label %do.body4, label %do.end9, !prof !371

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmmaster.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2418, 0\0A.popsection", ""() #10, !srcloc !466
  unreachable

do.end9:                                          ; preds = %entry
  %5 = call ptr @memset(ptr %deref, i32 0, i32 72)
  %node_num = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 12
  %6 = ptrtoint ptr %node_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %node_num, align 4
  %node_idx = getelementptr inbounds %struct.dlm_deref_lockres_done, ptr %deref, i32 0, i32 2
  %8 = ptrtoint ptr %node_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %node_idx, align 2
  %conv = trunc i32 %4 to i8
  %namelen10 = getelementptr inbounds %struct.dlm_deref_lockres_done, ptr %deref, i32 0, i32 3
  %9 = ptrtoint ptr %namelen10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %namelen10, align 1
  %name11 = getelementptr inbounds %struct.dlm_deref_lockres_done, ptr %deref, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %name11, ptr %2, i32 %4)
  %key = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 13
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 4
  %call = call i32 @o2net_send_message(i32 noundef 522, i32 noundef %12, ptr noundef nonnull %deref, i32 noundef 72, i8 noundef zeroext %node, ptr noundef nonnull %r) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %do.body15, label %if.else

do.body15:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %13 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1152921504606847552, ptr %_m, align 8
  %name18 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %14 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name18, align 4
  %conv19 = zext i8 %node to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.dlm_drop_lockres_ref_done, i32 noundef 2430, ptr noundef nonnull @.str.118, ptr noundef %15, i32 noundef %4, ptr noundef %2, i32 noundef %call, i32 noundef %conv19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.end37

if.else:                                          ; preds = %do.end9
  %16 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23 = icmp slt i32 %17, 0
  br i1 %cmp23, label %do.body26, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.body26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #10
  %18 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606847552, ptr %_m27, align 8
  %name31 = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %19 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name31, align 4
  %conv32 = zext i8 %node to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.dlm_drop_lockres_ref_done, i32 noundef 2434, ptr noundef nonnull @.str.55, ptr noundef %20, i32 noundef %4, ptr noundef %2, i32 noundef %conv32, i32 noundef %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #10
  call void @dlm_print_one_lock_resource(ptr noundef %res) #10
  br label %if.end37

if.end37:                                         ; preds = %do.body26, %if.else.if.end37_crit_edge, %do.body15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %deref) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_send_one_lockres(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_wait_for_node_death(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_node_dead(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lock_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_move_lockres_to_recovery_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

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

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !136, !137, !139, !140, !142, !144, !146, !147, !149, !151, !153, !155, !156, !158, !160, !162, !164, !165, !167, !168, !170, !171, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !214, !216, !218, !220, !222, !224, !226, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !254, !256, !257, !259, !261, !263, !264, !266, !268, !270, !272, !273, !275, !276, !278, !279, !281, !283, !285, !287, !289, !291, !292, !294, !296, !298, !300, !302, !304, !306, !308, !309, !311, !312, !313, !315, !317, !319, !321, !323, !324, !326, !328, !329, !331, !333, !335, !336, !338, !340, !341, !343, !345, !347, !349, !351, !352, !354, !356, !358, !360}
!llvm.module.flags = !{!362, !363, !364, !365, !366, !367, !368, !369}
!llvm.ident = !{!370}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 389, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 437, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 443, i32 41}
!6 = !{ptr @__func__.dlm_lockres_set_refmap_bit, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 606, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.dlm_lockres_clear_refmap_bit, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 617, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__func__.dlm_lockres_drop_inflight_ref, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 649, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.__dlm_lockres_grab_inflight_worker, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 661, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.dlm_get_lock_resource, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 720, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 771, i32 5}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 784, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 795, i32 2}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 818, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 834, i32 4}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 866, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 898, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 903, i32 5}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 938, i32 4}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 947, i32 4}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 958, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 962, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 973, i32 2}
!49 = !{ptr @__func__.dlm_master_request_handler, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1455, i32 4}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1491, i32 4}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1500, i32 4}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1510, i32 4}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1513, i32 5}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1585, i32 4}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1591, i32 4}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1615, i32 3}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1621, i32 4}
!68 = !{ptr @__func__.dlm_assert_master_handler, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1781, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1788, i32 3}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1794, i32 3}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1802, i32 4}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1807, i32 5}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1814, i32 5}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1823, i32 5}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1828, i32 5}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1847, i32 4}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1854, i32 5}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1865, i32 6}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1870, i32 5}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1877, i32 5}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1887, i32 5}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1931, i32 5}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1966, i32 4}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1985, i32 4}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2002, i32 3}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2006, i32 4}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2014, i32 3}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2021, i32 2}
!111 = !{ptr @__func__.dlm_dispatch_assert_master, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2068, i32 3}
!113 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__func__.dlm_drop_lockres_ref, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2234, i32 3}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2238, i32 3}
!119 = !{ptr @__func__.dlm_deref_lockres_handler, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2272, i32 3}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2276, i32 3}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2286, i32 3}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2308, i32 4}
!127 = !{ptr @__func__.dlm_deref_lockres_done_handler, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2364, i32 3}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2387, i32 3}
!131 = !{ptr @__func__.dlm_empty_lockres, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2782, i32 3}
!133 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__func__.dlm_migrate_request_handler, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3135, i32 4}
!136 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @__func__.dlm_clean_master_list, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3335, i32 2}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3378, i32 5}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3390, i32 4}
!144 = !{ptr @__func__.dlm_finish_migration, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3430, i32 2}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3438, i32 2}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3452, i32 2}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3457, i32 3}
!153 = !{ptr @__func__.dlm_force_free_mles, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3551, i32 5}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @dlm_lockres_cache, !157, !"dlm_lockres_cache", i1 false, i1 false}
!157 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 68, i32 27}
!158 = !{ptr @dlm_lockname_cache, !159, !"dlm_lockname_cache", i1 false, i1 false}
!159 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 69, i32 27}
!160 = !{ptr @dlm_mle_cache, !161, !"dlm_mle_cache", i1 false, i1 false}
!161 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 70, i32 27}
!162 = !{ptr @__func__.dlm_mle_node_down, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 365, i32 3}
!164 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__func__.dlm_mle_node_up, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 379, i32 3}
!167 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__func__.dlm_lockres_release, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 476, i32 2}
!170 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 488, i32 3}
!173 = !{ptr @dlm_init_lockres.__key, !174, !"__key", i1 false, i1 false}
!174 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 539, i32 2}
!175 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @dlm_init_lockres.__key.75, !177, !"__key", i1 false, i1 false}
!177 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 540, i32 2}
!178 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @__func__.__dlm_lockres_grab_inflight_ref, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 628, i32 2}
!181 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @dlm_init_mle.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 262, i32 2}
!184 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @dlm_init_mle.__key.79, !186, !"__key", i1 false, i1 false}
!186 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 263, i32 2}
!187 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 80, i32 24}
!190 = !{ptr @__func__.dlm_wait_for_lock_mastery, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1018, i32 3}
!192 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1027, i32 5}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1047, i32 3}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1052, i32 4}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1062, i32 3}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1068, i32 4}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1104, i32 9}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1108, i32 4}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1112, i32 3}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1120, i32 3}
!211 = !{ptr @__func__.dlm_restart_lock_mastery, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1216, i32 2}
!213 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1228, i32 4}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1231, i32 4}
!218 = !{ptr @.str.95, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1235, i32 4}
!220 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1244, i32 6}
!222 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1251, i32 7}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1266, i32 7}
!226 = !{ptr @__func__.dlm_do_master_request, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1327, i32 4}
!228 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1330, i32 4}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1333, i32 4}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1341, i32 4}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1346, i32 3}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1356, i32 4}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1357, i32 4}
!241 = !{ptr @.str.106, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1363, i32 4}
!243 = !{ptr @.str.107, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1367, i32 4}
!245 = !{ptr @.str.108, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1372, i32 4}
!247 = !{ptr @.str.109, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1377, i32 4}
!249 = !{ptr @__func__.__dlm_put_mle, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 222, i32 3}
!251 = !{ptr @__func__.dlm_mle_release, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 414, i32 2}
!253 = !{ptr @.str.110, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @__func__.dlm_assert_master_worker, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2124, i32 3}
!256 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2135, i32 2}
!259 = !{ptr @.str.113, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2152, i32 2}
!261 = !{ptr @__func__.__dlm_lockres_drop_inflight_worker, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 672, i32 2}
!263 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @__func__.dlm_pre_master_reco_lockres, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2183, i32 4}
!266 = !{ptr @.str.115, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2195, i32 5}
!268 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2203, i32 4}
!270 = !{ptr @__func__.dlm_deref_lockres_worker, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2462, i32 3}
!272 = !{ptr @.str.117, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @__func__.dlm_drop_lockres_ref_done, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2428, i32 3}
!275 = !{ptr @.str.118, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @__func__.dlm_is_lockres_migratable, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2513, i32 4}
!278 = !{ptr @.str.119, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.120, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2529, i32 2}
!281 = !{ptr @.str.121, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 378, i32 10}
!283 = !{ptr @.str.122, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 380, i32 10}
!285 = !{ptr @.str.123, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 382, i32 10}
!287 = distinct !{null, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/ocfs2/dlm/dlmcommon.h", i32 384, i32 10}
!289 = !{ptr @__func__.dlm_migrate_lockres, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2558, i32 2}
!291 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.126, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2595, i32 3}
!294 = !{ptr @.str.127, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2605, i32 3}
!296 = !{ptr @.str.128, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2652, i32 3}
!298 = !{ptr @.str.129, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2690, i32 4}
!300 = !{ptr @.str.130, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2695, i32 5}
!302 = !{ptr @.str.131, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2711, i32 4}
!304 = !{ptr @.str.132, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2745, i32 2}
!306 = !{ptr @__func__.dlm_mark_lockres_migrating, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2836, i32 2}
!308 = !{ptr @.str.133, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2861, i32 2}
!311 = !{ptr @.str.135, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.136, !310, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.137, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2871, i32 3}
!315 = !{ptr @.str.138, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2875, i32 3}
!317 = !{ptr @.str.139, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2880, i32 3}
!319 = !{ptr @.str.140, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2888, i32 3}
!321 = !{ptr @__func__.dlm_remove_nonlocal_locks, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2936, i32 5}
!323 = !{ptr @.str.141, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.142, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 2962, i32 4}
!326 = !{ptr @__func__.dlm_add_migration_mle, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3202, i32 5}
!328 = !{ptr @.str.143, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.144, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3209, i32 5}
!331 = !{ptr @.str.145, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3228, i32 5}
!333 = !{ptr @__func__.dlm_clean_block_mle, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3308, i32 3}
!335 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.147, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3316, i32 3}
!338 = !{ptr @__func__.dlm_do_migrate_request, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3058, i32 4}
!340 = !{ptr @.str.148, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.149, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3062, i32 5}
!343 = !{ptr @.str.150, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3068, i32 4}
!345 = !{ptr @.str.151, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3075, i32 4}
!347 = !{ptr @.str.152, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 3087, i32 2}
!349 = !{ptr @__func__.dlm_do_assert_master, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1677, i32 3}
!351 = !{ptr @.str.153, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.154, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1688, i32 4}
!354 = !{ptr @.str.155, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1702, i32 4}
!356 = !{ptr @.str.156, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1718, i32 5}
!358 = !{ptr @.str.157, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1724, i32 4}
!360 = !{ptr @.str.158, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/ocfs2/dlm/dlmmaster.c", i32 1730, i32 4}
!362 = !{i32 1, !"wchar_size", i32 2}
!363 = !{i32 1, !"min_enum_size", i32 4}
!364 = !{i32 8, !"branch-target-enforcement", i32 0}
!365 = !{i32 8, !"sign-return-address", i32 0}
!366 = !{i32 8, !"sign-return-address-all", i32 0}
!367 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!368 = !{i32 7, !"uwtable", i32 1}
!369 = !{i32 7, !"frame-pointer", i32 2}
!370 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!371 = !{!"branch_weights", i32 1, i32 2000}
!372 = !{i64 2157277979, i64 2157278468, i64 2157278016, i64 2157278072, i64 2157278106, i64 2157278130, i64 2157278171, i64 2157278192, i64 2157278220, i64 2157278254}
!373 = !{i64 2157279871, i64 2157280360, i64 2157279908, i64 2157279964, i64 2157279998, i64 2157280022, i64 2157280063, i64 2157280084, i64 2157280112, i64 2157280146}
!374 = !{i64 2157285824, i64 2157286313, i64 2157285861, i64 2157285917, i64 2157285951, i64 2157285975, i64 2157286016, i64 2157286037, i64 2157286065, i64 2157286099}
!375 = !{i64 2157293063, i64 2157293552, i64 2157293100, i64 2157293156, i64 2157293190, i64 2157293214, i64 2157293255, i64 2157293276, i64 2157293304, i64 2157293338}
!376 = !{i64 2148527235}
!377 = !{i64 2148441675, i64 2148441707, i64 2148441736, i64 2148441770, i64 2148441801, i64 2148441824}
!378 = !{!"branch_weights", i32 2000, i32 1}
!379 = !{i64 2149403349}
!380 = !{i64 2157305809, i64 2157306298, i64 2157305846, i64 2157305902, i64 2157305936, i64 2157305960, i64 2157306001, i64 2157306022, i64 2157306050, i64 2157306084}
!381 = !{i64 2148440145, i64 2148440171, i64 2148440200, i64 2148440234, i64 2148440265, i64 2148440288}
!382 = !{i64 2157308532, i64 2157309021, i64 2157308569, i64 2157308625, i64 2157308659, i64 2157308683, i64 2157308724, i64 2157308745, i64 2157308773, i64 2157308807}
!383 = !{i64 2157310155, i64 2157310644, i64 2157310192, i64 2157310248, i64 2157310282, i64 2157310306, i64 2157310347, i64 2157310368, i64 2157310396, i64 2157310430}
!384 = !{i64 2157311784, i64 2157312273, i64 2157311821, i64 2157311877, i64 2157311911, i64 2157311935, i64 2157311976, i64 2157311997, i64 2157312025, i64 2157312059}
!385 = !{i64 2157313407, i64 2157313896, i64 2157313444, i64 2157313500, i64 2157313534, i64 2157313558, i64 2157313599, i64 2157313620, i64 2157313648, i64 2157313682}
!386 = !{i64 2157315026, i64 2157315515, i64 2157315063, i64 2157315119, i64 2157315153, i64 2157315177, i64 2157315218, i64 2157315239, i64 2157315267, i64 2157315301}
!387 = !{i64 2157316655, i64 2157317144, i64 2157316692, i64 2157316748, i64 2157316782, i64 2157316806, i64 2157316847, i64 2157316868, i64 2157316896, i64 2157316930}
!388 = !{i64 2157318274, i64 2157318763, i64 2157318311, i64 2157318367, i64 2157318401, i64 2157318425, i64 2157318466, i64 2157318487, i64 2157318515, i64 2157318549}
!389 = !{i64 2148437680, i64 2148437706, i64 2148437735, i64 2148437769, i64 2148437800, i64 2148437823}
!390 = !{i64 2157245427, i64 2157245917, i64 2157245464, i64 2157245520, i64 2157245554, i64 2157245578, i64 2157245619, i64 2157245640, i64 2157245668, i64 2157245702}
!391 = !{i64 2157320896, i64 2157321385, i64 2157320933, i64 2157320989, i64 2157321023, i64 2157321047, i64 2157321088, i64 2157321109, i64 2157321137, i64 2157321171}
!392 = !{i64 2157327294, i64 2157327783, i64 2157327331, i64 2157327387, i64 2157327421, i64 2157327445, i64 2157327486, i64 2157327507, i64 2157327535, i64 2157327569}
!393 = !{i64 2157330051, i64 2157330540, i64 2157330088, i64 2157330144, i64 2157330178, i64 2157330202, i64 2157330243, i64 2157330264, i64 2157330292, i64 2157330326}
!394 = !{i64 2157331928, i64 2157332417, i64 2157331965, i64 2157332021, i64 2157332055, i64 2157332079, i64 2157332120, i64 2157332141, i64 2157332169, i64 2157332203}
!395 = !{i64 2157333547, i64 2157334036, i64 2157333584, i64 2157333640, i64 2157333674, i64 2157333698, i64 2157333739, i64 2157333760, i64 2157333788, i64 2157333822}
!396 = !{i64 2157335952, i64 2157336441, i64 2157335989, i64 2157336045, i64 2157336079, i64 2157336103, i64 2157336144, i64 2157336165, i64 2157336193, i64 2157336227}
!397 = !{i64 2157341873, i64 2157342362, i64 2157341910, i64 2157341966, i64 2157342000, i64 2157342024, i64 2157342065, i64 2157342086, i64 2157342114, i64 2157342148}
!398 = !{i64 2157343893, i64 2157344382, i64 2157343930, i64 2157343986, i64 2157344020, i64 2157344044, i64 2157344085, i64 2157344106, i64 2157344134, i64 2157344168}
!399 = !{i64 2157345547, i64 2157346036, i64 2157345584, i64 2157345640, i64 2157345674, i64 2157345698, i64 2157345739, i64 2157345760, i64 2157345788, i64 2157345822}
!400 = !{i64 2157247476, i64 2157247966, i64 2157247513, i64 2157247569, i64 2157247603, i64 2157247627, i64 2157247668, i64 2157247689, i64 2157247717, i64 2157247751}
!401 = !{i64 2157348544, i64 2157349033, i64 2157348581, i64 2157348637, i64 2157348671, i64 2157348695, i64 2157348736, i64 2157348757, i64 2157348785, i64 2157348819}
!402 = !{i64 2157350189, i64 2157350678, i64 2157350226, i64 2157350282, i64 2157350316, i64 2157350340, i64 2157350381, i64 2157350402, i64 2157350430, i64 2157350464}
!403 = !{i64 2157260962, i64 2157261451, i64 2157260999, i64 2157261055, i64 2157261089, i64 2157261113, i64 2157261154, i64 2157261175, i64 2157261203, i64 2157261237}
!404 = !{i64 2157262854, i64 2157263343, i64 2157262891, i64 2157262947, i64 2157262981, i64 2157263005, i64 2157263046, i64 2157263067, i64 2157263095, i64 2157263129}
!405 = !{i64 2148439210, i64 2148439242, i64 2148439271, i64 2148439305, i64 2148439336, i64 2148439359}
!406 = !{i64 2157419301, i64 2157419791, i64 2157419338, i64 2157419394, i64 2157419428, i64 2157419452, i64 2157419493, i64 2157419514, i64 2157419542, i64 2157419576}
!407 = !{i64 2157365216, i64 2157365706, i64 2157365253, i64 2157365309, i64 2157365343, i64 2157365367, i64 2157365408, i64 2157365429, i64 2157365457, i64 2157365491}
!408 = !{i64 2157356060, i64 2157356549, i64 2157356097, i64 2157356153, i64 2157356187, i64 2157356211, i64 2157356252, i64 2157356273, i64 2157356301, i64 2157356335}
!409 = !{i64 2157287716, i64 2157288205, i64 2157287753, i64 2157287809, i64 2157287843, i64 2157287867, i64 2157287908, i64 2157287929, i64 2157287957, i64 2157287991}
!410 = !{i64 2157270483, i64 2157270972, i64 2157270520, i64 2157270576, i64 2157270610, i64 2157270634, i64 2157270675, i64 2157270696, i64 2157270724, i64 2157270758}
!411 = !{i64 2157272636, i64 2157273125, i64 2157272673, i64 2157272729, i64 2157272763, i64 2157272787, i64 2157272828, i64 2157272849, i64 2157272877, i64 2157272911}
!412 = !{i64 2157274215, i64 2157274704, i64 2157274252, i64 2157274308, i64 2157274342, i64 2157274366, i64 2157274407, i64 2157274428, i64 2157274456, i64 2157274490}
!413 = !{i64 2157275796, i64 2157276285, i64 2157275833, i64 2157275889, i64 2157275923, i64 2157275947, i64 2157275988, i64 2157276009, i64 2157276037, i64 2157276071}
!414 = !{i64 2157258747, i64 2157259236, i64 2157258784, i64 2157258840, i64 2157258874, i64 2157258898, i64 2157258939, i64 2157258960, i64 2157258988, i64 2157259022}
!415 = !{i64 2157369546, i64 2157370036, i64 2157369583, i64 2157369639, i64 2157369673, i64 2157369697, i64 2157369738, i64 2157369759, i64 2157369787, i64 2157369821}
!416 = !{i64 2157371371, i64 2157371861, i64 2157371408, i64 2157371464, i64 2157371498, i64 2157371522, i64 2157371563, i64 2157371584, i64 2157371612, i64 2157371646}
!417 = !{i64 2157377263, i64 2157377753, i64 2157377300, i64 2157377356, i64 2157377390, i64 2157377414, i64 2157377455, i64 2157377476, i64 2157377504, i64 2157377538}
!418 = !{i64 2157380054, i64 2157380544, i64 2157380091, i64 2157380147, i64 2157380181, i64 2157380205, i64 2157380246, i64 2157380267, i64 2157380295, i64 2157380329}
!419 = !{i64 2157384191, i64 2157384681, i64 2157384228, i64 2157384284, i64 2157384318, i64 2157384342, i64 2157384383, i64 2157384404, i64 2157384432, i64 2157384466}
!420 = !{i64 2157386528, i64 2157387018, i64 2157386565, i64 2157386621, i64 2157386655, i64 2157386679, i64 2157386720, i64 2157386741, i64 2157386769, i64 2157386803}
!421 = !{i64 2157388358, i64 2157388848, i64 2157388395, i64 2157388451, i64 2157388485, i64 2157388509, i64 2157388550, i64 2157388571, i64 2157388599, i64 2157388633}
!422 = !{i64 2157390613, i64 2157391103, i64 2157390650, i64 2157390706, i64 2157390740, i64 2157390764, i64 2157390805, i64 2157390826, i64 2157390854, i64 2157390888}
!423 = !{i64 2157393482, i64 2157393972, i64 2157393519, i64 2157393575, i64 2157393609, i64 2157393633, i64 2157393674, i64 2157393695, i64 2157393723, i64 2157393757}
!424 = !{i64 2157407867, i64 2157408357, i64 2157407904, i64 2157407960, i64 2157407994, i64 2157408018, i64 2157408059, i64 2157408080, i64 2157408108, i64 2157408142}
!425 = !{i64 2157411833, i64 2157412323, i64 2157411870, i64 2157411926, i64 2157411960, i64 2157411984, i64 2157412025, i64 2157412046, i64 2157412074, i64 2157412108}
!426 = !{i64 2157264731, i64 2157265220, i64 2157264768, i64 2157264824, i64 2157264858, i64 2157264882, i64 2157264923, i64 2157264944, i64 2157264972, i64 2157265006}
!427 = !{i64 2157266623, i64 2157267112, i64 2157266660, i64 2157266716, i64 2157266750, i64 2157266774, i64 2157266815, i64 2157266836, i64 2157266864, i64 2157266898}
!428 = !{i64 2157268437, i64 2157268926, i64 2157268474, i64 2157268530, i64 2157268564, i64 2157268588, i64 2157268629, i64 2157268650, i64 2157268678, i64 2157268712}
!429 = !{i64 2157300624, i64 2157301113, i64 2157300661, i64 2157300717, i64 2157300751, i64 2157300775, i64 2157300816, i64 2157300837, i64 2157300865, i64 2157300899}
!430 = !{i64 2157302516, i64 2157303005, i64 2157302553, i64 2157302609, i64 2157302643, i64 2157302667, i64 2157302708, i64 2157302729, i64 2157302757, i64 2157302791}
!431 = !{i64 2157519640, i64 2157520130, i64 2157519677, i64 2157519733, i64 2157519767, i64 2157519791, i64 2157519832, i64 2157519853, i64 2157519881, i64 2157519915}
!432 = !{i64 2157521282, i64 2157521772, i64 2157521319, i64 2157521375, i64 2157521409, i64 2157521433, i64 2157521474, i64 2157521495, i64 2157521523, i64 2157521557}
!433 = !{i64 2157338216, i64 2157338705, i64 2157338253, i64 2157338309, i64 2157338343, i64 2157338367, i64 2157338408, i64 2157338429, i64 2157338457, i64 2157338491}
!434 = !{i64 2157339853, i64 2157340342, i64 2157339890, i64 2157339946, i64 2157339980, i64 2157340004, i64 2157340045, i64 2157340066, i64 2157340094, i64 2157340128}
!435 = !{!"auto-init"}
!436 = !{i64 2157421748, i64 2157422238, i64 2157421785, i64 2157421841, i64 2157421875, i64 2157421899, i64 2157421940, i64 2157421961, i64 2157421989, i64 2157422023}
!437 = !{i64 2157424032, i64 2157424522, i64 2157424069, i64 2157424125, i64 2157424159, i64 2157424183, i64 2157424224, i64 2157424245, i64 2157424273, i64 2157424307}
!438 = !{i64 2157430828, i64 2157431318, i64 2157430865, i64 2157430921, i64 2157430955, i64 2157430979, i64 2157431020, i64 2157431041, i64 2157431069, i64 2157431103}
!439 = !{i64 2157437700, i64 2157438190, i64 2157437737, i64 2157437793, i64 2157437827, i64 2157437851, i64 2157437892, i64 2157437913, i64 2157437941, i64 2157437975}
!440 = !{i64 2157453194, i64 2157453684, i64 2157453231, i64 2157453287, i64 2157453321, i64 2157453345, i64 2157453386, i64 2157453407, i64 2157453435, i64 2157453469}
!441 = !{i64 2157440405, i64 2157440895, i64 2157440442, i64 2157440498, i64 2157440532, i64 2157440556, i64 2157440597, i64 2157440618, i64 2157440646, i64 2157440680}
!442 = !{i64 2157487260, i64 2157487750, i64 2157487297, i64 2157487353, i64 2157487387, i64 2157487411, i64 2157487452, i64 2157487473, i64 2157487501, i64 2157487535}
!443 = !{i64 2157489140, i64 2157489630, i64 2157489177, i64 2157489233, i64 2157489267, i64 2157489291, i64 2157489332, i64 2157489353, i64 2157489381, i64 2157489415}
!444 = !{i64 2157455614, i64 2157456104, i64 2157455651, i64 2157455707, i64 2157455741, i64 2157455765, i64 2157455806, i64 2157455827, i64 2157455855, i64 2157455889}
!445 = !{i64 2157457245, i64 2157457735, i64 2157457282, i64 2157457338, i64 2157457372, i64 2157457396, i64 2157457437, i64 2157457458, i64 2157457486, i64 2157457520}
!446 = !{i64 2157464243, i64 2157464733, i64 2157464280, i64 2157464336, i64 2157464370, i64 2157464394, i64 2157464435, i64 2157464456, i64 2157464484, i64 2157464518}
!447 = !{i64 2157465893, i64 2157466383, i64 2157465930, i64 2157465986, i64 2157466020, i64 2157466044, i64 2157466085, i64 2157466106, i64 2157466134, i64 2157466168}
!448 = !{i64 2157467773, i64 2157468263, i64 2157467810, i64 2157467866, i64 2157467900, i64 2157467924, i64 2157467965, i64 2157467986, i64 2157468014, i64 2157468048}
!449 = !{i64 2157469401, i64 2157469891, i64 2157469438, i64 2157469494, i64 2157469528, i64 2157469552, i64 2157469593, i64 2157469614, i64 2157469642, i64 2157469676}
!450 = !{i64 2157476009, i64 2157476499, i64 2157476046, i64 2157476102, i64 2157476136, i64 2157476160, i64 2157476201, i64 2157476222, i64 2157476250, i64 2157476284}
!451 = !{i64 2157477641, i64 2157478131, i64 2157477678, i64 2157477734, i64 2157477768, i64 2157477792, i64 2157477833, i64 2157477854, i64 2157477882, i64 2157477916}
!452 = !{i64 2157479249, i64 2157479739, i64 2157479286, i64 2157479342, i64 2157479376, i64 2157479400, i64 2157479441, i64 2157479462, i64 2157479490, i64 2157479524}
!453 = !{i64 2157484920, i64 2157485410, i64 2157484957, i64 2157485013, i64 2157485047, i64 2157485071, i64 2157485112, i64 2157485133, i64 2157485161, i64 2157485195}
!454 = !{i64 2157498938, i64 2157499428, i64 2157498975, i64 2157499031, i64 2157499065, i64 2157499089, i64 2157499130, i64 2157499151, i64 2157499179, i64 2157499213}
!455 = !{i64 2157500833, i64 2157501323, i64 2157500870, i64 2157500926, i64 2157500960, i64 2157500984, i64 2157501025, i64 2157501046, i64 2157501074, i64 2157501108}
!456 = !{i64 2157503198, i64 2157503688, i64 2157503235, i64 2157503291, i64 2157503325, i64 2157503349, i64 2157503390, i64 2157503411, i64 2157503439, i64 2157503473}
!457 = !{i64 2157508619, i64 2157509109, i64 2157508656, i64 2157508712, i64 2157508746, i64 2157508770, i64 2157508811, i64 2157508832, i64 2157508860, i64 2157508894}
!458 = !{i64 2157513902, i64 2157514392, i64 2157513939, i64 2157513995, i64 2157514029, i64 2157514053, i64 2157514094, i64 2157514115, i64 2157514143, i64 2157514177}
!459 = !{i64 2157494735, i64 2157495225, i64 2157494772, i64 2157494828, i64 2157494862, i64 2157494886, i64 2157494927, i64 2157494948, i64 2157494976, i64 2157495010}
!460 = !{i64 2157396265, i64 2157396755, i64 2157396302, i64 2157396358, i64 2157396392, i64 2157396416, i64 2157396457, i64 2157396478, i64 2157396506, i64 2157396540}
!461 = !{i64 2157398918, i64 2157399408, i64 2157398955, i64 2157399011, i64 2157399045, i64 2157399069, i64 2157399110, i64 2157399131, i64 2157399159, i64 2157399193}
!462 = !{i64 2157401089, i64 2157401579, i64 2157401126, i64 2157401182, i64 2157401216, i64 2157401240, i64 2157401281, i64 2157401302, i64 2157401330, i64 2157401364}
!463 = !{i64 2157523082, i64 2157523572, i64 2157523119, i64 2157523175, i64 2157523209, i64 2157523233, i64 2157523274, i64 2157523295, i64 2157523323, i64 2157523357}
!464 = !{i64 2157524973, i64 2157525463, i64 2157525010, i64 2157525066, i64 2157525100, i64 2157525124, i64 2157525165, i64 2157525186, i64 2157525214, i64 2157525248}
!465 = !{i64 2157526706, i64 2157527196, i64 2157526743, i64 2157526799, i64 2157526833, i64 2157526857, i64 2157526898, i64 2157526919, i64 2157526947, i64 2157526981}
!466 = !{i64 2157435279, i64 2157435769, i64 2157435316, i64 2157435372, i64 2157435406, i64 2157435430, i64 2157435471, i64 2157435492, i64 2157435520, i64 2157435554}
