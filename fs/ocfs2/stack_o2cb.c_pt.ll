; ModuleID = '/llk/IR_all_yes/fs/ocfs2/stack_o2cb.c_pt.bc'
source_filename = "../fs/ocfs2/stack_o2cb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ocfs2_stack_plugin = type { ptr, ptr, ptr, %struct.list_head, i32, %struct.ocfs2_protocol_version }
%struct.list_head = type { ptr, ptr }
%struct.ocfs2_protocol_version = type { i8, i8 }
%struct.ocfs2_stack_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.ocfs2_cluster_connection = type { [65 x i8], i32, [17 x i8], i32, %struct.ocfs2_protocol_version, ptr, ptr, ptr, ptr, ptr }
%struct.dlm_lockstatus = type { i32, i32, ptr, [64 x i8] }
%struct.ocfs2_dlm_lksb = type { %union.anon, ptr }
%union.anon = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_locking_protocol = type { %struct.ocfs2_protocol_version, ptr, ptr, ptr }

@o2cb_stack = internal global { %struct.ocfs2_stack_plugin, [36 x i8] } { %struct.ocfs2_stack_plugin { ptr @.str, ptr @o2cb_stack_ops, ptr null, %struct.list_head zeroinitializer, i32 0, %struct.ocfs2_protocol_version zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author472 = internal constant [31 x i8] c"ocfs2_stack_o2cb.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_description473 = internal constant [69 x i8] c"ocfs2_stack_o2cb.description=ocfs2 driver for the classic o2cb stack\00", section ".modinfo", align 1
@__UNIQUE_ID_file474 = internal constant [48 x i8] c"ocfs2_stack_o2cb.file=fs/ocfs2/ocfs2_stack_o2cb\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [29 x i8] c"ocfs2_stack_o2cb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ocfs2_stack_o2cb__476_438_o2cb_stack_init6 = internal global ptr @o2cb_stack_init, section ".initcall6.init", align 4
@__exitcall_o2cb_stack_exit = internal global ptr @o2cb_stack_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"o2cb\00", [27 x i8] zeroinitializer }, align 32
@o2cb_stack_ops = internal global { %struct.ocfs2_stack_operations, [56 x i8] } { %struct.ocfs2_stack_operations { ptr @o2cb_cluster_connect, ptr @o2cb_cluster_disconnect, ptr @o2cb_cluster_this_node, ptr @o2cb_dlm_lock, ptr @o2cb_dlm_unlock, ptr @o2cb_dlm_lock_status, ptr @o2cb_dlm_lvb_valid, ptr @o2cb_dlm_lvb, ptr null, ptr @o2cb_dump_lksb }, [56 x i8] zeroinitializer }, align 32
@o2cb_cluster_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013o2cb: Cluster check failed. Fix errors before retrying.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"o2cb_cluster_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ocfs2/stack_o2cb.c\00", [42 x i8] zeroinitializer }, align 32
@o2cb_cluster_connect._entry_ptr = internal global ptr @o2cb_cluster_connect._entry, section ".printk_index", align 4
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013o2cb: This node has not been configured.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"o2cb_cluster_check\00", [45 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry_ptr = internal global ptr @o2cb_cluster_check._entry, section ".printk_index", align 4
@o2cb_cluster_check._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013o2cb: %s heartbeat has not been started.\0A\00", [52 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry_ptr.9 = internal global ptr @o2cb_cluster_check._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Local\00", [26 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013o2cb: This node could not connect to nodes:\00", [50 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry_ptr.14 = internal global ptr @o2cb_cluster_check._entry.12, section ".printk_index", align 4
@o2cb_cluster_check._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.3, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry_ptr.17 = internal global ptr @o2cb_cluster_check._entry.15, section ".printk_index", align 4
@o2cb_cluster_check._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@o2cb_cluster_check._entry_ptr.20 = internal global ptr @o2cb_cluster_check._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@o2dlm_eviction_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015o2cb: o2dlm has evicted node %d from domain %.*s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"o2dlm_eviction_cb\00", [46 x i8] zeroinitializer }, align 32
@o2dlm_eviction_cb._entry_ptr = internal global ptr @o2dlm_eviction_cb._entry, section ".printk_index", align 4
@status_map = internal constant { [42 x i32], [56 x i8] } { [42 x i32] [i32 0, i32 -22, i32 -13, i32 -13, i32 -13, i32 -22, i32 -22, i32 -13, i32 -12, i32 -71, i32 -16, i32 -22, i32 -22, i32 -22, i32 -22, i32 -12, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -11, i32 -22, i32 -1, i32 -22, i32 -22, i32 -1, i32 -22, i32 -65537, i32 -22, i32 -35, i32 -22, i32 -22, i32 -110, i32 -22, i32 -95, i32 -2, i32 -1, i32 -2, i32 -107, i32 -85, i32 -22], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"o2cb_stack\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 419, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 420, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"o2cb_stack_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 407, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 332, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 358, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 262, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 278, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 292, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 297, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 299, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 312, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"status_map\00", align 1
@___asan_gen_.96 = private constant [25 x i8] c"../fs/ocfs2/stack_o2cb.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 102, i32 12 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author472, ptr @__UNIQUE_ID_description473, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__exitcall_o2cb_stack_exit, ptr @__initcall__kmod_ocfs2_stack_o2cb__476_438_o2cb_stack_init6, ptr @o2cb_cluster_check._entry, ptr @o2cb_cluster_check._entry.12, ptr @o2cb_cluster_check._entry.15, ptr @o2cb_cluster_check._entry.18, ptr @o2cb_cluster_check._entry.7, ptr @o2cb_cluster_check._entry_ptr, ptr @o2cb_cluster_check._entry_ptr.14, ptr @o2cb_cluster_check._entry_ptr.17, ptr @o2cb_cluster_check._entry_ptr.20, ptr @o2cb_cluster_check._entry_ptr.9, ptr @o2cb_cluster_connect._entry, ptr @o2cb_cluster_connect._entry_ptr, ptr @o2cb_stack_exit, ptr @o2dlm_eviction_cb._entry, ptr @o2dlm_eviction_cb._entry_ptr, ptr @o2cb_stack, ptr @.str, ptr @o2cb_stack_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @status_map], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_stack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_stack_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_cluster_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_cluster_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_cluster_check._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_cluster_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_cluster_check._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2cb_cluster_check._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2dlm_eviction_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @o2cb_stack_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocfs2_stack_glue_unregister(ptr noundef nonnull @o2cb_stack) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_stack_glue_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_stack_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ocfs2_stack_glue_register(ptr noundef nonnull @o2cb_stack) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_cluster_connect(ptr noundef %conn) #2 align 64 {
entry:
  %hbmap.i = alloca [8 x i32], align 4
  %netmap.i = alloca [8 x i32], align 4
  %fs_version = alloca %struct.dlm_protocol_version, align 1
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fs_version) #9
  %0 = ptrtoint ptr %fs_version to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %fs_version, align 1, !annotation !64
  %1 = getelementptr inbounds %struct.dlm_protocol_version, ptr %fs_version, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !64
  %cmp = icmp eq ptr %conn, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !65

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #9, !srcloc !66
  unreachable

do.body8:                                         ; preds = %entry
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 5
  %3 = ptrtoint ptr %cc_proto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cc_proto, align 4
  %cmp9 = icmp eq ptr %4, null
  br i1 %cmp9, label %do.body17, label %do.end25, !prof !65

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 327, 0\0A.popsection", ""() #9, !srcloc !67
  unreachable

do.end25:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hbmap.i) #9
  %5 = call ptr @memset(ptr %hbmap.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %netmap.i) #9
  %6 = call ptr @memset(ptr %netmap.i, i32 255, i32 32)
  %call.i = tail call zeroext i8 @o2nm_this_node() #9
  %conv.i = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, -1
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end25
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %hbmap.i, i32 %div3.i.i
  %and.i.i = and i32 %conv.i, 31
  %7 = shl nuw i32 1, %and.i.i
  br label %for.body.i

do.end.i:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %do.end30

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.069.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @o2hb_fill_node_map(ptr noundef nonnull %hbmap.i, i32 noundef 32) #9
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %10 = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end11.i, label %if.end16.i

do.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = call i32 @o2hb_global_heartbeat_active() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  %cond.i = select i1 %tobool14.not.i, ptr @.str.11, ptr @.str.10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %cond.i) #12
  br label %do.end30

if.end16.i:                                       ; preds = %for.body.i
  call void @o2net_fill_node_map(ptr noundef nonnull %netmap.i, i32 noundef 32) #9
  call void @_set_bit(i32 noundef %conv.i, ptr noundef nonnull %netmap.i) #9
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %hbmap.i, ptr noundef nonnull dereferenceable(32) %netmap.i, i32 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %if.end32, label %if.end25.i

if.end25.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %i.069.i)
  %cmp26.i = icmp ult i32 %i.069.i, 59
  br i1 %cmp26.i, label %if.then28.i, label %if.end25.i.for.inc.i_crit_edge

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 1000) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %if.end25.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 60
  br i1 %exitcond.not.i, label %do.end32.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end32.i:                                       ; preds = %for.inc.i
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  %call3670.i = call i32 @_find_next_bit_be(ptr noundef nonnull %hbmap.i, i32 noundef 255, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call3670.i)
  %cmp3771.i = icmp slt i32 %call3670.i, 255
  br i1 %cmp3771.i, label %do.end32.i.while.body.i_crit_edge, label %do.end32.i.do.end51.i_crit_edge

do.end32.i.do.end51.i_crit_edge:                  ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end32.i.while.body.i_crit_edge:                ; preds = %do.end32.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end48.i.while.body.i_crit_edge, %do.end32.i.while.body.i_crit_edge
  %call3672.i = phi i32 [ %call36.i, %if.end48.i.while.body.i_crit_edge ], [ %call3670.i, %do.end32.i.while.body.i_crit_edge ]
  %div3.i64.i = lshr i32 %call3672.i, 5
  %arrayidx.i65.i = getelementptr i32, ptr %netmap.i, i32 %div3.i64.i
  %11 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i65.i, align 4
  %and.i66.i = and i32 %call3672.i, 31
  %13 = shl nuw i32 1, %and.i66.i
  %14 = and i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool41.not.i = icmp eq i32 %14, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %while.body.i.if.end48.i_crit_edge

while.body.i.if.end48.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

do.end45.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call3672.i) #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end45.i, %while.body.i.if.end48.i_crit_edge
  %add.i = add nsw i32 %call3672.i, 1
  %call36.i = call i32 @_find_next_bit_be(ptr noundef nonnull %hbmap.i, i32 noundef 255, i32 noundef %add.i) #9
  %cmp37.i = icmp slt i32 %call36.i, 255
  br i1 %cmp37.i, label %if.end48.i.while.body.i_crit_edge, label %if.end48.i.do.end51.i_crit_edge

if.end48.i.do.end51.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

if.end48.i.while.body.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end51.i:                                       ; preds = %if.end48.i.do.end51.i_crit_edge, %do.end32.i.do.end51.i_crit_edge
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end51.i, %do.end11.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -107, %do.end51.i ], [ -22, %do.end11.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %netmap.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hbmap.i) #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %out

if.end32:                                         ; preds = %if.end16.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %netmap.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hbmap.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #14
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.end32.if.then73_crit_edge, label %if.end36

if.end32.if.then73_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.end36:                                         ; preds = %if.end32
  call void @dlm_setup_eviction_cb(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @o2dlm_eviction_cb, ptr noundef nonnull %conn) #9
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %16 = ptrtoint ptr %cc_private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %cc_private, align 4
  %cc_namelen = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 1
  %17 = ptrtoint ptr %cc_namelen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cc_namelen, align 4
  %call37 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %conn, i32 noundef %18) #15
  %cc_version = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4
  %19 = ptrtoint ptr %cc_version to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cc_version, align 4
  %21 = ptrtoint ptr %fs_version to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %fs_version, align 1
  %pv_minor = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pv_minor, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %1, align 1
  %call43 = call ptr @dlm_register_domain(ptr noundef nonnull %conn, i32 noundef %call37, ptr noundef nonnull %fs_version) #9
  %cmp.i103 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then45, label %out_free.thread

if.then45:                                        ; preds = %if.end36
  %25 = ptrtoint ptr %call43 to i32
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %do.body56 [
    i32 524289, label %if.then45.if.then73_crit_edge
    i32 -512, label %if.then45.if.then73_crit_edge113
    i32 -122, label %if.then45.if.then73_crit_edge114
    i32 -28, label %if.then45.if.then73_crit_edge115
    i32 -4, label %if.then45.if.then73_crit_edge116
  ]

if.then45.if.then73_crit_edge116:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then45.if.then73_crit_edge115:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then45.if.then73_crit_edge114:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then45.if.then73_crit_edge113:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then45.if.then73_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

do.body56:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %27 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %25 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @.str.2, i32 noundef 358, ptr noundef nonnull @.str.4, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.then73

out_free.thread:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %fs_version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fs_version, align 1
  %30 = ptrtoint ptr %cc_version to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %cc_version, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 1
  %33 = ptrtoint ptr %pv_minor to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %pv_minor, align 1
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %34 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call43, ptr %cc_lockspace, align 4
  call void @dlm_register_eviction_cb(ptr noundef %call43, ptr noundef nonnull %call7.i.i) #9
  br label %out

if.then73:                                        ; preds = %do.body56, %if.then45.if.then73_crit_edge, %if.then45.if.then73_crit_edge113, %if.then45.if.then73_crit_edge114, %if.then45.if.then73_crit_edge115, %if.then45.if.then73_crit_edge116, %if.end32.if.then73_crit_edge
  %rc.0112 = phi i32 [ %25, %do.body56 ], [ -12, %if.end32.if.then73_crit_edge ], [ %25, %if.then45.if.then73_crit_edge ], [ %25, %if.then45.if.then73_crit_edge113 ], [ %25, %if.then45.if.then73_crit_edge114 ], [ %25, %if.then45.if.then73_crit_edge115 ], [ %25, %if.then45.if.then73_crit_edge116 ]
  %cc_private74 = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %35 = ptrtoint ptr %cc_private74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cc_private74, align 4
  call void @kfree(ptr noundef %36) #9
  br label %out

out:                                              ; preds = %if.then73, %out_free.thread, %do.end30
  %rc.1 = phi i32 [ %retval.0.i.ph, %do.end30 ], [ %rc.0112, %if.then73 ], [ 0, %out_free.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fs_version) #9
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_cluster_disconnect(ptr nocapture noundef %conn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %0 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_lockspace, align 4
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %2 = ptrtoint ptr %cc_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_private, align 4
  tail call void @dlm_unregister_eviction_cb(ptr noundef %3) #9
  %4 = ptrtoint ptr %cc_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cc_private, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @dlm_unregister_domain(ptr noundef %1) #9
  %5 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cc_lockspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_cluster_this_node(ptr nocapture noundef readnone %conn, ptr nocapture noundef writeonly %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @o2nm_this_node() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp = icmp eq i8 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %call to i32
  %0 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %node, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_dlm_lock(ptr nocapture noundef readonly %conn, i32 noundef %mode, ptr noundef %lksb, i32 noundef %flags, ptr noundef %name, i32 noundef %namelen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %cmp.i = icmp sgt i32 %mode, 5
  br i1 %cmp.i, label %do.body2.i, label %mode_to_o2dlm.exit, !prof !65

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #9, !srcloc !68
  unreachable

mode_to_o2dlm.exit:                               ; preds = %entry
  %and.i = shl i32 %flags, 9
  %0 = and i32 %and.i, 512
  %and1.i = shl i32 %flags, 12
  %1 = and i32 %and1.i, 8192
  %2 = or i32 %1, %0
  %and6.i = shl i32 %flags, 8
  %3 = and i32 %and6.i, 1024
  %4 = or i32 %2, %3
  %and11.i = shl i32 %flags, 5
  %5 = and i32 %and11.i, 256
  %6 = or i32 %4, %5
  %and16.i = shl i32 %flags, 10
  %7 = and i32 %and16.i, 32768
  %8 = or i32 %6, %7
  %and21.i = lshr i32 %flags, 10
  %9 = and i32 %and21.i, 16
  %10 = or i32 %8, %9
  %and26.i = shl i32 %flags, 6
  %11 = and i32 %and26.i, 8388608
  %12 = or i32 %10, %11
  %and31.i = lshr i32 %flags, 1
  %13 = and i32 %and31.i, 131072
  %14 = or i32 %12, %13
  %and36.i = lshr i32 %flags, 13
  %15 = and i32 %and36.i, 128
  %16 = or i32 %14, %15
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %17 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc_lockspace, align 4
  %call2 = tail call i32 @dlmlock(ptr noundef %18, i32 noundef %mode, ptr noundef %lksb, i32 noundef %16, ptr noundef %name, i32 noundef %namelen, ptr noundef nonnull @o2dlm_lock_ast_wrapper, ptr noundef %lksb, ptr noundef nonnull @o2dlm_blocking_ast_wrapper) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %call2)
  %cmp1.i = icmp ugt i32 %call2, 41
  br i1 %cmp1.i, label %do.body3.i, label %dlm_status_to_errno.exit, !prof !65

do.body3.i:                                       ; preds = %mode_to_o2dlm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 149, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

dlm_status_to_errno.exit:                         ; preds = %mode_to_o2dlm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [42 x i32], ptr @status_map, i32 0, i32 %call2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_dlm_unlock(ptr nocapture noundef readonly %conn, ptr noundef %lksb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = shl i32 %flags, 9
  %0 = and i32 %and.i, 512
  %and1.i = shl i32 %flags, 12
  %1 = and i32 %and1.i, 8192
  %2 = or i32 %1, %0
  %and6.i = shl i32 %flags, 8
  %3 = and i32 %and6.i, 1024
  %4 = or i32 %2, %3
  %and11.i = shl i32 %flags, 5
  %5 = and i32 %and11.i, 256
  %6 = or i32 %4, %5
  %and16.i = shl i32 %flags, 10
  %7 = and i32 %and16.i, 32768
  %8 = or i32 %6, %7
  %and21.i = lshr i32 %flags, 10
  %9 = and i32 %and21.i, 16
  %10 = or i32 %8, %9
  %and26.i = shl i32 %flags, 6
  %11 = and i32 %and26.i, 8388608
  %12 = or i32 %10, %11
  %and31.i = lshr i32 %flags, 1
  %13 = and i32 %and31.i, 131072
  %14 = or i32 %12, %13
  %and36.i = lshr i32 %flags, 13
  %15 = and i32 %and36.i, 128
  %16 = or i32 %14, %15
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %17 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc_lockspace, align 4
  %call1 = tail call i32 @dlmunlock(ptr noundef %18, ptr noundef %lksb, i32 noundef %16, ptr noundef nonnull @o2dlm_unlock_ast_wrapper, ptr noundef %lksb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %call1)
  %cmp1.i = icmp ugt i32 %call1, 41
  br i1 %cmp1.i, label %do.body3.i, label %dlm_status_to_errno.exit, !prof !65

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 149, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

dlm_status_to_errno.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [42 x i32], ptr @status_map, i32 0, i32 %call1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2cb_dlm_lock_status(ptr nocapture noundef readonly %lksb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lksb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 41
  br i1 %cmp1.i, label %do.body3.i, label %dlm_status_to_errno.exit, !prof !65

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 149, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

dlm_status_to_errno.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [42 x i32], ptr @status_map, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @o2cb_dlm_lvb_valid(ptr nocapture noundef readnone %lksb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @o2cb_dlm_lvb(ptr noundef readnone %lksb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lvb = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb, i32 0, i32 3
  ret ptr %lvb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2cb_dump_lksb(ptr nocapture noundef readonly %lksb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lockid = getelementptr inbounds %struct.dlm_lockstatus, ptr %lksb, i32 0, i32 2
  %0 = ptrtoint ptr %lockid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockid, align 4
  tail call void @dlm_print_one_lock(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_setup_eviction_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2dlm_eviction_cb(i32 noundef %node_num, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_namelen = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %cc_namelen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc_namelen, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %node_num, i32 noundef %1, ptr noundef %data) #12
  %cc_recovery_handler = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %cc_recovery_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_recovery_handler, align 4
  %cc_recovery_data = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %cc_recovery_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc_recovery_data, align 4
  tail call void %3(i32 noundef %node_num, ptr noundef %5) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_register_domain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_register_eviction_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @o2nm_this_node() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2hb_fill_node_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @o2hb_global_heartbeat_active() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @o2net_fill_node_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_unregister_eviction_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_unregister_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlmlock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2dlm_lock_ast_wrapper(ptr noundef %astarg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %astarg, i32 0, i32 1
  %0 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lksb_conn, align 4
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cc_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_proto, align 4
  %lp_lock_ast = getelementptr inbounds %struct.ocfs2_locking_protocol, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lp_lock_ast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp_lock_ast, align 4
  tail call void %5(ptr noundef %astarg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2dlm_blocking_ast_wrapper(ptr noundef %astarg, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %astarg, i32 0, i32 1
  %0 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lksb_conn, align 4
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cc_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_proto, align 4
  %lp_blocking_ast = getelementptr inbounds %struct.ocfs2_locking_protocol, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %lp_blocking_ast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp_blocking_ast, align 4
  tail call void %5(ptr noundef %astarg, i32 noundef %level) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlmunlock(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2dlm_unlock_ast_wrapper(ptr noundef %astarg, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %status)
  %cmp1.i = icmp ugt i32 %status, 41
  br i1 %cmp1.i, label %do.body3.i, label %dlm_status_to_errno.exit, !prof !65

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_o2cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 149, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

dlm_status_to_errno.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %status)
  %cmp = icmp eq i32 %status, 10
  br i1 %cmp, label %dlm_status_to_errno.exit.cleanup_crit_edge, label %if.end

dlm_status_to_errno.exit.cleanup_crit_edge:       ; preds = %dlm_status_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dlm_status_to_errno.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [42 x i32], ptr @status_map, i32 0, i32 %status
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %astarg, i32 0, i32 1
  %2 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lksb_conn, align 4
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cc_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc_proto, align 4
  %lp_unlock_ast = getelementptr inbounds %struct.ocfs2_locking_protocol, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %lp_unlock_ast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lp_unlock_ast, align 4
  tail call void %7(ptr noundef %astarg, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dlm_status_to_errno.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_one_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_stack_glue_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_author472, !1, !"__UNIQUE_ID_author472", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/stack_o2cb.c", i32 435, i32 1}
!2 = !{ptr @__UNIQUE_ID_description473, !3, !"__UNIQUE_ID_description473", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/stack_o2cb.c", i32 436, i32 1}
!4 = !{ptr @__UNIQUE_ID_file474, !5, !"__UNIQUE_ID_file474", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/stack_o2cb.c", i32 437, i32 1}
!6 = !{ptr @__UNIQUE_ID_license475, !5, !"__UNIQUE_ID_license475", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ocfs2_stack_o2cb__476_438_o2cb_stack_init6, !8, !"__initcall__kmod_ocfs2_stack_o2cb__476_438_o2cb_stack_init6", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/stack_o2cb.c", i32 438, i32 1}
!9 = !{ptr @__exitcall_o2cb_stack_exit, !10, !"__exitcall_o2cb_stack_exit", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/stack_o2cb.c", i32 439, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/stack_o2cb.c", i32 420, i32 13}
!13 = !{ptr @o2cb_stack, !14, !"o2cb_stack", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/stack_o2cb.c", i32 419, i32 34}
!15 = !{ptr @o2cb_stack_ops, !16, !"o2cb_stack_ops", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/stack_o2cb.c", i32 407, i32 38}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/stack_o2cb.c", i32 332, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @o2cb_cluster_connect._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @o2cb_cluster_connect._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/stack_o2cb.c", i32 358, i32 3}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/stack_o2cb.c", i32 262, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @o2cb_cluster_check._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @o2cb_cluster_check._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/stack_o2cb.c", i32 278, i32 4}
!32 = !{ptr @o2cb_cluster_check._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @o2cb_cluster_check._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/stack_o2cb.c", i32 292, i32 2}
!38 = !{ptr @o2cb_cluster_check._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @o2cb_cluster_check._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/stack_o2cb.c", i32 297, i32 4}
!42 = !{ptr @o2cb_cluster_check._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @o2cb_cluster_check._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/stack_o2cb.c", i32 299, i32 2}
!46 = !{ptr @o2cb_cluster_check._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @o2cb_cluster_check._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/stack_o2cb.c", i32 312, i32 2}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @o2dlm_eviction_cb._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @o2dlm_eviction_cb._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @status_map, !54, !"status_map", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/stack_o2cb.c", i32 102, i32 12}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2157032997, i64 2157033483, i64 2157033034, i64 2157033090, i64 2157033124, i64 2157033148, i64 2157033189, i64 2157033210, i64 2157033238, i64 2157033272}
!67 = !{i64 2157034629, i64 2157035115, i64 2157034666, i64 2157034722, i64 2157034756, i64 2157034780, i64 2157034821, i64 2157034842, i64 2157034870, i64 2157034904}
!68 = !{i64 2157019411, i64 2157019896, i64 2157019448, i64 2157019504, i64 2157019538, i64 2157019562, i64 2157019603, i64 2157019624, i64 2157019652, i64 2157019686}
!69 = !{i64 2157022071, i64 2157022557, i64 2157022108, i64 2157022164, i64 2157022198, i64 2157022222, i64 2157022263, i64 2157022284, i64 2157022312, i64 2157022346}
