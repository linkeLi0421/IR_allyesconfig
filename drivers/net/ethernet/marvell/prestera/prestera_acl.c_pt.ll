; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_acl.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.prestera_acl_ruleset = type { %struct.rhash_head, %struct.prestera_acl_ruleset_ht_key, %struct.rhashtable, ptr, i32, %struct.refcount_struct, ptr, i32, i16, i8 }
%struct.rhash_head = type { ptr }
%struct.prestera_acl_ruleset_ht_key = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.prestera_acl = type { ptr, %struct.list_head, %struct.list_head, %struct.rhashtable, %struct.rhashtable, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.prestera_acl_vtcam = type { %struct.list_head, [19 x i32], %struct.refcount_struct, i32, i8, i8 }
%struct.prestera_acl_iface = type { %union.anon.123, i8 }
%union.anon.123 = type { ptr }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.121, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.anon.121 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.122, i8 }
%struct.anon.122 = type { i8, i8 }
%struct.prestera_acl_rule = type { %struct.rhash_head, %struct.list_head, ptr, i32, i32, %struct.prestera_acl_rule_entry_key, %struct.prestera_acl_rule_entry_arg, ptr }
%struct.prestera_acl_rule_entry_key = type { i32, %struct.prestera_acl_match }
%struct.prestera_acl_match = type { [19 x i32], [19 x i32] }
%struct.prestera_acl_rule_entry_arg = type { i32, %struct.anon.124 }
%struct.anon.124 = type { %struct.anon.125, %struct.anon.125, %struct.anon.125, %struct.anon.126 }
%struct.anon.125 = type { i8 }
%struct.anon.126 = type { i8, i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.prestera_flow_block = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.prestera_flow_block_binding = type { %struct.list_head, ptr, i32 }
%struct.prestera_acl_hw_action_info = type { i32, %union.anon.130 }
%union.anon.130 = type { %struct.prestera_acl_action_count }
%struct.prestera_acl_action_count = type { i32 }
%struct.prestera_acl_rule_entry = type { %struct.rhash_head, %struct.prestera_acl_rule_entry_key, i32, i32, %struct.anon.127 }
%struct.anon.127 = type { %struct.anon.128, %struct.anon.128, %struct.anon.128, %struct.anon.129 }
%struct.anon.128 = type { i8 }
%struct.anon.129 = type { i32, ptr }

@prestera_acl_rule_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 16, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_acl.c\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__prestera_acl_rule_entry_ht_params = internal constant %struct.rhashtable_params { i16 0, i16 156, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, align 4
@prestera_acl_ruleset_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"prestera_acl_rule_ht_params\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 72, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 353, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"prestera_acl_ruleset_ht_params\00", align 1
@___asan_gen_.25 = private constant [56 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_acl.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 65, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 594, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 723, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 755, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 378, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @prestera_acl_rule_ht_params, ptr @.str, ptr @prestera_acl_ruleset_ht_params, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @xa_init_flags.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_acl_rule_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_acl_ruleset_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_acl_ruleset_keymask_set(ptr nocapture noundef writeonly %ruleset, ptr noundef %keymask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %keymask, i32 noundef 76, i32 noundef 3264) #10
  %keymask1 = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 6
  %0 = ptrtoint ptr %keymask1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %keymask1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_ruleset_offload(ptr nocapture noundef %ruleset) local_unnamed_addr #0 align 64 {
entry:
  %vtcam_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vtcam_id) #10
  %0 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vtcam_id, align 4, !annotation !59
  %offload = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 9
  %1 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %offload, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %acl = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 3
  %3 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acl, align 4
  %keymask = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 6
  %5 = ptrtoint ptr %keymask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %keymask, align 4
  %call = call i32 @prestera_acl_vtcam_id_get(ptr noundef %4, i8 noundef zeroext 0, ptr noundef %6, ptr noundef nonnull %vtcam_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vtcam_id, align 4
  %vtcam_id4 = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 7
  %9 = ptrtoint ptr %vtcam_id4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vtcam_id4, align 4
  %10 = ptrtoint ptr %offload to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %offload, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -17, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vtcam_id) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_vtcam_id_get(ptr noundef %acl, i8 noundef zeroext %lookup, ptr noundef %keymask, ptr nocapture noundef writeonly %vtcam_id) local_unnamed_addr #0 align 64 {
entry:
  %new_vtcam_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_vtcam_id) #10
  %0 = ptrtoint ptr %new_vtcam_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_vtcam_id, align 4, !annotation !59
  %vtcam_list = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 1
  %1 = ptrtoint ptr %vtcam_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %vtcam.098 = load ptr, ptr %vtcam_list, align 4
  %cmp.not99 = icmp eq ptr %vtcam.098, %vtcam_list
  br i1 %cmp.not99, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %keymask, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vtcam.0100 = phi ptr [ %vtcam.098, %for.body.lr.ph ], [ %vtcam.0, %for.inc.for.body_crit_edge ]
  %lookup2 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0100, i32 0, i32 5
  %2 = ptrtoint ptr %lookup2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lookup2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %lookup)
  %cmp4.not = icmp eq i8 %3, %lookup
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %is_keymask_set = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0100, i32 0, i32 4
  %4 = ptrtoint ptr %is_keymask_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_keymask_set, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true10.critedge

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then7:                                         ; preds = %land.lhs.true
  %refcount = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0100, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then7.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !62

if.then7.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then7
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup.sink.split_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !63

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then7.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then7.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup.sink.split

land.lhs.true10.critedge:                         ; preds = %if.end
  br i1 %tobool6.not, label %land.lhs.true10.critedge.for.inc_crit_edge, label %land.lhs.true14

land.lhs.true10.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true10.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true10.critedge
  %keymask15 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0100, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(76) %keymask, ptr noundef dereferenceable(76) %keymask15, i32 76) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool16.not = icmp eq i32 %bcmp, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true14
  %refcount18 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0100, i32 0, i32 2
  %call.i.i.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount18, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount18, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount18, ptr %refcount18, i32 1, ptr elementtype(i32) %refcount18) #10, !srcloc !61
  %asmresult.i.i.i.i.i82 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i82)
  %tobool1.not.i.i.i83 = icmp eq i32 %asmresult.i.i.i.i.i82, 0
  br i1 %tobool1.not.i.i.i83, label %if.then17.if.end15.sink.split.i.i.i88_crit_edge, label %if.else.i.i.i86, !prof !62

if.then17.if.end15.sink.split.i.i.i88_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i88

if.else.i.i.i86:                                  ; preds = %if.then17
  %add.i.i.i84 = add i32 %asmresult.i.i.i.i.i82, 1
  %9 = or i32 %add.i.i.i84, %asmresult.i.i.i.i.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i85 = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i85, label %if.else.i.i.i86.cleanup.sink.split_crit_edge, label %if.else.i.i.i86.if.end15.sink.split.i.i.i88_crit_edge, !prof !63

if.else.i.i.i86.if.end15.sink.split.i.i.i88_crit_edge: ; preds = %if.else.i.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i88

if.else.i.i.i86.cleanup.sink.split_crit_edge:     ; preds = %if.else.i.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15.sink.split.i.i.i88:                      ; preds = %if.else.i.i.i86.if.end15.sink.split.i.i.i88_crit_edge, %if.then17.if.end15.sink.split.i.i.i88_crit_edge
  %.sink.i.i.i87 = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i88_crit_edge ], [ 1, %if.else.i.i.i86.if.end15.sink.split.i.i.i88_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount18, i32 noundef %.sink.i.i.i87) #10
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %land.lhs.true10.critedge.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %vtcam.0100 to i32
  call void @__asan_load4_noabort(i32 %10)
  %vtcam.0 = load ptr, ptr %vtcam.0100, align 4
  %cmp.not = icmp eq ptr %vtcam.0, %vtcam_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 96) #14
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %for.end.cleanup_crit_edge, label %if.end28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %12 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acl, align 4
  %call29 = call i32 @prestera_hw_vtcam_create(ptr noundef %13, i8 noundef zeroext %lookup, ptr noundef %keymask, ptr noundef nonnull %new_vtcam_id, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %14 = ptrtoint ptr %vtcam_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %vtcam.064.i = load ptr, ptr %vtcam_list, align 4
  %cmp.not65.i = icmp eq ptr %vtcam.064.i, %vtcam_list
  br i1 %cmp.not65.i, label %if.then31.cleanup_crit_edge, label %for.body.lr.ph.i

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then31
  %tobool.not.i = icmp eq ptr %keymask, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc32.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %vtcam.066.i = phi ptr [ %vtcam.064.i, %for.body.lr.ph.i ], [ %vtcam.0.i, %for.inc32.i.for.body.i_crit_edge ]
  %lookup2.i = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.066.i, i32 0, i32 5
  %15 = ptrtoint ptr %lookup2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lookup2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %lookup)
  %cmp4.not.i = icmp eq i8 %16, %lookup
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.for.inc32.i_crit_edge

for.body.i.for.inc32.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc32.i

if.end.i:                                         ; preds = %for.body.i
  %is_keymask_set.i = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.066.i, i32 0, i32 4
  %17 = ptrtoint ptr %is_keymask_set.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_keymask_set.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true10.critedge.i

land.lhs.true.i:                                  ; preds = %if.end.i
  br i1 %tobool6.not.i, label %land.lhs.true.i.vtcam_found.i_crit_edge, label %land.lhs.true.i.for.inc32.i_crit_edge

land.lhs.true.i.for.inc32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc32.i

land.lhs.true.i.vtcam_found.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vtcam_found.i

land.lhs.true10.critedge.i:                       ; preds = %if.end.i
  br i1 %tobool6.not.i, label %land.lhs.true10.critedge.i.for.inc32.i_crit_edge, label %land.lhs.true10.critedge.i.for.body19.i_crit_edge

land.lhs.true10.critedge.i.for.body19.i_crit_edge: ; preds = %land.lhs.true10.critedge.i
  br label %for.body19.i

land.lhs.true10.critedge.i.for.inc32.i_crit_edge: ; preds = %land.lhs.true10.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc32.i

for.body19.i:                                     ; preds = %for.inc.i.for.body19.i_crit_edge, %land.lhs.true10.critedge.i.for.body19.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %for.inc.i.for.body19.i_crit_edge ], [ 0, %land.lhs.true10.critedge.i.for.body19.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %keymask, i32 %i.062.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not.i = icmp eq i32 %20, 0
  br i1 %tobool20.not.i, label %for.body19.i.for.inc.i_crit_edge, label %cleanup.i

for.body19.i.for.inc.i_crit_edge:                 ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body19.i
  %arrayidx24.i = getelementptr %struct.prestera_acl_vtcam, ptr %vtcam.066.i, i32 0, i32 1, i32 %i.062.i
  %21 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx24.i, align 4
  %neg.i = xor i32 %22, -1
  %and.i = and i32 %20, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.not.i, label %cleanup.i.for.inc.i_crit_edge, label %cleanup.i.for.inc32.i_crit_edge

cleanup.i.for.inc32.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc32.i

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %for.body19.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.inc.i.vtcam_found.i_crit_edge, label %for.inc.i.for.body19.i_crit_edge

for.inc.i.for.body19.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19.i

for.inc.i.vtcam_found.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vtcam_found.i

for.inc32.i:                                      ; preds = %cleanup.i.for.inc32.i_crit_edge, %land.lhs.true10.critedge.i.for.inc32.i_crit_edge, %land.lhs.true.i.for.inc32.i_crit_edge, %for.body.i.for.inc32.i_crit_edge
  %23 = ptrtoint ptr %vtcam.066.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %vtcam.0.i = load ptr, ptr %vtcam.066.i, align 4
  %cmp.not.i = icmp eq ptr %vtcam.0.i, %vtcam_list
  br i1 %cmp.not.i, label %for.inc32.i.cleanup_crit_edge, label %for.inc32.i.for.body.i_crit_edge

for.inc32.i.for.body.i_crit_edge:                 ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc32.i.cleanup_crit_edge:                    ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

vtcam_found.i:                                    ; preds = %for.inc.i.vtcam_found.i_crit_edge, %land.lhs.true.i.vtcam_found.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.066.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %vtcam_found.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !62

vtcam_found.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %vtcam_found.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %vtcam_found.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup.sink.split_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !63

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup.sink.split_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %vtcam_found.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %vtcam_found.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #10
  br label %cleanup.sink.split

if.end36:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %new_vtcam_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %new_vtcam_id, align 4
  %id = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %id, align 8
  %lookup37 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %lookup37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %lookup, ptr %lookup37, align 1
  %tobool38.not = icmp eq ptr %keymask, null
  br i1 %tobool38.not, label %if.end36.if.end43_crit_edge, label %if.then39

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %keymask40 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %call7.i.i, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %keymask40, ptr %keymask, i32 76)
  %is_keymask_set42 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %is_keymask_set42 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_keymask_set42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge
  %refcount44 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount44, i32 noundef 4) #10
  %32 = ptrtoint ptr %refcount44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %refcount44, align 4
  %33 = ptrtoint ptr %vtcam_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vtcam_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vtcam_list, ptr noundef %34) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.cleanup.sink.split_crit_edge

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vtcam_list, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %37 = ptrtoint ptr %vtcam_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i, ptr %vtcam_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev37.i.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i, %if.end43.cleanup.sink.split_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup.sink.split_crit_edge, %if.end15.sink.split.i.i.i88, %if.else.i.i.i86.cleanup.sink.split_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup.sink.split_crit_edge
  %vtcam.1.sink = phi ptr [ %vtcam.066.i, %if.end15.sink.split.i.i.i.i ], [ %vtcam.066.i, %if.else.i.i.i.i.cleanup.sink.split_crit_edge ], [ %vtcam.0100, %if.else.i.i.i.cleanup.sink.split_crit_edge ], [ %vtcam.0100, %if.end15.sink.split.i.i.i ], [ %vtcam.0100, %if.else.i.i.i86.cleanup.sink.split_crit_edge ], [ %vtcam.0100, %if.end15.sink.split.i.i.i88 ], [ %call7.i.i, %if.end43.cleanup.sink.split_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %id47 = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.1.sink, i32 0, i32 3
  %39 = ptrtoint ptr %id47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id47, align 4
  %41 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %vtcam_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc32.i.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end.cleanup_crit_edge ], [ %call29, %if.then31.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call29, %for.inc32.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_vtcam_id) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_acl_ruleset_lookup(ptr noundef %acl, ptr noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %ht_key.i = alloca %struct.prestera_acl_ruleset_ht_key, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht_key.i) #10
  %0 = ptrtoint ptr %ht_key.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %block, ptr %ht_key.i, align 4
  %ruleset_ht.i = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 3
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ruleset_ht.i, ptr noundef nonnull %ht_key.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht_key.i) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !62

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !63

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.else.i.i.i.cleanup_crit_edge ], [ %call.i, %if.end15.sink.split.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_acl_ruleset_get(ptr noundef %acl, ptr noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %uid.i = alloca i32, align 4
  %ht_key.i = alloca %struct.prestera_acl_ruleset_ht_key, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht_key.i) #10
  %0 = ptrtoint ptr %ht_key.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %block, ptr %ht_key.i, align 4
  %ruleset_ht.i = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 3
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ruleset_ht.i, ptr noundef nonnull %ht_key.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht_key.i) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !62

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !63

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid.i) #10
  %3 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %uid.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 260) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.prestera_acl_ruleset_create.exit_crit_edge, label %if.end.i

if.end.prestera_acl_ruleset_create.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_acl_ruleset_create.exit

if.end.i:                                         ; preds = %if.end
  %acl2.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %acl2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %acl, ptr %acl2.i, align 4
  %ht_key.i6 = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ht_key.i6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %block, ptr %ht_key.i6, align 4
  %refcount.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call7.i.i.i, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refcount.i, align 4
  %rule_ht.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call7.i.i.i, i32 0, i32 2
  %call4.i = call i32 @rhashtable_init(ptr noundef %rule_ht.i, ptr noundef nonnull @prestera_acl_rule_ht_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.err_rhashtable_init.i_crit_edge

if.end.i.err_rhashtable_init.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rhashtable_init.i

if.end7.i:                                        ; preds = %if.end.i
  %uid8.i = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 5
  %call9.i = call i32 @idr_alloc_u32(ptr noundef %uid8.i, ptr noundef null, ptr noundef nonnull %uid.i, i32 noundef 255, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end7.i.err_ruleset_create.i_crit_edge

if.end7.i.err_ruleset_create.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ruleset_create.i

if.end12.i:                                       ; preds = %if.end7.i
  %8 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uid.i, align 4
  %10 = trunc i32 %9 to i16
  %conv13.i = and i16 %10, 255
  %pcl_id.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %call7.i.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %pcl_id.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv13.i, ptr %pcl_id.i, align 8
  %call14.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %ruleset_ht.i, ptr noundef nonnull %call7.i.i.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.prestera_acl_ruleset_create.exit_crit_edge, label %err_ruleset_ht_insert.i

if.end12.i.prestera_acl_ruleset_create.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_acl_ruleset_create.exit

err_ruleset_ht_insert.i:                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uid.i, align 4
  %call19.i = call ptr @idr_remove(ptr noundef %uid8.i, i32 noundef %13) #10
  br label %err_ruleset_create.i

err_ruleset_create.i:                             ; preds = %err_ruleset_ht_insert.i, %if.end7.i.err_ruleset_create.i_crit_edge
  %err.0.i = phi i32 [ %call9.i, %if.end7.i.err_ruleset_create.i_crit_edge ], [ %call14.i, %err_ruleset_ht_insert.i ]
  call void @rhashtable_destroy(ptr noundef %rule_ht.i) #10
  br label %err_rhashtable_init.i

err_rhashtable_init.i:                            ; preds = %err_ruleset_create.i, %if.end.i.err_rhashtable_init.i_crit_edge
  %err.1.i = phi i32 [ %call4.i, %if.end.i.err_rhashtable_init.i_crit_edge ], [ %err.0.i, %err_ruleset_create.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %14 = inttoptr i32 %err.1.i to ptr
  br label %prestera_acl_ruleset_create.exit

prestera_acl_ruleset_create.exit:                 ; preds = %err_rhashtable_init.i, %if.end12.i.prestera_acl_ruleset_create.exit_crit_edge, %if.end.prestera_acl_ruleset_create.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %err_rhashtable_init.i ], [ %call7.i.i.i, %if.end12.i.prestera_acl_ruleset_create.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.prestera_acl_ruleset_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid.i) #10
  br label %cleanup

cleanup:                                          ; preds = %prestera_acl_ruleset_create.exit, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %prestera_acl_ruleset_create.exit ], [ %call.i, %if.else.i.i.i.cleanup_crit_edge ], [ %call.i, %if.end15.sink.split.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_acl_ruleset_put(ptr noundef %ruleset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !63

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  %acl1.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 3
  %1 = ptrtoint ptr %acl1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %acl1.i, align 4
  %pcl_id.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 8
  %3 = ptrtoint ptr %pcl_id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pcl_id.i, align 4
  %ruleset_ht.i = getelementptr inbounds %struct.prestera_acl, ptr %2, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ruleset_ht.i, ptr noundef %ruleset, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #10
  %offload.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 9
  %5 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offload.i, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.prestera_acl_ruleset_destroy.exit_crit_edge, label %if.then.i

if.end.prestera_acl_ruleset_destroy.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_acl_ruleset_destroy.exit

if.then.i:                                        ; preds = %if.end
  %vtcam_id.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 7
  %7 = ptrtoint ptr %vtcam_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vtcam_id.i, align 4
  %call3.i = tail call i32 @prestera_acl_vtcam_id_put(ptr noundef %2, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.prestera_acl_ruleset_destroy.exit_crit_edge, label %do.end.i, !prof !63

if.then.i.prestera_acl_ruleset_destroy.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_acl_ruleset_destroy.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %prestera_acl_ruleset_destroy.exit

prestera_acl_ruleset_destroy.exit:                ; preds = %do.end.i, %if.then.i.prestera_acl_ruleset_destroy.exit_crit_edge, %if.end.prestera_acl_ruleset_destroy.exit_crit_edge
  %uid26.i = getelementptr inbounds %struct.prestera_acl, ptr %2, i32 0, i32 5
  %9 = and i16 %4, 255
  %conv27.i = zext i16 %9 to i32
  %call28.i = tail call ptr @idr_remove(ptr noundef %uid26.i, i32 noundef %conv27.i) #10
  %rule_ht.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %rule_ht.i) #10
  %keymask.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 6
  %10 = ptrtoint ptr %keymask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %keymask.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  tail call void @kfree(ptr noundef %ruleset) #10
  br label %return

return:                                           ; preds = %prestera_acl_ruleset_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_ruleset_bind(ptr nocapture noundef readonly %ruleset, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %iface = alloca %struct.prestera_acl_iface, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iface) #10
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %iface, align 8, !annotation !59
  store ptr %port, ptr %iface, align 8
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw, align 4
  %vtcam_id = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 7
  %3 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtcam_id, align 4
  %pcl_id = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 8
  %5 = ptrtoint ptr %pcl_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pcl_id, align 4
  %call = call i32 @prestera_hw_vtcam_iface_bind(ptr noundef %2, ptr noundef nonnull %iface, i32 noundef %4, i16 noundef zeroext %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iface) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vtcam_iface_bind(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_ruleset_unbind(ptr nocapture noundef readonly %ruleset, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %iface = alloca %struct.prestera_acl_iface, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iface) #10
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %iface, align 8, !annotation !59
  store ptr %port, ptr %iface, align 8
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw, align 4
  %vtcam_id = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 7
  %3 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtcam_id, align 4
  %call = call i32 @prestera_hw_vtcam_iface_unbind(ptr noundef %2, ptr noundef nonnull %iface, i32 noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iface) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vtcam_iface_unbind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @prestera_acl_rule_keymask_pcl_id_set(ptr nocapture noundef writeonly %rule, i16 noundef zeroext %pcl_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %match = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %pcl_id, ptr %match, align 4
  %mask = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1023, ptr %mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_acl_rule_lookup(ptr noundef %ruleset, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  %cookie.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cookie, ptr %cookie.addr, align 4
  %rule_ht = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 2
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %rule_ht, ptr noundef nonnull %cookie.addr, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0])
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #10
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 594, ptr noundef nonnull @.str.4) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #10
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !63

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #10
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 369, ptr noundef nonnull @.str.4) #10
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.5, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 614, ptr noundef nonnull @.str.4) #10
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !63

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #10
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #10
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %43 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %cond.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @prestera_acl_ruleset_is_offload(ptr nocapture noundef readonly %ruleset) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offload = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 9
  %0 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offload, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_acl_rule_create(ptr noundef %ruleset, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 200) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ruleset2 = getelementptr inbounds %struct.prestera_acl_rule, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %ruleset2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ruleset, ptr %ruleset2, align 4
  %cookie3 = getelementptr inbounds %struct.prestera_acl_rule, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cookie3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cookie, ptr %cookie3, align 8
  %refcount = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %ruleset, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !62

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !63

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.else.i.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.end15.sink.split.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @prestera_acl_rule_priority_set(ptr nocapture noundef writeonly %rule, i32 noundef %priority) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priority1 = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %priority1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %priority, ptr %priority1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_acl_rule_destroy(ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 2
  %0 = ptrtoint ptr %ruleset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset, align 4
  tail call void @prestera_acl_ruleset_put(ptr noundef %1)
  tail call void @kfree(ptr noundef %rule) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_rule_add(ptr nocapture noundef readonly %sw, ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  %iface.i41.i = alloca %struct.prestera_acl_iface, align 8
  %iface.i.i = alloca %struct.prestera_acl_iface, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset1 = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 2
  %0 = ptrtoint ptr %ruleset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset1, align 4
  %ht_key = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ht_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ht_key, align 4
  %rule_ht = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 2
  %call = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %rule_ht, ptr noundef %rule, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcl_id = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pcl_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pcl_id, align 4
  %match.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %match.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %match.i, align 4
  %mask.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1023, ptr %mask.i, align 4
  %vtcam_id = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vtcam_id, align 4
  %re_arg = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 6
  %10 = ptrtoint ptr %re_arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %re_arg, align 4
  %priority = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 4
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority, align 4
  %re_key = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 5
  %13 = ptrtoint ptr %re_key to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %re_key, align 4
  %count = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 6, i32 1, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %count, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %count, align 4
  %client = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 6, i32 1, i32 3, i32 1
  %15 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %client, align 4
  %acl = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 3
  %16 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %acl, align 4
  %acl_rule_entry_ht.i = getelementptr inbounds %struct.prestera_acl, ptr %17, i32 0, i32 4
  %call.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %acl_rule_entry_ht.i, ptr noundef %re_key, [7 x i32] [i32 156, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #10
  %re = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 7
  %18 = ptrtoint ptr %re to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %re, align 4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end35, label %if.end25, !prof !63

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 353, i32 noundef 9, ptr noundef null) #10
  br label %err_rule_add

if.end35:                                         ; preds = %if.end
  %19 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %acl, align 4
  %call39 = tail call ptr @prestera_acl_rule_entry_create(ptr noundef %20, ptr noundef %re_key, ptr noundef %re_arg)
  %21 = ptrtoint ptr %re to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call39, ptr %re, align 4
  %tobool42.not = icmp eq ptr %call39, null
  br i1 %tobool42.not, label %if.end35.err_rule_add_crit_edge, label %if.end48

if.end35.err_rule_add_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rule_add

if.end48:                                         ; preds = %if.end35
  %rule_count = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rule_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool49.not = icmp eq i32 %23, 0
  br i1 %tobool49.not, label %if.then50, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then50:                                        ; preds = %if.end48
  %ruleset_zero.i = getelementptr inbounds %struct.prestera_flow_block, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %ruleset_zero.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then50
  %binding.0.in.i = phi ptr [ %3, %if.then50 ], [ %binding.0.i, %for.body.i.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %binding.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %binding.0.i = load ptr, ptr %binding.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %binding.0.i, %3
  br i1 %cmp.not.i, label %for.cond.i.if.end55_crit_edge, label %for.body.i

for.cond.i.if.end55_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

for.body.i:                                       ; preds = %for.cond.i
  %port.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iface.i.i) #10
  %28 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -4278190081, ptr %iface.i.i, align 8, !annotation !59
  store ptr %27, ptr %iface.i.i, align 8
  %sw.i.i = getelementptr inbounds %struct.prestera_port, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw.i.i, align 4
  %31 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vtcam_id, align 4
  %33 = ptrtoint ptr %pcl_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pcl_id, align 4
  %call.i.i = call i32 @prestera_hw_vtcam_iface_bind(ptr noundef %30, ptr noundef nonnull %iface.i.i, i32 noundef %32, i16 noundef zeroext %34) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iface.i.i) #10
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.cond11.preheader.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  %binding.1.in46.i = getelementptr inbounds %struct.list_head, ptr %binding.0.i, i32 0, i32 1
  %35 = ptrtoint ptr %binding.1.in46.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %binding.147.i = load ptr, ptr %binding.1.in46.i, align 4
  %cmp14.not48.i = icmp eq ptr %binding.147.i, %3
  br i1 %cmp14.not48.i, label %prestera_acl_ruleset_block_bind.exit.thread115, label %for.cond11.preheader.i.for.body16.i_crit_edge

for.cond11.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond11.preheader.i
  br label %for.body16.i

prestera_acl_ruleset_block_bind.exit.thread115:   ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ruleset_zero.i, align 4
  br label %err_acl_block_bind

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond11.preheader.i.for.body16.i_crit_edge
  %binding.149.i = phi ptr [ %binding.1.i, %for.body16.i.for.body16.i_crit_edge ], [ %binding.147.i, %for.cond11.preheader.i.for.body16.i_crit_edge ]
  %port17.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.149.i, i32 0, i32 1
  %37 = ptrtoint ptr %port17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port17.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iface.i41.i) #10
  %39 = ptrtoint ptr %iface.i41.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -4278190081, ptr %iface.i41.i, align 8, !annotation !59
  store ptr %38, ptr %iface.i41.i, align 8
  %sw.i42.i = getelementptr inbounds %struct.prestera_port, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %sw.i42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sw.i42.i, align 4
  %42 = ptrtoint ptr %vtcam_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vtcam_id, align 4
  %call.i44.i = call i32 @prestera_hw_vtcam_iface_unbind(ptr noundef %41, ptr noundef nonnull %iface.i41.i, i32 noundef %43) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iface.i41.i) #10
  %binding.1.in.i = getelementptr inbounds %struct.list_head, ptr %binding.149.i, i32 0, i32 1
  %44 = ptrtoint ptr %binding.1.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %binding.1.i = load ptr, ptr %binding.1.in.i, align 4
  %cmp14.not.i = icmp eq ptr %binding.1.i, %3
  br i1 %cmp14.not.i, label %prestera_acl_ruleset_block_bind.exit, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

prestera_acl_ruleset_block_bind.exit:             ; preds = %for.body16.i
  %45 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ruleset_zero.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool52.not = icmp eq i32 %call.i44.i, 0
  br i1 %tobool52.not, label %prestera_acl_ruleset_block_bind.exit.if.end55_crit_edge, label %prestera_acl_ruleset_block_bind.exit.err_acl_block_bind_crit_edge

prestera_acl_ruleset_block_bind.exit.err_acl_block_bind_crit_edge: ; preds = %prestera_acl_ruleset_block_bind.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_acl_block_bind

prestera_acl_ruleset_block_bind.exit.if.end55_crit_edge: ; preds = %prestera_acl_ruleset_block_bind.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %prestera_acl_ruleset_block_bind.exit.if.end55_crit_edge, %for.cond.i.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %list = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 1
  %46 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %acl, align 4
  %rules = getelementptr inbounds %struct.prestera_acl, ptr %47, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.prestera_acl, ptr %47, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %call.i.i111 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %49, ptr noundef %rules) #10
  br i1 %call.i.i111, label %if.end.i.i, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list, ptr %prev.i, align 4
  %51 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rules, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end55.list_add_tail.exit_crit_edge
  %54 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rule_count, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %rule_count, align 4
  br label %cleanup

err_acl_block_bind:                               ; preds = %prestera_acl_ruleset_block_bind.exit.err_acl_block_bind_crit_edge, %prestera_acl_ruleset_block_bind.exit.thread115
  %err.0.lcssa.i118 = phi i32 [ %call.i.i, %prestera_acl_ruleset_block_bind.exit.thread115 ], [ %call.i44.i, %prestera_acl_ruleset_block_bind.exit.err_acl_block_bind_crit_edge ]
  %56 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %acl, align 4
  %58 = ptrtoint ptr %re to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %re, align 4
  call void @prestera_acl_rule_entry_destroy(ptr noundef %57, ptr noundef %59)
  br label %err_rule_add

err_rule_add:                                     ; preds = %err_acl_block_bind, %if.end35.err_rule_add_crit_edge, %if.end25
  %err.0 = phi i32 [ -17, %if.end25 ], [ -22, %if.end35.err_rule_add_crit_edge ], [ %err.0.lcssa.i118, %err_acl_block_bind ]
  %60 = ptrtoint ptr %re to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %re, align 4
  call fastcc void @rhashtable_remove_fast(ptr noundef %rule_ht, ptr noundef %rule, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0])
  br label %cleanup

cleanup:                                          ; preds = %err_rule_add, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %err_rule_add ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 715, ptr noundef nonnull @.str.4) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !62

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #10
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #10
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !63

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #10
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #10
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !63

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #10
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %25 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #10
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.8) #10
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.9, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 732, ptr noundef nonnull @.str.8) #10
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #10
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !63

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !62

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.8) #10
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #10, !srcloc !72
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #10
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #10
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #10
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %60 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #10
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_acl_rule_entry_find(ptr noundef %acl, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_rule_entry_ht = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 4
  %call = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %acl_rule_entry_ht, ptr noundef %key, [7 x i32] [i32 156, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_acl_rule_entry_create(ptr noundef %acl, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  %act_hw.i = alloca [8 x %struct.prestera_acl_hw_action_info], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 180) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %key1 = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %key1, ptr %key, i32 156)
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  %vtcam_id2 = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %vtcam_id2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vtcam_id2, align 4
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acl, align 4
  %7 = getelementptr inbounds %struct.prestera_acl_rule_entry_arg, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %7, align 4
  %bf.lshr.i = and i8 %bf.load.i, -128
  %9 = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load2.i = load i8, ptr %9, align 8
  %bf.clear.i = and i8 %bf.load2.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.lshr.i
  store i8 %bf.set.i, ptr %9, align 8
  %drop.i = getelementptr inbounds %struct.prestera_acl_rule_entry_arg, ptr %arg, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %drop.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3.i = load i8, ptr %drop.i, align 1
  %bf.lshr4.i = and i8 %bf.load3.i, -128
  %drop5.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %drop5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load6.i = load i8, ptr %drop5.i, align 1
  %bf.clear9.i = and i8 %bf.load6.i, 127
  %bf.set10.i = or i8 %bf.clear9.i, %bf.lshr4.i
  store i8 %bf.set10.i, ptr %drop5.i, align 1
  %trap.i = getelementptr inbounds %struct.prestera_acl_rule_entry_arg, ptr %arg, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %trap.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load11.i = load i8, ptr %trap.i, align 2
  %bf.lshr12.i = and i8 %bf.load11.i, -128
  %trap13.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %trap13.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load14.i = load i8, ptr %trap13.i, align 2
  %bf.clear17.i = and i8 %bf.load14.i, 127
  %bf.set18.i = or i8 %bf.clear17.i, %bf.lshr12.i
  store i8 %bf.set18.i, ptr %trap13.i, align 2
  %count.i = getelementptr inbounds %struct.prestera_acl_rule_entry_arg, ptr %arg, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load19.i = load i8, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19.i)
  %tobool.not.i = icmp sgt i8 %bf.load19.i, -1
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.then.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  %counter.i = getelementptr inbounds %struct.prestera_switch, ptr %6, i32 0, i32 17
  %16 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counter.i, align 4
  %client.i = getelementptr inbounds %struct.prestera_acl_rule_entry_arg, ptr %arg, i32 0, i32 1, i32 3, i32 1
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %client.i, align 4
  %counter22.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 3
  %block.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 1
  %call.i = tail call i32 @prestera_counter_get(ptr noundef %17, i32 noundef %19, ptr noundef %block.i, ptr noundef %counter22.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool24.not.i, label %if.then.i.if.end6_crit_edge, label %__prestera_acl_rule_entry_act_construct.exit

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

__prestera_acl_rule_entry_act_construct.exit:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %counter.i, align 4
  %22 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %block.i, align 8
  %24 = ptrtoint ptr %counter22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %counter22.i, align 4
  tail call void @prestera_counter_put(ptr noundef %21, ptr noundef %23, i32 noundef %25) #10
  br label %err_act_construct

if.end6:                                          ; preds = %if.then.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %26 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %acl, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %act_hw.i) #10
  %28 = call ptr @memset(ptr %act_hw.i, i32 0, i32 64)
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i65 = load i8, ptr %9, align 8
  %bf.load.lobit.i = lshr i8 %bf.load.i65, 7
  %30 = zext i8 %bf.load.lobit.i to i32
  %31 = ptrtoint ptr %drop5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load1.i = load i8, ptr %drop5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool3.not.i = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool3.not.i, label %if.end6.if.end8.i_crit_edge, label %if.then4.i

if.end6.if.end8.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr [8 x %struct.prestera_acl_hw_action_info], ptr %act_hw.i, i32 0, i32 %30
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayidx5.i, align 4
  %inc7.i = add nuw nsw i32 %30, 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end6.if.end8.i_crit_edge
  %act_num.1.i = phi i32 [ %inc7.i, %if.then4.i ], [ %30, %if.end6.if.end8.i_crit_edge ]
  %33 = ptrtoint ptr %trap13.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load9.i = load i8, ptr %trap13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9.i)
  %tobool11.not.i = icmp sgt i8 %bf.load9.i, -1
  br i1 %tobool11.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then12.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13.i = getelementptr [8 x %struct.prestera_acl_hw_action_info], ptr %act_hw.i, i32 0, i32 %act_num.1.i
  %34 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %arrayidx13.i, align 4
  %inc15.i = add nuw nsw i32 %act_num.1.i, 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end16.i_crit_edge
  %act_num.2.i = phi i32 [ %inc15.i, %if.then12.i ], [ %act_num.1.i, %if.end8.i.if.end16.i_crit_edge ]
  %block.i68 = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 1
  %35 = ptrtoint ptr %block.i68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %block.i68, align 8
  %tobool17.not.i = icmp eq ptr %36, null
  br i1 %tobool17.not.i, label %if.end16.i.__prestera_acl_rule_entry2hw_add.exit_crit_edge, label %if.then18.i

if.end16.i.__prestera_acl_rule_entry2hw_add.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__prestera_acl_rule_entry2hw_add.exit

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %counter.i69 = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 3
  %arrayidx19.i = getelementptr [8 x %struct.prestera_acl_hw_action_info], ptr %act_hw.i, i32 0, i32 %act_num.2.i
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %arrayidx19.i, align 4
  %38 = ptrtoint ptr %counter.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %counter.i69, align 4
  %40 = getelementptr [8 x %struct.prestera_acl_hw_action_info], ptr %act_hw.i, i32 0, i32 %act_num.2.i, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %40, align 4
  %inc25.i = add nuw nsw i32 %act_num.2.i, 1
  br label %__prestera_acl_rule_entry2hw_add.exit

__prestera_acl_rule_entry2hw_add.exit:            ; preds = %if.then18.i, %if.end16.i.__prestera_acl_rule_entry2hw_add.exit_crit_edge
  %act_num.3.i = phi i32 [ %inc25.i, %if.then18.i ], [ %act_num.2.i, %if.end16.i.__prestera_acl_rule_entry2hw_add.exit_crit_edge ]
  %42 = ptrtoint ptr %vtcam_id2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vtcam_id2, align 4
  %44 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %key1, align 4
  %match.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %mask.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %conv.i = trunc i32 %act_num.3.i to i8
  %hw_id.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 2
  %call.i70 = call i32 @prestera_hw_vtcam_rule_add(ptr noundef %27, i32 noundef %43, i32 noundef %45, ptr noundef %match.i, ptr noundef %mask.i, ptr noundef nonnull %act_hw.i, i8 noundef zeroext %conv.i, ptr noundef %hw_id.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %act_hw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool9.not = icmp eq i32 %call.i70, 0
  br i1 %tobool9.not, label %if.end11, label %__prestera_acl_rule_entry2hw_add.exit.err_hw_add_crit_edge

__prestera_acl_rule_entry2hw_add.exit.err_hw_add_crit_edge: ; preds = %__prestera_acl_rule_entry2hw_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hw_add

if.end11:                                         ; preds = %__prestera_acl_rule_entry2hw_add.exit
  %acl_rule_entry_ht = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 4
  %call12 = call fastcc i32 @rhashtable_insert_fast(ptr noundef %acl_rule_entry_ht, ptr noundef nonnull %call7.i.i, [7 x i32] [i32 156, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %err_ht_insert

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_ht_insert:                                    ; preds = %if.end11
  %46 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %acl, align 4
  %48 = ptrtoint ptr %vtcam_id2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vtcam_id2, align 4
  %50 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_id.i, align 8
  %call.i73 = call i32 @prestera_hw_vtcam_rule_del(ptr noundef %47, i32 noundef %49, i32 noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool18.not = icmp eq i32 %call.i73, 0
  br i1 %tobool18.not, label %err_ht_insert.err_hw_add_crit_edge, label %do.end, !prof !63

err_ht_insert.err_hw_add_crit_edge:               ; preds = %err_ht_insert
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_hw_add

do.end:                                           ; preds = %err_ht_insert
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 556, i32 noundef 9, ptr noundef null) #10
  br label %err_hw_add

err_hw_add:                                       ; preds = %do.end, %err_ht_insert.err_hw_add_crit_edge, %__prestera_acl_rule_entry2hw_add.exit.err_hw_add_crit_edge
  %52 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %acl, align 4
  %counter.i74 = getelementptr inbounds %struct.prestera_switch, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %counter.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %counter.i74, align 4
  %counter1.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %call7.i.i, i32 0, i32 4, i32 3
  %56 = ptrtoint ptr %block.i68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %block.i68, align 8
  %58 = ptrtoint ptr %counter1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %counter1.i, align 4
  call void @prestera_counter_put(ptr noundef %55, ptr noundef %57, i32 noundef %59) #10
  br label %err_act_construct

err_act_construct:                                ; preds = %err_hw_add, %__prestera_acl_rule_entry_act_construct.exit
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_act_construct, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end11.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %err_act_construct ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_acl_rule_entry_destroy(ptr noundef %acl, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_rule_entry_ht = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 4
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %acl_rule_entry_ht, ptr noundef %e, [7 x i32] [i32 156, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %vtcam_id.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %e, i32 0, i32 3
  %2 = ptrtoint ptr %vtcam_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vtcam_id.i, align 4
  %hw_id.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %e, i32 0, i32 2
  %4 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_id.i, align 4
  %call.i = tail call i32 @prestera_hw_vtcam_rule_del(ptr noundef %1, i32 noundef %3, i32 noundef %5) #10
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end [
    i32 -19, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge35
  ]

entry.if.end_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 491, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge35
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl, align 4
  %counter.i = getelementptr inbounds %struct.prestera_switch, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %counter.i, align 4
  %counter1.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %e, i32 0, i32 4, i32 3
  %block.i = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %e, i32 0, i32 4, i32 3, i32 1
  %11 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %block.i, align 4
  %13 = ptrtoint ptr %counter1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %counter1.i, align 4
  tail call void @prestera_counter_put(ptr noundef %10, ptr noundef %12, i32 noundef %14) #10
  tail call void @kfree(ptr noundef %e) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1076, ptr noundef nonnull @.str.4) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !62

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #10
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #10
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !63

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #10
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.8) #10
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1032, ptr noundef nonnull @.str.8) #10
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #10
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #10
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1004, ptr noundef nonnull @.str.8) #10
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #10
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #10, !srcloc !74
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #10
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !62

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #10
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.10, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1085, ptr noundef nonnull @.str.4) #10
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %46 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_acl_rule_del(ptr nocapture noundef readonly %sw, ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  %iface.i.i = alloca %struct.prestera_acl_iface, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ruleset1 = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 2
  %0 = ptrtoint ptr %ruleset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ruleset1, align 4
  %ht_key = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ht_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ht_key, align 4
  %rule_ht = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 2
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %rule_ht, ptr noundef %rule, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0])
  %rule_count = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rule_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %rule_count, align 4
  %list = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %acl = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 3
  %14 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acl, align 4
  %re = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 7
  %16 = ptrtoint ptr %re to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %re, align 4
  tail call void @prestera_acl_rule_entry_destroy(ptr noundef %15, ptr noundef %17)
  %18 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rule_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %binding.011.i = load ptr, ptr %3, align 4
  %cmp.not12.i = icmp eq ptr %binding.011.i, %3
  br i1 %cmp.not12.i, label %if.then.prestera_acl_ruleset_block_unbind.exit_crit_edge, label %for.body.lr.ph.i

if.then.prestera_acl_ruleset_block_unbind.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_acl_ruleset_block_unbind.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %vtcam_id.i.i = getelementptr inbounds %struct.prestera_acl_ruleset, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %binding.013.i = phi ptr [ %binding.011.i, %for.body.lr.ph.i ], [ %binding.0.i, %for.body.i.for.body.i_crit_edge ]
  %port.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.013.i, i32 0, i32 1
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iface.i.i) #10
  %23 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -4278190081, ptr %iface.i.i, align 8, !annotation !59
  store ptr %22, ptr %iface.i.i, align 8
  %sw.i.i = getelementptr inbounds %struct.prestera_port, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw.i.i, align 4
  %26 = ptrtoint ptr %vtcam_id.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vtcam_id.i.i, align 4
  %call.i.i17 = call i32 @prestera_hw_vtcam_iface_unbind(ptr noundef %25, ptr noundef nonnull %iface.i.i, i32 noundef %27) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iface.i.i) #10
  %28 = ptrtoint ptr %binding.013.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %binding.0.i = load ptr, ptr %binding.013.i, align 4
  %cmp.not.i = icmp eq ptr %binding.0.i, %3
  br i1 %cmp.not.i, label %for.body.i.prestera_acl_ruleset_block_unbind.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.prestera_acl_ruleset_block_unbind.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %prestera_acl_ruleset_block_unbind.exit

prestera_acl_ruleset_block_unbind.exit:           ; preds = %for.body.i.prestera_acl_ruleset_block_unbind.exit_crit_edge, %if.then.prestera_acl_ruleset_block_unbind.exit_crit_edge
  %ruleset_zero.i = getelementptr inbounds %struct.prestera_flow_block, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %ruleset_zero.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ruleset_zero.i, align 4
  br label %if.end

if.end:                                           ; preds = %prestera_acl_ruleset_block_unbind.exit, %list_del.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_rule_get_stats(ptr nocapture noundef readonly %acl, ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %packets, ptr nocapture noundef writeonly %bytes, ptr nocapture noundef writeonly %last_use) local_unnamed_addr #0 align 64 {
entry:
  %current_packets = alloca i64, align 8
  %current_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current_packets) #10
  %0 = ptrtoint ptr %current_packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %current_packets, align 8, !annotation !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %current_bytes) #10
  %1 = ptrtoint ptr %current_bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %current_bytes, align 8, !annotation !59
  %2 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl, align 4
  %counter = getelementptr inbounds %struct.prestera_switch, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter, align 4
  %re = getelementptr inbounds %struct.prestera_acl_rule, ptr %rule, i32 0, i32 7
  %6 = ptrtoint ptr %re to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %re, align 4
  %counter1 = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %7, i32 0, i32 4, i32 3
  %block = getelementptr inbounds %struct.prestera_acl_rule_entry, ptr %7, i32 0, i32 4, i32 3, i32 1
  %8 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block, align 4
  %10 = ptrtoint ptr %counter1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %counter1, align 4
  %call = call i32 @prestera_counter_stats_get(ptr noundef %5, ptr noundef %9, i32 noundef %11, ptr noundef nonnull %current_packets, ptr noundef nonnull %current_bytes) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %current_packets to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %current_packets, align 8
  %14 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %packets, align 8
  %15 = ptrtoint ptr %current_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %current_bytes, align 8
  %17 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %bytes, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %18 to i64
  %19 = ptrtoint ptr %last_use to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %last_use, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current_bytes) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %current_packets) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_counter_stats_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vtcam_create(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_vtcam_id_put(ptr noundef readonly %acl, i32 noundef %vtcam_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vtcam_list = getelementptr inbounds %struct.prestera_acl, ptr %acl, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %vtcam.0.in = phi ptr [ %vtcam_list, %entry ], [ %vtcam.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %vtcam.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %vtcam.0 = load ptr, ptr %vtcam.0.in, align 4
  %cmp.not = icmp eq ptr %vtcam.0, %vtcam_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0, i32 0, i32 3
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %cmp2.not = icmp eq i32 %2, %vtcam_id
  br i1 %cmp2.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end:                                           ; preds = %for.body
  %refcount = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end4, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !63

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id.le = getelementptr inbounds %struct.prestera_acl_vtcam, ptr %vtcam.0, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl, align 4
  %6 = ptrtoint ptr %id.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.le, align 4
  %call6 = tail call i32 @prestera_hw_vtcam_destroy(ptr noundef %5, i32 noundef %7) #10
  %8 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call6, label %if.then8 [
    i32 0, label %if.end4.if.end10_crit_edge
    i32 -19, label %if.end4.if.end10_crit_edge36
  ]

if.end4.if.end10_crit_edge36:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end4.if.end10_crit_edge, %if.end4.if.end10_crit_edge36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vtcam.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vtcam.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %vtcam.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vtcam.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %16 = ptrtoint ptr %vtcam.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %vtcam.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vtcam.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vtcam.0) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then8, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %list_del.exit ], [ 0, %if.end5.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vtcam_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_acl_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 536) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sw, ptr %call7.i.i, align 8
  %rules = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %rules to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %rules, ptr %rules, align 4
  %prev.i = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rules, ptr %prev.i, align 8
  %vtcam_list = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %vtcam_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %vtcam_list, ptr %vtcam_list, align 4
  %prev.i25 = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vtcam_list, ptr %prev.i25, align 8
  %uid = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %uid, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108868, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_next.i.i, align 4
  %acl_rule_entry_ht = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 4
  %call2 = tail call i32 @rhashtable_init(ptr noundef %acl_rule_entry_ht, ptr noundef nonnull @__prestera_acl_rule_entry_ht_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_acl_rule_entry_ht_init_crit_edge

if.end.err_acl_rule_entry_ht_init_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_acl_rule_entry_ht_init

if.end5:                                          ; preds = %if.end
  %ruleset_ht = getelementptr inbounds %struct.prestera_acl, ptr %call7.i.i, i32 0, i32 3
  %call6 = tail call i32 @rhashtable_init(ptr noundef %ruleset_ht, ptr noundef nonnull @prestera_acl_ruleset_ht_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err_ruleset_ht_init

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %acl10 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 3
  %10 = ptrtoint ptr %acl10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %acl10, align 4
  br label %cleanup

err_ruleset_ht_init:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rhashtable_destroy(ptr noundef %acl_rule_entry_ht) #10
  br label %err_acl_rule_entry_ht_init

err_acl_rule_entry_ht_init:                       ; preds = %err_ruleset_ht_init, %if.end.err_acl_rule_entry_ht_init_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.err_acl_rule_entry_ht_init_crit_edge ], [ %call6, %err_ruleset_ht_init ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_acl_rule_entry_ht_init, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_acl_rule_entry_ht_init ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_acl_fini(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %acl1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 3
  %0 = ptrtoint ptr %acl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl1, align 4
  %uid = getelementptr inbounds %struct.prestera_acl, ptr %1, i32 0, i32 5
  %xa_head.i.i = getelementptr inbounds %struct.prestera_acl, ptr %1, i32 0, i32 5, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %idr_is_empty.exit, label %entry.do.end_crit_edge, !prof !75

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

idr_is_empty.exit:                                ; preds = %entry
  %call2.i = tail call i32 @radix_tree_tagged(ptr noundef %uid, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.i.not, label %idr_is_empty.exit.do.end_crit_edge, label %idr_is_empty.exit.if.end_crit_edge, !prof !62

idr_is_empty.exit.if.end_crit_edge:               ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

idr_is_empty.exit.do.end_crit_edge:               ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %idr_is_empty.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 733, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %idr_is_empty.exit.if.end_crit_edge
  tail call void @idr_destroy(ptr noundef %uid) #10
  %vtcam_list = getelementptr inbounds %struct.prestera_acl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vtcam_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vtcam_list, align 4
  %cmp.i.not = icmp eq ptr %5, %vtcam_list
  br i1 %cmp.i.not, label %if.end.if.end48_crit_edge, label %do.end42, !prof !63

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 736, i32 noundef 9, ptr noundef null) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end.if.end48_crit_edge
  %rules = getelementptr inbounds %struct.prestera_acl, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rules, align 4
  %cmp.i99.not = icmp eq ptr %7, %rules
  br i1 %cmp.i99.not, label %if.end48.if.end82_crit_edge, label %do.end76, !prof !63

if.end48.if.end82_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end76:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 737, i32 noundef 9, ptr noundef null) #10
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.end48.if.end82_crit_edge
  %ruleset_ht = getelementptr inbounds %struct.prestera_acl, ptr %1, i32 0, i32 3
  tail call void @rhashtable_destroy(ptr noundef %ruleset_ht) #10
  %acl_rule_entry_ht = getelementptr inbounds %struct.prestera_acl, ptr %1, i32 0, i32 4
  tail call void @rhashtable_destroy(ptr noundef %acl_rule_entry_ht) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_u32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !75

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !63

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !81
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #10
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !62

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !85
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %3 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vtcam_rule_del(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_counter_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_counter_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vtcam_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_acl.c", i32 353, i32 8}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @prestera_acl_rule_ht_params, !18, !"prestera_acl_rule_ht_params", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_acl.c", i32 72, i32 39}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!42 = !{ptr @__prestera_acl_rule_entry_ht_params, !43, !"__prestera_acl_rule_entry_ht_params", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_acl.c", i32 79, i32 39}
!44 = !{ptr @xa_init_flags.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @prestera_acl_ruleset_ht_params, !48, !"prestera_acl_ruleset_ht_params", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_acl.c", i32 65, i32 39}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i8 0, i8 2}
!61 = !{i64 2148235313, i64 2148235345, i64 2148235374, i64 2148235408, i64 2148235439, i64 2148235462}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149476966}
!65 = !{i64 2148323314}
!66 = !{i64 2148237778, i64 2148237810, i64 2148237839, i64 2148237873, i64 2148237904, i64 2148237927}
!67 = !{i64 2150893071}
!68 = !{i64 2149417608}
!69 = !{i64 2149657254}
!70 = !{i64 2149660688}
!71 = !{i64 2149417874}
!72 = !{i64 2148233783, i64 2148233809, i64 2148233838, i64 2148233872, i64 2148233903, i64 2148233926}
!73 = !{i64 2149724630}
!74 = !{i64 2148236248, i64 2148236274, i64 2148236303, i64 2148236337, i64 2148236368, i64 2148236391}
!75 = !{!"branch_weights", i32 2146410443, i32 1073205}
!76 = !{i64 2149608433}
!77 = !{i64 2148242641, i64 2148242673, i64 2148242702, i64 2148242736, i64 2148242767, i64 2148242790}
!78 = !{i64 2148331722}
!79 = !{i64 2149608593}
!80 = !{i64 2149608870}
!81 = !{i64 2149608712}
!82 = !{i64 2149609075}
!83 = !{i64 2149610138, i64 2149610630, i64 2149610175, i64 2149610231, i64 2149610265, i64 2149610289, i64 2149610330, i64 2149610351, i64 2149610379, i64 2149610413}
!84 = !{i64 2148330609}
!85 = !{i64 2148241028, i64 2148241060, i64 2148241089, i64 2148241123, i64 2148241154, i64 2148241177}
!86 = !{i64 2149611533}
!87 = !{i64 2149650327}
!88 = !{i64 2149652626}
