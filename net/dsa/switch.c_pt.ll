; ModuleID = '/llk/IR_all_yes/net/dsa/switch.c_pt.bc'
source_filename = "../net/dsa/switch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_notifier_bridge_info = type { %struct.dsa_bridge, i32, i32, i32, i8 }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.dsa_notifier_fdb_info = type { i32, i32, ptr, i16 }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dsa_notifier_lag_info = type { ptr, i32, i32, ptr }
%struct.dsa_notifier_mdb_info = type { ptr, i32, i32 }
%struct.dsa_notifier_vlan_info = type { ptr, i32, i32, ptr }
%struct.dsa_notifier_mtu_info = type { i8, i32, i32, i32 }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dsa_mac_addr = type { [6 x i8], i16, %struct.refcount_struct, %struct.list_head }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@dsa_switch_unregister_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 784, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to unregister notifier (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dsa_switch_unregister_notifier\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/dsa/switch.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dsa_switch_unregister_notifier._entry_ptr = internal global ptr @dsa_switch_unregister_notifier._entry, section ".printk_index", align 4
@dsa_switch_event.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsa_core\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsa_switch_event\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"breaking chain for DSA event %lu (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@dsa_switch_bridge_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port %d: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsa_switch_bridge_leave\00", [40 x i8] zeroinitializer }, align 32
@dsa_switch_bridge_leave._entry_ptr = internal global ptr @dsa_switch_bridge_leave._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dsa_switch_change_tag_proto.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 784, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 765, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 169, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [20 x i8] c"../net/dsa/switch.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 605, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @dsa_switch_bridge_leave._entry, ptr @dsa_switch_bridge_leave._entry_ptr, ptr @dsa_switch_unregister_notifier._entry, ptr @dsa_switch_unregister_notifier._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_unregister_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_switch_bridge_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_switch_register_notifier(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nb = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 4
  %0 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dsa_switch_event, ptr %nb, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst, align 4
  %nh = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 2
  %call = tail call i32 @raw_notifier_chain_register(ptr noundef %nh, ptr noundef %nb) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_switch_event(ptr noundef %nb, i32 noundef %event, ptr noundef %info) #0 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -16
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 15, label %sw.bb29
    i32 16, label %sw.bb31
    i32 17, label %sw.bb33
    i32 18, label %sw.bb35
    i32 19, label %sw.bb37
    i32 20, label %sw.bb39
    i32 21, label %sw.bb41
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %info, align 4
  %ageing_time_min.i = getelementptr i8, ptr %nb, i32 36
  %3 = ptrtoint ptr %ageing_time_min.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ageing_time_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.i = icmp ult i32 %2, %4
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %sw.bb.do.body_crit_edge, label %if.end.i

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %sw.bb
  %ageing_time_max.i = getelementptr i8, ptr %nb, i32 40
  %5 = ptrtoint ptr %ageing_time_max.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ageing_time_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp6.i = icmp ugt i32 %2, %6
  %or.cond27.i = select i1 %tobool3.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond27.i, label %if.end.i.do.body_crit_edge, label %if.end8.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end8.i:                                        ; preds = %if.end.i
  %dst.i.i = getelementptr i8, ptr %nb, i32 -12
  %7 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn24.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not25.i.i = icmp eq ptr %.pn24.i.i, %ports.i.i
  br i1 %cmp.not25.i.i, label %if.end8.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge, label %if.end8.i.for.body.i.i_crit_edge

if.end8.i.for.body.i.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i.i

if.end8.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_switch_fastest_ageing_time.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8.i.for.body.i.i_crit_edge
  %.pn27.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn24.i.i, %if.end8.i.for.body.i.i_crit_edge ]
  %ageing_time.addr.026.i.i = phi i32 [ %ageing_time.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %if.end8.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn27.i.i, i32 -432
  %10 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %11, %add.ptr
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ageing_time5.i.i = getelementptr i8, ptr %.pn27.i.i, i32 -400
  %12 = ptrtoint ptr %ageing_time5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ageing_time5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %ageing_time.addr.026.i.i)
  %cmp7.i.i = icmp ult i32 %13, %ageing_time.addr.026.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp7.i.i, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %13, i32 %ageing_time.addr.026.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %ageing_time.addr.1.i.i = phi i32 [ %ageing_time.addr.026.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %14 = ptrtoint ptr %.pn27.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn27.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_switch_fastest_ageing_time.exit.i

dsa_switch_fastest_ageing_time.exit.i:            ; preds = %for.inc.i.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge, %if.end8.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge
  %ageing_time.addr.0.lcssa.i.i = phi i32 [ %2, %if.end8.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge ], [ %ageing_time.addr.1.i.i, %for.inc.i.i.dsa_switch_fastest_ageing_time.exit.i_crit_edge ]
  %ops.i = getelementptr i8, ptr %nb, i32 24
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %set_ageing_time.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %set_ageing_time.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_ageing_time.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %dsa_switch_fastest_ageing_time.exit.i.if.end49.thread_crit_edge, label %if.then10.i

dsa_switch_fastest_ageing_time.exit.i.if.end49.thread_crit_edge: ; preds = %dsa_switch_fastest_ageing_time.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

if.then10.i:                                      ; preds = %dsa_switch_fastest_ageing_time.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 %18(ptr noundef %add.ptr, i32 noundef %ageing_time.addr.0.lcssa.i.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dst1.i = getelementptr i8, ptr %nb, i32 -12
  %19 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst1.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  %tree_index.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %tree_index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tree_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i98 = icmp eq i32 %22, %24
  br i1 %cmp.i98, label %land.lhs.true.i, label %sw.bb1.if.end10.i_crit_edge

sw.bb1.if.end10.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %sw.bb1
  %index2.i = getelementptr i8, ptr %nb, i32 -8
  %25 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index2.i, align 4
  %sw_index.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %27 = ptrtoint ptr %sw_index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sw_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp3.i = icmp eq i32 %26, %28
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %ops.i99 = getelementptr i8, ptr %nb, i32 24
  %29 = ptrtoint ptr %ops.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i99, align 4
  %port_bridge_join.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %30, i32 0, i32 45
  %31 = ptrtoint ptr %port_bridge_join.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port_bridge_join.i, align 4
  %tobool.not.i100 = icmp eq ptr %32, null
  br i1 %tobool.not.i100, label %if.then.i.do.body_crit_edge, label %if.end.i101

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i101:                                      ; preds = %if.then.i
  %port.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i, align 4
  %tx_fwd_offload.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 4
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack65.i = load i32, ptr %info, align 4
  %36 = insertvalue [4 x i32] undef, i32 %.unpack65.i, 0
  %.elt66.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 1
  %37 = ptrtoint ptr %.elt66.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack67.i = load i32, ptr %.elt66.i, align 4
  %38 = insertvalue [4 x i32] %36, i32 %.unpack67.i, 1
  %.elt68.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 2
  %39 = ptrtoint ptr %.elt68.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack69.i = load i32, ptr %.elt68.i, align 4
  %40 = insertvalue [4 x i32] %38, i32 %.unpack69.i, 2
  %.elt70.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 3
  %41 = ptrtoint ptr %.elt70.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack71.i = load i32, ptr %.elt70.i, align 4
  %42 = insertvalue [4 x i32] %40, i32 %.unpack71.i, 3
  %call.i = tail call i32 %32(ptr noundef %add.ptr, i32 noundef %34, [4 x i32] %42, ptr noundef %tx_fwd_offload.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end.i101.if.end10.i_crit_edge, label %if.end.i101.do.body_crit_edge

if.end.i101.do.body_crit_edge:                    ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i101.if.end10.i_crit_edge:                 ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i101.if.end10.i_crit_edge, %land.lhs.true.i.if.end10.i_crit_edge, %sw.bb1.if.end10.i_crit_edge
  %43 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i, align 4
  %45 = ptrtoint ptr %tree_index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tree_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp13.not.i = icmp eq i32 %44, %46
  br i1 %cmp13.not.i, label %lor.lhs.false.i, label %if.end10.i.land.lhs.true17.i_crit_edge

if.end10.i.land.lhs.true17.i_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true17.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %index14.i = getelementptr i8, ptr %nb, i32 -8
  %47 = ptrtoint ptr %index14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index14.i, align 4
  %sw_index15.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %49 = ptrtoint ptr %sw_index15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sw_index15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp16.not.i = icmp eq i32 %48, %50
  br i1 %cmp16.not.i, label %lor.lhs.false.i.if.end31.i_crit_edge, label %lor.lhs.false.i.land.lhs.true17.i_crit_edge

lor.lhs.false.i.land.lhs.true17.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true17.i

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

land.lhs.true17.i:                                ; preds = %lor.lhs.false.i.land.lhs.true17.i_crit_edge, %if.end10.i.land.lhs.true17.i_crit_edge
  %ops18.i = getelementptr i8, ptr %nb, i32 24
  %51 = ptrtoint ptr %ops18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops18.i, align 4
  %crosschip_bridge_join.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %52, i32 0, i32 69
  %53 = ptrtoint ptr %crosschip_bridge_join.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %crosschip_bridge_join.i, align 4
  %tobool19.not.i = icmp eq ptr %54, null
  br i1 %tobool19.not.i, label %land.lhs.true17.i.if.end31.i_crit_edge, label %if.then20.i

land.lhs.true17.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then20.i:                                      ; preds = %land.lhs.true17.i
  %sw_index24.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %55 = ptrtoint ptr %sw_index24.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sw_index24.i, align 4
  %port25.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %57 = ptrtoint ptr %port25.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port25.i, align 4
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack.i = load i32, ptr %info, align 4
  %60 = insertvalue [4 x i32] undef, i32 %.unpack.i, 0
  %.elt59.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 1
  %61 = ptrtoint ptr %.elt59.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack60.i = load i32, ptr %.elt59.i, align 4
  %62 = insertvalue [4 x i32] %60, i32 %.unpack60.i, 1
  %.elt61.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 2
  %63 = ptrtoint ptr %.elt61.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack62.i = load i32, ptr %.elt61.i, align 4
  %64 = insertvalue [4 x i32] %62, i32 %.unpack62.i, 2
  %.elt63.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 3
  %65 = ptrtoint ptr %.elt63.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack64.i = load i32, ptr %.elt63.i, align 4
  %66 = insertvalue [4 x i32] %64, i32 %.unpack64.i, 3
  %call27.i = tail call i32 %54(ptr noundef %add.ptr, i32 noundef %46, i32 noundef %56, i32 noundef %58, [4 x i32] %66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then20.i.if.end31.i_crit_edge, label %if.then20.i.do.body_crit_edge

if.then20.i.do.body_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then20.i.if.end31.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then20.i.if.end31.i_crit_edge, %land.lhs.true17.i.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge
  %call32.i = tail call i32 @dsa_tag_8021q_bridge_join(ptr noundef %add.ptr, ptr noundef %info) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %dst1.i103 = getelementptr i8, ptr %nb, i32 -12
  %67 = ptrtoint ptr %dst1.i103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dst1.i103, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #6
  %69 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %index.i104 = getelementptr inbounds %struct.dsa_switch_tree, ptr %68, i32 0, i32 3
  %70 = ptrtoint ptr %index.i104 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index.i104, align 4
  %tree_index.i105 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %tree_index.i105 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tree_index.i105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i106 = icmp eq i32 %71, %73
  br i1 %cmp.i106, label %land.lhs.true.i110, label %sw.bb3.if.end.i115_crit_edge

sw.bb3.if.end.i115_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i115

land.lhs.true.i110:                               ; preds = %sw.bb3
  %index2.i107 = getelementptr i8, ptr %nb, i32 -8
  %74 = ptrtoint ptr %index2.i107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index2.i107, align 4
  %sw_index.i108 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %76 = ptrtoint ptr %sw_index.i108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sw_index.i108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp3.i109 = icmp eq i32 %75, %77
  br i1 %cmp3.i109, label %land.lhs.true4.i, label %land.lhs.true.i110.if.end.i115_crit_edge

land.lhs.true.i110.if.end.i115_crit_edge:         ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i115

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i110
  %ops.i111 = getelementptr i8, ptr %nb, i32 24
  %78 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i111, align 4
  %port_bridge_leave.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %79, i32 0, i32 46
  %80 = ptrtoint ptr %port_bridge_leave.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %port_bridge_leave.i, align 4
  %tobool.not.i112 = icmp eq ptr %81, null
  br i1 %tobool.not.i112, label %land.lhs.true4.i.if.end.i115_crit_edge, label %if.then.i114

land.lhs.true4.i.if.end.i115_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i115

if.then.i114:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  %port.i113 = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %82 = ptrtoint ptr %port.i113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port.i113, align 4
  %84 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack149.i = load i32, ptr %info, align 4
  %85 = insertvalue [4 x i32] undef, i32 %.unpack149.i, 0
  %.elt150.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 1
  %86 = ptrtoint ptr %.elt150.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack151.i = load i32, ptr %.elt150.i, align 4
  %87 = insertvalue [4 x i32] %85, i32 %.unpack151.i, 1
  %.elt152.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 2
  %88 = ptrtoint ptr %.elt152.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.unpack153.i = load i32, ptr %.elt152.i, align 4
  %89 = insertvalue [4 x i32] %87, i32 %.unpack153.i, 2
  %.elt154.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 3
  %90 = ptrtoint ptr %.elt154.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack155.i = load i32, ptr %.elt154.i, align 4
  %91 = insertvalue [4 x i32] %89, i32 %.unpack155.i, 3
  tail call void %81(ptr noundef %add.ptr, i32 noundef %83, [4 x i32] %91) #6
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i114, %land.lhs.true4.i.if.end.i115_crit_edge, %land.lhs.true.i110.if.end.i115_crit_edge, %sw.bb3.if.end.i115_crit_edge
  %92 = ptrtoint ptr %index.i104 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %index.i104, align 4
  %94 = ptrtoint ptr %tree_index.i105 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tree_index.i105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp9.not.i = icmp eq i32 %93, %95
  br i1 %cmp9.not.i, label %lor.lhs.false.i116, label %if.end.i115.land.lhs.true13.i_crit_edge

if.end.i115.land.lhs.true13.i_crit_edge:          ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13.i

lor.lhs.false.i116:                               ; preds = %if.end.i115
  %index10.i = getelementptr i8, ptr %nb, i32 -8
  %96 = ptrtoint ptr %index10.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index10.i, align 4
  %sw_index11.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %98 = ptrtoint ptr %sw_index11.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sw_index11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp12.not.i = icmp eq i32 %97, %99
  br i1 %cmp12.not.i, label %lor.lhs.false.i116.if.end23.i_crit_edge, label %lor.lhs.false.i116.land.lhs.true13.i_crit_edge

lor.lhs.false.i116.land.lhs.true13.i_crit_edge:   ; preds = %lor.lhs.false.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13.i

lor.lhs.false.i116.if.end23.i_crit_edge:          ; preds = %lor.lhs.false.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false.i116.land.lhs.true13.i_crit_edge, %if.end.i115.land.lhs.true13.i_crit_edge
  %ops14.i = getelementptr i8, ptr %nb, i32 24
  %100 = ptrtoint ptr %ops14.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops14.i, align 4
  %crosschip_bridge_leave.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %101, i32 0, i32 70
  %102 = ptrtoint ptr %crosschip_bridge_leave.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %crosschip_bridge_leave.i, align 4
  %tobool15.not.i = icmp eq ptr %103, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.end23.i_crit_edge, label %if.then16.i

land.lhs.true13.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then16.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #8
  %sw_index20.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 2
  %104 = ptrtoint ptr %sw_index20.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sw_index20.i, align 4
  %port21.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %106 = ptrtoint ptr %port21.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port21.i, align 4
  %108 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %108)
  %.unpack.i117 = load i32, ptr %info, align 4
  %109 = insertvalue [4 x i32] undef, i32 %.unpack.i117, 0
  %.elt143.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 1
  %110 = ptrtoint ptr %.elt143.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.unpack144.i = load i32, ptr %.elt143.i, align 4
  %111 = insertvalue [4 x i32] %109, i32 %.unpack144.i, 1
  %.elt145.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 2
  %112 = ptrtoint ptr %.elt145.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.unpack146.i = load i32, ptr %.elt145.i, align 4
  %113 = insertvalue [4 x i32] %111, i32 %.unpack146.i, 2
  %.elt147.i = getelementptr inbounds [4 x i32], ptr %info, i32 0, i32 3
  %114 = ptrtoint ptr %.elt147.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack148.i = load i32, ptr %.elt147.i, align 4
  %115 = insertvalue [4 x i32] %113, i32 %.unpack148.i, 3
  tail call void %103(ptr noundef %add.ptr, i32 noundef %95, i32 noundef %105, i32 noundef %107, [4 x i32] %115) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then16.i, %land.lhs.true13.i.if.end23.i_crit_edge, %lor.lhs.false.i116.if.end23.i_crit_edge
  %needs_standalone_vlan_filtering.i = getelementptr i8, ptr %nb, i32 -4
  %116 = ptrtoint ptr %needs_standalone_vlan_filtering.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i = load i16, ptr %needs_standalone_vlan_filtering.i, align 4
  %117 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool24.not.i = icmp eq i16 %117, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.else.i_crit_edge, label %land.lhs.true25.i

if.end23.i.if.else.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true25.i:                                ; preds = %if.end23.i
  %118 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %info, align 4
  %call.i118 = tail call zeroext i1 @br_vlan_enabled(ptr noundef %119) #6
  br i1 %call.i118, label %land.lhs.true25.i.if.else.i_crit_edge, label %land.lhs.true25.i.land.lhs.true42.i_crit_edge

land.lhs.true25.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true42.i

land.lhs.true25.i.if.else.i_crit_edge:            ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true25.i.if.else.i_crit_edge, %if.end23.i.if.else.i_crit_edge
  %120 = ptrtoint ptr %needs_standalone_vlan_filtering.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load29.i = load i16, ptr %needs_standalone_vlan_filtering.i, align 4
  %121 = and i16 %bf.load29.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool33.not.i = icmp eq i16 %121, 0
  br i1 %tobool33.not.i, label %if.end40.i, label %if.else.i.if.end86.i_crit_edge

if.else.i.if.end86.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86.i

if.end40.i:                                       ; preds = %if.else.i
  %122 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %info, align 4
  %call37.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef %123) #6
  br i1 %call37.i, label %if.end40.i.land.lhs.true42.i_crit_edge, label %if.end40.i.if.end86.i_crit_edge

if.end40.i.if.end86.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86.i

if.end40.i.land.lhs.true42.i_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true42.i

land.lhs.true42.i:                                ; preds = %if.end40.i.land.lhs.true42.i_crit_edge, %land.lhs.true25.i.land.lhs.true42.i_crit_edge
  %vlan_filtering.0.off0160.i = phi i1 [ false, %if.end40.i.land.lhs.true42.i_crit_edge ], [ true, %land.lhs.true25.i.land.lhs.true42.i_crit_edge ]
  %124 = ptrtoint ptr %needs_standalone_vlan_filtering.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load43.i = load i16, ptr %needs_standalone_vlan_filtering.i, align 4
  %125 = and i16 %bf.load43.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool47.not.i = icmp eq i16 %125, 0
  br i1 %tobool47.not.i, label %land.lhs.true42.i.if.then70.i_crit_edge, label %if.then48.i

land.lhs.true42.i.if.then70.i_crit_edge:          ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i

if.then48.i:                                      ; preds = %land.lhs.true42.i
  %126 = ptrtoint ptr %dst1.i103 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dst1.i103, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pn177.i = load ptr, ptr %ports.i, align 4
  %cmp52.not179.i = icmp eq ptr %.pn177.i, %ports.i
  br i1 %cmp52.not179.i, label %if.then48.i.if.then70.i_crit_edge, label %if.then48.i.for.body.i_crit_edge

if.then48.i.for.body.i_crit_edge:                 ; preds = %if.then48.i
  br label %for.body.i

if.then48.i.if.then70.i_crit_edge:                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then48.i.for.body.i_crit_edge
  %.pn180.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn177.i, %if.then48.i.for.body.i_crit_edge ]
  %ds53.i = getelementptr i8, ptr %.pn180.i, i32 -432
  %129 = ptrtoint ptr %ds53.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ds53.i, align 4
  %cmp54.i = icmp eq ptr %130, %add.ptr
  br i1 %cmp54.i, label %if.then55.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then55.i:                                      ; preds = %for.body.i
  %bridge.i.i = getelementptr i8, ptr %.pn180.i, i32 -396
  %131 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i119 = icmp eq ptr %132, null
  br i1 %tobool.not.i.i119, label %if.then55.i.for.inc.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i

if.then55.i.for.inc.i_crit_edge:                  ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %if.then55.i
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %tobool57.not.i = icmp eq ptr %134, null
  br i1 %tobool57.not.i, label %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, label %land.lhs.true58.i

dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true58.i:                                ; preds = %dsa_port_bridge_dev_get.exit.i
  %call59.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %134) #6
  br i1 %call59.i, label %land.lhs.true58.i.if.end86.i_crit_edge, label %land.lhs.true58.i.for.inc.i_crit_edge

land.lhs.true58.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true58.i.if.end86.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86.i

for.inc.i:                                        ; preds = %land.lhs.true58.i.for.inc.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, %if.then55.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %135 = ptrtoint ptr %.pn180.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn.i = load ptr, ptr %.pn180.i, align 4
  %136 = ptrtoint ptr %dst1.i103 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dst1.i103, align 4
  %ports51.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %137, i32 0, i32 1
  %cmp52.not.i = icmp eq ptr %.pn.i, %ports51.i
  br i1 %cmp52.not.i, label %for.inc.i.if.then70.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then70.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70.i

if.then70.i:                                      ; preds = %for.inc.i.if.then70.i_crit_edge, %if.then48.i.if.then70.i_crit_edge, %land.lhs.true42.i.if.then70.i_crit_edge
  %port71.i = getelementptr inbounds %struct.dsa_notifier_bridge_info, ptr %info, i32 0, i32 3
  %138 = ptrtoint ptr %port71.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port71.i, align 4
  %140 = ptrtoint ptr %dst1.i103 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dst1.i103, align 4
  %ports.i.i120 = getelementptr inbounds %struct.dsa_switch_tree, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %ports.i.i120 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pn20.i.i = load ptr, ptr %ports.i.i120, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i120
  br i1 %cmp.not21.i.i, label %if.then70.i.dsa_to_port.exit.i_crit_edge, label %if.then70.i.for.body.i.i123_crit_edge

if.then70.i.for.body.i.i123_crit_edge:            ; preds = %if.then70.i
  br label %for.body.i.i123

if.then70.i.dsa_to_port.exit.i_crit_edge:         ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i

for.body.i.i123:                                  ; preds = %for.inc.i.i126.for.body.i.i123_crit_edge, %if.then70.i.for.body.i.i123_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i124, %for.inc.i.i126.for.body.i.i123_crit_edge ], [ %.pn20.i.i, %if.then70.i.for.body.i.i123_crit_edge ]
  %ds3.i.i121 = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %143 = ptrtoint ptr %ds3.i.i121 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ds3.i.i121, align 4
  %cmp4.i.i122 = icmp eq ptr %144, %add.ptr
  br i1 %cmp4.i.i122, label %land.lhs.true.i.i, label %for.body.i.i123.for.inc.i.i126_crit_edge

for.body.i.i123.for.inc.i.i126_crit_edge:         ; preds = %for.body.i.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i126

land.lhs.true.i.i:                                ; preds = %for.body.i.i123
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %145 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %139)
  %cmp5.i.i = icmp eq i32 %146, %139
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i126_crit_edge

land.lhs.true.i.i.for.inc.i.i126_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i126

for.inc.i.i126:                                   ; preds = %land.lhs.true.i.i.for.inc.i.i126_crit_edge, %for.body.i.i123.for.inc.i.i126_crit_edge
  %147 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn.i.i124 = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i125 = icmp eq ptr %.pn.i.i124, %ports.i.i120
  br i1 %cmp.not.i.i125, label %for.inc.i.i126.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i126.for.body.i.i123_crit_edge

for.inc.i.i126.for.body.i.i123_crit_edge:         ; preds = %for.inc.i.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i123

for.inc.i.i126.dsa_to_port.exit.i_crit_edge:      ; preds = %for.inc.i.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i126.dsa_to_port.exit.i_crit_edge, %if.then70.i.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.then70.i.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i126.dsa_to_port.exit.i_crit_edge ]
  %call74.i = call i32 @dsa_port_vlan_filtering(ptr noundef %retval.0.i.i, i1 noundef zeroext %vlan_filtering.0.off0160.i, ptr noundef nonnull %extack.i) #6
  %148 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %extack.i, align 4
  %tobool75.not.i = icmp eq ptr %149, null
  br i1 %tobool75.not.i, label %dsa_to_port.exit.i.if.end80.i_crit_edge, label %do.end.i

dsa_to_port.exit.i.if.end80.i_crit_edge:          ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i

do.end.i:                                         ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr, align 4
  %152 = ptrtoint ptr %port71.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port71.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.8, i32 noundef %153, ptr noundef nonnull %149) #9
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end.i, %dsa_to_port.exit.i.if.end80.i_crit_edge
  %154 = zext i32 %call74.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call74.i, label %if.end80.i.dsa_switch_bridge_leave.exit_crit_edge [
    i32 0, label %if.end80.i.if.end86.i_crit_edge
    i32 -95, label %if.end80.i.if.end86.i_crit_edge669
  ]

if.end80.i.if.end86.i_crit_edge669:               ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86.i

if.end80.i.if.end86.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86.i

if.end80.i.dsa_switch_bridge_leave.exit_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_switch_bridge_leave.exit

if.end86.i:                                       ; preds = %if.end80.i.if.end86.i_crit_edge, %if.end80.i.if.end86.i_crit_edge669, %land.lhs.true58.i.if.end86.i_crit_edge, %if.end40.i.if.end86.i_crit_edge, %if.else.i.if.end86.i_crit_edge
  %call87.i = call i32 @dsa_tag_8021q_bridge_leave(ptr noundef %add.ptr, ptr noundef %info) #6
  br label %dsa_switch_bridge_leave.exit

dsa_switch_bridge_leave.exit:                     ; preds = %if.end86.i, %if.end80.i.dsa_switch_bridge_leave.exit_crit_edge
  %retval.0.i127 = phi i32 [ %call87.i, %if.end86.i ], [ %call74.i, %if.end80.i.dsa_switch_bridge_leave.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %155 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %info, align 4
  %port1.i = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %index.i.i128 = getelementptr i8, ptr %nb, i32 -8
  %157 = ptrtoint ptr %index.i.i128 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %index.i.i128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %156)
  %cmp.i.i = icmp eq i32 %158, %156
  br i1 %cmp.i.i, label %sw.bb5.dsa_towards_port.exit.i_crit_edge, label %if.else.i.i

sw.bb5.dsa_towards_port.exit.i_crit_edge:         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_towards_port.exit.i

if.else.i.i:                                      ; preds = %sw.bb5
  %dst1.i.i.i = getelementptr i8, ptr %nb, i32 -12
  %159 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dst1.i.i.i, align 4
  %rtable.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %160, i32 0, i32 10
  %161 = ptrtoint ptr %rtable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %.pn22.i.i.i = load ptr, ptr %rtable.i.i.i, align 4
  %cmp.not23.i.i.i = icmp eq ptr %.pn22.i.i.i, %rtable.i.i.i
  br i1 %cmp.not23.i.i.i, label %if.else.i.i.for.end.i.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.for.end.i.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %.pn24.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn22.i.i.i, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %dl.0.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -8
  %162 = ptrtoint ptr %dl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dl.0.i.i.i, align 4
  %ds3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %165, %add.ptr
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %link_dp.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -4
  %166 = ptrtoint ptr %link_dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %link_dp.i.i.i, align 4
  %ds5.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %ds5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ds5.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %156)
  %cmp6.i.i.i = icmp eq i32 %171, %156
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %163, i32 0, i32 5
  br label %dsa_towards_port.exit.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %172 = ptrtoint ptr %.pn24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pn.i.i.i = load ptr, ptr %.pn24.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %rtable.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.else.i.i.for.end.i.i.i_crit_edge
  %num_ports.i.i.i = getelementptr i8, ptr %nb, i32 64
  br label %dsa_towards_port.exit.i

dsa_towards_port.exit.i:                          ; preds = %for.end.i.i.i, %if.then.i.i.i, %sw.bb5.dsa_towards_port.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %port1.i, %sw.bb5.dsa_towards_port.exit.i_crit_edge ], [ %index8.i.i.i, %if.then.i.i.i ], [ %num_ports.i.i.i, %for.end.i.i.i ]
  %173 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %retval.0.i.i129 = load i32, ptr %retval.0.i.in.i, align 4
  %dst1.i.i = getelementptr i8, ptr %nb, i32 -12
  %174 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i130 = getelementptr inbounds %struct.dsa_switch_tree, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %ports.i.i130 to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pn20.i.i131 = load ptr, ptr %ports.i.i130, align 4
  %cmp.not21.i.i132 = icmp eq ptr %.pn20.i.i131, %ports.i.i130
  br i1 %cmp.not21.i.i132, label %dsa_towards_port.exit.i.dsa_to_port.exit.i146_crit_edge, label %dsa_towards_port.exit.i.for.body.i.i136_crit_edge

dsa_towards_port.exit.i.for.body.i.i136_crit_edge: ; preds = %dsa_towards_port.exit.i
  br label %for.body.i.i136

dsa_towards_port.exit.i.dsa_to_port.exit.i146_crit_edge: ; preds = %dsa_towards_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i146

for.body.i.i136:                                  ; preds = %for.inc.i.i141.for.body.i.i136_crit_edge, %dsa_towards_port.exit.i.for.body.i.i136_crit_edge
  %.pn22.i.i133 = phi ptr [ %.pn.i.i139, %for.inc.i.i141.for.body.i.i136_crit_edge ], [ %.pn20.i.i131, %dsa_towards_port.exit.i.for.body.i.i136_crit_edge ]
  %ds3.i.i134 = getelementptr i8, ptr %.pn22.i.i133, i32 -432
  %177 = ptrtoint ptr %ds3.i.i134 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ds3.i.i134, align 4
  %cmp4.i.i135 = icmp eq ptr %178, %add.ptr
  br i1 %cmp4.i.i135, label %land.lhs.true.i.i138, label %for.body.i.i136.for.inc.i.i141_crit_edge

for.body.i.i136.for.inc.i.i141_crit_edge:         ; preds = %for.body.i.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i141

land.lhs.true.i.i138:                             ; preds = %for.body.i.i136
  %index.i10.i = getelementptr i8, ptr %.pn22.i.i133, i32 -428
  %179 = ptrtoint ptr %index.i10.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %index.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %retval.0.i.i129)
  %cmp5.i.i137 = icmp eq i32 %180, %retval.0.i.i129
  br i1 %cmp5.i.i137, label %cleanup.split.loop.exit18.i.i143, label %land.lhs.true.i.i138.for.inc.i.i141_crit_edge

land.lhs.true.i.i138.for.inc.i.i141_crit_edge:    ; preds = %land.lhs.true.i.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i141

for.inc.i.i141:                                   ; preds = %land.lhs.true.i.i138.for.inc.i.i141_crit_edge, %for.body.i.i136.for.inc.i.i141_crit_edge
  %181 = ptrtoint ptr %.pn22.i.i133 to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pn.i.i139 = load ptr, ptr %.pn22.i.i133, align 4
  %cmp.not.i.i140 = icmp eq ptr %.pn.i.i139, %ports.i.i130
  br i1 %cmp.not.i.i140, label %for.inc.i.i141.dsa_to_port.exit.i146_crit_edge, label %for.inc.i.i141.for.body.i.i136_crit_edge

for.inc.i.i141.for.body.i.i136_crit_edge:         ; preds = %for.inc.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i136

for.inc.i.i141.dsa_to_port.exit.i146_crit_edge:   ; preds = %for.inc.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i146

cleanup.split.loop.exit18.i.i143:                 ; preds = %land.lhs.true.i.i138
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i142 = getelementptr i8, ptr %.pn22.i.i133, i32 -448
  br label %dsa_to_port.exit.i146

dsa_to_port.exit.i146:                            ; preds = %cleanup.split.loop.exit18.i.i143, %for.inc.i.i141.dsa_to_port.exit.i146_crit_edge, %dsa_towards_port.exit.i.dsa_to_port.exit.i146_crit_edge
  %retval.0.i11.i = phi ptr [ %dp.0.le.i.i142, %cleanup.split.loop.exit18.i.i143 ], [ null, %dsa_towards_port.exit.i.dsa_to_port.exit.i146_crit_edge ], [ null, %for.inc.i.i141.dsa_to_port.exit.i146_crit_edge ]
  %ops.i144 = getelementptr i8, ptr %nb, i32 24
  %182 = ptrtoint ptr %ops.i144 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i144, align 4
  %port_fdb_add.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %183, i32 0, i32 54
  %184 = ptrtoint ptr %port_fdb_add.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %port_fdb_add.i, align 4
  %tobool.not.i145 = icmp eq ptr %185, null
  br i1 %tobool.not.i145, label %dsa_to_port.exit.i146.do.body_crit_edge, label %if.end.i147

dsa_to_port.exit.i146.do.body_crit_edge:          ; preds = %dsa_to_port.exit.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i147:                                      ; preds = %dsa_to_port.exit.i146
  call void @__sanitizer_cov_trace_pc() #8
  %addr.i = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %186 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %addr.i, align 4
  %vid.i = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  %188 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %vid.i, align 4
  %call3.i = tail call fastcc i32 @dsa_port_do_fdb_add(ptr noundef %retval.0.i11.i, ptr noundef %187, i16 noundef zeroext %189) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %190 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %info, align 4
  %port1.i149 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %index.i.i150 = getelementptr i8, ptr %nb, i32 -8
  %192 = ptrtoint ptr %index.i.i150 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %index.i.i150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %191)
  %cmp.i.i151 = icmp eq i32 %193, %191
  br i1 %cmp.i.i151, label %sw.bb7.dsa_towards_port.exit.i180_crit_edge, label %if.else.i.i156

sw.bb7.dsa_towards_port.exit.i180_crit_edge:      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_towards_port.exit.i180

if.else.i.i156:                                   ; preds = %sw.bb7
  %dst1.i.i.i152 = getelementptr i8, ptr %nb, i32 -12
  %194 = ptrtoint ptr %dst1.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dst1.i.i.i152, align 4
  %rtable.i.i.i153 = getelementptr inbounds %struct.dsa_switch_tree, ptr %195, i32 0, i32 10
  %196 = ptrtoint ptr %rtable.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pn22.i.i.i154 = load ptr, ptr %rtable.i.i.i153, align 4
  %cmp.not23.i.i.i155 = icmp eq ptr %.pn22.i.i.i154, %rtable.i.i.i153
  br i1 %cmp.not23.i.i.i155, label %if.else.i.i156.for.end.i.i.i173_crit_edge, label %if.else.i.i156.for.body.i.i.i161_crit_edge

if.else.i.i156.for.body.i.i.i161_crit_edge:       ; preds = %if.else.i.i156
  br label %for.body.i.i.i161

if.else.i.i156.for.end.i.i.i173_crit_edge:        ; preds = %if.else.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i173

for.body.i.i.i161:                                ; preds = %for.inc.i.i.i171.for.body.i.i.i161_crit_edge, %if.else.i.i156.for.body.i.i.i161_crit_edge
  %.pn24.i.i.i157 = phi ptr [ %.pn.i.i.i169, %for.inc.i.i.i171.for.body.i.i.i161_crit_edge ], [ %.pn22.i.i.i154, %if.else.i.i156.for.body.i.i.i161_crit_edge ]
  %dl.0.i.i.i158 = getelementptr i8, ptr %.pn24.i.i.i157, i32 -8
  %197 = ptrtoint ptr %dl.0.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dl.0.i.i.i158, align 4
  %ds3.i.i.i159 = getelementptr inbounds %struct.dsa_port, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %ds3.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ds3.i.i.i159, align 4
  %cmp4.i.i.i160 = icmp eq ptr %200, %add.ptr
  br i1 %cmp4.i.i.i160, label %land.lhs.true.i.i.i166, label %for.body.i.i.i161.for.inc.i.i.i171_crit_edge

for.body.i.i.i161.for.inc.i.i.i171_crit_edge:     ; preds = %for.body.i.i.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i171

land.lhs.true.i.i.i166:                           ; preds = %for.body.i.i.i161
  %link_dp.i.i.i162 = getelementptr i8, ptr %.pn24.i.i.i157, i32 -4
  %201 = ptrtoint ptr %link_dp.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %link_dp.i.i.i162, align 4
  %ds5.i.i.i163 = getelementptr inbounds %struct.dsa_port, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %ds5.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ds5.i.i.i163, align 4
  %index.i.i.i164 = getelementptr inbounds %struct.dsa_switch, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %index.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %index.i.i.i164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %191)
  %cmp6.i.i.i165 = icmp eq i32 %206, %191
  br i1 %cmp6.i.i.i165, label %if.then.i.i.i168, label %land.lhs.true.i.i.i166.for.inc.i.i.i171_crit_edge

land.lhs.true.i.i.i166.for.inc.i.i.i171_crit_edge: ; preds = %land.lhs.true.i.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i171

if.then.i.i.i168:                                 ; preds = %land.lhs.true.i.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i.i167 = getelementptr inbounds %struct.dsa_port, ptr %198, i32 0, i32 5
  br label %dsa_towards_port.exit.i180

for.inc.i.i.i171:                                 ; preds = %land.lhs.true.i.i.i166.for.inc.i.i.i171_crit_edge, %for.body.i.i.i161.for.inc.i.i.i171_crit_edge
  %207 = ptrtoint ptr %.pn24.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pn.i.i.i169 = load ptr, ptr %.pn24.i.i.i157, align 4
  %cmp.not.i.i.i170 = icmp eq ptr %.pn.i.i.i169, %rtable.i.i.i153
  br i1 %cmp.not.i.i.i170, label %for.inc.i.i.i171.for.end.i.i.i173_crit_edge, label %for.inc.i.i.i171.for.body.i.i.i161_crit_edge

for.inc.i.i.i171.for.body.i.i.i161_crit_edge:     ; preds = %for.inc.i.i.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i161

for.inc.i.i.i171.for.end.i.i.i173_crit_edge:      ; preds = %for.inc.i.i.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i173

for.end.i.i.i173:                                 ; preds = %for.inc.i.i.i171.for.end.i.i.i173_crit_edge, %if.else.i.i156.for.end.i.i.i173_crit_edge
  %num_ports.i.i.i172 = getelementptr i8, ptr %nb, i32 64
  br label %dsa_towards_port.exit.i180

dsa_towards_port.exit.i180:                       ; preds = %for.end.i.i.i173, %if.then.i.i.i168, %sw.bb7.dsa_towards_port.exit.i180_crit_edge
  %retval.0.i.in.i174 = phi ptr [ %port1.i149, %sw.bb7.dsa_towards_port.exit.i180_crit_edge ], [ %index8.i.i.i167, %if.then.i.i.i168 ], [ %num_ports.i.i.i172, %for.end.i.i.i173 ]
  %208 = ptrtoint ptr %retval.0.i.in.i174 to i32
  call void @__asan_load4_noabort(i32 %208)
  %retval.0.i.i175 = load i32, ptr %retval.0.i.in.i174, align 4
  %dst1.i.i176 = getelementptr i8, ptr %nb, i32 -12
  %209 = ptrtoint ptr %dst1.i.i176 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dst1.i.i176, align 4
  %ports.i.i177 = getelementptr inbounds %struct.dsa_switch_tree, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %ports.i.i177 to i32
  call void @__asan_load4_noabort(i32 %211)
  %.pn20.i.i178 = load ptr, ptr %ports.i.i177, align 4
  %cmp.not21.i.i179 = icmp eq ptr %.pn20.i.i178, %ports.i.i177
  br i1 %cmp.not21.i.i179, label %dsa_towards_port.exit.i180.dsa_to_port.exit.i196_crit_edge, label %dsa_towards_port.exit.i180.for.body.i.i184_crit_edge

dsa_towards_port.exit.i180.for.body.i.i184_crit_edge: ; preds = %dsa_towards_port.exit.i180
  br label %for.body.i.i184

dsa_towards_port.exit.i180.dsa_to_port.exit.i196_crit_edge: ; preds = %dsa_towards_port.exit.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i196

for.body.i.i184:                                  ; preds = %for.inc.i.i190.for.body.i.i184_crit_edge, %dsa_towards_port.exit.i180.for.body.i.i184_crit_edge
  %.pn22.i.i181 = phi ptr [ %.pn.i.i188, %for.inc.i.i190.for.body.i.i184_crit_edge ], [ %.pn20.i.i178, %dsa_towards_port.exit.i180.for.body.i.i184_crit_edge ]
  %ds3.i.i182 = getelementptr i8, ptr %.pn22.i.i181, i32 -432
  %212 = ptrtoint ptr %ds3.i.i182 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ds3.i.i182, align 4
  %cmp4.i.i183 = icmp eq ptr %213, %add.ptr
  br i1 %cmp4.i.i183, label %land.lhs.true.i.i187, label %for.body.i.i184.for.inc.i.i190_crit_edge

for.body.i.i184.for.inc.i.i190_crit_edge:         ; preds = %for.body.i.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i190

land.lhs.true.i.i187:                             ; preds = %for.body.i.i184
  %index.i10.i185 = getelementptr i8, ptr %.pn22.i.i181, i32 -428
  %214 = ptrtoint ptr %index.i10.i185 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %index.i10.i185, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %retval.0.i.i175)
  %cmp5.i.i186 = icmp eq i32 %215, %retval.0.i.i175
  br i1 %cmp5.i.i186, label %cleanup.split.loop.exit18.i.i192, label %land.lhs.true.i.i187.for.inc.i.i190_crit_edge

land.lhs.true.i.i187.for.inc.i.i190_crit_edge:    ; preds = %land.lhs.true.i.i187
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i190

for.inc.i.i190:                                   ; preds = %land.lhs.true.i.i187.for.inc.i.i190_crit_edge, %for.body.i.i184.for.inc.i.i190_crit_edge
  %216 = ptrtoint ptr %.pn22.i.i181 to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pn.i.i188 = load ptr, ptr %.pn22.i.i181, align 4
  %cmp.not.i.i189 = icmp eq ptr %.pn.i.i188, %ports.i.i177
  br i1 %cmp.not.i.i189, label %for.inc.i.i190.dsa_to_port.exit.i196_crit_edge, label %for.inc.i.i190.for.body.i.i184_crit_edge

for.inc.i.i190.for.body.i.i184_crit_edge:         ; preds = %for.inc.i.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i184

for.inc.i.i190.dsa_to_port.exit.i196_crit_edge:   ; preds = %for.inc.i.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i196

cleanup.split.loop.exit18.i.i192:                 ; preds = %land.lhs.true.i.i187
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i191 = getelementptr i8, ptr %.pn22.i.i181, i32 -448
  br label %dsa_to_port.exit.i196

dsa_to_port.exit.i196:                            ; preds = %cleanup.split.loop.exit18.i.i192, %for.inc.i.i190.dsa_to_port.exit.i196_crit_edge, %dsa_towards_port.exit.i180.dsa_to_port.exit.i196_crit_edge
  %retval.0.i11.i193 = phi ptr [ %dp.0.le.i.i191, %cleanup.split.loop.exit18.i.i192 ], [ null, %dsa_towards_port.exit.i180.dsa_to_port.exit.i196_crit_edge ], [ null, %for.inc.i.i190.dsa_to_port.exit.i196_crit_edge ]
  %ops.i194 = getelementptr i8, ptr %nb, i32 24
  %217 = ptrtoint ptr %ops.i194 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ops.i194, align 4
  %port_fdb_del.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %218, i32 0, i32 55
  %219 = ptrtoint ptr %port_fdb_del.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %port_fdb_del.i, align 4
  %tobool.not.i195 = icmp eq ptr %220, null
  br i1 %tobool.not.i195, label %dsa_to_port.exit.i196.do.body_crit_edge, label %if.end.i200

dsa_to_port.exit.i196.do.body_crit_edge:          ; preds = %dsa_to_port.exit.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i200:                                      ; preds = %dsa_to_port.exit.i196
  call void @__sanitizer_cov_trace_pc() #8
  %addr.i197 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %221 = ptrtoint ptr %addr.i197 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %addr.i197, align 4
  %vid.i198 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  %223 = ptrtoint ptr %vid.i198 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %vid.i198, align 4
  %call3.i199 = tail call fastcc i32 @dsa_port_do_fdb_del(ptr noundef %retval.0.i11.i193, ptr noundef %222, i16 noundef zeroext %224) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %ops.i202 = getelementptr i8, ptr %nb, i32 24
  %225 = ptrtoint ptr %ops.i202 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ops.i202, align 4
  %port_fdb_add.i203 = getelementptr inbounds %struct.dsa_switch_ops, ptr %226, i32 0, i32 54
  %227 = ptrtoint ptr %port_fdb_add.i203 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %port_fdb_add.i203, align 4
  %tobool.not.i204 = icmp eq ptr %228, null
  br i1 %tobool.not.i204, label %sw.bb9.do.body_crit_edge, label %if.end.i207

sw.bb9.do.body_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i207:                                      ; preds = %sw.bb9
  %dst.i = getelementptr i8, ptr %nb, i32 -12
  %229 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dst.i, align 4
  %ports.i205 = getelementptr inbounds %struct.dsa_switch_tree, ptr %230, i32 0, i32 1
  %addr.i206 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %231 = ptrtoint ptr %ports.i205 to i32
  call void @__asan_load4_noabort(i32 %231)
  %.pn30.i = load ptr, ptr %ports.i205, align 4
  %cmp.not33.i = icmp eq ptr %.pn30.i, %ports.i205
  br i1 %cmp.not33.i, label %if.end.i207.if.end49.thread_crit_edge, label %for.body.lr.ph.i

if.end.i207.if.end49.thread_crit_edge:            ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i207
  %port.i208 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %vid.i209 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i213.for.body.i210_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn30.i, %for.body.lr.ph.i ], [ %.pn.i212, %for.inc.i213.for.body.i210_crit_edge ]
  %dp.035.i = getelementptr i8, ptr %.pn34.i, i32 -448
  %ds3.i = getelementptr i8, ptr %.pn34.i, i32 -432
  %232 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %233, %add.ptr
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i210.for.inc.i213_crit_edge

for.body.i210.for.inc.i213_crit_edge:             ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i213

if.then5.i:                                       ; preds = %for.body.i210
  %234 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %info, align 4
  %236 = ptrtoint ptr %port.i208 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %port.i208, align 4
  %call.i211 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %dp.035.i, i32 noundef %235, i32 noundef %237) #6
  br i1 %call.i211, label %if.then6.i, label %if.then5.i.for.inc.i213_crit_edge

if.then5.i.for.inc.i213_crit_edge:                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i213

if.then6.i:                                       ; preds = %if.then5.i
  %238 = ptrtoint ptr %addr.i206 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %addr.i206, align 4
  %240 = ptrtoint ptr %vid.i209 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %vid.i209, align 4
  %call7.i = tail call fastcc i32 @dsa_port_do_fdb_add(ptr noundef %dp.035.i, ptr noundef %239, i16 noundef zeroext %241) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.for.inc.i213_crit_edge, label %if.then6.i.do.body_crit_edge

if.then6.i.do.body_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6.i.for.inc.i213_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i213

for.inc.i213:                                     ; preds = %if.then6.i.for.inc.i213_crit_edge, %if.then5.i.for.inc.i213_crit_edge, %for.body.i210.for.inc.i213_crit_edge
  %242 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %.pn.i212 = load ptr, ptr %.pn34.i, align 4
  %243 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dst.i, align 4
  %ports2.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %244, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %.pn.i212, %ports2.i
  br i1 %cmp.not.i, label %for.inc.i213.if.end49.thread_crit_edge, label %for.inc.i213.for.body.i210_crit_edge

for.inc.i213.for.body.i210_crit_edge:             ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i210

for.inc.i213.if.end49.thread_crit_edge:           ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb11:                                          ; preds = %entry
  %ops.i215 = getelementptr i8, ptr %nb, i32 24
  %245 = ptrtoint ptr %ops.i215 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ops.i215, align 4
  %port_fdb_del.i216 = getelementptr inbounds %struct.dsa_switch_ops, ptr %246, i32 0, i32 55
  %247 = ptrtoint ptr %port_fdb_del.i216 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %port_fdb_del.i216, align 4
  %tobool.not.i217 = icmp eq ptr %248, null
  br i1 %tobool.not.i217, label %sw.bb11.do.body_crit_edge, label %if.end.i223

sw.bb11.do.body_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i223:                                      ; preds = %sw.bb11
  %dst.i218 = getelementptr i8, ptr %nb, i32 -12
  %249 = ptrtoint ptr %dst.i218 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dst.i218, align 4
  %ports.i219 = getelementptr inbounds %struct.dsa_switch_tree, ptr %250, i32 0, i32 1
  %addr.i220 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 2
  %251 = ptrtoint ptr %ports.i219 to i32
  call void @__asan_load4_noabort(i32 %251)
  %.pn30.i221 = load ptr, ptr %ports.i219, align 4
  %cmp.not33.i222 = icmp eq ptr %.pn30.i221, %ports.i219
  br i1 %cmp.not33.i222, label %if.end.i223.if.end49.thread_crit_edge, label %for.body.lr.ph.i226

if.end.i223.if.end49.thread_crit_edge:            ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.lr.ph.i226:                              ; preds = %if.end.i223
  %port.i224 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 1
  %vid.i225 = getelementptr inbounds %struct.dsa_notifier_fdb_info, ptr %info, i32 0, i32 3
  br label %for.body.i231

for.body.i231:                                    ; preds = %for.inc.i240.for.body.i231_crit_edge, %for.body.lr.ph.i226
  %.pn34.i227 = phi ptr [ %.pn30.i221, %for.body.lr.ph.i226 ], [ %.pn.i237, %for.inc.i240.for.body.i231_crit_edge ]
  %dp.035.i228 = getelementptr i8, ptr %.pn34.i227, i32 -448
  %ds3.i229 = getelementptr i8, ptr %.pn34.i227, i32 -432
  %252 = ptrtoint ptr %ds3.i229 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ds3.i229, align 4
  %cmp4.i230 = icmp eq ptr %253, %add.ptr
  br i1 %cmp4.i230, label %if.then5.i233, label %for.body.i231.for.inc.i240_crit_edge

for.body.i231.for.inc.i240_crit_edge:             ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i240

if.then5.i233:                                    ; preds = %for.body.i231
  %254 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %info, align 4
  %256 = ptrtoint ptr %port.i224 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %port.i224, align 4
  %call.i232 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %dp.035.i228, i32 noundef %255, i32 noundef %257) #6
  br i1 %call.i232, label %if.then6.i236, label %if.then5.i233.for.inc.i240_crit_edge

if.then5.i233.for.inc.i240_crit_edge:             ; preds = %if.then5.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i240

if.then6.i236:                                    ; preds = %if.then5.i233
  %258 = ptrtoint ptr %addr.i220 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %addr.i220, align 4
  %260 = ptrtoint ptr %vid.i225 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %vid.i225, align 4
  %call7.i234 = tail call fastcc i32 @dsa_port_do_fdb_del(ptr noundef %dp.035.i228, ptr noundef %259, i16 noundef zeroext %261) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i234)
  %tobool8.not.i235 = icmp eq i32 %call7.i234, 0
  br i1 %tobool8.not.i235, label %if.then6.i236.for.inc.i240_crit_edge, label %if.then6.i236.do.body_crit_edge

if.then6.i236.do.body_crit_edge:                  ; preds = %if.then6.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6.i236.for.inc.i240_crit_edge:             ; preds = %if.then6.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i240

for.inc.i240:                                     ; preds = %if.then6.i236.for.inc.i240_crit_edge, %if.then5.i233.for.inc.i240_crit_edge, %for.body.i231.for.inc.i240_crit_edge
  %262 = ptrtoint ptr %.pn34.i227 to i32
  call void @__asan_load4_noabort(i32 %262)
  %.pn.i237 = load ptr, ptr %.pn34.i227, align 4
  %263 = ptrtoint ptr %dst.i218 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dst.i218, align 4
  %ports2.i238 = getelementptr inbounds %struct.dsa_switch_tree, ptr %264, i32 0, i32 1
  %cmp.not.i239 = icmp eq ptr %.pn.i237, %ports2.i238
  br i1 %cmp.not.i239, label %for.inc.i240.if.end49.thread_crit_edge, label %for.inc.i240.for.body.i231_crit_edge

for.inc.i240.for.body.i231_crit_edge:             ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i231

for.inc.i240.if.end49.thread_crit_edge:           ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb13:                                          ; preds = %entry
  %index.i242 = getelementptr i8, ptr %nb, i32 -8
  %265 = ptrtoint ptr %index.i242 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %index.i242, align 4
  %sw_index.i243 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 1
  %267 = ptrtoint ptr %sw_index.i243 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %sw_index.i243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %268)
  %cmp.i244 = icmp eq i32 %266, %268
  %ops.i245 = getelementptr i8, ptr %nb, i32 24
  %269 = ptrtoint ptr %ops.i245 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i245, align 4
  br i1 %cmp.i244, label %land.lhs.true.i247, label %land.lhs.true6.i

land.lhs.true.i247:                               ; preds = %sw.bb13
  %port_lag_change.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %270, i32 0, i32 93
  %271 = ptrtoint ptr %port_lag_change.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %port_lag_change.i, align 4
  %tobool.not.i246 = icmp eq ptr %272, null
  br i1 %tobool.not.i246, label %land.lhs.true.i247.if.end49.thread_crit_edge, label %if.then.i250

land.lhs.true.i247.if.end49.thread_crit_edge:     ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

if.then.i250:                                     ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #8
  %port.i248 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %273 = ptrtoint ptr %port.i248 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %port.i248, align 4
  %call.i249 = tail call i32 %272(ptr noundef %add.ptr, i32 noundef %274) #6
  br label %sw.epilog

land.lhs.true6.i:                                 ; preds = %sw.bb13
  %crosschip_lag_change.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %270, i32 0, i32 71
  %275 = ptrtoint ptr %crosschip_lag_change.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %crosschip_lag_change.i, align 4
  %tobool8.not.i251 = icmp eq ptr %276, null
  br i1 %tobool8.not.i251, label %land.lhs.true6.i.if.end49.thread_crit_edge, label %if.then9.i

land.lhs.true6.i.if.end49.thread_crit_edge:       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

if.then9.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  %port13.i = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %277 = ptrtoint ptr %port13.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %port13.i, align 4
  %call14.i = tail call i32 %276(ptr noundef %add.ptr, i32 noundef %268, i32 noundef %278) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %index.i253 = getelementptr i8, ptr %nb, i32 -8
  %279 = ptrtoint ptr %index.i253 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %index.i253, align 4
  %sw_index.i254 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 1
  %281 = ptrtoint ptr %sw_index.i254 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %sw_index.i254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %282)
  %cmp.i255 = icmp eq i32 %280, %282
  %ops.i256 = getelementptr i8, ptr %nb, i32 24
  %283 = ptrtoint ptr %ops.i256 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ops.i256, align 4
  br i1 %cmp.i255, label %land.lhs.true.i258, label %land.lhs.true7.i

land.lhs.true.i258:                               ; preds = %sw.bb15
  %port_lag_join.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %284, i32 0, i32 94
  %285 = ptrtoint ptr %port_lag_join.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %port_lag_join.i, align 4
  %tobool.not.i257 = icmp eq ptr %286, null
  br i1 %tobool.not.i257, label %land.lhs.true.i258.do.body_crit_edge, label %if.then.i261

land.lhs.true.i258.do.body_crit_edge:             ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then.i261:                                     ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #8
  %port.i259 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %287 = ptrtoint ptr %port.i259 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %port.i259, align 4
  %289 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %info, align 4
  %info3.i = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 3
  %291 = ptrtoint ptr %info3.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %info3.i, align 4
  %call.i260 = tail call i32 %286(ptr noundef %add.ptr, i32 noundef %288, ptr noundef %290, ptr noundef %292) #6
  br label %sw.epilog

land.lhs.true7.i:                                 ; preds = %sw.bb15
  %crosschip_lag_join.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %284, i32 0, i32 72
  %293 = ptrtoint ptr %crosschip_lag_join.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %crosschip_lag_join.i, align 4
  %tobool9.not.i262 = icmp eq ptr %294, null
  br i1 %tobool9.not.i262, label %land.lhs.true7.i.do.body_crit_edge, label %if.then10.i263

land.lhs.true7.i.do.body_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then10.i263:                                   ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  %port14.i = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %295 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %port14.i, align 4
  %297 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %info, align 4
  %info16.i = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 3
  %299 = ptrtoint ptr %info16.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %info16.i, align 4
  %call17.i = tail call i32 %294(ptr noundef %add.ptr, i32 noundef %282, i32 noundef %296, ptr noundef %298, ptr noundef %300) #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %index.i265 = getelementptr i8, ptr %nb, i32 -8
  %301 = ptrtoint ptr %index.i265 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %index.i265, align 4
  %sw_index.i266 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 1
  %303 = ptrtoint ptr %sw_index.i266 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %sw_index.i266, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %302, i32 %304)
  %cmp.i267 = icmp eq i32 %302, %304
  %ops.i268 = getelementptr i8, ptr %nb, i32 24
  %305 = ptrtoint ptr %ops.i268 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %ops.i268, align 4
  br i1 %cmp.i267, label %land.lhs.true.i270, label %land.lhs.true6.i275

land.lhs.true.i270:                               ; preds = %sw.bb17
  %port_lag_leave.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %306, i32 0, i32 95
  %307 = ptrtoint ptr %port_lag_leave.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %port_lag_leave.i, align 4
  %tobool.not.i269 = icmp eq ptr %308, null
  br i1 %tobool.not.i269, label %land.lhs.true.i270.do.body_crit_edge, label %if.then.i273

land.lhs.true.i270.do.body_crit_edge:             ; preds = %land.lhs.true.i270
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then.i273:                                     ; preds = %land.lhs.true.i270
  call void @__sanitizer_cov_trace_pc() #8
  %port.i271 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %309 = ptrtoint ptr %port.i271 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %port.i271, align 4
  %311 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %info, align 4
  %call.i272 = tail call i32 %308(ptr noundef %add.ptr, i32 noundef %310, ptr noundef %312) #6
  br label %sw.epilog

land.lhs.true6.i275:                              ; preds = %sw.bb17
  %crosschip_lag_leave.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %306, i32 0, i32 73
  %313 = ptrtoint ptr %crosschip_lag_leave.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %crosschip_lag_leave.i, align 4
  %tobool8.not.i274 = icmp eq ptr %314, null
  br i1 %tobool8.not.i274, label %land.lhs.true6.i275.do.body_crit_edge, label %if.then9.i277

land.lhs.true6.i275.do.body_crit_edge:            ; preds = %land.lhs.true6.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then9.i277:                                    ; preds = %land.lhs.true6.i275
  call void @__sanitizer_cov_trace_pc() #8
  %port13.i276 = getelementptr inbounds %struct.dsa_notifier_lag_info, ptr %info, i32 0, i32 2
  %315 = ptrtoint ptr %port13.i276 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %port13.i276, align 4
  %317 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %info, align 4
  %call15.i = tail call i32 %314(ptr noundef %add.ptr, i32 noundef %304, i32 noundef %316, ptr noundef %318) #6
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %sw_index.i279 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %319 = ptrtoint ptr %sw_index.i279 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %sw_index.i279, align 4
  %port1.i280 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  %index.i.i281 = getelementptr i8, ptr %nb, i32 -8
  %321 = ptrtoint ptr %index.i.i281 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %index.i.i281, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %322, i32 %320)
  %cmp.i.i282 = icmp eq i32 %322, %320
  br i1 %cmp.i.i282, label %sw.bb19.dsa_towards_port.exit.i311_crit_edge, label %if.else.i.i287

sw.bb19.dsa_towards_port.exit.i311_crit_edge:     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_towards_port.exit.i311

if.else.i.i287:                                   ; preds = %sw.bb19
  %dst1.i.i.i283 = getelementptr i8, ptr %nb, i32 -12
  %323 = ptrtoint ptr %dst1.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dst1.i.i.i283, align 4
  %rtable.i.i.i284 = getelementptr inbounds %struct.dsa_switch_tree, ptr %324, i32 0, i32 10
  %325 = ptrtoint ptr %rtable.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %325)
  %.pn22.i.i.i285 = load ptr, ptr %rtable.i.i.i284, align 4
  %cmp.not23.i.i.i286 = icmp eq ptr %.pn22.i.i.i285, %rtable.i.i.i284
  br i1 %cmp.not23.i.i.i286, label %if.else.i.i287.for.end.i.i.i304_crit_edge, label %if.else.i.i287.for.body.i.i.i292_crit_edge

if.else.i.i287.for.body.i.i.i292_crit_edge:       ; preds = %if.else.i.i287
  br label %for.body.i.i.i292

if.else.i.i287.for.end.i.i.i304_crit_edge:        ; preds = %if.else.i.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i304

for.body.i.i.i292:                                ; preds = %for.inc.i.i.i302.for.body.i.i.i292_crit_edge, %if.else.i.i287.for.body.i.i.i292_crit_edge
  %.pn24.i.i.i288 = phi ptr [ %.pn.i.i.i300, %for.inc.i.i.i302.for.body.i.i.i292_crit_edge ], [ %.pn22.i.i.i285, %if.else.i.i287.for.body.i.i.i292_crit_edge ]
  %dl.0.i.i.i289 = getelementptr i8, ptr %.pn24.i.i.i288, i32 -8
  %326 = ptrtoint ptr %dl.0.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dl.0.i.i.i289, align 4
  %ds3.i.i.i290 = getelementptr inbounds %struct.dsa_port, ptr %327, i32 0, i32 4
  %328 = ptrtoint ptr %ds3.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ds3.i.i.i290, align 4
  %cmp4.i.i.i291 = icmp eq ptr %329, %add.ptr
  br i1 %cmp4.i.i.i291, label %land.lhs.true.i.i.i297, label %for.body.i.i.i292.for.inc.i.i.i302_crit_edge

for.body.i.i.i292.for.inc.i.i.i302_crit_edge:     ; preds = %for.body.i.i.i292
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i302

land.lhs.true.i.i.i297:                           ; preds = %for.body.i.i.i292
  %link_dp.i.i.i293 = getelementptr i8, ptr %.pn24.i.i.i288, i32 -4
  %330 = ptrtoint ptr %link_dp.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %link_dp.i.i.i293, align 4
  %ds5.i.i.i294 = getelementptr inbounds %struct.dsa_port, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %ds5.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ds5.i.i.i294, align 4
  %index.i.i.i295 = getelementptr inbounds %struct.dsa_switch, ptr %333, i32 0, i32 2
  %334 = ptrtoint ptr %index.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %index.i.i.i295, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %335, i32 %320)
  %cmp6.i.i.i296 = icmp eq i32 %335, %320
  br i1 %cmp6.i.i.i296, label %if.then.i.i.i299, label %land.lhs.true.i.i.i297.for.inc.i.i.i302_crit_edge

land.lhs.true.i.i.i297.for.inc.i.i.i302_crit_edge: ; preds = %land.lhs.true.i.i.i297
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i302

if.then.i.i.i299:                                 ; preds = %land.lhs.true.i.i.i297
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i.i298 = getelementptr inbounds %struct.dsa_port, ptr %327, i32 0, i32 5
  br label %dsa_towards_port.exit.i311

for.inc.i.i.i302:                                 ; preds = %land.lhs.true.i.i.i297.for.inc.i.i.i302_crit_edge, %for.body.i.i.i292.for.inc.i.i.i302_crit_edge
  %336 = ptrtoint ptr %.pn24.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %336)
  %.pn.i.i.i300 = load ptr, ptr %.pn24.i.i.i288, align 4
  %cmp.not.i.i.i301 = icmp eq ptr %.pn.i.i.i300, %rtable.i.i.i284
  br i1 %cmp.not.i.i.i301, label %for.inc.i.i.i302.for.end.i.i.i304_crit_edge, label %for.inc.i.i.i302.for.body.i.i.i292_crit_edge

for.inc.i.i.i302.for.body.i.i.i292_crit_edge:     ; preds = %for.inc.i.i.i302
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i292

for.inc.i.i.i302.for.end.i.i.i304_crit_edge:      ; preds = %for.inc.i.i.i302
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i304

for.end.i.i.i304:                                 ; preds = %for.inc.i.i.i302.for.end.i.i.i304_crit_edge, %if.else.i.i287.for.end.i.i.i304_crit_edge
  %num_ports.i.i.i303 = getelementptr i8, ptr %nb, i32 64
  br label %dsa_towards_port.exit.i311

dsa_towards_port.exit.i311:                       ; preds = %for.end.i.i.i304, %if.then.i.i.i299, %sw.bb19.dsa_towards_port.exit.i311_crit_edge
  %retval.0.i.in.i305 = phi ptr [ %port1.i280, %sw.bb19.dsa_towards_port.exit.i311_crit_edge ], [ %index8.i.i.i298, %if.then.i.i.i299 ], [ %num_ports.i.i.i303, %for.end.i.i.i304 ]
  %337 = ptrtoint ptr %retval.0.i.in.i305 to i32
  call void @__asan_load4_noabort(i32 %337)
  %retval.0.i.i306 = load i32, ptr %retval.0.i.in.i305, align 4
  %dst1.i.i307 = getelementptr i8, ptr %nb, i32 -12
  %338 = ptrtoint ptr %dst1.i.i307 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dst1.i.i307, align 4
  %ports.i.i308 = getelementptr inbounds %struct.dsa_switch_tree, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %ports.i.i308 to i32
  call void @__asan_load4_noabort(i32 %340)
  %.pn20.i.i309 = load ptr, ptr %ports.i.i308, align 4
  %cmp.not21.i.i310 = icmp eq ptr %.pn20.i.i309, %ports.i.i308
  br i1 %cmp.not21.i.i310, label %dsa_towards_port.exit.i311.dsa_to_port.exit.i325_crit_edge, label %dsa_towards_port.exit.i311.for.body.i.i315_crit_edge

dsa_towards_port.exit.i311.for.body.i.i315_crit_edge: ; preds = %dsa_towards_port.exit.i311
  br label %for.body.i.i315

dsa_towards_port.exit.i311.dsa_to_port.exit.i325_crit_edge: ; preds = %dsa_towards_port.exit.i311
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i325

for.body.i.i315:                                  ; preds = %for.inc.i.i320.for.body.i.i315_crit_edge, %dsa_towards_port.exit.i311.for.body.i.i315_crit_edge
  %.pn22.i.i312 = phi ptr [ %.pn.i.i318, %for.inc.i.i320.for.body.i.i315_crit_edge ], [ %.pn20.i.i309, %dsa_towards_port.exit.i311.for.body.i.i315_crit_edge ]
  %ds3.i.i313 = getelementptr i8, ptr %.pn22.i.i312, i32 -432
  %341 = ptrtoint ptr %ds3.i.i313 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ds3.i.i313, align 4
  %cmp4.i.i314 = icmp eq ptr %342, %add.ptr
  br i1 %cmp4.i.i314, label %land.lhs.true.i.i317, label %for.body.i.i315.for.inc.i.i320_crit_edge

for.body.i.i315.for.inc.i.i320_crit_edge:         ; preds = %for.body.i.i315
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i320

land.lhs.true.i.i317:                             ; preds = %for.body.i.i315
  %index.i9.i = getelementptr i8, ptr %.pn22.i.i312, i32 -428
  %343 = ptrtoint ptr %index.i9.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %index.i9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %344, i32 %retval.0.i.i306)
  %cmp5.i.i316 = icmp eq i32 %344, %retval.0.i.i306
  br i1 %cmp5.i.i316, label %cleanup.split.loop.exit18.i.i322, label %land.lhs.true.i.i317.for.inc.i.i320_crit_edge

land.lhs.true.i.i317.for.inc.i.i320_crit_edge:    ; preds = %land.lhs.true.i.i317
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i320

for.inc.i.i320:                                   ; preds = %land.lhs.true.i.i317.for.inc.i.i320_crit_edge, %for.body.i.i315.for.inc.i.i320_crit_edge
  %345 = ptrtoint ptr %.pn22.i.i312 to i32
  call void @__asan_load4_noabort(i32 %345)
  %.pn.i.i318 = load ptr, ptr %.pn22.i.i312, align 4
  %cmp.not.i.i319 = icmp eq ptr %.pn.i.i318, %ports.i.i308
  br i1 %cmp.not.i.i319, label %for.inc.i.i320.dsa_to_port.exit.i325_crit_edge, label %for.inc.i.i320.for.body.i.i315_crit_edge

for.inc.i.i320.for.body.i.i315_crit_edge:         ; preds = %for.inc.i.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i315

for.inc.i.i320.dsa_to_port.exit.i325_crit_edge:   ; preds = %for.inc.i.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i325

cleanup.split.loop.exit18.i.i322:                 ; preds = %land.lhs.true.i.i317
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i321 = getelementptr i8, ptr %.pn22.i.i312, i32 -448
  br label %dsa_to_port.exit.i325

dsa_to_port.exit.i325:                            ; preds = %cleanup.split.loop.exit18.i.i322, %for.inc.i.i320.dsa_to_port.exit.i325_crit_edge, %dsa_towards_port.exit.i311.dsa_to_port.exit.i325_crit_edge
  %retval.0.i10.i = phi ptr [ %dp.0.le.i.i321, %cleanup.split.loop.exit18.i.i322 ], [ null, %dsa_towards_port.exit.i311.dsa_to_port.exit.i325_crit_edge ], [ null, %for.inc.i.i320.dsa_to_port.exit.i325_crit_edge ]
  %ops.i323 = getelementptr i8, ptr %nb, i32 24
  %346 = ptrtoint ptr %ops.i323 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %ops.i323, align 4
  %port_mdb_add.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %347, i32 0, i32 57
  %348 = ptrtoint ptr %port_mdb_add.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %port_mdb_add.i, align 4
  %tobool.not.i324 = icmp eq ptr %349, null
  br i1 %tobool.not.i324, label %dsa_to_port.exit.i325.do.body_crit_edge, label %if.end.i327

dsa_to_port.exit.i325.do.body_crit_edge:          ; preds = %dsa_to_port.exit.i325
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i327:                                      ; preds = %dsa_to_port.exit.i325
  call void @__sanitizer_cov_trace_pc() #8
  %350 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %info, align 4
  %call3.i326 = tail call fastcc i32 @dsa_port_do_mdb_add(ptr noundef %retval.0.i10.i, ptr noundef %351) #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %sw_index.i329 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %352 = ptrtoint ptr %sw_index.i329 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %sw_index.i329, align 4
  %port1.i330 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  %index.i.i331 = getelementptr i8, ptr %nb, i32 -8
  %354 = ptrtoint ptr %index.i.i331 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %index.i.i331, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %355, i32 %353)
  %cmp.i.i332 = icmp eq i32 %355, %353
  br i1 %cmp.i.i332, label %sw.bb21.dsa_towards_port.exit.i361_crit_edge, label %if.else.i.i337

sw.bb21.dsa_towards_port.exit.i361_crit_edge:     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_towards_port.exit.i361

if.else.i.i337:                                   ; preds = %sw.bb21
  %dst1.i.i.i333 = getelementptr i8, ptr %nb, i32 -12
  %356 = ptrtoint ptr %dst1.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dst1.i.i.i333, align 4
  %rtable.i.i.i334 = getelementptr inbounds %struct.dsa_switch_tree, ptr %357, i32 0, i32 10
  %358 = ptrtoint ptr %rtable.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %358)
  %.pn22.i.i.i335 = load ptr, ptr %rtable.i.i.i334, align 4
  %cmp.not23.i.i.i336 = icmp eq ptr %.pn22.i.i.i335, %rtable.i.i.i334
  br i1 %cmp.not23.i.i.i336, label %if.else.i.i337.for.end.i.i.i354_crit_edge, label %if.else.i.i337.for.body.i.i.i342_crit_edge

if.else.i.i337.for.body.i.i.i342_crit_edge:       ; preds = %if.else.i.i337
  br label %for.body.i.i.i342

if.else.i.i337.for.end.i.i.i354_crit_edge:        ; preds = %if.else.i.i337
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i354

for.body.i.i.i342:                                ; preds = %for.inc.i.i.i352.for.body.i.i.i342_crit_edge, %if.else.i.i337.for.body.i.i.i342_crit_edge
  %.pn24.i.i.i338 = phi ptr [ %.pn.i.i.i350, %for.inc.i.i.i352.for.body.i.i.i342_crit_edge ], [ %.pn22.i.i.i335, %if.else.i.i337.for.body.i.i.i342_crit_edge ]
  %dl.0.i.i.i339 = getelementptr i8, ptr %.pn24.i.i.i338, i32 -8
  %359 = ptrtoint ptr %dl.0.i.i.i339 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dl.0.i.i.i339, align 4
  %ds3.i.i.i340 = getelementptr inbounds %struct.dsa_port, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %ds3.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ds3.i.i.i340, align 4
  %cmp4.i.i.i341 = icmp eq ptr %362, %add.ptr
  br i1 %cmp4.i.i.i341, label %land.lhs.true.i.i.i347, label %for.body.i.i.i342.for.inc.i.i.i352_crit_edge

for.body.i.i.i342.for.inc.i.i.i352_crit_edge:     ; preds = %for.body.i.i.i342
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i352

land.lhs.true.i.i.i347:                           ; preds = %for.body.i.i.i342
  %link_dp.i.i.i343 = getelementptr i8, ptr %.pn24.i.i.i338, i32 -4
  %363 = ptrtoint ptr %link_dp.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %link_dp.i.i.i343, align 4
  %ds5.i.i.i344 = getelementptr inbounds %struct.dsa_port, ptr %364, i32 0, i32 4
  %365 = ptrtoint ptr %ds5.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %ds5.i.i.i344, align 4
  %index.i.i.i345 = getelementptr inbounds %struct.dsa_switch, ptr %366, i32 0, i32 2
  %367 = ptrtoint ptr %index.i.i.i345 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %index.i.i.i345, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %368, i32 %353)
  %cmp6.i.i.i346 = icmp eq i32 %368, %353
  br i1 %cmp6.i.i.i346, label %if.then.i.i.i349, label %land.lhs.true.i.i.i347.for.inc.i.i.i352_crit_edge

land.lhs.true.i.i.i347.for.inc.i.i.i352_crit_edge: ; preds = %land.lhs.true.i.i.i347
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i352

if.then.i.i.i349:                                 ; preds = %land.lhs.true.i.i.i347
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i.i348 = getelementptr inbounds %struct.dsa_port, ptr %360, i32 0, i32 5
  br label %dsa_towards_port.exit.i361

for.inc.i.i.i352:                                 ; preds = %land.lhs.true.i.i.i347.for.inc.i.i.i352_crit_edge, %for.body.i.i.i342.for.inc.i.i.i352_crit_edge
  %369 = ptrtoint ptr %.pn24.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %369)
  %.pn.i.i.i350 = load ptr, ptr %.pn24.i.i.i338, align 4
  %cmp.not.i.i.i351 = icmp eq ptr %.pn.i.i.i350, %rtable.i.i.i334
  br i1 %cmp.not.i.i.i351, label %for.inc.i.i.i352.for.end.i.i.i354_crit_edge, label %for.inc.i.i.i352.for.body.i.i.i342_crit_edge

for.inc.i.i.i352.for.body.i.i.i342_crit_edge:     ; preds = %for.inc.i.i.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i342

for.inc.i.i.i352.for.end.i.i.i354_crit_edge:      ; preds = %for.inc.i.i.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i354

for.end.i.i.i354:                                 ; preds = %for.inc.i.i.i352.for.end.i.i.i354_crit_edge, %if.else.i.i337.for.end.i.i.i354_crit_edge
  %num_ports.i.i.i353 = getelementptr i8, ptr %nb, i32 64
  br label %dsa_towards_port.exit.i361

dsa_towards_port.exit.i361:                       ; preds = %for.end.i.i.i354, %if.then.i.i.i349, %sw.bb21.dsa_towards_port.exit.i361_crit_edge
  %retval.0.i.in.i355 = phi ptr [ %port1.i330, %sw.bb21.dsa_towards_port.exit.i361_crit_edge ], [ %index8.i.i.i348, %if.then.i.i.i349 ], [ %num_ports.i.i.i353, %for.end.i.i.i354 ]
  %370 = ptrtoint ptr %retval.0.i.in.i355 to i32
  call void @__asan_load4_noabort(i32 %370)
  %retval.0.i.i356 = load i32, ptr %retval.0.i.in.i355, align 4
  %dst1.i.i357 = getelementptr i8, ptr %nb, i32 -12
  %371 = ptrtoint ptr %dst1.i.i357 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dst1.i.i357, align 4
  %ports.i.i358 = getelementptr inbounds %struct.dsa_switch_tree, ptr %372, i32 0, i32 1
  %373 = ptrtoint ptr %ports.i.i358 to i32
  call void @__asan_load4_noabort(i32 %373)
  %.pn20.i.i359 = load ptr, ptr %ports.i.i358, align 4
  %cmp.not21.i.i360 = icmp eq ptr %.pn20.i.i359, %ports.i.i358
  br i1 %cmp.not21.i.i360, label %dsa_towards_port.exit.i361.dsa_to_port.exit.i377_crit_edge, label %dsa_towards_port.exit.i361.for.body.i.i365_crit_edge

dsa_towards_port.exit.i361.for.body.i.i365_crit_edge: ; preds = %dsa_towards_port.exit.i361
  br label %for.body.i.i365

dsa_towards_port.exit.i361.dsa_to_port.exit.i377_crit_edge: ; preds = %dsa_towards_port.exit.i361
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i377

for.body.i.i365:                                  ; preds = %for.inc.i.i371.for.body.i.i365_crit_edge, %dsa_towards_port.exit.i361.for.body.i.i365_crit_edge
  %.pn22.i.i362 = phi ptr [ %.pn.i.i369, %for.inc.i.i371.for.body.i.i365_crit_edge ], [ %.pn20.i.i359, %dsa_towards_port.exit.i361.for.body.i.i365_crit_edge ]
  %ds3.i.i363 = getelementptr i8, ptr %.pn22.i.i362, i32 -432
  %374 = ptrtoint ptr %ds3.i.i363 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ds3.i.i363, align 4
  %cmp4.i.i364 = icmp eq ptr %375, %add.ptr
  br i1 %cmp4.i.i364, label %land.lhs.true.i.i368, label %for.body.i.i365.for.inc.i.i371_crit_edge

for.body.i.i365.for.inc.i.i371_crit_edge:         ; preds = %for.body.i.i365
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i371

land.lhs.true.i.i368:                             ; preds = %for.body.i.i365
  %index.i9.i366 = getelementptr i8, ptr %.pn22.i.i362, i32 -428
  %376 = ptrtoint ptr %index.i9.i366 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %index.i9.i366, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %377, i32 %retval.0.i.i356)
  %cmp5.i.i367 = icmp eq i32 %377, %retval.0.i.i356
  br i1 %cmp5.i.i367, label %cleanup.split.loop.exit18.i.i373, label %land.lhs.true.i.i368.for.inc.i.i371_crit_edge

land.lhs.true.i.i368.for.inc.i.i371_crit_edge:    ; preds = %land.lhs.true.i.i368
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i371

for.inc.i.i371:                                   ; preds = %land.lhs.true.i.i368.for.inc.i.i371_crit_edge, %for.body.i.i365.for.inc.i.i371_crit_edge
  %378 = ptrtoint ptr %.pn22.i.i362 to i32
  call void @__asan_load4_noabort(i32 %378)
  %.pn.i.i369 = load ptr, ptr %.pn22.i.i362, align 4
  %cmp.not.i.i370 = icmp eq ptr %.pn.i.i369, %ports.i.i358
  br i1 %cmp.not.i.i370, label %for.inc.i.i371.dsa_to_port.exit.i377_crit_edge, label %for.inc.i.i371.for.body.i.i365_crit_edge

for.inc.i.i371.for.body.i.i365_crit_edge:         ; preds = %for.inc.i.i371
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i365

for.inc.i.i371.dsa_to_port.exit.i377_crit_edge:   ; preds = %for.inc.i.i371
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i377

cleanup.split.loop.exit18.i.i373:                 ; preds = %land.lhs.true.i.i368
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i372 = getelementptr i8, ptr %.pn22.i.i362, i32 -448
  br label %dsa_to_port.exit.i377

dsa_to_port.exit.i377:                            ; preds = %cleanup.split.loop.exit18.i.i373, %for.inc.i.i371.dsa_to_port.exit.i377_crit_edge, %dsa_towards_port.exit.i361.dsa_to_port.exit.i377_crit_edge
  %retval.0.i10.i374 = phi ptr [ %dp.0.le.i.i372, %cleanup.split.loop.exit18.i.i373 ], [ null, %dsa_towards_port.exit.i361.dsa_to_port.exit.i377_crit_edge ], [ null, %for.inc.i.i371.dsa_to_port.exit.i377_crit_edge ]
  %ops.i375 = getelementptr i8, ptr %nb, i32 24
  %379 = ptrtoint ptr %ops.i375 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %ops.i375, align 4
  %port_mdb_del.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %380, i32 0, i32 58
  %381 = ptrtoint ptr %port_mdb_del.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %port_mdb_del.i, align 4
  %tobool.not.i376 = icmp eq ptr %382, null
  br i1 %tobool.not.i376, label %dsa_to_port.exit.i377.do.body_crit_edge, label %if.end.i379

dsa_to_port.exit.i377.do.body_crit_edge:          ; preds = %dsa_to_port.exit.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i379:                                      ; preds = %dsa_to_port.exit.i377
  call void @__sanitizer_cov_trace_pc() #8
  %383 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %info, align 4
  %call3.i378 = tail call fastcc i32 @dsa_port_do_mdb_del(ptr noundef %retval.0.i10.i374, ptr noundef %384) #6
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %ops.i381 = getelementptr i8, ptr %nb, i32 24
  %385 = ptrtoint ptr %ops.i381 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %ops.i381, align 4
  %port_mdb_add.i382 = getelementptr inbounds %struct.dsa_switch_ops, ptr %386, i32 0, i32 57
  %387 = ptrtoint ptr %port_mdb_add.i382 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %port_mdb_add.i382, align 4
  %tobool.not.i383 = icmp eq ptr %388, null
  br i1 %tobool.not.i383, label %sw.bb23.do.body_crit_edge, label %if.end.i386

sw.bb23.do.body_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i386:                                      ; preds = %sw.bb23
  %dst.i384 = getelementptr i8, ptr %nb, i32 -12
  %389 = ptrtoint ptr %dst.i384 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %dst.i384, align 4
  %ports.i385 = getelementptr inbounds %struct.dsa_switch_tree, ptr %390, i32 0, i32 1
  %391 = ptrtoint ptr %ports.i385 to i32
  call void @__asan_load4_noabort(i32 %391)
  %.pn29.i = load ptr, ptr %ports.i385, align 4
  %cmp.not32.i = icmp eq ptr %.pn29.i, %ports.i385
  br i1 %cmp.not32.i, label %if.end.i386.if.end49.thread_crit_edge, label %for.body.lr.ph.i389

if.end.i386.if.end49.thread_crit_edge:            ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.lr.ph.i389:                              ; preds = %if.end.i386
  %sw_index.i387 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %port.i388 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  br label %for.body.i392

for.body.i392:                                    ; preds = %for.inc.i401.for.body.i392_crit_edge, %for.body.lr.ph.i389
  %.pn33.i = phi ptr [ %.pn29.i, %for.body.lr.ph.i389 ], [ %.pn.i398, %for.inc.i401.for.body.i392_crit_edge ]
  %dp.034.i = getelementptr i8, ptr %.pn33.i, i32 -448
  %ds3.i390 = getelementptr i8, ptr %.pn33.i, i32 -432
  %392 = ptrtoint ptr %ds3.i390 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ds3.i390, align 4
  %cmp4.i391 = icmp eq ptr %393, %add.ptr
  br i1 %cmp4.i391, label %if.then5.i394, label %for.body.i392.for.inc.i401_crit_edge

for.body.i392.for.inc.i401_crit_edge:             ; preds = %for.body.i392
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i401

if.then5.i394:                                    ; preds = %for.body.i392
  %394 = ptrtoint ptr %sw_index.i387 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %sw_index.i387, align 4
  %396 = ptrtoint ptr %port.i388 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %port.i388, align 4
  %call.i393 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %dp.034.i, i32 noundef %395, i32 noundef %397) #6
  br i1 %call.i393, label %if.then6.i397, label %if.then5.i394.for.inc.i401_crit_edge

if.then5.i394.for.inc.i401_crit_edge:             ; preds = %if.then5.i394
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i401

if.then6.i397:                                    ; preds = %if.then5.i394
  %398 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %info, align 4
  %call7.i395 = tail call fastcc i32 @dsa_port_do_mdb_add(ptr noundef %dp.034.i, ptr noundef %399) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i395)
  %tobool8.not.i396 = icmp eq i32 %call7.i395, 0
  br i1 %tobool8.not.i396, label %if.then6.i397.for.inc.i401_crit_edge, label %if.then6.i397.do.body_crit_edge

if.then6.i397.do.body_crit_edge:                  ; preds = %if.then6.i397
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6.i397.for.inc.i401_crit_edge:             ; preds = %if.then6.i397
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i401

for.inc.i401:                                     ; preds = %if.then6.i397.for.inc.i401_crit_edge, %if.then5.i394.for.inc.i401_crit_edge, %for.body.i392.for.inc.i401_crit_edge
  %400 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %.pn.i398 = load ptr, ptr %.pn33.i, align 4
  %401 = ptrtoint ptr %dst.i384 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dst.i384, align 4
  %ports2.i399 = getelementptr inbounds %struct.dsa_switch_tree, ptr %402, i32 0, i32 1
  %cmp.not.i400 = icmp eq ptr %.pn.i398, %ports2.i399
  br i1 %cmp.not.i400, label %for.inc.i401.if.end49.thread_crit_edge, label %for.inc.i401.for.body.i392_crit_edge

for.inc.i401.for.body.i392_crit_edge:             ; preds = %for.inc.i401
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i392

for.inc.i401.if.end49.thread_crit_edge:           ; preds = %for.inc.i401
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb25:                                          ; preds = %entry
  %ops.i403 = getelementptr i8, ptr %nb, i32 24
  %403 = ptrtoint ptr %ops.i403 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %ops.i403, align 4
  %port_mdb_del.i404 = getelementptr inbounds %struct.dsa_switch_ops, ptr %404, i32 0, i32 58
  %405 = ptrtoint ptr %port_mdb_del.i404 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %port_mdb_del.i404, align 4
  %tobool.not.i405 = icmp eq ptr %406, null
  br i1 %tobool.not.i405, label %sw.bb25.do.body_crit_edge, label %if.end.i410

sw.bb25.do.body_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i410:                                      ; preds = %sw.bb25
  %dst.i406 = getelementptr i8, ptr %nb, i32 -12
  %407 = ptrtoint ptr %dst.i406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %dst.i406, align 4
  %ports.i407 = getelementptr inbounds %struct.dsa_switch_tree, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %ports.i407 to i32
  call void @__asan_load4_noabort(i32 %409)
  %.pn29.i408 = load ptr, ptr %ports.i407, align 4
  %cmp.not32.i409 = icmp eq ptr %.pn29.i408, %ports.i407
  br i1 %cmp.not32.i409, label %if.end.i410.if.end49.thread_crit_edge, label %for.body.lr.ph.i413

if.end.i410.if.end49.thread_crit_edge:            ; preds = %if.end.i410
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.lr.ph.i413:                              ; preds = %if.end.i410
  %sw_index.i411 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 1
  %port.i412 = getelementptr inbounds %struct.dsa_notifier_mdb_info, ptr %info, i32 0, i32 2
  br label %for.body.i418

for.body.i418:                                    ; preds = %for.inc.i427.for.body.i418_crit_edge, %for.body.lr.ph.i413
  %.pn33.i414 = phi ptr [ %.pn29.i408, %for.body.lr.ph.i413 ], [ %.pn.i424, %for.inc.i427.for.body.i418_crit_edge ]
  %dp.034.i415 = getelementptr i8, ptr %.pn33.i414, i32 -448
  %ds3.i416 = getelementptr i8, ptr %.pn33.i414, i32 -432
  %410 = ptrtoint ptr %ds3.i416 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ds3.i416, align 4
  %cmp4.i417 = icmp eq ptr %411, %add.ptr
  br i1 %cmp4.i417, label %if.then5.i420, label %for.body.i418.for.inc.i427_crit_edge

for.body.i418.for.inc.i427_crit_edge:             ; preds = %for.body.i418
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i427

if.then5.i420:                                    ; preds = %for.body.i418
  %412 = ptrtoint ptr %sw_index.i411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %sw_index.i411, align 4
  %414 = ptrtoint ptr %port.i412 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %port.i412, align 4
  %call.i419 = tail call fastcc zeroext i1 @dsa_port_host_address_match(ptr noundef %dp.034.i415, i32 noundef %413, i32 noundef %415) #6
  br i1 %call.i419, label %if.then6.i423, label %if.then5.i420.for.inc.i427_crit_edge

if.then5.i420.for.inc.i427_crit_edge:             ; preds = %if.then5.i420
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i427

if.then6.i423:                                    ; preds = %if.then5.i420
  %416 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %info, align 4
  %call7.i421 = tail call fastcc i32 @dsa_port_do_mdb_del(ptr noundef %dp.034.i415, ptr noundef %417) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i421)
  %tobool8.not.i422 = icmp eq i32 %call7.i421, 0
  br i1 %tobool8.not.i422, label %if.then6.i423.for.inc.i427_crit_edge, label %if.then6.i423.do.body_crit_edge

if.then6.i423.do.body_crit_edge:                  ; preds = %if.then6.i423
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6.i423.for.inc.i427_crit_edge:             ; preds = %if.then6.i423
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i427

for.inc.i427:                                     ; preds = %if.then6.i423.for.inc.i427_crit_edge, %if.then5.i420.for.inc.i427_crit_edge, %for.body.i418.for.inc.i427_crit_edge
  %418 = ptrtoint ptr %.pn33.i414 to i32
  call void @__asan_load4_noabort(i32 %418)
  %.pn.i424 = load ptr, ptr %.pn33.i414, align 4
  %419 = ptrtoint ptr %dst.i406 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dst.i406, align 4
  %ports2.i425 = getelementptr inbounds %struct.dsa_switch_tree, ptr %420, i32 0, i32 1
  %cmp.not.i426 = icmp eq ptr %.pn.i424, %ports2.i425
  br i1 %cmp.not.i426, label %for.inc.i427.if.end49.thread_crit_edge, label %for.inc.i427.for.body.i418_crit_edge

for.inc.i427.for.body.i418_crit_edge:             ; preds = %for.inc.i427
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i418

for.inc.i427.if.end49.thread_crit_edge:           ; preds = %for.inc.i427
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb27:                                          ; preds = %entry
  %ops.i429 = getelementptr i8, ptr %nb, i32 24
  %421 = ptrtoint ptr %ops.i429 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ops.i429, align 4
  %port_vlan_add.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %422, i32 0, i32 52
  %423 = ptrtoint ptr %port_vlan_add.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %port_vlan_add.i, align 4
  %tobool.not.i430 = icmp eq ptr %424, null
  br i1 %tobool.not.i430, label %sw.bb27.do.body_crit_edge, label %if.end.i434

sw.bb27.do.body_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i434:                                      ; preds = %sw.bb27
  %dst.i431 = getelementptr i8, ptr %nb, i32 -12
  %425 = ptrtoint ptr %dst.i431 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %dst.i431, align 4
  %ports.i432 = getelementptr inbounds %struct.dsa_switch_tree, ptr %426, i32 0, i32 1
  %427 = ptrtoint ptr %ports.i432 to i32
  call void @__asan_load4_noabort(i32 %427)
  %.pn34.i433 = load ptr, ptr %ports.i432, align 4
  %cmp.not36.i = icmp eq ptr %.pn34.i433, %ports.i432
  br i1 %cmp.not36.i, label %if.end.i434.if.end49.thread_crit_edge, label %for.body.lr.ph.i436

if.end.i434.if.end49.thread_crit_edge:            ; preds = %if.end.i434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.lr.ph.i436:                              ; preds = %if.end.i434
  %sw_index.i.i = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 1
  %port.i.i = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 2
  %extack.i435 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 3
  %index.i.i440 = getelementptr i8, ptr %nb, i32 -8
  br label %for.body.i439

for.body.i439:                                    ; preds = %for.inc.i449.for.body.i439_crit_edge, %for.body.lr.ph.i436
  %.pn37.i = phi ptr [ %.pn34.i433, %for.body.lr.ph.i436 ], [ %.pn.i446, %for.inc.i449.for.body.i439_crit_edge ]
  %ds3.i437 = getelementptr i8, ptr %.pn37.i, i32 -432
  %428 = ptrtoint ptr %ds3.i437 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ds3.i437, align 4
  %cmp4.i438 = icmp eq ptr %429, %add.ptr
  br i1 %cmp4.i438, label %if.then5.i442, label %for.body.i439.for.inc.i449_crit_edge

for.body.i439.for.inc.i449_crit_edge:             ; preds = %for.body.i439
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i449

if.then5.i442:                                    ; preds = %for.body.i439
  %430 = ptrtoint ptr %index.i.i440 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %index.i.i440, align 4
  %432 = ptrtoint ptr %sw_index.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %sw_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %431, i32 %433)
  %cmp.i.i441 = icmp eq i32 %431, %433
  br i1 %cmp.i.i441, label %land.lhs.true.i.i443, label %if.then5.i442.dsa_port_vlan_match.exit.i_crit_edge

if.then5.i442.dsa_port_vlan_match.exit.i_crit_edge: ; preds = %if.then5.i442
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_port_vlan_match.exit.i

land.lhs.true.i.i443:                             ; preds = %if.then5.i442
  %index1.i.i = getelementptr i8, ptr %.pn37.i, i32 -428
  %434 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %index1.i.i, align 4
  %436 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %port.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %435, i32 %437)
  %cmp2.i.i = icmp eq i32 %435, %437
  br i1 %cmp2.i.i, label %land.lhs.true.i.i443.if.then6.i445_crit_edge, label %land.lhs.true.i.i443.dsa_port_vlan_match.exit.i_crit_edge

land.lhs.true.i.i443.dsa_port_vlan_match.exit.i_crit_edge: ; preds = %land.lhs.true.i.i443
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_port_vlan_match.exit.i

land.lhs.true.i.i443.if.then6.i445_crit_edge:     ; preds = %land.lhs.true.i.i443
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i445

dsa_port_vlan_match.exit.i:                       ; preds = %land.lhs.true.i.i443.dsa_port_vlan_match.exit.i_crit_edge, %if.then5.i442.dsa_port_vlan_match.exit.i_crit_edge
  %type.i.i.i = getelementptr i8, ptr %.pn37.i, i32 -424
  %438 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %439)
  %cmp.i.i.i = icmp eq i32 %439, 2
  br i1 %cmp.i.i.i, label %dsa_port_vlan_match.exit.i.if.then6.i445_crit_edge, label %dsa_port_vlan_match.exit.i.for.inc.i449_crit_edge

dsa_port_vlan_match.exit.i.for.inc.i449_crit_edge: ; preds = %dsa_port_vlan_match.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i449

dsa_port_vlan_match.exit.i.if.then6.i445_crit_edge: ; preds = %dsa_port_vlan_match.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i445

if.then6.i445:                                    ; preds = %dsa_port_vlan_match.exit.i.if.then6.i445_crit_edge, %land.lhs.true.i.i443.if.then6.i445_crit_edge
  %440 = ptrtoint ptr %ops.i429 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %ops.i429, align 4
  %port_vlan_add8.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %441, i32 0, i32 52
  %442 = ptrtoint ptr %port_vlan_add8.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %port_vlan_add8.i, align 4
  %index.i444 = getelementptr i8, ptr %.pn37.i, i32 -428
  %444 = ptrtoint ptr %index.i444 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %index.i444, align 4
  %446 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %info, align 4
  %448 = ptrtoint ptr %extack.i435 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %extack.i435, align 4
  %call9.i = tail call i32 %443(ptr noundef %add.ptr, i32 noundef %445, ptr noundef %447, ptr noundef %449) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then6.i445.for.inc.i449_crit_edge, label %if.then6.i445.do.body_crit_edge

if.then6.i445.do.body_crit_edge:                  ; preds = %if.then6.i445
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6.i445.for.inc.i449_crit_edge:             ; preds = %if.then6.i445
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i449

for.inc.i449:                                     ; preds = %if.then6.i445.for.inc.i449_crit_edge, %dsa_port_vlan_match.exit.i.for.inc.i449_crit_edge, %for.body.i439.for.inc.i449_crit_edge
  %450 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %.pn.i446 = load ptr, ptr %.pn37.i, align 4
  %451 = ptrtoint ptr %dst.i431 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dst.i431, align 4
  %ports2.i447 = getelementptr inbounds %struct.dsa_switch_tree, ptr %452, i32 0, i32 1
  %cmp.not.i448 = icmp eq ptr %.pn.i446, %ports2.i447
  br i1 %cmp.not.i448, label %for.inc.i449.if.end49.thread_crit_edge, label %for.inc.i449.for.body.i439_crit_edge

for.inc.i449.for.body.i439_crit_edge:             ; preds = %for.inc.i449
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i439

for.inc.i449.if.end49.thread_crit_edge:           ; preds = %for.inc.i449
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb29:                                          ; preds = %entry
  %ops.i451 = getelementptr i8, ptr %nb, i32 24
  %453 = ptrtoint ptr %ops.i451 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %ops.i451, align 4
  %port_vlan_del.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %454, i32 0, i32 53
  %455 = ptrtoint ptr %port_vlan_del.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %port_vlan_del.i, align 4
  %tobool.not.i452 = icmp eq ptr %456, null
  br i1 %tobool.not.i452, label %sw.bb29.do.body_crit_edge, label %if.end.i456

sw.bb29.do.body_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i456:                                      ; preds = %sw.bb29
  %index.i453 = getelementptr i8, ptr %nb, i32 -8
  %457 = ptrtoint ptr %index.i453 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %index.i453, align 4
  %sw_index.i454 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 1
  %459 = ptrtoint ptr %sw_index.i454 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %sw_index.i454, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %460)
  %cmp.i455 = icmp eq i32 %458, %460
  br i1 %cmp.i455, label %if.then1.i, label %if.end.i456.if.end49.thread_crit_edge

if.end.i456.if.end49.thread_crit_edge:            ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

if.then1.i:                                       ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #8
  %port.i457 = getelementptr inbounds %struct.dsa_notifier_vlan_info, ptr %info, i32 0, i32 2
  %461 = ptrtoint ptr %port.i457 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %port.i457, align 4
  %463 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %info, align 4
  %call.i458 = tail call i32 %456(ptr noundef %add.ptr, i32 noundef %462, ptr noundef %464) #6
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %ops.i460 = getelementptr i8, ptr %nb, i32 24
  %465 = ptrtoint ptr %ops.i460 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %ops.i460, align 4
  %port_change_mtu.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %466, i32 0, i32 91
  %467 = ptrtoint ptr %port_change_mtu.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %port_change_mtu.i, align 4
  %tobool.not.i461 = icmp eq ptr %468, null
  br i1 %tobool.not.i461, label %sw.bb31.do.body_crit_edge, label %if.end.i464

sw.bb31.do.body_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i464:                                      ; preds = %sw.bb31
  %dst.i462 = getelementptr i8, ptr %nb, i32 -12
  %469 = ptrtoint ptr %dst.i462 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %dst.i462, align 4
  %ports.i463 = getelementptr inbounds %struct.dsa_switch_tree, ptr %470, i32 0, i32 1
  %471 = ptrtoint ptr %ports.i463 to i32
  call void @__asan_load4_noabort(i32 %471)
  %.pn35.i = load ptr, ptr %ports.i463, align 4
  %cmp.not37.i = icmp eq ptr %.pn35.i, %ports.i463
  br i1 %cmp.not37.i, label %if.end.i464.if.end49.thread_crit_edge, label %for.body.lr.ph.i467

if.end.i464.if.end49.thread_crit_edge:            ; preds = %if.end.i464
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.lr.ph.i467:                              ; preds = %if.end.i464
  %sw_index.i.i465 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %info, i32 0, i32 1
  %port.i.i466 = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %info, i32 0, i32 2
  %mtu.i = getelementptr inbounds %struct.dsa_notifier_mtu_info, ptr %info, i32 0, i32 3
  %index.i.i471 = getelementptr i8, ptr %nb, i32 -8
  br label %for.body.i470

for.body.i470:                                    ; preds = %for.inc.i486.for.body.i470_crit_edge, %for.body.lr.ph.i467
  %.pn38.i = phi ptr [ %.pn35.i, %for.body.lr.ph.i467 ], [ %.pn.i483, %for.inc.i486.for.body.i470_crit_edge ]
  %ds3.i468 = getelementptr i8, ptr %.pn38.i, i32 -432
  %472 = ptrtoint ptr %ds3.i468 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %ds3.i468, align 4
  %cmp4.i469 = icmp eq ptr %473, %add.ptr
  br i1 %cmp4.i469, label %if.then5.i473, label %for.body.i470.for.inc.i486_crit_edge

for.body.i470.for.inc.i486_crit_edge:             ; preds = %for.body.i470
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i486

if.then5.i473:                                    ; preds = %for.body.i470
  %474 = ptrtoint ptr %index.i.i471 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %index.i.i471, align 4
  %476 = ptrtoint ptr %sw_index.i.i465 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %sw_index.i.i465, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %475, i32 %477)
  %cmp.i.i472 = icmp eq i32 %475, %477
  br i1 %cmp.i.i472, label %land.lhs.true.i.i476, label %if.then5.i473.if.end.i.i_crit_edge

if.then5.i473.if.end.i.i_crit_edge:               ; preds = %if.then5.i473
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i476:                             ; preds = %if.then5.i473
  %index1.i.i474 = getelementptr i8, ptr %.pn38.i, i32 -428
  %478 = ptrtoint ptr %index1.i.i474 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %index1.i.i474, align 4
  %480 = ptrtoint ptr %port.i.i466 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %port.i.i466, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %479, i32 %481)
  %cmp2.i.i475 = icmp eq i32 %479, %481
  br i1 %cmp2.i.i475, label %land.lhs.true.i.i476.if.then6.i482_crit_edge, label %land.lhs.true.i.i476.if.end.i.i_crit_edge

land.lhs.true.i.i476.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i476
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i476.if.then6.i482_crit_edge:     ; preds = %land.lhs.true.i.i476
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i482

if.end.i.i:                                       ; preds = %land.lhs.true.i.i476.if.end.i.i_crit_edge, %if.then5.i473.if.end.i.i_crit_edge
  %482 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %info, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %tobool.not.i.i477 = icmp eq i8 %483, 0
  br i1 %tobool.not.i.i477, label %dsa_port_mtu_match.exit.i, label %if.end.i.i.for.inc.i486_crit_edge

if.end.i.i.for.inc.i486_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i486

dsa_port_mtu_match.exit.i:                        ; preds = %if.end.i.i
  %type.i.i.i478 = getelementptr i8, ptr %.pn38.i, i32 -424
  %484 = ptrtoint ptr %type.i.i.i478 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %type.i.i.i478, align 4
  %486 = add i32 %485, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %486)
  %487 = icmp ult i32 %486, 2
  br i1 %487, label %dsa_port_mtu_match.exit.i.if.then6.i482_crit_edge, label %dsa_port_mtu_match.exit.i.for.inc.i486_crit_edge

dsa_port_mtu_match.exit.i.for.inc.i486_crit_edge: ; preds = %dsa_port_mtu_match.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i486

dsa_port_mtu_match.exit.i.if.then6.i482_crit_edge: ; preds = %dsa_port_mtu_match.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i482

if.then6.i482:                                    ; preds = %dsa_port_mtu_match.exit.i.if.then6.i482_crit_edge, %land.lhs.true.i.i476.if.then6.i482_crit_edge
  %488 = ptrtoint ptr %ops.i460 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %ops.i460, align 4
  %port_change_mtu8.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %489, i32 0, i32 91
  %490 = ptrtoint ptr %port_change_mtu8.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %port_change_mtu8.i, align 4
  %index.i479 = getelementptr i8, ptr %.pn38.i, i32 -428
  %492 = ptrtoint ptr %index.i479 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %index.i479, align 4
  %494 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %mtu.i, align 4
  %call9.i480 = tail call i32 %491(ptr noundef %add.ptr, i32 noundef %493, i32 noundef %495) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i480)
  %tobool10.not.i481 = icmp eq i32 %call9.i480, 0
  br i1 %tobool10.not.i481, label %if.then6.i482.for.inc.i486_crit_edge, label %if.then6.i482.do.body_crit_edge

if.then6.i482.do.body_crit_edge:                  ; preds = %if.then6.i482
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6.i482.for.inc.i486_crit_edge:             ; preds = %if.then6.i482
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i486

for.inc.i486:                                     ; preds = %if.then6.i482.for.inc.i486_crit_edge, %dsa_port_mtu_match.exit.i.for.inc.i486_crit_edge, %if.end.i.i.for.inc.i486_crit_edge, %for.body.i470.for.inc.i486_crit_edge
  %496 = ptrtoint ptr %.pn38.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %.pn.i483 = load ptr, ptr %.pn38.i, align 4
  %497 = ptrtoint ptr %dst.i462 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %dst.i462, align 4
  %ports2.i484 = getelementptr inbounds %struct.dsa_switch_tree, ptr %498, i32 0, i32 1
  %cmp.not.i485 = icmp eq ptr %.pn.i483, %ports2.i484
  br i1 %cmp.not.i485, label %for.inc.i486.if.end49.thread_crit_edge, label %for.inc.i486.for.body.i470_crit_edge

for.inc.i486.for.body.i470_crit_edge:             ; preds = %for.inc.i486
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i470

for.inc.i486.if.end49.thread_crit_edge:           ; preds = %for.inc.i486
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb33:                                          ; preds = %entry
  %499 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %info, align 4
  %ops.i488 = getelementptr i8, ptr %nb, i32 24
  %501 = ptrtoint ptr %ops.i488 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %ops.i488, align 4
  %change_tag_protocol.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %502, i32 0, i32 1
  %503 = ptrtoint ptr %change_tag_protocol.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %change_tag_protocol.i, align 4
  %tobool.not.i489 = icmp eq ptr %504, null
  br i1 %tobool.not.i489, label %sw.bb33.do.body_crit_edge, label %if.end.i491

sw.bb33.do.body_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i491:                                      ; preds = %sw.bb33
  %call.i490 = tail call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i490)
  %tobool2.not.i = icmp eq i32 %call.i490, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %if.end.i491.if.end33.i_crit_edge

if.end.i491.if.end33.i_crit_edge:                 ; preds = %if.end.i491
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

land.rhs.i:                                       ; preds = %if.end.i491
  %.b120.i = load i1, ptr @dsa_switch_change_tag_proto.__already_done, align 1
  br i1 %.b120.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then11.i, !prof !31

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dsa_switch_change_tag_proto.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 605, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 605) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then11.i, %land.rhs.i.if.end33.i_crit_edge, %if.end.i491.if.end33.i_crit_edge
  %dst.i492 = getelementptr i8, ptr %nb, i32 -12
  %505 = ptrtoint ptr %dst.i492 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %dst.i492, align 4
  %ports.i493 = getelementptr inbounds %struct.dsa_switch_tree, ptr %506, i32 0, i32 1
  %507 = ptrtoint ptr %ports.i493 to i32
  call void @__asan_load4_noabort(i32 %507)
  %.pn125.i = load ptr, ptr %ports.i493, align 4
  %cmp.not128.i = icmp eq ptr %.pn125.i, %ports.i493
  br i1 %cmp.not128.i, label %if.end33.i.for.cond70.preheader.i_crit_edge, label %for.body.lr.ph.i494

if.end33.i.for.cond70.preheader.i_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond70.preheader.i

for.body.lr.ph.i494:                              ; preds = %if.end33.i
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %500, i32 0, i32 8
  br label %for.body.i495

for.cond70.preheader.i:                           ; preds = %for.inc.i501.for.cond70.preheader.i_crit_edge, %if.end33.i.for.cond70.preheader.i_crit_edge
  %ports43.lcssa.i = phi ptr [ %ports.i493, %if.end33.i.for.cond70.preheader.i_crit_edge ], [ %.pn.i499, %for.inc.i501.for.cond70.preheader.i_crit_edge ]
  %508 = ptrtoint ptr %ports43.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %.pn119131.i = load ptr, ptr %ports43.lcssa.i, align 4
  %509 = ptrtoint ptr %dst.i492 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %dst.i492, align 4
  %ports73133.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %510, i32 0, i32 1
  %cmp74.not134.i = icmp eq ptr %.pn119131.i, %ports73133.i
  br i1 %cmp74.not134.i, label %for.cond70.preheader.i.if.end49.thread_crit_edge, label %for.cond70.preheader.i.for.body77.i_crit_edge

for.cond70.preheader.i.for.body77.i_crit_edge:    ; preds = %for.cond70.preheader.i
  br label %for.body77.i

for.cond70.preheader.i.if.end49.thread_crit_edge: ; preds = %for.cond70.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

for.body.i495:                                    ; preds = %for.inc.i501.for.body.i495_crit_edge, %for.body.lr.ph.i494
  %.pn129.i = phi ptr [ %.pn125.i, %for.body.lr.ph.i494 ], [ %.pn.i499, %for.inc.i501.for.body.i495_crit_edge ]
  %cpu_dp.0130.i = getelementptr i8, ptr %.pn129.i, i32 -448
  %ds46.i = getelementptr i8, ptr %.pn129.i, i32 -432
  %511 = ptrtoint ptr %ds46.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %ds46.i, align 4
  %cmp47.i = icmp eq ptr %512, %add.ptr
  br i1 %cmp47.i, label %if.then48.i497, label %for.body.i495.for.inc.i501_crit_edge

for.body.i495.for.inc.i501_crit_edge:             ; preds = %for.body.i495
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i501

if.then48.i497:                                   ; preds = %for.body.i495
  %type.i.i = getelementptr i8, ptr %.pn129.i, i32 -424
  %513 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %514)
  %cmp.i.i496 = icmp eq i32 %514, 1
  br i1 %cmp.i.i496, label %if.then50.i, label %if.then48.i497.for.inc.i501_crit_edge

if.then48.i497.for.inc.i501_crit_edge:            ; preds = %if.then48.i497
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i501

if.then50.i:                                      ; preds = %if.then48.i497
  %515 = ptrtoint ptr %ops.i488 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %ops.i488, align 4
  %change_tag_protocol52.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %516, i32 0, i32 1
  %517 = ptrtoint ptr %change_tag_protocol52.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %change_tag_protocol52.i, align 4
  %index.i498 = getelementptr i8, ptr %.pn129.i, i32 -428
  %519 = ptrtoint ptr %index.i498 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %index.i498, align 4
  %521 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %proto.i, align 4
  %call53.i = tail call i32 %518(ptr noundef %add.ptr, i32 noundef %520, i32 noundef %522) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.then50.i.do.body_crit_edge

if.then50.i.do.body_crit_edge:                    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end56.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsa_port_set_tag_protocol(ptr noundef %cpu_dp.0130.i, ptr noundef %500) #6
  br label %for.inc.i501

for.inc.i501:                                     ; preds = %if.end56.i, %if.then48.i497.for.inc.i501_crit_edge, %for.body.i495.for.inc.i501_crit_edge
  %523 = ptrtoint ptr %.pn129.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %.pn.i499 = load ptr, ptr %.pn129.i, align 4
  %524 = ptrtoint ptr %dst.i492 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %dst.i492, align 4
  %ports43.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %525, i32 0, i32 1
  %cmp.not.i500 = icmp eq ptr %.pn.i499, %ports43.i
  br i1 %cmp.not.i500, label %for.inc.i501.for.cond70.preheader.i_crit_edge, label %for.inc.i501.for.body.i495_crit_edge

for.inc.i501.for.body.i495_crit_edge:             ; preds = %for.inc.i501
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i495

for.inc.i501.for.cond70.preheader.i_crit_edge:    ; preds = %for.inc.i501
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond70.preheader.i

for.body77.i:                                     ; preds = %for.inc86.i.for.body77.i_crit_edge, %for.cond70.preheader.i.for.body77.i_crit_edge
  %.pn119135.i = phi ptr [ %.pn119.i, %for.inc86.i.for.body77.i_crit_edge ], [ %.pn119131.i, %for.cond70.preheader.i.for.body77.i_crit_edge ]
  %dp.0137.i = getelementptr i8, ptr %.pn119135.i, i32 -448
  %ds78.i = getelementptr i8, ptr %.pn119135.i, i32 -432
  %526 = ptrtoint ptr %ds78.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %ds78.i, align 4
  %cmp79.i = icmp eq ptr %527, %add.ptr
  br i1 %cmp79.i, label %if.then80.i, label %for.body77.i.for.inc86.i_crit_edge

for.body77.i.for.inc86.i_crit_edge:               ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc86.i

if.then80.i:                                      ; preds = %for.body77.i
  %type.i121.i = getelementptr i8, ptr %.pn119135.i, i32 -424
  %528 = ptrtoint ptr %type.i121.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %type.i121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %529)
  %cmp.i122.i = icmp eq i32 %529, 3
  br i1 %cmp.i122.i, label %if.then82.i, label %if.then80.i.for.inc86.i_crit_edge

if.then80.i.for.inc86.i_crit_edge:                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc86.i

if.then82.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #8
  %530 = ptrtoint ptr %dp.0137.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %dp.0137.i, align 4
  tail call void @dsa_slave_setup_tagger(ptr noundef %531) #6
  %mtu.i502 = getelementptr inbounds %struct.net_device, ptr %531, i32 0, i32 20
  %532 = ptrtoint ptr %mtu.i502 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %mtu.i502, align 4
  %call83.i = tail call i32 @dsa_slave_change_mtu(ptr noundef %531, i32 noundef %533) #6
  br label %for.inc86.i

for.inc86.i:                                      ; preds = %if.then82.i, %if.then80.i.for.inc86.i_crit_edge, %for.body77.i.for.inc86.i_crit_edge
  %534 = ptrtoint ptr %.pn119135.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %.pn119.i = load ptr, ptr %.pn119135.i, align 4
  %535 = ptrtoint ptr %dst.i492 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %dst.i492, align 4
  %ports73.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %536, i32 0, i32 1
  %cmp74.not.i = icmp eq ptr %.pn119.i, %ports73.i
  br i1 %cmp74.not.i, label %for.inc86.i.if.end49.thread_crit_edge, label %for.inc86.i.for.body77.i_crit_edge

for.inc86.i.for.body77.i_crit_edge:               ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77.i

for.inc86.i.if.end49.thread_crit_edge:            ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

sw.bb35:                                          ; preds = %entry
  %537 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %info, align 4
  %connect.i = getelementptr inbounds %struct.dsa_device_ops, ptr %538, i32 0, i32 3
  %539 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %connect.i, align 4
  %tobool.not.i504 = icmp eq ptr %540, null
  br i1 %tobool.not.i504, label %sw.bb35.if.end5.i_crit_edge, label %if.then.i507

sw.bb35.if.end5.i_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i507:                                     ; preds = %sw.bb35
  %call.i505 = tail call i32 %540(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i505)
  %tobool3.not.i506 = icmp eq i32 %call.i505, 0
  br i1 %tobool3.not.i506, label %if.then.i507.if.end5.i_crit_edge, label %if.then.i507.do.body_crit_edge

if.then.i507.do.body_crit_edge:                   ; preds = %if.then.i507
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then.i507.if.end5.i_crit_edge:                 ; preds = %if.then.i507
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i507.if.end5.i_crit_edge, %sw.bb35.if.end5.i_crit_edge
  %ops.i508 = getelementptr i8, ptr %nb, i32 24
  %541 = ptrtoint ptr %ops.i508 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %ops.i508, align 4
  %connect_tag_protocol.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %542, i32 0, i32 2
  %543 = ptrtoint ptr %connect_tag_protocol.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %connect_tag_protocol.i, align 4
  %tobool6.not.i = icmp eq ptr %544, null
  br i1 %tobool6.not.i, label %if.end5.i.do.body_crit_edge, label %if.end8.i510

if.end5.i.do.body_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end8.i510:                                     ; preds = %if.end5.i
  %proto.i509 = getelementptr inbounds %struct.dsa_device_ops, ptr %538, i32 0, i32 8
  %545 = ptrtoint ptr %proto.i509 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %proto.i509, align 4
  %call11.i = tail call i32 %544(ptr noundef %add.ptr, i32 noundef %546) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end8.i510.if.end49.thread_crit_edge, label %if.then13.i

if.end8.i510.if.end49.thread_crit_edge:           ; preds = %if.end8.i510
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

if.then13.i:                                      ; preds = %if.end8.i510
  %disconnect.i = getelementptr inbounds %struct.dsa_device_ops, ptr %538, i32 0, i32 4
  %547 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %disconnect.i, align 4
  %tobool14.not.i = icmp eq ptr %548, null
  br i1 %tobool14.not.i, label %if.then13.i.do.body_crit_edge, label %if.then15.i

if.then13.i.do.body_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %548(ptr noundef %add.ptr) #6
  br label %do.body

sw.bb37:                                          ; preds = %entry
  %549 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %info, align 4
  %disconnect.i512 = getelementptr inbounds %struct.dsa_device_ops, ptr %550, i32 0, i32 4
  %551 = ptrtoint ptr %disconnect.i512 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %disconnect.i512, align 4
  %tobool.not.i513 = icmp eq ptr %552, null
  br i1 %tobool.not.i513, label %sw.bb37.if.end49.thread_crit_edge, label %land.lhs.true.i515

sw.bb37.if.end49.thread_crit_edge:                ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

land.lhs.true.i515:                               ; preds = %sw.bb37
  %tagger_data.i = getelementptr i8, ptr %nb, i32 16
  %553 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %tagger_data.i, align 4
  %tobool2.not.i514 = icmp eq ptr %554, null
  br i1 %tobool2.not.i514, label %land.lhs.true.i515.if.end49.thread_crit_edge, label %if.then.i516

land.lhs.true.i515.if.end49.thread_crit_edge:     ; preds = %land.lhs.true.i515
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

if.then.i516:                                     ; preds = %land.lhs.true.i515
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %552(ptr noundef %add.ptr) #6
  br label %if.end49.thread

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 @dsa_switch_tag_8021q_vlan_add(ptr noundef %add.ptr, ptr noundef %info) #6
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 @dsa_switch_tag_8021q_vlan_del(ptr noundef %add.ptr, ptr noundef %info) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb39, %if.then1.i, %if.end.i379, %if.end.i327, %if.then9.i277, %if.then.i273, %if.then10.i263, %if.then.i261, %if.then9.i, %if.then.i250, %if.end.i200, %if.end.i147, %dsa_switch_bridge_leave.exit, %if.end31.i, %if.then10.i
  %err.0 = phi i32 [ %call42, %sw.bb41 ], [ %call40, %sw.bb39 ], [ %retval.0.i127, %dsa_switch_bridge_leave.exit ], [ %call13.i, %if.then10.i ], [ %call32.i, %if.end31.i ], [ %call3.i, %if.end.i147 ], [ %call3.i199, %if.end.i200 ], [ %call.i249, %if.then.i250 ], [ %call14.i, %if.then9.i ], [ %call.i260, %if.then.i261 ], [ %call17.i, %if.then10.i263 ], [ %call.i272, %if.then.i273 ], [ %call15.i, %if.then9.i277 ], [ %call3.i326, %if.end.i327 ], [ %call3.i378, %if.end.i379 ], [ %call.i458, %if.then1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %sw.epilog.if.end49.thread_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.epilog.if.end49.thread_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.thread

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.then15.i, %if.then13.i.do.body_crit_edge, %if.end5.i.do.body_crit_edge, %if.then.i507.do.body_crit_edge, %if.then50.i.do.body_crit_edge, %sw.bb33.do.body_crit_edge, %if.then6.i482.do.body_crit_edge, %sw.bb31.do.body_crit_edge, %sw.bb29.do.body_crit_edge, %if.then6.i445.do.body_crit_edge, %sw.bb27.do.body_crit_edge, %if.then6.i423.do.body_crit_edge, %sw.bb25.do.body_crit_edge, %if.then6.i397.do.body_crit_edge, %sw.bb23.do.body_crit_edge, %dsa_to_port.exit.i377.do.body_crit_edge, %dsa_to_port.exit.i325.do.body_crit_edge, %land.lhs.true6.i275.do.body_crit_edge, %land.lhs.true.i270.do.body_crit_edge, %land.lhs.true7.i.do.body_crit_edge, %land.lhs.true.i258.do.body_crit_edge, %if.then6.i236.do.body_crit_edge, %sw.bb11.do.body_crit_edge, %if.then6.i.do.body_crit_edge, %sw.bb9.do.body_crit_edge, %dsa_to_port.exit.i196.do.body_crit_edge, %dsa_to_port.exit.i146.do.body_crit_edge, %if.then20.i.do.body_crit_edge, %if.end.i101.do.body_crit_edge, %if.then.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  %err.0522 = phi i32 [ %err.0, %sw.epilog.do.body_crit_edge ], [ %call11.i, %if.then13.i.do.body_crit_edge ], [ %call11.i, %if.then15.i ], [ -95, %if.end5.i.do.body_crit_edge ], [ %call.i505, %if.then.i507.do.body_crit_edge ], [ -95, %sw.bb33.do.body_crit_edge ], [ -95, %sw.bb31.do.body_crit_edge ], [ -95, %sw.bb29.do.body_crit_edge ], [ -95, %sw.bb27.do.body_crit_edge ], [ -95, %sw.bb25.do.body_crit_edge ], [ -95, %sw.bb23.do.body_crit_edge ], [ -95, %dsa_to_port.exit.i377.do.body_crit_edge ], [ -95, %dsa_to_port.exit.i325.do.body_crit_edge ], [ -95, %land.lhs.true.i270.do.body_crit_edge ], [ -95, %land.lhs.true6.i275.do.body_crit_edge ], [ -95, %land.lhs.true.i258.do.body_crit_edge ], [ -95, %land.lhs.true7.i.do.body_crit_edge ], [ -95, %sw.bb11.do.body_crit_edge ], [ -95, %sw.bb9.do.body_crit_edge ], [ -95, %dsa_to_port.exit.i196.do.body_crit_edge ], [ -95, %dsa_to_port.exit.i146.do.body_crit_edge ], [ %call27.i, %if.then20.i.do.body_crit_edge ], [ %call.i, %if.end.i101.do.body_crit_edge ], [ -95, %if.then.i.do.body_crit_edge ], [ -34, %if.end.i.do.body_crit_edge ], [ -34, %sw.bb.do.body_crit_edge ], [ -95, %entry.do.body_crit_edge ], [ %call7.i, %if.then6.i.do.body_crit_edge ], [ %call7.i234, %if.then6.i236.do.body_crit_edge ], [ %call7.i395, %if.then6.i397.do.body_crit_edge ], [ %call7.i421, %if.then6.i423.do.body_crit_edge ], [ %call9.i, %if.then6.i445.do.body_crit_edge ], [ %call9.i480, %if.then6.i482.do.body_crit_edge ], [ %call53.i, %if.then50.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsa_switch_event.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsa_switch_event, %if.then48)) #6
          to label %if.end49 [label %if.then48], !srcloc !32

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %555 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsa_switch_event.__UNIQUE_ID_ddebug499, ptr noundef %556, ptr noundef nonnull @.str.7, i32 noundef %event, i32 noundef %err.0522) #6
  %sub.i535 = sub i32 1, %err.0522
  %or.i536 = or i32 %sub.i535, 32768
  br label %if.end49.thread

if.end49:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 1, %err.0522
  %or.i = or i32 %sub.i, 32768
  br label %if.end49.thread

if.end49.thread:                                  ; preds = %if.end49, %if.then48, %sw.epilog.if.end49.thread_crit_edge, %if.then.i516, %land.lhs.true.i515.if.end49.thread_crit_edge, %sw.bb37.if.end49.thread_crit_edge, %if.end8.i510.if.end49.thread_crit_edge, %for.inc86.i.if.end49.thread_crit_edge, %for.cond70.preheader.i.if.end49.thread_crit_edge, %for.inc.i486.if.end49.thread_crit_edge, %if.end.i464.if.end49.thread_crit_edge, %if.end.i456.if.end49.thread_crit_edge, %for.inc.i449.if.end49.thread_crit_edge, %if.end.i434.if.end49.thread_crit_edge, %for.inc.i427.if.end49.thread_crit_edge, %if.end.i410.if.end49.thread_crit_edge, %for.inc.i401.if.end49.thread_crit_edge, %if.end.i386.if.end49.thread_crit_edge, %land.lhs.true6.i.if.end49.thread_crit_edge, %land.lhs.true.i247.if.end49.thread_crit_edge, %for.inc.i240.if.end49.thread_crit_edge, %if.end.i223.if.end49.thread_crit_edge, %for.inc.i213.if.end49.thread_crit_edge, %if.end.i207.if.end49.thread_crit_edge, %dsa_switch_fastest_ageing_time.exit.i.if.end49.thread_crit_edge
  %557 = phi i32 [ %or.i, %if.end49 ], [ %or.i536, %if.then48 ], [ 1, %if.then.i516 ], [ 1, %land.lhs.true.i515.if.end49.thread_crit_edge ], [ 1, %sw.bb37.if.end49.thread_crit_edge ], [ 1, %if.end8.i510.if.end49.thread_crit_edge ], [ 1, %for.cond70.preheader.i.if.end49.thread_crit_edge ], [ 1, %if.end.i464.if.end49.thread_crit_edge ], [ 1, %if.end.i456.if.end49.thread_crit_edge ], [ 1, %if.end.i434.if.end49.thread_crit_edge ], [ 1, %if.end.i410.if.end49.thread_crit_edge ], [ 1, %if.end.i386.if.end49.thread_crit_edge ], [ 1, %land.lhs.true.i247.if.end49.thread_crit_edge ], [ 1, %land.lhs.true6.i.if.end49.thread_crit_edge ], [ 1, %if.end.i223.if.end49.thread_crit_edge ], [ 1, %if.end.i207.if.end49.thread_crit_edge ], [ 1, %dsa_switch_fastest_ageing_time.exit.i.if.end49.thread_crit_edge ], [ 1, %sw.epilog.if.end49.thread_crit_edge ], [ 1, %for.inc.i213.if.end49.thread_crit_edge ], [ 1, %for.inc.i240.if.end49.thread_crit_edge ], [ 1, %for.inc.i401.if.end49.thread_crit_edge ], [ 1, %for.inc.i427.if.end49.thread_crit_edge ], [ 1, %for.inc.i449.if.end49.thread_crit_edge ], [ 1, %for.inc.i486.if.end49.thread_crit_edge ], [ 1, %for.inc86.i.if.end49.thread_crit_edge ]
  ret i32 %557
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_switch_unregister_notifier(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %nh = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 2
  %nb = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 4
  %call = tail call i32 @raw_notifier_chain_unregister(ptr noundef %nh, ptr noundef %nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_tag_8021q_vlan_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_tag_8021q_vlan_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_bridge_join(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_filtering(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_bridge_leave(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_fdb_add(ptr noundef %dp, ptr noundef %addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %port_fdb_add = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %port_fdb_add to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_fdb_add, align 4
  %call3 = tail call i32 %9(ptr noundef %1, i32 noundef %3, ptr noundef %addr, i16 noundef zeroext %vid) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_lists_lock = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %addr_lists_lock, i32 noundef 0) #6
  %fdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 24
  %10 = ptrtoint ptr %fdbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn16.i = load ptr, ptr %fdbs, align 4
  %cmp.not18.i = icmp eq ptr %.pn16.i, %fdbs
  br i1 %cmp.not18.i, label %if.end.if.end6_crit_edge, label %for.body.lr.ph.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.end
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn19.i = phi ptr [ %.pn16.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %a.020.i = getelementptr i8, ptr %.pn19.i, i32 -12
  %15 = ptrtoint ptr %a.020.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %a.020.i, align 4
  %xor.i.i = xor i32 %16, %12
  %add.ptr.i.i = getelementptr i8, ptr %.pn19.i, i32 -8
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %18, %14
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vid2.i = getelementptr i8, ptr %.pn19.i, i32 -6
  %19 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %vid)
  %cmp4.i = icmp eq i16 %20, %vid
  br i1 %cmp4.i, label %dsa_mac_addr_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fdbs
  br i1 %cmp.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

dsa_mac_addr_find.exit:                           ; preds = %land.lhs.true.i
  %a.020.i.le = getelementptr i8, ptr %.pn19.i, i32 -12
  %tobool.not = icmp eq ptr %a.020.i.le, null
  br i1 %tobool.not, label %dsa_mac_addr_find.exit.if.end6_crit_edge, label %if.then5

dsa_mac_addr_find.exit.if.end6_crit_edge:         ; preds = %dsa_mac_addr_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %dsa_mac_addr_find.exit
  %refcount = getelementptr i8, ptr %.pn19.i, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !33
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then5.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !34

if.then5.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then5
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !31

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #6
  br label %out

if.end6:                                          ; preds = %dsa_mac_addr_find.exit.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 20) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end6
  %ops11 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops11, align 4
  %port_fdb_add12 = getelementptr inbounds %struct.dsa_switch_ops, ptr %26, i32 0, i32 54
  %27 = ptrtoint ptr %port_fdb_add12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_fdb_add12, align 4
  %call13 = tail call i32 %28(ptr noundef %1, i32 noundef %3, ptr noundef %addr, i16 noundef zeroext %vid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

if.end16:                                         ; preds = %if.end10
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i, i32 4
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i, align 4
  %vid18 = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %vid18 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %vid, ptr %vid18, align 2
  %refcount19 = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount19, i32 noundef 4) #6
  %36 = ptrtoint ptr %refcount19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %refcount19, align 8
  %list = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 24, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %38, ptr noundef %fdbs) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list, ptr %prev.i, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %fdbs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 8
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list, ptr %38, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end16.out_crit_edge, %if.then15, %if.end6.out_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_crit_edge
  %err.0 = phi i32 [ %call13, %if.then15 ], [ -12, %if.end6.out_crit_edge ], [ 0, %if.else.i.i.i.out_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ 0, %if.end16.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %addr_lists_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %err.0, %out ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_fdb_del(ptr noundef %dp, ptr noundef %addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %port_fdb_del = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 55
  %8 = ptrtoint ptr %port_fdb_del to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_fdb_del, align 4
  %call3 = tail call i32 %9(ptr noundef %1, i32 noundef %3, ptr noundef %addr, i16 noundef zeroext %vid) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_lists_lock = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %addr_lists_lock, i32 noundef 0) #6
  %fdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 24
  %10 = ptrtoint ptr %fdbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn16.i = load ptr, ptr %fdbs, align 4
  %cmp.not18.i = icmp eq ptr %.pn16.i, %fdbs
  br i1 %cmp.not18.i, label %if.end.out_crit_edge, label %for.body.lr.ph.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn19.i = phi ptr [ %.pn16.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %a.020.i = getelementptr i8, ptr %.pn19.i, i32 -12
  %15 = ptrtoint ptr %a.020.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %a.020.i, align 4
  %xor.i.i = xor i32 %16, %12
  %add.ptr.i.i = getelementptr i8, ptr %.pn19.i, i32 -8
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %18, %14
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vid2.i = getelementptr i8, ptr %.pn19.i, i32 -6
  %19 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %vid)
  %cmp4.i = icmp eq i16 %20, %vid
  br i1 %cmp4.i, label %dsa_mac_addr_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fdbs
  br i1 %cmp.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

dsa_mac_addr_find.exit:                           ; preds = %land.lhs.true.i
  %a.020.i.le = getelementptr i8, ptr %.pn19.i, i32 -12
  %tobool.not = icmp eq ptr %a.020.i.le, null
  br i1 %tobool.not, label %dsa_mac_addr_find.exit.out_crit_edge, label %if.end6

dsa_mac_addr_find.exit.out_crit_edge:             ; preds = %dsa_mac_addr_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %dsa_mac_addr_find.exit
  %refcount = getelementptr i8, ptr %.pn19.i, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end9, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_crit_edge, label %if.then10.i.i.i, !prof !31

if.end5.i.i.i.out_crit_edge:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %out

if.end9:                                          ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  %ops10 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops10, align 4
  %port_fdb_del11 = getelementptr inbounds %struct.dsa_switch_ops, ptr %24, i32 0, i32 55
  %25 = ptrtoint ptr %port_fdb_del11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_fdb_del11, align 4
  %call12 = tail call i32 %26(ptr noundef %1, i32 noundef %3, ptr noundef %addr, i16 noundef zeroext %vid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  %27 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %refcount, align 4
  br label %out

if.end16:                                         ; preds = %if.end9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn19.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_del.exit_crit_edge

if.end16.list_del.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn19.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn19.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end16.list_del.exit_crit_edge
  %34 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn19.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn19.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %a.020.i.le) #6
  br label %out

out:                                              ; preds = %list_del.exit, %if.then14, %if.then10.i.i.i, %if.end5.i.i.i.out_crit_edge, %dsa_mac_addr_find.exit.out_crit_edge, %for.inc.i.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call12, %if.then14 ], [ 0, %list_del.exit ], [ -2, %dsa_mac_addr_find.exit.out_crit_edge ], [ -2, %if.end.out_crit_edge ], [ 0, %if.end5.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i ], [ -2, %for.inc.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %addr_lists_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %err.0, %out ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dsa_port_host_address_match(ptr nocapture noundef readonly %dp, i32 noundef %info_sw_index, i32 noundef %info_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %call = tail call ptr @dsa_switch_find(i32 noundef %5, i32 noundef %info_sw_index) #6
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %9 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %10, %call
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %info_port)
  %cmp5.i = icmp eq i32 %12, %info_port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp2 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %14 = ptrtoint ptr %cpu_dp2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_dp2, align 4
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 4
  %cmp.i = icmp eq ptr %17, %call
  br i1 %cmp.i, label %dsa_to_port.exit.if.then_crit_edge, label %if.end.i

dsa_to_port.exit.if.then_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %dsa_to_port.exit
  %index.i18 = getelementptr inbounds %struct.dsa_switch, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %index.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i18, align 4
  %rtable.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 10
  %20 = ptrtoint ptr %rtable.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn22.i.i = load ptr, ptr %rtable.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %.pn22.i.i, %rtable.i.i
  br i1 %cmp.not23.i.i, label %if.end.i.for.end.i.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn24.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn22.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %dl.0.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -8
  %21 = ptrtoint ptr %dl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dl.0.i.i, align 4
  %ds3.i.i = getelementptr inbounds %struct.dsa_port, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %24, %call
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %link_dp.i.i = getelementptr i8, ptr %.pn24.i.i, i32 -4
  %25 = ptrtoint ptr %link_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link_dp.i.i, align 4
  %ds5.i.i = getelementptr inbounds %struct.dsa_port, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ds5.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ds5.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %19)
  %cmp6.i.i = icmp eq i32 %30, %19
  br i1 %cmp6.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i = getelementptr inbounds %struct.dsa_port, ptr %22, i32 0, i32 5
  br label %dsa_routing_port.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %31 = ptrtoint ptr %.pn24.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i.i = load ptr, ptr %.pn24.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rtable.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %num_ports.i.i = getelementptr inbounds %struct.dsa_switch, ptr %call, i32 0, i32 18
  br label %dsa_routing_port.exit.i

dsa_routing_port.exit.i:                          ; preds = %for.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %index8.i.i, %if.then.i.i ], [ %num_ports.i.i, %for.end.i.i ]
  %32 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  br i1 %cmp.not21.i, label %dsa_is_unused_port.exit.thread.i.i, label %dsa_routing_port.exit.i.for.body.i.i.i.i_crit_edge

dsa_routing_port.exit.i.for.body.i.i.i.i_crit_edge: ; preds = %dsa_routing_port.exit.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %dsa_routing_port.exit.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i, %dsa_routing_port.exit.i.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %33 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %34, %call
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %35 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %retval.0.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %36, %retval.0.i.i
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %37 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_is_unused_port.exit.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i.i

dsa_is_unused_port.exit.i.i:                      ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %for.inc.i.i.i.i.dsa_is_unused_port.exit.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i, label %dsa_is_unused_port.exit.i.i.cleanup_crit_edge, label %dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge

dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit.i.i
  br label %for.body.i.i12.i.i

dsa_is_unused_port.exit.i.i.cleanup_crit_edge:    ; preds = %dsa_is_unused_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dsa_is_unused_port.exit.thread.i.i:               ; preds = %dsa_routing_port.exit.i
  call void @__asan_load4_noabort(i32 24)
  %40 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i24.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i24.i.i, label %dsa_is_unused_port.exit.thread.i.i.cleanup_crit_edge, label %dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge

dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge: ; preds = %dsa_is_unused_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i.i.i

dsa_is_unused_port.exit.thread.i.i.cleanup_crit_edge: ; preds = %dsa_is_unused_port.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i12.i.i:                               ; preds = %for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge, %dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge
  %.pn22.i.i9.i.i = phi ptr [ %.pn.i.i16.i.i, %for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge ], [ %.pn20.i, %dsa_is_unused_port.exit.i.i.for.body.i.i12.i.i_crit_edge ]
  %ds3.i.i10.i.i = getelementptr i8, ptr %.pn22.i.i9.i.i, i32 -432
  %41 = ptrtoint ptr %ds3.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ds3.i.i10.i.i, align 4
  %cmp4.i.i11.i.i = icmp eq ptr %42, %call
  br i1 %cmp4.i.i11.i.i, label %land.lhs.true.i.i15.i.i, label %for.body.i.i12.i.i.for.inc.i.i18.i.i_crit_edge

for.body.i.i12.i.i.for.inc.i.i18.i.i_crit_edge:   ; preds = %for.body.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i18.i.i

land.lhs.true.i.i15.i.i:                          ; preds = %for.body.i.i12.i.i
  %index.i.i13.i.i = getelementptr i8, ptr %.pn22.i.i9.i.i, i32 -428
  %43 = ptrtoint ptr %index.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %retval.0.i.i)
  %cmp5.i.i14.i.i = icmp eq i32 %44, %retval.0.i.i
  br i1 %cmp5.i.i14.i.i, label %cleanup.split.loop.exit18.i.i20.i.i, label %land.lhs.true.i.i15.i.i.for.inc.i.i18.i.i_crit_edge

land.lhs.true.i.i15.i.i.for.inc.i.i18.i.i_crit_edge: ; preds = %land.lhs.true.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i18.i.i

for.inc.i.i18.i.i:                                ; preds = %land.lhs.true.i.i15.i.i.for.inc.i.i18.i.i_crit_edge, %for.body.i.i12.i.i.for.inc.i.i18.i.i_crit_edge
  %45 = ptrtoint ptr %.pn22.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i.i16.i.i = load ptr, ptr %.pn22.i.i9.i.i, align 4
  %cmp.not.i.i17.i.i = icmp eq ptr %.pn.i.i16.i.i, %ports.i
  br i1 %cmp.not.i.i17.i.i, label %for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge, label %for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge

for.inc.i.i18.i.i.for.body.i.i12.i.i_crit_edge:   ; preds = %for.inc.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i12.i.i

for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit.i.i.i

cleanup.split.loop.exit18.i.i20.i.i:              ; preds = %land.lhs.true.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i.i19.i.i = getelementptr i8, ptr %.pn22.i.i9.i.i, i32 -448
  br label %dsa_to_port.exit.i.i.i

dsa_to_port.exit.i.i.i:                           ; preds = %cleanup.split.loop.exit18.i.i20.i.i, %for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge, %dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge
  %retval.0.i.i21.i.i = phi ptr [ %dp.0.le.i.i19.i.i, %cleanup.split.loop.exit18.i.i20.i.i ], [ null, %dsa_is_unused_port.exit.thread.i.i.dsa_to_port.exit.i.i.i_crit_edge ], [ null, %for.inc.i.i18.i.i.dsa_to_port.exit.i.i.i_crit_edge ]
  %cpu_dp1.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i21.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %cpu_dp1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cpu_dp1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %dsa_to_port.exit.i.i.i.if.then_crit_edge, label %if.end.i.i.i

dsa_to_port.exit.i.i.i.if.then_crit_edge:         ; preds = %dsa_to_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i.i.i:                                     ; preds = %dsa_to_port.exit.i.i.i
  %ds2.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ds2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ds2.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i.i, align 4
  %index3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %47, i32 0, i32 5
  %index.i10.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %call, i32 0, i32 2
  %52 = ptrtoint ptr %index.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.i.i.i.i = icmp eq i32 %53, %51
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.dsa_switch_is_upstream_of.exit_crit_edge, label %if.else.i.i.i.i

if.end.i.i.i.dsa_switch_is_upstream_of.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_switch_is_upstream_of.exit

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  br i1 %cmp.not23.i.i, label %if.else.i.i.i.i.for.end.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge:     ; preds = %if.else.i.i.i.i
  br label %for.body.i.i.i.i.i

if.else.i.i.i.i.for.end.i.i.i.i.i_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %.pn24.i.i.i.i.i = phi ptr [ %.pn.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %.pn22.i.i, %if.else.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %dl.0.i.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i.i, i32 -8
  %54 = ptrtoint ptr %dl.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dl.0.i.i.i.i.i, align 4
  %ds3.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %ds3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ds3.i.i.i.i.i, align 4
  %cmp4.i.i.i.i.i = icmp eq ptr %57, %call
  br i1 %cmp4.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %link_dp.i.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i.i, i32 -4
  %58 = ptrtoint ptr %link_dp.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %link_dp.i.i.i.i.i, align 4
  %ds5.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ds5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ds5.i.i.i.i.i, align 4
  %index.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %index.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %51)
  %cmp6.i.i.i.i.i = icmp eq i32 %63, %51
  br i1 %cmp6.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %55, i32 0, i32 5
  br label %dsa_switch_is_upstream_of.exit

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %64 = ptrtoint ptr %.pn24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn.i.i.i.i.i = load ptr, ptr %.pn24.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %.pn.i.i.i.i.i, %rtable.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i.i.i

for.end.i.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.for.end.i.i.i.i.i_crit_edge
  %num_ports.i.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %call, i32 0, i32 18
  br label %dsa_switch_is_upstream_of.exit

dsa_switch_is_upstream_of.exit:                   ; preds = %for.end.i.i.i.i.i, %if.then.i.i.i.i.i, %if.end.i.i.i.dsa_switch_is_upstream_of.exit_crit_edge
  %retval.0.i.i.i.in = phi ptr [ %index3.i.i.i, %if.end.i.i.i.dsa_switch_is_upstream_of.exit_crit_edge ], [ %index8.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %num_ports.i.i.i.i.i, %for.end.i.i.i.i.i ]
  %65 = ptrtoint ptr %retval.0.i.i.i.in to i32
  call void @__asan_load4_noabort(i32 %65)
  %retval.0.i.i.i = load i32, ptr %retval.0.i.i.i.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %retval.0.i.i
  br i1 %cmp.i.i, label %dsa_switch_is_upstream_of.exit.if.then_crit_edge, label %dsa_switch_is_upstream_of.exit.cleanup_crit_edge

dsa_switch_is_upstream_of.exit.cleanup_crit_edge: ; preds = %dsa_switch_is_upstream_of.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dsa_switch_is_upstream_of.exit.if.then_crit_edge: ; preds = %dsa_switch_is_upstream_of.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %dsa_switch_is_upstream_of.exit.if.then_crit_edge, %dsa_to_port.exit.i.i.i.if.then_crit_edge, %dsa_to_port.exit.if.then_crit_edge
  %index5 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %66 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index5, align 4
  %ds7 = getelementptr inbounds %struct.dsa_port, ptr %15, i32 0, i32 4
  %68 = ptrtoint ptr %ds7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ds7, align 4
  %index8 = getelementptr inbounds %struct.dsa_switch, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index8, align 4
  %index9 = getelementptr inbounds %struct.dsa_port, ptr %15, i32 0, i32 5
  %index.i20 = getelementptr inbounds %struct.dsa_switch, ptr %17, i32 0, i32 2
  %72 = ptrtoint ptr %index.i20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp.i21 = icmp eq i32 %73, %71
  br i1 %cmp.i21, label %if.then.dsa_towards_port.exit_crit_edge, label %if.else.i

if.then.dsa_towards_port.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_towards_port.exit

if.else.i:                                        ; preds = %if.then
  %dst1.i.i22 = getelementptr inbounds %struct.dsa_switch, ptr %17, i32 0, i32 1
  %74 = ptrtoint ptr %dst1.i.i22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dst1.i.i22, align 4
  %rtable.i.i23 = getelementptr inbounds %struct.dsa_switch_tree, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %rtable.i.i23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn22.i.i24 = load ptr, ptr %rtable.i.i23, align 4
  %cmp.not23.i.i25 = icmp eq ptr %.pn22.i.i24, %rtable.i.i23
  br i1 %cmp.not23.i.i25, label %if.else.i.for.end.i.i42_crit_edge, label %if.else.i.for.body.i.i30_crit_edge

if.else.i.for.body.i.i30_crit_edge:               ; preds = %if.else.i
  br label %for.body.i.i30

if.else.i.for.end.i.i42_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i42

for.body.i.i30:                                   ; preds = %for.inc.i.i40.for.body.i.i30_crit_edge, %if.else.i.for.body.i.i30_crit_edge
  %.pn24.i.i26 = phi ptr [ %.pn.i.i38, %for.inc.i.i40.for.body.i.i30_crit_edge ], [ %.pn22.i.i24, %if.else.i.for.body.i.i30_crit_edge ]
  %dl.0.i.i27 = getelementptr i8, ptr %.pn24.i.i26, i32 -8
  %77 = ptrtoint ptr %dl.0.i.i27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dl.0.i.i27, align 4
  %ds3.i.i28 = getelementptr inbounds %struct.dsa_port, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ds3.i.i28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ds3.i.i28, align 4
  %cmp4.i.i29 = icmp eq ptr %80, %17
  br i1 %cmp4.i.i29, label %land.lhs.true.i.i35, label %for.body.i.i30.for.inc.i.i40_crit_edge

for.body.i.i30.for.inc.i.i40_crit_edge:           ; preds = %for.body.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i40

land.lhs.true.i.i35:                              ; preds = %for.body.i.i30
  %link_dp.i.i31 = getelementptr i8, ptr %.pn24.i.i26, i32 -4
  %81 = ptrtoint ptr %link_dp.i.i31 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %link_dp.i.i31, align 4
  %ds5.i.i32 = getelementptr inbounds %struct.dsa_port, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %ds5.i.i32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ds5.i.i32, align 4
  %index.i.i33 = getelementptr inbounds %struct.dsa_switch, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %index.i.i33 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index.i.i33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %71)
  %cmp6.i.i34 = icmp eq i32 %86, %71
  br i1 %cmp6.i.i34, label %if.then.i.i37, label %land.lhs.true.i.i35.for.inc.i.i40_crit_edge

land.lhs.true.i.i35.for.inc.i.i40_crit_edge:      ; preds = %land.lhs.true.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i40

if.then.i.i37:                                    ; preds = %land.lhs.true.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  %index8.i.i36 = getelementptr inbounds %struct.dsa_port, ptr %78, i32 0, i32 5
  br label %dsa_towards_port.exit

for.inc.i.i40:                                    ; preds = %land.lhs.true.i.i35.for.inc.i.i40_crit_edge, %for.body.i.i30.for.inc.i.i40_crit_edge
  %87 = ptrtoint ptr %.pn24.i.i26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i.i38 = load ptr, ptr %.pn24.i.i26, align 4
  %cmp.not.i.i39 = icmp eq ptr %.pn.i.i38, %rtable.i.i23
  br i1 %cmp.not.i.i39, label %for.inc.i.i40.for.end.i.i42_crit_edge, label %for.inc.i.i40.for.body.i.i30_crit_edge

for.inc.i.i40.for.body.i.i30_crit_edge:           ; preds = %for.inc.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i30

for.inc.i.i40.for.end.i.i42_crit_edge:            ; preds = %for.inc.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i42

for.end.i.i42:                                    ; preds = %for.inc.i.i40.for.end.i.i42_crit_edge, %if.else.i.for.end.i.i42_crit_edge
  %num_ports.i.i41 = getelementptr inbounds %struct.dsa_switch, ptr %17, i32 0, i32 18
  br label %dsa_towards_port.exit

dsa_towards_port.exit:                            ; preds = %for.end.i.i42, %if.then.i.i37, %if.then.dsa_towards_port.exit_crit_edge
  %retval.0.i46.in = phi ptr [ %index9, %if.then.dsa_towards_port.exit_crit_edge ], [ %index8.i.i36, %if.then.i.i37 ], [ %num_ports.i.i41, %for.end.i.i42 ]
  %88 = ptrtoint ptr %retval.0.i46.in to i32
  call void @__asan_load4_noabort(i32 %88)
  %retval.0.i46 = load i32, ptr %retval.0.i46.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %retval.0.i46)
  %cmp = icmp eq i32 %67, %retval.0.i46
  br label %cleanup

cleanup:                                          ; preds = %dsa_towards_port.exit, %dsa_switch_is_upstream_of.exit.cleanup_crit_edge, %dsa_is_unused_port.exit.thread.i.i.cleanup_crit_edge, %dsa_is_unused_port.exit.i.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %dsa_towards_port.exit ], [ false, %dsa_switch_is_upstream_of.exit.cleanup_crit_edge ], [ false, %dsa_is_unused_port.exit.i.i.cleanup_crit_edge ], [ false, %dsa_is_unused_port.exit.thread.i.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_switch_find(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_mdb_add(ptr noundef %dp, ptr noundef %mdb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %port_mdb_add = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %port_mdb_add to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_mdb_add, align 4
  %call3 = tail call i32 %9(ptr noundef %1, i32 noundef %3, ptr noundef %mdb) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_lists_lock = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %addr_lists_lock, i32 noundef 0) #6
  %mdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 25
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 2
  %12 = ptrtoint ptr %mdbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn16.i = load ptr, ptr %mdbs, align 4
  %cmp.not18.i = icmp eq ptr %.pn16.i, %mdbs
  br i1 %cmp.not18.i, label %if.end.if.end6_crit_edge, label %for.body.lr.ph.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.end
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn19.i = phi ptr [ %.pn16.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %a.020.i = getelementptr i8, ptr %.pn19.i, i32 -12
  %17 = ptrtoint ptr %a.020.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a.020.i, align 4
  %xor.i.i = xor i32 %18, %14
  %add.ptr.i.i = getelementptr i8, ptr %.pn19.i, i32 -8
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %20, %16
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vid2.i = getelementptr i8, ptr %.pn19.i, i32 -6
  %21 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %11)
  %cmp4.i = icmp eq i16 %22, %11
  br i1 %cmp4.i, label %dsa_mac_addr_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %mdbs
  br i1 %cmp.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

dsa_mac_addr_find.exit:                           ; preds = %land.lhs.true.i
  %a.020.i.le = getelementptr i8, ptr %.pn19.i, i32 -12
  %tobool.not = icmp eq ptr %a.020.i.le, null
  br i1 %tobool.not, label %dsa_mac_addr_find.exit.if.end6_crit_edge, label %if.then5

dsa_mac_addr_find.exit.if.end6_crit_edge:         ; preds = %dsa_mac_addr_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %dsa_mac_addr_find.exit
  %refcount = getelementptr i8, ptr %.pn19.i, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !33
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then5.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !34

if.then5.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then5
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !31

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #6
  br label %out

if.end6:                                          ; preds = %dsa_mac_addr_find.exit.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end6
  %ops11 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops11, align 4
  %port_mdb_add12 = getelementptr inbounds %struct.dsa_switch_ops, ptr %28, i32 0, i32 57
  %29 = ptrtoint ptr %port_mdb_add12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_mdb_add12, align 4
  %call13 = tail call i32 %30(ptr noundef %1, i32 noundef %3, ptr noundef %mdb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

if.end16:                                         ; preds = %if.end10
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i, i32 4
  %36 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr1.i, align 4
  %37 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid, align 2
  %vid22 = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %vid22 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %vid22, align 2
  %refcount23 = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount23, i32 noundef 4) #6
  %40 = ptrtoint ptr %refcount23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %refcount23, align 8
  %list = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 25, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %42, ptr noundef %mdbs) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %list, ptr %prev.i, align 4
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mdbs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dsa_mac_addr, ptr %call7.i.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list, ptr %42, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end16.out_crit_edge, %if.then15, %if.end6.out_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_crit_edge
  %err.0 = phi i32 [ %call13, %if.then15 ], [ -12, %if.end6.out_crit_edge ], [ 0, %if.else.i.i.i.out_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ 0, %if.end16.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %addr_lists_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %err.0, %out ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_port_do_mdb_del(ptr noundef %dp, ptr noundef %mdb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %port_mdb_del = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %port_mdb_del to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_mdb_del, align 4
  %call3 = tail call i32 %9(ptr noundef %1, i32 noundef %3, ptr noundef %mdb) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_lists_lock = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %addr_lists_lock, i32 noundef 0) #6
  %mdbs = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 25
  %vid = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 2
  %12 = ptrtoint ptr %mdbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn16.i = load ptr, ptr %mdbs, align 4
  %cmp.not18.i = icmp eq ptr %.pn16.i, %mdbs
  br i1 %cmp.not18.i, label %if.end.out_crit_edge, label %for.body.lr.ph.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn19.i = phi ptr [ %.pn16.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %a.020.i = getelementptr i8, ptr %.pn19.i, i32 -12
  %17 = ptrtoint ptr %a.020.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a.020.i, align 4
  %xor.i.i = xor i32 %18, %14
  %add.ptr.i.i = getelementptr i8, ptr %.pn19.i, i32 -8
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %20, %16
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vid2.i = getelementptr i8, ptr %.pn19.i, i32 -6
  %21 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %11)
  %cmp4.i = icmp eq i16 %22, %11
  br i1 %cmp4.i, label %dsa_mac_addr_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %mdbs
  br i1 %cmp.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

dsa_mac_addr_find.exit:                           ; preds = %land.lhs.true.i
  %a.020.i.le = getelementptr i8, ptr %.pn19.i, i32 -12
  %tobool.not = icmp eq ptr %a.020.i.le, null
  br i1 %tobool.not, label %dsa_mac_addr_find.exit.out_crit_edge, label %if.end6

dsa_mac_addr_find.exit.out_crit_edge:             ; preds = %dsa_mac_addr_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %dsa_mac_addr_find.exit
  %refcount = getelementptr i8, ptr %.pn19.i, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end9, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_crit_edge, label %if.then10.i.i.i, !prof !31

if.end5.i.i.i.out_crit_edge:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %out

if.end9:                                          ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  %ops10 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops10, align 4
  %port_mdb_del11 = getelementptr inbounds %struct.dsa_switch_ops, ptr %26, i32 0, i32 58
  %27 = ptrtoint ptr %port_mdb_del11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_mdb_del11, align 4
  %call12 = tail call i32 %28(ptr noundef %1, i32 noundef %3, ptr noundef %mdb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  %29 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %refcount, align 4
  br label %out

if.end16:                                         ; preds = %if.end9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn19.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_del.exit_crit_edge

if.end16.list_del.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn19.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn19.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end16.list_del.exit_crit_edge
  %36 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn19.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn19.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %a.020.i.le) #6
  br label %out

out:                                              ; preds = %list_del.exit, %if.then14, %if.then10.i.i.i, %if.end5.i.i.i.out_crit_edge, %dsa_mac_addr_find.exit.out_crit_edge, %for.inc.i.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call12, %if.then14 ], [ 0, %list_del.exit ], [ -2, %dsa_mac_addr_find.exit.out_crit_edge ], [ -2, %if.end.out_crit_edge ], [ 0, %if.end5.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i ], [ -2, %for.inc.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %addr_lists_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %err.0, %out ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_set_tag_protocol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_setup_tagger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_change_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dsa/switch.c", i32 784, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dsa_switch_unregister_notifier._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dsa_switch_unregister_notifier._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/dsa/switch.c", i32 765, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dsa_switch_event.__UNIQUE_ID_ddebug499, !9, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/dsa/switch.c", i32 169, i32 4}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dsa_switch_bridge_leave._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @dsa_switch_bridge_leave._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/dsa/switch.c", i32 605, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2149061579, i64 2149061584, i64 2149061597, i64 2149061641, i64 2149061675, i64 2149061696}
!33 = !{i64 2148505844, i64 2148505876, i64 2148505905, i64 2148505939, i64 2148505970, i64 2148505993}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2148593869}
!36 = !{i64 2148508309, i64 2148508341, i64 2148508370, i64 2148508404, i64 2148508435, i64 2148508458}
!37 = !{i64 2149828089}
