; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.148, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.134 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.134 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.148 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.149, i8 }
%struct.anon.149 = type { i8, i8 }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.prestera_switchdev = type { ptr, %struct.list_head, i8, %struct.notifier_block, %struct.notifier_block }
%struct.prestera_bridge = type { %struct.list_head, ptr, ptr, %struct.list_head, i8, i16 }
%struct.prestera_bridge_port = type { %struct.list_head, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.prestera_fdb_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.150 }
%union.anon.150 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.prestera_bridge_vlan = type { %struct.list_head, %struct.list_head, i16 }
%struct.prestera_port_vlan = type { %struct.list_head, %struct.list_head, ptr, ptr, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.prestera_event = type { i16, %union.anon.151 }
%union.anon.151 = type { %struct.prestera_port_event }
%struct.prestera_port_event = type { i32, %union.anon.152 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { i64, %struct.anon.155, i8 }
%struct.anon.155 = type { i8, i8 }
%struct.prestera_fdb_event = type { i32, %union.anon.156, i32, %union.anon.157 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { [6 x i8] }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s_ordered\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prestera_br\00", [20 x i8] zeroinitializer }, align 32
@swdev_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Only one VLAN-aware bridge is supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_switchdev.c\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@prestera_switchdev_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&swdev_work->work)\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VLAN filtering can't be changed for existing bridge\0A\00", [43 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@switch.table.prestera_port_obj_attr_set = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.prestera_port_obj_attr_set.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.prestera_port_obj_attr_set.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.prestera_port_obj_attr_set.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.prestera_port_obj_add = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\01", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 1247, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"swdev_wq\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 70, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 275, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 317, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 883, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [62 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 656, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [40 x i8] c"switch.table.prestera_port_obj_attr_set\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [42 x i8] c"switch.table.prestera_port_obj_attr_set.6\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [42 x i8] c"switch.table.prestera_port_obj_attr_set.7\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [42 x i8] c"switch.table.prestera_port_obj_attr_set.8\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [35 x i8] c"switch.table.prestera_port_obj_add\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @swdev_wq, ptr @.str.2, ptr @.str.3, ptr @prestera_switchdev_event.__key, ptr @.str.4, ptr @.str.5, ptr @switch.table.prestera_port_obj_attr_set, ptr @switch.table.prestera_port_obj_attr_set.6, ptr @switch.table.prestera_port_obj_attr_set.7, ptr @switch.table.prestera_port_obj_attr_set.8, ptr @switch.table.prestera_port_obj_add], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swdev_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_switchdev_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prestera_port_obj_attr_set to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prestera_port_obj_attr_set.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prestera_port_obj_attr_set.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prestera_port_obj_attr_set.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prestera_port_obj_add to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_bridge_port_join(ptr noundef %br_dev, ptr nocapture noundef readonly %port, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %bridge_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %swdev1 = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %swdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swdev1, align 4
  %bridge_list.i = getelementptr inbounds %struct.prestera_switchdev, ptr %3, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bridge.0.in.i = phi ptr [ %bridge_list.i, %entry ], [ %bridge.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %bridge.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bridge.0.i = load ptr, ptr %bridge.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bridge.0.i, %bridge_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %dev2.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i, align 4
  %cmp3.i = icmp eq ptr %6, %br_dev
  br i1 %cmp3.i, label %prestera_bridge_by_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

prestera_bridge_by_dev.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %bridge.0.i, null
  br i1 %tobool.not, label %prestera_bridge_by_dev.exit.if.then_crit_edge, label %prestera_bridge_by_dev.exit.if.end6_crit_edge

prestera_bridge_by_dev.exit.if.end6_crit_edge:    ; preds = %prestera_bridge_by_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

prestera_bridge_by_dev.exit.if.then_crit_edge:    ; preds = %prestera_bridge_by_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %prestera_bridge_by_dev.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef %br_dev) #9
  %frombool.i = zext i1 %call.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bridge_id.i) #9
  %7 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %bridge_id.i, align 2, !annotation !24
  br i1 %call.i, label %land.lhs.true.i, label %if.end.thread.i

land.lhs.true.i:                                  ; preds = %if.then
  %bridge_8021q_exists.i = getelementptr inbounds %struct.prestera_switchdev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bridge_8021q_exists.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bridge_8021q_exists.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %br_dev, ptr noundef nonnull @.str.2) #12
  br label %prestera_bridge_create.exit.thread

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #13
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.prestera_bridge_create.exit.thread_crit_edge, label %if.then9.i

if.end.i.prestera_bridge_create.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_create.exit.thread

if.end.thread.i:                                  ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i43.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 28) #13
  %tobool4.not44.i = icmp eq ptr %call7.i.i43.i, null
  br i1 %tobool4.not44.i, label %if.end.thread.i.prestera_bridge_create.exit.thread_crit_edge, label %if.else.i

if.end.thread.i.prestera_bridge_create.exit.thread_crit_edge: ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_create.exit.thread

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bridge_8021q_exists.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bridge_8021q_exists.i, align 4
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.thread.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call11.i = call i32 @prestera_hw_bridge_create(ptr noundef %14, ptr noundef nonnull %bridge_id.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i43.i) #9
  %15 = inttoptr i32 %call11.i to ptr
  br label %prestera_bridge_create.exit

if.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bridge_id.i, align 2
  %bridge_id16.i = getelementptr inbounds %struct.prestera_bridge, ptr %call7.i.i43.i, i32 0, i32 5
  %18 = ptrtoint ptr %bridge_id16.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %bridge_id16.i, align 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end15.i, %if.then9.i
  %call7.i.i4548.i = phi ptr [ %call7.i.i43.i, %if.end15.i ], [ %call7.i.i.i, %if.then9.i ]
  %vlan_enabled19.i = getelementptr inbounds %struct.prestera_bridge, ptr %call7.i.i4548.i, i32 0, i32 4
  %19 = ptrtoint ptr %vlan_enabled19.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %vlan_enabled19.i, align 8
  %swdev21.i = getelementptr inbounds %struct.prestera_bridge, ptr %call7.i.i4548.i, i32 0, i32 2
  %20 = ptrtoint ptr %swdev21.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %swdev21.i, align 4
  %dev22.i = getelementptr inbounds %struct.prestera_bridge, ptr %call7.i.i4548.i, i32 0, i32 1
  %21 = ptrtoint ptr %dev22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %br_dev, ptr %dev22.i, align 8
  %port_list.i = getelementptr inbounds %struct.prestera_bridge, ptr %call7.i.i4548.i, i32 0, i32 3
  %22 = ptrtoint ptr %port_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %port_list.i, ptr %port_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %call7.i.i4548.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %port_list.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %bridge_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bridge_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i4548.i, ptr noundef %bridge_list.i, ptr noundef %25) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.prestera_bridge_create.exit_crit_edge

if.end17.i.prestera_bridge_create.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_create.exit

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i4548.i, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %call7.i.i4548.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call7.i.i4548.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i4548.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bridge_list.i, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %bridge_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i4548.i, ptr %bridge_list.i, align 4
  br label %prestera_bridge_create.exit

prestera_bridge_create.exit.thread:               ; preds = %if.end.thread.i.prestera_bridge_create.exit.thread_crit_edge, %if.end.i.prestera_bridge_create.exit.thread_crit_edge, %if.then.i
  %retval.0.i46.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.thread.i.prestera_bridge_create.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.prestera_bridge_create.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bridge_id.i) #9
  br label %if.then4

prestera_bridge_create.exit:                      ; preds = %if.end.i.i.i, %if.end17.i.prestera_bridge_create.exit_crit_edge, %if.then13.i
  %retval.0.i46 = phi ptr [ %15, %if.then13.i ], [ %call7.i.i4548.i, %if.end17.i.prestera_bridge_create.exit_crit_edge ], [ %call7.i.i4548.i, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bridge_id.i) #9
  %cmp.i = icmp ugt ptr %retval.0.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %prestera_bridge_create.exit.if.then4_crit_edge, label %prestera_bridge_create.exit.if.end6_crit_edge

prestera_bridge_create.exit.if.end6_crit_edge:    ; preds = %prestera_bridge_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

prestera_bridge_create.exit.if.then4_crit_edge:   ; preds = %prestera_bridge_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %prestera_bridge_create.exit.if.then4_crit_edge, %prestera_bridge_create.exit.thread
  %retval.0.i4660 = phi ptr [ %retval.0.i46.ph, %prestera_bridge_create.exit.thread ], [ %retval.0.i46, %prestera_bridge_create.exit.if.then4_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i4660 to i32
  br label %cleanup

if.end6:                                          ; preds = %prestera_bridge_create.exit.if.end6_crit_edge, %prestera_bridge_by_dev.exit.if.end6_crit_edge
  %bridge.0 = phi ptr [ %bridge.0.i, %prestera_bridge_by_dev.exit.if.end6_crit_edge ], [ %retval.0.i46, %prestera_bridge_create.exit.if.end6_crit_edge ]
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 8
  %port_list.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end6
  %br_port.0.in.i.i = phi ptr [ %port_list.i.i, %if.end6 ], [ %br_port.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %33 = ptrtoint ptr %br_port.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %br_port.0.i.i = load ptr, ptr %br_port.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %br_port.0.i.i, %port_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i48_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i48_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i48

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev2.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %35, %32
  br i1 %cmp3.i.i, label %__prestera_bridge_port_by_dev.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

__prestera_bridge_port_by_dev.exit.i:             ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %br_port.0.i.i, null
  br i1 %tobool.not.i, label %__prestera_bridge_port_by_dev.exit.i.if.end.i48_crit_edge, label %if.then.i47

__prestera_bridge_port_by_dev.exit.i.if.end.i48_crit_edge: ; preds = %__prestera_bridge_port_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i48

if.then.i47:                                      ; preds = %__prestera_bridge_port_by_dev.exit.i
  %ref_count.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #9, !srcloc !26
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i47.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !27

if.then.i47.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i47
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.prestera_bridge_port_add.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !28

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.prestera_bridge_port_add.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_port_add.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i47.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i47.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %prestera_bridge_port_add.exit

if.end.i48:                                       ; preds = %__prestera_bridge_port_by_dev.exit.i.if.end.i48_crit_edge, %for.cond.i.i.if.end.i48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i48.if.then9_crit_edge, label %if.end.i.i

if.end.i48.if.then9_crit_edge:                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.i.i:                                       ; preds = %if.end.i48
  %flags.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2656, ptr %flags.i.i, align 4
  %stp_state.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %stp_state.i.i, align 8
  %ref_count.i12.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i12.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %ref_count.i12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %ref_count.i12.i, align 8
  %bridge1.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %bridge1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bridge.0, ptr %bridge1.i.i, align 4
  %dev2.i13.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %dev2.i13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %32, ptr %dev2.i13.i, align 8
  %vlan_list.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %vlan_list.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %vlan_list.i.i, ptr %vlan_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %vlan_list.i.i, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %port_list.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port_list.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %port_list.i.i, ptr noundef %47) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.prestera_bridge_port_add.exit_crit_edge

if.end.i.i.prestera_bridge_port_add.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_port_add.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %port_list.i.i, ptr %prev3.i.i.i.i, align 4
  %51 = ptrtoint ptr %port_list.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i.i.i, ptr %port_list.i.i, align 4
  br label %prestera_bridge_port_add.exit

prestera_bridge_port_add.exit:                    ; preds = %if.end.i.i.i.i, %if.end.i.i.prestera_bridge_port_add.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.prestera_bridge_port_add.exit_crit_edge
  %retval.0.i49 = phi ptr [ %br_port.0.i.i, %if.else.i.i.i.i.i.prestera_bridge_port_add.exit_crit_edge ], [ %br_port.0.i.i, %if.end15.sink.split.i.i.i.i.i ], [ %call7.i.i.i.i, %if.end.i.i.prestera_bridge_port_add.exit_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ]
  %cmp.i50 = icmp ugt ptr %retval.0.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %prestera_bridge_port_add.exit.if.then9_crit_edge, label %if.end11

prestera_bridge_port_add.exit.if.then9_crit_edge: ; preds = %prestera_bridge_port_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %prestera_bridge_port_add.exit.if.then9_crit_edge, %if.end.i48.if.then9_crit_edge
  %retval.0.i4963 = phi ptr [ %retval.0.i49, %prestera_bridge_port_add.exit.if.then9_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i48.if.then9_crit_edge ]
  call fastcc void @prestera_bridge_put(ptr noundef %bridge.0)
  %52 = ptrtoint ptr %retval.0.i4963 to i32
  br label %cleanup

if.end11:                                         ; preds = %prestera_bridge_port_add.exit
  %dev12 = getelementptr inbounds %struct.prestera_bridge_port, ptr %retval.0.i49, i32 0, i32 1
  %53 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev12, align 4
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 8
  %call14 = call i32 @switchdev_bridge_port_offload(ptr noundef %54, ptr noundef %56, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.err_switchdev_offload_crit_edge

if.end11.err_switchdev_offload_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_switchdev_offload

if.end17:                                         ; preds = %if.end11
  %vlan_enabled = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0, i32 0, i32 4
  %57 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vlan_enabled, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool18.not = icmp eq i8 %58, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %59 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev12, align 4
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 2304
  %bridge1.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %retval.0.i49, i32 0, i32 2
  %61 = ptrtoint ptr %bridge1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bridge1.i, align 4
  %bridge_id.i51 = getelementptr inbounds %struct.prestera_bridge, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %bridge_id.i51 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bridge_id.i51, align 2
  %call2.i = call i32 @prestera_hw_bridge_port_add(ptr noundef %add.ptr.i.i, i16 noundef zeroext %64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i52 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i52, label %if.end.i54, label %if.end20.err_port_join_crit_edge

if.end20.err_port_join_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_join

if.end.i54:                                       ; preds = %if.end20
  %flags.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %retval.0.i49, i32 0, i32 5
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 4
  %call3.i = call i32 @prestera_hw_port_flood_set(ptr noundef %add.ptr.i.i, i32 noundef 2112, i32 noundef %66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i53 = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i53, label %if.end6.i, label %if.end.i54.err_port_flood_set.i_crit_edge

if.end.i54.err_port_flood_set.i_crit_edge:        ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_flood_set.i

if.end6.i:                                        ; preds = %if.end.i54
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.i = icmp ne i32 %and.i, 0
  %call9.i = call i32 @prestera_hw_port_learning_set(ptr noundef %add.ptr.i.i, i1 noundef zeroext %tobool8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.err_port_flood_set.i_crit_edge

if.end6.i.err_port_flood_set.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_flood_set.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_port_flood_set.i:                             ; preds = %if.end6.i.err_port_flood_set.i_crit_edge, %if.end.i54.err_port_flood_set.i_crit_edge
  %err.0.i = phi i32 [ %call3.i, %if.end.i54.err_port_flood_set.i_crit_edge ], [ %call9.i, %if.end6.i.err_port_flood_set.i_crit_edge ]
  %69 = ptrtoint ptr %bridge_id.i51 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %bridge_id.i51, align 2
  %call14.i = call i32 @prestera_hw_bridge_port_delete(ptr noundef %add.ptr.i.i, i16 noundef zeroext %70) #9
  br label %err_port_join

err_port_join:                                    ; preds = %err_port_flood_set.i, %if.end20.err_port_join_crit_edge
  %retval.0.i55.ph = phi i32 [ %call2.i, %if.end20.err_port_join_crit_edge ], [ %err.0.i, %err_port_flood_set.i ]
  %71 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev12, align 4
  call void @switchdev_bridge_port_unoffload(ptr noundef %72, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %err_switchdev_offload

err_switchdev_offload:                            ; preds = %err_port_join, %if.end11.err_switchdev_offload_crit_edge
  %err.0 = phi i32 [ %call14, %if.end11.err_switchdev_offload_crit_edge ], [ %retval.0.i55.ph, %err_port_join ]
  call fastcc void @prestera_bridge_port_put(ptr noundef nonnull %retval.0.i49)
  br label %cleanup

cleanup:                                          ; preds = %err_switchdev_offload, %if.end6.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then9, %if.then4
  %retval.0 = phi i32 [ %52, %if.then9 ], [ %err.0, %err_switchdev_offload ], [ %30, %if.then4 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_bridge_put(ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.prestera_bridge, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %1, %port_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %swdev1.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %swdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swdev1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bridge) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %bridge, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %bridge, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bridge, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge, i32 0, i32 4
  %12 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vlan_enabled.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bridge_8021q_exists.i = getelementptr inbounds %struct.prestera_switchdev, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %bridge_8021q_exists.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bridge_8021q_exists.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %bridge_id.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge, i32 0, i32 5
  %17 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bridge_id.i, align 2
  %call.i = tail call i32 @prestera_hw_bridge_delete(ptr noundef %16, i16 noundef zeroext %18) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %19 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not.i = icmp eq ptr %20, %port_list
  br i1 %cmp.i.not.i, label %if.end.i.prestera_bridge_destroy.exit_crit_edge, label %do.end.i, !prof !28

if.end.i.prestera_bridge_destroy.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_destroy.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %prestera_bridge_destroy.exit

prestera_bridge_destroy.exit:                     ; preds = %do.end.i, %if.end.i.prestera_bridge_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %bridge) #9
  br label %if.end

if.end:                                           ; preds = %prestera_bridge_destroy.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_bridge_port_put(ptr noundef %br_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge1 = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port, i32 0, i32 2
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %ref_count = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #9, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !28

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %br_port) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %br_port, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %br_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %br_port, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %br_port to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %br_port, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %br_port, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %vlan_list.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %vlan_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %vlan_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.prestera_bridge_port_destroy.exit_crit_edge, label %do.end.i, !prof !28

list_del.exit.i.prestera_bridge_port_destroy.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_port_destroy.exit

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 416, i32 noundef 9, ptr noundef null) #9
  br label %prestera_bridge_port_destroy.exit

prestera_bridge_port_destroy.exit:                ; preds = %do.end.i, %list_del.exit.i.prestera_bridge_port_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %br_port) #9
  tail call fastcc void @prestera_bridge_put(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %prestera_bridge_port_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_bridge_port_leave(ptr noundef readnone %br_dev, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %swdev1 = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %swdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swdev1, align 4
  %bridge_list.i = getelementptr inbounds %struct.prestera_switchdev, ptr %3, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bridge.0.in.i = phi ptr [ %bridge_list.i, %entry ], [ %bridge.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %bridge.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bridge.0.i = load ptr, ptr %bridge.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bridge.0.i, %bridge_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dev2.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i, align 4
  %cmp3.i = icmp eq ptr %6, %br_dev
  br i1 %cmp3.i, label %prestera_bridge_by_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

prestera_bridge_by_dev.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %bridge.0.i, null
  br i1 %tobool.not, label %prestera_bridge_by_dev.exit.cleanup_crit_edge, label %if.end

prestera_bridge_by_dev.exit.cleanup_crit_edge:    ; preds = %prestera_bridge_by_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %prestera_bridge_by_dev.exit
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %port_list.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i, i32 0, i32 3
  br label %for.cond.i28

for.cond.i28:                                     ; preds = %for.body.i31.for.cond.i28_crit_edge, %if.end
  %br_port.0.in.i = phi ptr [ %port_list.i, %if.end ], [ %br_port.0.i, %for.body.i31.for.cond.i28_crit_edge ]
  %9 = ptrtoint ptr %br_port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %br_port.0.i = load ptr, ptr %br_port.0.in.i, align 4
  %cmp.not.i27 = icmp eq ptr %br_port.0.i, %port_list.i
  br i1 %cmp.not.i27, label %for.cond.i28.cleanup_crit_edge, label %for.body.i31

for.cond.i28.cleanup_crit_edge:                   ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i31:                                     ; preds = %for.cond.i28
  %dev2.i29 = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev2.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2.i29, align 4
  %cmp3.i30 = icmp eq ptr %11, %8
  br i1 %cmp3.i30, label %__prestera_bridge_port_by_dev.exit, label %for.body.i31.for.cond.i28_crit_edge

for.body.i31.for.cond.i28_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i28

__prestera_bridge_port_by_dev.exit:               ; preds = %for.body.i31
  %dev2.i29.le = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i, i32 0, i32 1
  %tobool3.not = icmp eq ptr %br_port.0.i, null
  br i1 %tobool3.not, label %__prestera_bridge_port_by_dev.exit.cleanup_crit_edge, label %if.end5

__prestera_bridge_port_by_dev.exit.cleanup_crit_edge: ; preds = %__prestera_bridge_port_by_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %__prestera_bridge_port_by_dev.exit
  %bridge6 = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %bridge6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge6, align 4
  %vlan_enabled = getelementptr inbounds %struct.prestera_bridge, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vlan_enabled, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %dev2.i29.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2.i29.le, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %17, i32 2304
  %call1.i35 = tail call i32 @prestera_hw_fdb_flush_port(ptr noundef %add.ptr.i.i34, i32 noundef 3) #9
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @prestera_port_pvid_set(ptr noundef %add.ptr.i.i34, i16 noundef zeroext 1) #9
  br label %if.end9

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %bridge6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bridge6, align 4
  %bridge_id.i = getelementptr inbounds %struct.prestera_bridge, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bridge_id.i, align 2
  %call2.i36 = tail call i32 @prestera_hw_bridge_port_delete(ptr noundef %add.ptr.i.i34, i16 noundef zeroext %21) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %22 = ptrtoint ptr %dev2.i29.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2.i29.le, align 4
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %call11 = tail call i32 @prestera_hw_port_learning_set(ptr noundef %port, i1 noundef zeroext false) #9
  %call12 = tail call i32 @prestera_hw_port_flood_set(ptr noundef %port, i32 noundef 2112, i32 noundef 0) #9
  %call.i = tail call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %port, i16 noundef zeroext -1, i8 noundef zeroext 3) #9
  tail call fastcc void @prestera_bridge_port_put(ptr noundef nonnull %br_port.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %__prestera_bridge_port_by_dev.exit.cleanup_crit_edge, %for.cond.i28.cleanup_crit_edge, %prestera_bridge_by_dev.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_learning_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_port_flood_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_switchdev_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %swdev1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 1
  %1 = ptrtoint ptr %swdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %swdev1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sw, ptr %call7.i.i, align 8
  %bridge_list = getelementptr inbounds %struct.prestera_switchdev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bridge_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %bridge_list, ptr %bridge_list, align 4
  %prev.i = getelementptr inbounds %struct.prestera_switchdev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bridge_list, ptr %prev.i, align 8
  %call3 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1, ptr noundef nonnull @.str.1) #9
  store ptr %call3, ptr @swdev_wq, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_alloc_wq_crit_edge, label %if.end6

if.end.err_alloc_wq_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc_wq

if.end6:                                          ; preds = %if.end
  %swdev_nb.i = getelementptr inbounds %struct.prestera_switchdev, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %swdev_nb.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @prestera_switchdev_event, ptr %swdev_nb.i, align 4
  %call.i = tail call i32 @register_switchdev_notifier(ptr noundef %swdev_nb.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.prestera_switchdev_handler_init.exit_crit_edge

if.end6.prestera_switchdev_handler_init.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_switchdev_handler_init.exit

if.end.i:                                         ; preds = %if.end6
  %swdev_nb_blk.i = getelementptr inbounds %struct.prestera_switchdev, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %swdev_nb_blk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @prestera_switchdev_blk_event, ptr %swdev_nb_blk.i, align 8
  %call4.i = tail call i32 @register_switchdev_blocking_notifier(ptr noundef %swdev_nb_blk.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end10, label %err_register_blk_swdev_notifier.i

err_register_blk_swdev_notifier.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 @unregister_switchdev_notifier(ptr noundef %swdev_nb.i) #9
  br label %prestera_switchdev_handler_init.exit

prestera_switchdev_handler_init.exit:             ; preds = %err_register_blk_swdev_notifier.i, %if.end6.prestera_switchdev_handler_init.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.end6.prestera_switchdev_handler_init.exit_crit_edge ], [ %call4.i, %err_register_blk_swdev_notifier.i ]
  %7 = load ptr, ptr @swdev_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #9
  br label %err_swdev_init

if.end10:                                         ; preds = %if.end.i
  %call.i25 = tail call i32 @prestera_hw_event_handler_register(ptr noundef %sw, i32 noundef 2, ptr noundef nonnull @prestera_fdb_event, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end.i27, label %if.end10.err_swdev_init_crit_edge

if.end10.err_swdev_init_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_swdev_init

if.end.i27:                                       ; preds = %if.end10
  %call1.i = tail call i32 @prestera_hw_switch_ageing_set(ptr noundef %sw, i32 noundef 300000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i27.cleanup_crit_edge, label %err_ageing_set.i

if.end.i27.cleanup_crit_edge:                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_ageing_set.i:                                 ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @prestera_hw_event_handler_unregister(ptr noundef %sw, i32 noundef 2, ptr noundef nonnull @prestera_fdb_event) #9
  br label %err_swdev_init

err_swdev_init:                                   ; preds = %err_ageing_set.i, %if.end10.err_swdev_init_crit_edge, %prestera_switchdev_handler_init.exit
  %err.0 = phi i32 [ %err.0.i, %prestera_switchdev_handler_init.exit ], [ %call.i25, %if.end10.err_swdev_init_crit_edge ], [ %call1.i, %err_ageing_set.i ]
  %8 = load ptr, ptr @swdev_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #9
  br label %err_alloc_wq

err_alloc_wq:                                     ; preds = %err_swdev_init, %if.end.err_alloc_wq_crit_edge
  %err.1 = phi i32 [ %err.0, %err_swdev_init ], [ -12, %if.end.err_alloc_wq_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_wq, %if.end.i27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_alloc_wq ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.i27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_switchdev_fini(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %swdev1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 1
  %0 = ptrtoint ptr %swdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swdev1, align 4
  tail call void @prestera_hw_event_handler_unregister(ptr noundef %sw, i32 noundef 2, ptr noundef nonnull @prestera_fdb_event) #9
  %swdev_nb_blk.i = getelementptr inbounds %struct.prestera_switchdev, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef %swdev_nb_blk.i) #9
  %swdev_nb.i = getelementptr inbounds %struct.prestera_switchdev, ptr %1, i32 0, i32 4
  %call1.i = tail call i32 @unregister_switchdev_notifier(ptr noundef %swdev_nb.i) #9
  %2 = load ptr, ptr @swdev_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_bridge_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_bridge_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_bridge_port_add(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_bridge_port_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_flush_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_port_pvid_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vlan_port_stp_set(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @prestera_netdev_check, ptr noundef nonnull @prestera_port_obj_attr_set) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @prestera_netdev_check(ptr noundef %1) #9
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 72) #13
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %event16 = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %event16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %event, ptr %event16, align 4
  %dev17 = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %dev17, align 8
  %event.off = add i32 %event, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end15
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @prestera_switchdev_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry21 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry21, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @prestera_fdb_event_work, ptr %func, align 4
  %fdb_info23 = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %call7.i.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %fdb_info23, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 6) #13
  %addr = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i65, ptr %addr, align 8
  %tobool28.not = icmp eq ptr %call7.i.i65, null
  br i1 %tobool28.not, label %out_bad, label %if.end30

if.end30:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %addr33 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %14 = ptrtoint ptr %addr33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr33, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %call7.i.i65 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i65, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i65, i32 4
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i, align 4
  tail call fastcc void @dev_hold(ptr noundef %1)
  %22 = load ptr, ptr @swdev_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

out_bad:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_bad, %sw.default, %if.end30, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ 0, %sw.default ], [ 0, %if.end30 ], [ 32770, %out_bad ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 32770, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_switchdev_blk_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb2
    i32 9, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @prestera_netdev_check, ptr noundef nonnull @prestera_port_obj_add) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @prestera_netdev_check, ptr noundef nonnull @prestera_port_obj_del) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @prestera_netdev_check, ptr noundef nonnull @prestera_port_obj_attr_set) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb
  %err.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prestera_netdev_check(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_obj_attr_set(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %priv.i.i.i29 = alloca %struct.netdev_nested_priv, align 8
  %priv.i.i.i = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb4
    i32 5, label %sw.bb8
    i32 6, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %u = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %u, align 4
  %sw.i = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw.i, align 4
  %swdev.i = getelementptr inbounds %struct.prestera_switch, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %swdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %swdev.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i.i.i) #9
  %11 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %priv.i.i.i, align 8
  %call.i.i.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %4, ptr noundef nonnull @prestera_match_upper_bridge_dev, ptr noundef nonnull %priv.i.i.i) #9
  %data.i.i.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i.i.i) #9
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %bridge_list.i.i.i = getelementptr inbounds %struct.prestera_switchdev, ptr %10, i32 0, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %bridge.0.in.i.i.i = phi ptr [ %bridge_list.i.i.i, %if.end.i.i ], [ %bridge.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %bridge.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bridge.0.i.i.i = load ptr, ptr %bridge.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %bridge.0.i.i.i, %bridge_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.sw.epilog_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.sw.epilog_crit_edge:               ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %dev2.i.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %16, %13
  br i1 %cmp3.i.i.i, label %prestera_bridge_by_dev.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

prestera_bridge_by_dev.exit.i.i:                  ; preds = %for.body.i.i.i
  %tobool2.not.i.i = icmp eq ptr %bridge.0.i.i.i, null
  br i1 %tobool2.not.i.i, label %prestera_bridge_by_dev.exit.i.i.sw.epilog_crit_edge, label %if.end4.i.i

prestera_bridge_by_dev.exit.i.i.sw.epilog_crit_edge: ; preds = %prestera_bridge_by_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.i.i:                                      ; preds = %prestera_bridge_by_dev.exit.i.i
  %port_list.i.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i, i32 0, i32 3
  br label %for.cond.i11.i.i

for.cond.i11.i.i:                                 ; preds = %for.body.i14.i.i.for.cond.i11.i.i_crit_edge, %if.end4.i.i
  %br_port.0.in.i.i.i = phi ptr [ %port_list.i.i.i, %if.end4.i.i ], [ %br_port.0.i.i.i, %for.body.i14.i.i.for.cond.i11.i.i_crit_edge ]
  %17 = ptrtoint ptr %br_port.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %br_port.0.i.i.i = load ptr, ptr %br_port.0.in.i.i.i, align 4
  %cmp.not.i10.i.i = icmp eq ptr %br_port.0.i.i.i, %port_list.i.i.i
  br i1 %cmp.not.i10.i.i, label %for.cond.i11.i.i.sw.epilog_crit_edge, label %for.body.i14.i.i

for.cond.i11.i.i.sw.epilog_crit_edge:             ; preds = %for.cond.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i14.i.i:                                 ; preds = %for.cond.i11.i.i
  %dev2.i12.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev2.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i12.i.i, align 4
  %cmp3.i13.i.i = icmp eq ptr %19, %4
  br i1 %cmp3.i13.i.i, label %prestera_bridge_port_by_dev.exit.i, label %for.body.i14.i.i.for.cond.i11.i.i_crit_edge

for.body.i14.i.i.for.cond.i11.i.i_crit_edge:      ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i11.i.i

prestera_bridge_port_by_dev.exit.i:               ; preds = %for.body.i14.i.i
  %tobool.not.i = icmp eq ptr %br_port.0.i.i.i, null
  br i1 %tobool.not.i, label %prestera_bridge_port_by_dev.exit.i.sw.epilog_crit_edge, label %if.end.i

prestera_bridge_port_by_dev.exit.i.sw.epilog_crit_edge: ; preds = %prestera_bridge_port_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %prestera_bridge_port_by_dev.exit.i
  %bridge.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.prestera_bridge, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vlan_enabled.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %bridge_id.i = getelementptr inbounds %struct.prestera_bridge, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bridge_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %26 = icmp ult i8 %6, 5
  br i1 %26, label %switch.lookup, label %if.then2.i.err_port_stp_set.i_crit_edge

if.then2.i.err_port_stp_set.i_crit_edge:          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_stp_set.i

switch.lookup:                                    ; preds = %if.then2.i
  %27 = sext i8 %6 to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.prestera_port_obj_attr_set, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %28)
  %switch.load = load i8, ptr %switch.gep, align 1
  %call.i.i = call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %add.ptr.i, i16 noundef zeroext %25, i8 noundef zeroext %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %switch.lookup.if.end18.i_crit_edge, label %switch.lookup.err_port_stp_set.i_crit_edge

switch.lookup.err_port_stp_set.i_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_stp_set.i

switch.lookup.if.end18.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  %vlan_list.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %29 = icmp ult i8 %6, 5
  %30 = sext i8 %6 to i32
  %switch.gep116 = getelementptr inbounds [5 x i8], ptr @switch.table.prestera_port_obj_attr_set.6, i32 0, i32 %30
  br label %for.cond.i

for.cond.i:                                       ; preds = %prestera_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge, %if.else.i
  %br_vlan.0.in.i = phi ptr [ %vlan_list.i, %if.else.i ], [ %br_vlan.0.i, %prestera_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge ]
  %31 = ptrtoint ptr %br_vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %br_vlan.0.i = load ptr, ptr %br_vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %br_vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end18.i_crit_edge, label %for.body.i

for.cond.i.if.end18.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

for.body.i:                                       ; preds = %for.cond.i
  %port_vlan_list.i.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.0.i, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %port_vlan.0.in.i.i = phi ptr [ %port_vlan_list.i.i, %for.body.i ], [ %port_vlan.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %32 = ptrtoint ptr %port_vlan.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %port_vlan.0.i.i = load ptr, ptr %port_vlan.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %port_vlan.0.i.i, %port_vlan_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.prestera_port_bridge_vlan_stp_set.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.prestera_port_bridge_vlan_stp_set.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_port_bridge_vlan_stp_set.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %port2.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.0.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %port2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port2.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %34, %add.ptr.i
  br i1 %cmp3.not.i.i, label %if.end.i68.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

if.end.i68.i:                                     ; preds = %for.body.i.i
  br i1 %29, label %switch.lookup115, label %if.end.i68.i.for.cond23.preheader.i_crit_edge

if.end.i68.i.for.cond23.preheader.i_crit_edge:    ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond23.preheader.i

switch.lookup115:                                 ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  %vid.i.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid.i.i, align 4
  %37 = ptrtoint ptr %switch.gep116 to i32
  call void @__asan_load1_noabort(i32 %37)
  %switch.load117 = load i8, ptr %switch.gep116, align 1
  %call.i.i69.i = call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %add.ptr.i, i16 noundef zeroext %36, i8 noundef zeroext %switch.load117) #9
  br label %prestera_port_bridge_vlan_stp_set.exit.i

prestera_port_bridge_vlan_stp_set.exit.i:         ; preds = %switch.lookup115, %for.cond.i.i.prestera_port_bridge_vlan_stp_set.exit.i_crit_edge
  %retval.0.i70.i = phi i32 [ %call.i.i69.i, %switch.lookup115 ], [ 0, %for.cond.i.i.prestera_port_bridge_vlan_stp_set.exit.i_crit_edge ]
  %tobool10.not.i = icmp eq i32 %retval.0.i70.i, 0
  br i1 %tobool10.not.i, label %prestera_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge, label %prestera_port_bridge_vlan_stp_set.exit.i.for.cond23.preheader.i_crit_edge

prestera_port_bridge_vlan_stp_set.exit.i.for.cond23.preheader.i_crit_edge: ; preds = %prestera_port_bridge_vlan_stp_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond23.preheader.i

prestera_port_bridge_vlan_stp_set.exit.i.for.cond.i_crit_edge: ; preds = %prestera_port_bridge_vlan_stp_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond23.preheader.i:                           ; preds = %prestera_port_bridge_vlan_stp_set.exit.i.for.cond23.preheader.i_crit_edge, %if.end.i68.i.for.cond23.preheader.i_crit_edge
  %retval.0.i70122.i = phi i32 [ %retval.0.i70.i, %prestera_port_bridge_vlan_stp_set.exit.i.for.cond23.preheader.i_crit_edge ], [ -22, %if.end.i68.i.for.cond23.preheader.i_crit_edge ]
  %br_vlan.1.in109.i = getelementptr inbounds %struct.list_head, ptr %br_vlan.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %br_vlan.1.in109.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %br_vlan.1110.i = load ptr, ptr %br_vlan.1.in109.i, align 4
  %cmp26.not111.i = icmp eq ptr %br_vlan.1110.i, %vlan_list.i
  br i1 %cmp26.not111.i, label %for.cond23.preheader.i.sw.epilog_crit_edge, label %for.body28.lr.ph.i

for.cond23.preheader.i.sw.epilog_crit_edge:       ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body28.lr.ph.i:                               ; preds = %for.cond23.preheader.i
  %stp_state29.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 6
  br label %for.body28.i

if.end18.i:                                       ; preds = %for.cond.i.if.end18.i_crit_edge, %switch.lookup.if.end18.i_crit_edge
  %stp_state.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %6, ptr %stp_state.i, align 4
  br label %sw.epilog

for.body28.i:                                     ; preds = %prestera_port_bridge_vlan_stp_set.exit88.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %br_vlan.1112.i = phi ptr [ %br_vlan.1110.i, %for.body28.lr.ph.i ], [ %br_vlan.1.i, %prestera_port_bridge_vlan_stp_set.exit88.i.for.body28.i_crit_edge ]
  %40 = ptrtoint ptr %stp_state29.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %stp_state29.i, align 4
  %port_vlan_list.i71.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.1112.i, i32 0, i32 1
  br label %for.cond.i75.i

for.cond.i75.i:                                   ; preds = %for.body.i78.i.for.cond.i75.i_crit_edge, %for.body28.i
  %port_vlan.0.in.i72.i = phi ptr [ %port_vlan_list.i71.i, %for.body28.i ], [ %port_vlan.0.i73.i, %for.body.i78.i.for.cond.i75.i_crit_edge ]
  %42 = ptrtoint ptr %port_vlan.0.in.i72.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %port_vlan.0.i73.i = load ptr, ptr %port_vlan.0.in.i72.i, align 4
  %cmp.not.i74.i = icmp eq ptr %port_vlan.0.i73.i, %port_vlan_list.i71.i
  br i1 %cmp.not.i74.i, label %for.cond.i75.i.prestera_port_bridge_vlan_stp_set.exit88.i_crit_edge, label %for.body.i78.i

for.cond.i75.i.prestera_port_bridge_vlan_stp_set.exit88.i_crit_edge: ; preds = %for.cond.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_port_bridge_vlan_stp_set.exit88.i

for.body.i78.i:                                   ; preds = %for.cond.i75.i
  %port2.i76.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.0.i73.i, i32 0, i32 2
  %43 = ptrtoint ptr %port2.i76.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port2.i76.i, align 4
  %cmp3.not.i77.i = icmp eq ptr %44, %add.ptr.i
  br i1 %cmp3.not.i77.i, label %if.end.i80.i, label %for.body.i78.i.for.cond.i75.i_crit_edge

for.body.i78.i.for.cond.i75.i_crit_edge:          ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i75.i

if.end.i80.i:                                     ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %41)
  %45 = icmp ult i8 %41, 5
  br i1 %45, label %switch.lookup118, label %if.end.i80.i.prestera_port_bridge_vlan_stp_set.exit88.i_crit_edge

if.end.i80.i.prestera_port_bridge_vlan_stp_set.exit88.i_crit_edge: ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_port_bridge_vlan_stp_set.exit88.i

switch.lookup118:                                 ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #11
  %vid.i79.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.1112.i, i32 0, i32 2
  %46 = ptrtoint ptr %vid.i79.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vid.i79.i, align 4
  %48 = sext i8 %41 to i32
  %switch.gep119 = getelementptr inbounds [5 x i8], ptr @switch.table.prestera_port_obj_attr_set.7, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load1_noabort(i32 %49)
  %switch.load120 = load i8, ptr %switch.gep119, align 1
  %call.i.i85.i = call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %add.ptr.i, i16 noundef zeroext %47, i8 noundef zeroext %switch.load120) #9
  br label %prestera_port_bridge_vlan_stp_set.exit88.i

prestera_port_bridge_vlan_stp_set.exit88.i:       ; preds = %switch.lookup118, %if.end.i80.i.prestera_port_bridge_vlan_stp_set.exit88.i_crit_edge, %for.cond.i75.i.prestera_port_bridge_vlan_stp_set.exit88.i_crit_edge
  %br_vlan.1.in.i = getelementptr inbounds %struct.list_head, ptr %br_vlan.1112.i, i32 0, i32 1
  %50 = ptrtoint ptr %br_vlan.1.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %br_vlan.1.i = load ptr, ptr %br_vlan.1.in.i, align 4
  %cmp26.not.i = icmp eq ptr %br_vlan.1.i, %vlan_list.i
  br i1 %cmp26.not.i, label %prestera_port_bridge_vlan_stp_set.exit88.i.sw.epilog_crit_edge, label %prestera_port_bridge_vlan_stp_set.exit88.i.for.body28.i_crit_edge

prestera_port_bridge_vlan_stp_set.exit88.i.for.body28.i_crit_edge: ; preds = %prestera_port_bridge_vlan_stp_set.exit88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

prestera_port_bridge_vlan_stp_set.exit88.i.sw.epilog_crit_edge: ; preds = %prestera_port_bridge_vlan_stp_set.exit88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

err_port_stp_set.i:                               ; preds = %switch.lookup.err_port_stp_set.i_crit_edge, %if.then2.i.err_port_stp_set.i_crit_edge
  %retval.0.i67102.i = phi i32 [ %call.i.i, %switch.lookup.err_port_stp_set.i_crit_edge ], [ -22, %if.then2.i.err_port_stp_set.i_crit_edge ]
  %stp_state38.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %stp_state38.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %stp_state38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %52)
  %53 = icmp ult i8 %52, 5
  br i1 %53, label %switch.lookup121, label %err_port_stp_set.i.sw.epilog_crit_edge

err_port_stp_set.i.sw.epilog_crit_edge:           ; preds = %err_port_stp_set.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup121:                                 ; preds = %err_port_stp_set.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = sext i8 %52 to i32
  %switch.gep122 = getelementptr inbounds [5 x i8], ptr @switch.table.prestera_port_obj_attr_set.8, i32 0, i32 %54
  %55 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load1_noabort(i32 %55)
  %switch.load123 = load i8, ptr %switch.gep122, align 1
  %call.i93.i = call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %add.ptr.i, i16 noundef zeroext %25, i8 noundef zeroext %switch.load123) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask, align 4
  %and = and i32 %57, -2145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -22
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %58 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %attr, align 4
  %u6 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %60 = ptrtoint ptr %u6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack = load i32, ptr %u6, align 4
  %.elt27 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %61 = ptrtoint ptr %.elt27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack28 = load i32, ptr %.elt27, align 4
  %sw.i30 = getelementptr i8, ptr %dev, i32 2308
  %62 = ptrtoint ptr %sw.i30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sw.i30, align 4
  %swdev.i31 = getelementptr inbounds %struct.prestera_switch, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %swdev.i31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %swdev.i31, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i.i.i29) #9
  %66 = ptrtoint ptr %priv.i.i.i29 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %priv.i.i.i29, align 8
  %call.i.i.i32 = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %59, ptr noundef nonnull @prestera_match_upper_bridge_dev, ptr noundef nonnull %priv.i.i.i29) #9
  %data.i.i.i33 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i.i.i29, i32 0, i32 1
  %67 = ptrtoint ptr %data.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i33, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i.i.i29) #9
  %tobool.not.i.i34 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i34, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i.i36

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i36:                                     ; preds = %sw.bb4
  %bridge_list.i.i.i35 = getelementptr inbounds %struct.prestera_switchdev, ptr %65, i32 0, i32 1
  br label %for.cond.i.i.i40

for.cond.i.i.i40:                                 ; preds = %for.body.i.i.i43.for.cond.i.i.i40_crit_edge, %if.end.i.i36
  %bridge.0.in.i.i.i37 = phi ptr [ %bridge_list.i.i.i35, %if.end.i.i36 ], [ %bridge.0.i.i.i38, %for.body.i.i.i43.for.cond.i.i.i40_crit_edge ]
  %69 = ptrtoint ptr %bridge.0.in.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %bridge.0.i.i.i38 = load ptr, ptr %bridge.0.in.i.i.i37, align 4
  %cmp.not.i.i.i39 = icmp eq ptr %bridge.0.i.i.i38, %bridge_list.i.i.i35
  br i1 %cmp.not.i.i.i39, label %for.cond.i.i.i40.sw.epilog_crit_edge, label %for.body.i.i.i43

for.cond.i.i.i40.sw.epilog_crit_edge:             ; preds = %for.cond.i.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.i.i43:                                 ; preds = %for.cond.i.i.i40
  %dev2.i.i.i41 = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i38, i32 0, i32 1
  %70 = ptrtoint ptr %dev2.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev2.i.i.i41, align 4
  %cmp3.i.i.i42 = icmp eq ptr %71, %68
  br i1 %cmp3.i.i.i42, label %prestera_bridge_by_dev.exit.i.i45, label %for.body.i.i.i43.for.cond.i.i.i40_crit_edge

for.body.i.i.i43.for.cond.i.i.i40_crit_edge:      ; preds = %for.body.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i40

prestera_bridge_by_dev.exit.i.i45:                ; preds = %for.body.i.i.i43
  %tobool2.not.i.i44 = icmp eq ptr %bridge.0.i.i.i38, null
  br i1 %tobool2.not.i.i44, label %prestera_bridge_by_dev.exit.i.i45.sw.epilog_crit_edge, label %if.end4.i.i47

prestera_bridge_by_dev.exit.i.i45.sw.epilog_crit_edge: ; preds = %prestera_bridge_by_dev.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.i.i47:                                    ; preds = %prestera_bridge_by_dev.exit.i.i45
  %port_list.i.i.i46 = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i38, i32 0, i32 3
  br label %for.cond.i11.i.i51

for.cond.i11.i.i51:                               ; preds = %for.body.i14.i.i54.for.cond.i11.i.i51_crit_edge, %if.end4.i.i47
  %br_port.0.in.i.i.i48 = phi ptr [ %port_list.i.i.i46, %if.end4.i.i47 ], [ %br_port.0.i.i.i49, %for.body.i14.i.i54.for.cond.i11.i.i51_crit_edge ]
  %72 = ptrtoint ptr %br_port.0.in.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %br_port.0.i.i.i49 = load ptr, ptr %br_port.0.in.i.i.i48, align 4
  %cmp.not.i10.i.i50 = icmp eq ptr %br_port.0.i.i.i49, %port_list.i.i.i46
  br i1 %cmp.not.i10.i.i50, label %for.cond.i11.i.i51.sw.epilog_crit_edge, label %for.body.i14.i.i54

for.cond.i11.i.i51.sw.epilog_crit_edge:           ; preds = %for.cond.i11.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i14.i.i54:                               ; preds = %for.cond.i11.i.i51
  %dev2.i12.i.i52 = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i49, i32 0, i32 1
  %73 = ptrtoint ptr %dev2.i12.i.i52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev2.i12.i.i52, align 4
  %cmp3.i13.i.i53 = icmp eq ptr %74, %59
  br i1 %cmp3.i13.i.i53, label %prestera_bridge_port_by_dev.exit.i56, label %for.body.i14.i.i54.for.cond.i11.i.i51_crit_edge

for.body.i14.i.i54.for.cond.i11.i.i51_crit_edge:  ; preds = %for.body.i14.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i11.i.i51

prestera_bridge_port_by_dev.exit.i56:             ; preds = %for.body.i14.i.i54
  %tobool.not.i55 = icmp eq ptr %br_port.0.i.i.i49, null
  br i1 %tobool.not.i55, label %prestera_bridge_port_by_dev.exit.i56.sw.epilog_crit_edge, label %if.end.i57

prestera_bridge_port_by_dev.exit.i56.sw.epilog_crit_edge: ; preds = %prestera_bridge_port_by_dev.exit.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i57:                                       ; preds = %prestera_bridge_port_by_dev.exit.i56
  %call1.i = call i32 @prestera_hw_port_flood_set(ptr noundef %add.ptr.i, i32 noundef %.unpack28, i32 noundef %.unpack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i57.sw.epilog_crit_edge

if.end.i57.sw.epilog_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i57
  %and.i = and i32 %.unpack28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end15.i_crit_edge, label %if.then7.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then7.i:                                       ; preds = %if.end4.i
  %and9.i = and i32 %.unpack, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.i = icmp ne i32 %and9.i, 0
  %call11.i = call i32 @prestera_hw_port_learning_set(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then7.i.if.end15.i_crit_edge, label %if.then7.i.sw.epilog_crit_edge

if.then7.i.sw.epilog_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then7.i.if.end15.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then7.i.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %flags16.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i49, i32 0, i32 5
  %75 = ptrtoint ptr %flags16.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.unpack, ptr %flags16.i, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %u9 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %76 = ptrtoint ptr %u9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %u9, align 4
  %call.i = tail call i32 @clock_t_to_jiffies(i32 noundef %77) #9
  %call1.i59 = tail call i32 @jiffies_to_msecs(i32 noundef %call.i) #9
  %78 = add i32 %call1.i59, -1000000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999968001, i32 %78)
  %79 = icmp ult i32 %78, -999968001
  br i1 %79, label %sw.bb8.sw.epilog_crit_edge, label %if.end.i60

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i60:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %sw2.i = getelementptr i8, ptr %dev, i32 2308
  %80 = ptrtoint ptr %sw2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sw2.i, align 4
  %call4.i = tail call i32 @prestera_hw_switch_ageing_set(ptr noundef %81, i32 noundef %call1.i59) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %82 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %attr, align 4
  %u13 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %84 = ptrtoint ptr %u13 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %u13, align 4, !range !25
  %sw1.i = getelementptr i8, ptr %dev, i32 2308
  %86 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sw1.i, align 4
  %swdev.i62 = getelementptr inbounds %struct.prestera_switch, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %swdev.i62 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %swdev.i62, align 4
  %bridge_list.i.i = getelementptr inbounds %struct.prestera_switchdev, ptr %89, i32 0, i32 1
  br label %for.cond.i.i64

for.cond.i.i64:                                   ; preds = %for.body.i.i65.for.cond.i.i64_crit_edge, %sw.bb11
  %bridge.0.in.i.i = phi ptr [ %bridge_list.i.i, %sw.bb11 ], [ %bridge.0.i.i, %for.body.i.i65.for.cond.i.i64_crit_edge ]
  %90 = ptrtoint ptr %bridge.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bridge.0.i.i = load ptr, ptr %bridge.0.in.i.i, align 4
  %cmp.not.i.i63 = icmp eq ptr %bridge.0.i.i, %bridge_list.i.i
  br i1 %cmp.not.i.i63, label %for.cond.i.i64.do.end.i_crit_edge, label %for.body.i.i65

for.cond.i.i64.do.end.i_crit_edge:                ; preds = %for.cond.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i65:                                   ; preds = %for.cond.i.i64
  %dev2.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %92, %83
  br i1 %cmp3.i.i, label %prestera_bridge_by_dev.exit.i, label %for.body.i.i65.for.cond.i.i64_crit_edge

for.body.i.i65.for.cond.i.i64_crit_edge:          ; preds = %for.body.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i64

prestera_bridge_by_dev.exit.i:                    ; preds = %for.body.i.i65
  %tobool.not.i66 = icmp eq ptr %bridge.0.i.i, null
  br i1 %tobool.not.i66, label %prestera_bridge_by_dev.exit.i.do.end.i_crit_edge, label %if.end24.i, !prof !27

prestera_bridge_by_dev.exit.i.do.end.i_crit_edge: ; preds = %prestera_bridge_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %prestera_bridge_by_dev.exit.i.do.end.i_crit_edge, %for.cond.i.i64.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 650, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

if.end24.i:                                       ; preds = %prestera_bridge_by_dev.exit.i
  %vlan_enabled25.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %vlan_enabled25.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %vlan_enabled25.i, align 4, !range !25
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %85)
  %cmp.i = icmp eq i8 %94, %85
  br i1 %cmp.i, label %if.end24.i.sw.epilog_crit_edge, label %if.end31.i

if.end24.i.sw.epilog_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end31.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.5) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end31.i, %if.end24.i.sw.epilog_crit_edge, %do.end.i, %if.end.i60, %sw.bb8.sw.epilog_crit_edge, %if.end15.i, %if.then7.i.sw.epilog_crit_edge, %if.end.i57.sw.epilog_crit_edge, %prestera_bridge_port_by_dev.exit.i56.sw.epilog_crit_edge, %for.cond.i11.i.i51.sw.epilog_crit_edge, %prestera_bridge_by_dev.exit.i.i45.sw.epilog_crit_edge, %for.cond.i.i.i40.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb2, %switch.lookup121, %err_port_stp_set.i.sw.epilog_crit_edge, %prestera_port_bridge_vlan_stp_set.exit88.i.sw.epilog_crit_edge, %if.end18.i, %for.cond23.preheader.i.sw.epilog_crit_edge, %prestera_bridge_port_by_dev.exit.i.sw.epilog_crit_edge, %for.cond.i11.i.i.sw.epilog_crit_edge, %prestera_bridge_by_dev.exit.i.i.sw.epilog_crit_edge, %for.cond.i.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %spec.select, %sw.bb2 ], [ -95, %entry.sw.epilog_crit_edge ], [ 0, %if.end18.i ], [ 0, %prestera_bridge_port_by_dev.exit.i.sw.epilog_crit_edge ], [ %retval.0.i67102.i, %err_port_stp_set.i.sw.epilog_crit_edge ], [ %retval.0.i67102.i, %switch.lookup121 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %prestera_bridge_by_dev.exit.i.i.sw.epilog_crit_edge ], [ %retval.0.i70122.i, %for.cond23.preheader.i.sw.epilog_crit_edge ], [ 0, %if.end15.i ], [ 0, %prestera_bridge_port_by_dev.exit.i56.sw.epilog_crit_edge ], [ %call1.i, %if.end.i57.sw.epilog_crit_edge ], [ %call11.i, %if.then7.i.sw.epilog_crit_edge ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %prestera_bridge_by_dev.exit.i.i45.sw.epilog_crit_edge ], [ %call4.i, %if.end.i60 ], [ -34, %sw.bb8.sw.epilog_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end31.i ], [ 0, %if.end24.i.sw.epilog_crit_edge ], [ %retval.0.i70122.i, %prestera_port_bridge_vlan_stp_set.exit88.i.sw.epilog_crit_edge ], [ 0, %for.cond.i11.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.i11.i.i51.sw.epilog_crit_edge ], [ 0, %for.cond.i.i.i40.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_fdb_event_work(ptr noundef %work) #0 align 64 {
entry:
  %send_info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtnl_lock() #9
  %call = tail call ptr @prestera_port_dev_lower_find(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %3, label %if.end.out_unlock_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb13
  ]

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

sw.bb:                                            ; preds = %if.end
  %added_by_user = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %added_by_user, align 2
  %6 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %if.end8, label %sw.bb.out_unlock_crit_edge

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end8:                                          ; preds = %sw.bb
  %fdb_info2 = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 1
  %call9 = tail call fastcc i32 @prestera_port_fdb_set(ptr noundef nonnull %call, ptr noundef %fdb_info2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_unlock_crit_edge

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i) #9
  %8 = call ptr @memset(ptr %send_info.i, i32 0, i32 20)
  %addr.i = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i, align 4
  %addr1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i, i32 0, i32 1
  %11 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %addr1.i, align 4
  %vid.i = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid.i, align 4
  %vid2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i, i32 0, i32 2
  %14 = ptrtoint ptr %vid2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %vid2.i, align 4
  %offloaded.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i, i32 0, i32 3
  %15 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %offloaded.i, align 2
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 8
  %call.i = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %17, ptr noundef nonnull %send_info.i, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i) #9
  br label %out_unlock

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fdb_info14 = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 1
  %call15 = tail call fastcc i32 @prestera_port_fdb_set(ptr noundef nonnull %call, ptr noundef %fdb_info14, i1 noundef zeroext false)
  br label %out_unlock

out_unlock:                                       ; preds = %sw.bb13, %if.end12, %if.end8.out_unlock_crit_edge, %sw.bb.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  call void @rtnl_unlock() #9
  %addr = getelementptr inbounds %struct.prestera_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  call void @kfree(ptr noundef %19) #9
  call void @kfree(ptr noundef %work) #9
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %out_unlock.dev_put.exit_crit_edge, label %do.body1.i

out_unlock.dev_put.exit_crit_edge:                ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

do.body1.i:                                       ; preds = %out_unlock
  %20 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !32
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !33
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !27

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !34
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %out_unlock.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !32
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !14) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !33
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !27

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !34
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prestera_match_upper_bridge_dev(ptr noundef %dev, ptr nocapture noundef writeonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_switch_ageing_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_port_dev_lower_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_port_fdb_set(ptr noundef %port, ptr nocapture noundef readonly %fdb_info, i1 noundef zeroext %adding) unnamed_addr #0 align 64 {
entry:
  %priv.i.i = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  %swdev = getelementptr inbounds %struct.prestera_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %swdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swdev, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i.i) #9
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %priv.i.i, align 8
  %call.i.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %5, ptr noundef nonnull @prestera_match_upper_bridge_dev, ptr noundef nonnull %priv.i.i) #9
  %data.i.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i.i) #9
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bridge_list.i.i = getelementptr inbounds %struct.prestera_switchdev, ptr %3, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %bridge.0.in.i.i = phi ptr [ %bridge_list.i.i, %if.end.i ], [ %bridge.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %bridge.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bridge.0.i.i = load ptr, ptr %bridge.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %bridge.0.i.i, %bridge_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev2.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %11, %8
  br i1 %cmp3.i.i, label %prestera_bridge_by_dev.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

prestera_bridge_by_dev.exit.i:                    ; preds = %for.body.i.i
  %tobool2.not.i = icmp eq ptr %bridge.0.i.i, null
  br i1 %tobool2.not.i, label %prestera_bridge_by_dev.exit.i.cleanup_crit_edge, label %if.end4.i

prestera_bridge_by_dev.exit.i.cleanup_crit_edge:  ; preds = %prestera_bridge_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %prestera_bridge_by_dev.exit.i
  %port_list.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i, i32 0, i32 3
  br label %for.cond.i11.i

for.cond.i11.i:                                   ; preds = %for.body.i14.i.for.cond.i11.i_crit_edge, %if.end4.i
  %br_port.0.in.i.i = phi ptr [ %port_list.i.i, %if.end4.i ], [ %br_port.0.i.i, %for.body.i14.i.for.cond.i11.i_crit_edge ]
  %12 = ptrtoint ptr %br_port.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %br_port.0.i.i = load ptr, ptr %br_port.0.in.i.i, align 4
  %cmp.not.i10.i = icmp eq ptr %br_port.0.i.i, %port_list.i.i
  br i1 %cmp.not.i10.i, label %for.cond.i11.i.cleanup_crit_edge, label %for.body.i14.i

for.cond.i11.i.cleanup_crit_edge:                 ; preds = %for.cond.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i14.i:                                   ; preds = %for.cond.i11.i
  %dev2.i12.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev2.i12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2.i12.i, align 4
  %cmp3.i13.i = icmp eq ptr %14, %5
  br i1 %cmp3.i13.i, label %prestera_bridge_port_by_dev.exit, label %for.body.i14.i.for.cond.i11.i_crit_edge

for.body.i14.i.for.cond.i11.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i11.i

prestera_bridge_port_by_dev.exit:                 ; preds = %for.body.i14.i
  %tobool.not = icmp eq ptr %br_port.0.i.i, null
  br i1 %tobool.not, label %prestera_bridge_port_by_dev.exit.cleanup_crit_edge, label %if.end

prestera_bridge_port_by_dev.exit.cleanup_crit_edge: ; preds = %prestera_bridge_port_by_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %prestera_bridge_port_by_dev.exit
  %bridge2 = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %bridge2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bridge2, align 4
  %vlan_enabled = getelementptr inbounds %struct.prestera_bridge, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vlan_enabled, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  %vid5 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %bridge_id = getelementptr inbounds %struct.prestera_bridge, ptr %16, i32 0, i32 5
  %vid.0.in = select i1 %tobool3.not, ptr %bridge_id, ptr %vid5
  %19 = ptrtoint ptr %vid.0.in to i32
  call void @__asan_load2_noabort(i32 %19)
  %vid.0 = load i16, ptr %vid.0.in, align 2
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %call.i = call zeroext i1 @prestera_port_is_lag_member(ptr noundef %port) #9
  br i1 %adding, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end
  br i1 %call.i, label %if.then.i, label %if.end.i26

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw1, align 4
  %call1.i = call zeroext i16 @prestera_port_lag_id(ptr noundef %port) #9
  %call2.i = call i32 @prestera_hw_lag_fdb_add(ptr noundef %23, i16 noundef zeroext %call1.i, ptr noundef %21, i16 noundef zeroext %vid.0, i1 noundef zeroext false) #9
  br label %cleanup

if.end.i26:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call i32 @prestera_hw_fdb_add(ptr noundef %port, ptr noundef %21, i16 noundef zeroext %vid.0, i1 noundef zeroext false) #9
  br label %cleanup

if.else10:                                        ; preds = %if.end
  br i1 %call.i, label %if.then.i32, label %if.else.i

if.then.i32:                                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw1, align 4
  %call1.i30 = call zeroext i16 @prestera_port_lag_id(ptr noundef %port) #9
  %call2.i31 = call i32 @prestera_hw_lag_fdb_del(ptr noundef %25, i16 noundef zeroext %call1.i30, ptr noundef %21, i16 noundef zeroext %vid.0) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 @prestera_hw_fdb_del(ptr noundef %port, ptr noundef %21, i16 noundef zeroext %vid.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i32, %if.end.i26, %if.then.i, %prestera_bridge_port_by_dev.exit.cleanup_crit_edge, %for.cond.i11.i.cleanup_crit_edge, %prestera_bridge_by_dev.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %prestera_bridge_port_by_dev.exit.cleanup_crit_edge ], [ %call2.i, %if.then.i ], [ %call4.i, %if.end.i26 ], [ %call2.i31, %if.then.i32 ], [ %call3.i, %if.else.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %prestera_bridge_by_dev.exit.i.cleanup_crit_edge ], [ -22, %for.cond.i11.i.cleanup_crit_edge ], [ -22, %for.cond.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prestera_port_is_lag_member(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_lag_fdb_add(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @prestera_port_lag_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_add(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_lag_fdb_del(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_del(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_obj_add(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %priv.i.i.i = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 4
  %conv.i = zext i16 %3 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %orig_dev6.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %4 = ptrtoint ptr %orig_dev6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_dev6.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %sw7.i = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %sw7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw7.i, align 4
  %swdev.i = getelementptr inbounds %struct.prestera_switch, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %swdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %swdev.i, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i.i.i) #9
  %14 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %priv.i.i.i, align 8
  %call.i.i.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %13, ptr noundef nonnull @prestera_match_upper_bridge_dev, ptr noundef nonnull %priv.i.i.i) #9
  %data.i.i.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i.i.i) #9
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %bridge_list.i.i.i = getelementptr inbounds %struct.prestera_switchdev, ptr %11, i32 0, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %bridge.0.in.i.i.i = phi ptr [ %bridge_list.i.i.i, %if.end.i.i ], [ %bridge.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %bridge.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bridge.0.i.i.i = load ptr, ptr %bridge.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %bridge.0.i.i.i, %bridge_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.end.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.end.i_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %dev2.i.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %19, %16
  br i1 %cmp3.i.i.i, label %prestera_bridge_by_dev.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

prestera_bridge_by_dev.exit.i.i:                  ; preds = %for.body.i.i.i
  %tobool2.not.i.i = icmp eq ptr %bridge.0.i.i.i, null
  br i1 %tobool2.not.i.i, label %prestera_bridge_by_dev.exit.i.i.do.end.i_crit_edge, label %if.end4.i.i

prestera_bridge_by_dev.exit.i.i.do.end.i_crit_edge: ; preds = %prestera_bridge_by_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end4.i.i:                                      ; preds = %prestera_bridge_by_dev.exit.i.i
  %port_list.i.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i, i32 0, i32 3
  br label %for.cond.i11.i.i

for.cond.i11.i.i:                                 ; preds = %for.body.i14.i.i.for.cond.i11.i.i_crit_edge, %if.end4.i.i
  %br_port.0.in.i.i.i = phi ptr [ %port_list.i.i.i, %if.end4.i.i ], [ %br_port.0.i.i.i, %for.body.i14.i.i.for.cond.i11.i.i_crit_edge ]
  %20 = ptrtoint ptr %br_port.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %br_port.0.i.i.i = load ptr, ptr %br_port.0.in.i.i.i, align 4
  %cmp.not.i10.i.i = icmp eq ptr %br_port.0.i.i.i, %port_list.i.i.i
  br i1 %cmp.not.i10.i.i, label %for.cond.i11.i.i.do.end.i_crit_edge, label %for.body.i14.i.i

for.cond.i11.i.i.do.end.i_crit_edge:              ; preds = %for.cond.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i14.i.i:                                 ; preds = %for.cond.i11.i.i
  %dev2.i12.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %dev2.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2.i12.i.i, align 4
  %cmp3.i13.i.i = icmp eq ptr %22, %13
  br i1 %cmp3.i13.i.i, label %prestera_bridge_port_by_dev.exit.i, label %for.body.i14.i.i.for.cond.i11.i.i_crit_edge

for.body.i14.i.i.for.cond.i11.i.i_crit_edge:      ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i11.i.i

prestera_bridge_port_by_dev.exit.i:               ; preds = %for.body.i14.i.i
  %tobool9.not.i = icmp eq ptr %br_port.0.i.i.i, null
  br i1 %tobool9.not.i, label %prestera_bridge_port_by_dev.exit.i.do.end.i_crit_edge, label %if.end34.i, !prof !27

prestera_bridge_port_by_dev.exit.i.do.end.i_crit_edge: ; preds = %prestera_bridge_port_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %prestera_bridge_port_by_dev.exit.i.do.end.i_crit_edge, %for.cond.i11.i.i.do.end.i_crit_edge, %prestera_bridge_by_dev.exit.i.i.do.end.i_crit_edge, %for.cond.i.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1039, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end34.i:                                       ; preds = %prestera_bridge_port_by_dev.exit.i
  %bridge35.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %bridge35.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge35.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.prestera_bridge, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vlan_enabled.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not.i = icmp eq i8 %26, 0
  br i1 %tobool36.not.i, label %if.end34.i.cleanup_crit_edge, label %if.end38.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38.i:                                       ; preds = %if.end34.i
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %27 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid.i, align 2
  %pvid.i.i = getelementptr i8, ptr %dev, i32 2698
  %29 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pvid.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %28)
  %cmp.i.i = icmp eq i16 %30, %28
  %spec.select.i.i = select i1 %cmp.i.i, i16 0, i16 %30
  %pvid2.0.i.i = select i1 %tobool4.not.i, i16 %spec.select.i.i, i16 %28
  %vlans_list.i.i.i = getelementptr i8, ptr %dev, i32 2744
  br label %for.cond.i.i2.i

for.cond.i.i2.i:                                  ; preds = %for.body.i.i3.i.for.cond.i.i2.i_crit_edge, %if.end38.i
  %.pn.in.i.i.i = phi ptr [ %vlans_list.i.i.i, %if.end38.i ], [ %.pn.i.i.i, %for.body.i.i3.i.for.cond.i.i2.i_crit_edge ]
  %31 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i1.i = icmp eq ptr %.pn.i.i.i, %vlans_list.i.i.i
  br i1 %cmp.not.i.i1.i, label %for.cond.i.i2.i.for.cond.i.i.i.i.preheader_crit_edge, label %for.body.i.i3.i

for.cond.i.i2.i.for.cond.i.i.i.i.preheader_crit_edge: ; preds = %for.cond.i.i2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i.preheader

for.body.i.i3.i:                                  ; preds = %for.cond.i.i2.i
  %vid2.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 16
  %32 = ptrtoint ptr %vid2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid2.i.i.i, align 4
  %cmp4.i.i.i = icmp eq i16 %33, %28
  br i1 %cmp4.i.i.i, label %prestera_port_vlan_by_vid.exit.i.i, label %for.body.i.i3.i.for.cond.i.i2.i_crit_edge

for.body.i.i3.i.for.cond.i.i2.i_crit_edge:        ; preds = %for.body.i.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i2.i

prestera_port_vlan_by_vid.exit.i.i:               ; preds = %for.body.i.i3.i
  %port_vlan.0.le.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -8
  %tobool9.not.i.i = icmp eq ptr %port_vlan.0.le.i.i.i, null
  br i1 %tobool9.not.i.i, label %prestera_port_vlan_by_vid.exit.i.i.for.cond.i.i.i.i.preheader_crit_edge, label %land.lhs.true.i.i

prestera_port_vlan_by_vid.exit.i.i.for.cond.i.i.i.i.preheader_crit_edge: ; preds = %prestera_port_vlan_by_vid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i.preheader

for.cond.i.i.i.i.preheader:                       ; preds = %prestera_port_vlan_by_vid.exit.i.i.for.cond.i.i.i.i.preheader_crit_edge, %for.cond.i.i2.i.for.cond.i.i.i.i.preheader_crit_edge
  br label %for.cond.i.i.i.i

land.lhs.true.i.i:                                ; preds = %prestera_port_vlan_by_vid.exit.i.i
  %br_port10.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 12
  %34 = ptrtoint ptr %br_port10.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %br_port10.i.i, align 4
  %cmp11.not.i.i = icmp eq ptr %35, %br_port.0.i.i.i
  br i1 %cmp11.not.i.i, label %if.else23.i.i, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %for.cond.i.i.i.i.preheader
  %.pn.in.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ], [ %vlans_list.i.i.i, %for.cond.i.i.i.i.preheader ]
  %36 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %vlans_list.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.if.end.i.i.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %vid2.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 16
  %37 = ptrtoint ptr %vid2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid2.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq i16 %38, %28
  br i1 %cmp4.i.i.i.i, label %prestera_port_vlan_by_vid.exit.i.i.i, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i

prestera_port_vlan_by_vid.exit.i.i.i:             ; preds = %for.body.i.i.i.i
  %port_vlan.0.le.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 -8
  %tobool.not.i.i.i = icmp eq ptr %port_vlan.0.le.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %prestera_port_vlan_by_vid.exit.i.i.i.if.end.i.i.i_crit_edge, label %prestera_port_vlan_by_vid.exit.i.i.i.if.then20.i.i_crit_edge

prestera_port_vlan_by_vid.exit.i.i.i.if.then20.i.i_crit_edge: ; preds = %prestera_port_vlan_by_vid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i.i

prestera_port_vlan_by_vid.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %prestera_port_vlan_by_vid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %prestera_port_vlan_by_vid.exit.i.i.i.if.end.i.i.i_crit_edge, %for.cond.i.i.i.i.if.end.i.i.i_crit_edge
  %call3.i.i.i = call i32 @prestera_hw_vlan_port_set(ptr noundef %add.ptr.i, i16 noundef zeroext %28, i1 noundef zeroext true, i1 noundef zeroext %tobool.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = inttoptr i32 %call3.i.i.i to ptr
  br label %prestera_port_vlan_create.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 28) #13
  %tobool9.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %if.then10.i.i.i, label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i.i.i = call i32 @prestera_hw_vlan_port_set(ptr noundef %add.ptr.i, i16 noundef zeroext %28, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.then20.i.i

if.end11.i.i.i:                                   ; preds = %if.end7.i.i.i
  %port12.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %port12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i, ptr %port12.i.i.i, align 8
  %vid13.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %vid13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %28, ptr %vid13.i.i.i, align 8
  %port_head.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %vlans_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vlans_list.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %port_head.i.i.i, ptr noundef %vlans_list.i.i.i, ptr noundef %44) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end11.i.i.i.prestera_port_vlan_create.exit.i.i_crit_edge

if.end11.i.i.i.prestera_port_vlan_create.exit.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_port_vlan_create.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %port_head.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %port_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %port_head.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vlans_list.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %vlans_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %port_head.i.i.i, ptr %vlans_list.i.i.i, align 4
  br label %prestera_port_vlan_create.exit.i.i

prestera_port_vlan_create.exit.i.i:               ; preds = %if.end.i.i.i.i.i, %if.end11.i.i.i.prestera_port_vlan_create.exit.i.i_crit_edge, %if.then5.i.i.i
  %retval.0.i1.i.i = phi ptr [ %39, %if.then5.i.i.i ], [ %call7.i.i.i.i.i, %if.end11.i.i.i.prestera_port_vlan_create.exit.i.i_crit_edge ], [ %call7.i.i.i.i.i, %if.end.i.i.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %prestera_port_vlan_create.exit.i.i.if.then20.i.i_crit_edge, label %prestera_port_vlan_create.exit.i.i.if.end29.i.i_crit_edge

prestera_port_vlan_create.exit.i.i.if.end29.i.i_crit_edge: ; preds = %prestera_port_vlan_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

prestera_port_vlan_create.exit.i.i.if.then20.i.i_crit_edge: ; preds = %prestera_port_vlan_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %prestera_port_vlan_create.exit.i.i.if.then20.i.i_crit_edge, %if.then10.i.i.i, %prestera_port_vlan_by_vid.exit.i.i.i.if.then20.i.i_crit_edge
  %retval.0.i128.i.i = phi ptr [ %retval.0.i1.i.i, %prestera_port_vlan_create.exit.i.i.if.then20.i.i_crit_edge ], [ inttoptr (i32 -17 to ptr), %prestera_port_vlan_by_vid.exit.i.i.i.if.then20.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then10.i.i.i ]
  %49 = ptrtoint ptr %retval.0.i128.i.i to i32
  br label %cleanup

if.else23.i.i:                                    ; preds = %land.lhs.true.i.i
  %call25.i.i = call i32 @prestera_hw_vlan_port_set(ptr noundef %add.ptr.i, i16 noundef zeroext %28, i1 noundef zeroext true, i1 noundef zeroext %tobool.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else23.i.i.if.end29.i.i_crit_edge, label %if.else23.i.i.err_port_vlan_set.i.i_crit_edge

if.else23.i.i.err_port_vlan_set.i.i_crit_edge:    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_vlan_set.i.i

if.else23.i.i.if.end29.i.i_crit_edge:             ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else23.i.i.if.end29.i.i_crit_edge, %prestera_port_vlan_create.exit.i.i.if.end29.i.i_crit_edge
  %port_vlan.0.i.i = phi ptr [ %port_vlan.0.le.i.i.i, %if.else23.i.i.if.end29.i.i_crit_edge ], [ %retval.0.i1.i.i, %prestera_port_vlan_create.exit.i.i.if.end29.i.i_crit_edge ]
  %call30.i.i = call i32 @prestera_port_pvid_set(ptr noundef %add.ptr.i, i16 noundef zeroext %pvid2.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %if.end29.i.i.err_port_pvid_set.i.i_crit_edge

if.end29.i.i.err_port_pvid_set.i.i_crit_edge:     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_pvid_set.i.i

if.end33.i.i:                                     ; preds = %if.end29.i.i
  %port1.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.0.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port1.i.i.i, align 4
  %vid2.i2.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.0.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %vid2.i2.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vid2.i2.i.i, align 4
  %br_port3.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.0.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %br_port3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %br_port3.i.i.i, align 4
  %tobool.not.i3.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i3.i.i, label %if.end.i5.i.i, label %if.end33.i.i.cleanup_crit_edge

if.end33.i.i.cleanup_crit_edge:                   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i5.i.i:                                    ; preds = %if.end33.i.i
  %flags.i.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i.i.i, align 4
  %call.i.i4.i = call i32 @prestera_hw_port_flood_set(ptr noundef %51, i32 noundef 2112, i32 noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i)
  %tobool4.not.i4.i.i = icmp eq i32 %call.i.i4.i, 0
  br i1 %tobool4.not.i4.i.i, label %if.end6.i.i.i, label %if.end.i5.i.i.err_port_vlan_bridge_join.i.i_crit_edge

if.end.i5.i.i.err_port_vlan_bridge_join.i.i_crit_edge: ; preds = %if.end.i5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_vlan_bridge_join.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i5.i.i
  %58 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool8.i.i.i = icmp ne i32 %and.i.i.i, 0
  %call9.i.i.i = call i32 @prestera_hw_port_learning_set(ptr noundef %51, i1 noundef zeroext %tobool8.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end12.i.i.i, label %if.end6.i.i.i.err_port_vlan_bridge_join.i.i_crit_edge

if.end6.i.i.i.err_port_vlan_bridge_join.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_vlan_bridge_join.i.i

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  %stp_state.i.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %stp_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %stp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %61)
  %62 = icmp ult i8 %61, 5
  br i1 %62, label %switch.lookup, label %if.end12.i.i.i.err_port_vid_stp_set.i.i.i_crit_edge

if.end12.i.i.i.err_port_vid_stp_set.i.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_vid_stp_set.i.i.i

switch.lookup:                                    ; preds = %if.end12.i.i.i
  %63 = sext i8 %61 to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.prestera_port_obj_add, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %64)
  %switch.load = load i8, ptr %switch.gep, align 1
  %call.i.i.i.i = call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %51, i16 noundef zeroext %53, i8 noundef zeroext %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.end16.i.i.i, label %switch.lookup.err_port_vid_stp_set.i.i.i_crit_edge

switch.lookup.err_port_vid_stp_set.i.i.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_port_vid_stp_set.i.i.i

if.end16.i.i.i:                                   ; preds = %switch.lookup
  %vlan_list.i.i.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 3
  br label %for.cond.i.i7.i.i

for.cond.i.i7.i.i:                                ; preds = %for.body.i.i10.i.i.for.cond.i.i7.i.i_crit_edge, %if.end16.i.i.i
  %br_vlan.0.in.i.i.i.i = phi ptr [ %vlan_list.i.i.i.i, %if.end16.i.i.i ], [ %br_vlan.0.i.i.i.i, %for.body.i.i10.i.i.for.cond.i.i7.i.i_crit_edge ]
  %65 = ptrtoint ptr %br_vlan.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %br_vlan.0.i.i.i.i = load ptr, ptr %br_vlan.0.in.i.i.i.i, align 4
  %cmp.not.i.i6.i.i = icmp eq ptr %br_vlan.0.i.i.i.i, %vlan_list.i.i.i.i
  br i1 %cmp.not.i.i6.i.i, label %for.cond.i.i7.i.i.if.then19.i.i.i_crit_edge, label %for.body.i.i10.i.i

for.cond.i.i7.i.i.if.then19.i.i.i_crit_edge:      ; preds = %for.cond.i.i7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i.i.i

for.body.i.i10.i.i:                               ; preds = %for.cond.i.i7.i.i
  %vid2.i.i8.i.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.0.i.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %vid2.i.i8.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vid2.i.i8.i.i, align 4
  %cmp4.i.i9.i.i = icmp eq i16 %67, %53
  br i1 %cmp4.i.i9.i.i, label %prestera_bridge_vlan_by_vid.exit.i.i.i, label %for.body.i.i10.i.i.for.cond.i.i7.i.i_crit_edge

for.body.i.i10.i.i.for.cond.i.i7.i.i_crit_edge:   ; preds = %for.body.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i7.i.i

prestera_bridge_vlan_by_vid.exit.i.i.i:           ; preds = %for.body.i.i10.i.i
  %tobool18.not.i.i.i = icmp eq ptr %br_vlan.0.i.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %prestera_bridge_vlan_by_vid.exit.i.i.i.if.then19.i.i.i_crit_edge, label %prestera_bridge_vlan_by_vid.exit.i.i.i.if.end24.i.i.i_crit_edge

prestera_bridge_vlan_by_vid.exit.i.i.i.if.end24.i.i.i_crit_edge: ; preds = %prestera_bridge_vlan_by_vid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i.i

prestera_bridge_vlan_by_vid.exit.i.i.i.if.then19.i.i.i_crit_edge: ; preds = %prestera_bridge_vlan_by_vid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %prestera_bridge_vlan_by_vid.exit.i.i.i.if.then19.i.i.i_crit_edge, %for.cond.i.i7.i.i.if.then19.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then22.i.i.i, label %if.end.i5

if.end.i5:                                        ; preds = %if.then19.i.i.i
  %port_vlan_list.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %call7.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %port_vlan_list.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %port_vlan_list.i, ptr %port_vlan_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %port_vlan_list.i, ptr %prev.i.i, align 4
  %vid1.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %call7.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %53, ptr %vid1.i, align 8
  %72 = ptrtoint ptr %vlan_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vlan_list.i.i.i.i, align 4
  %call.i.i.i4 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %vlan_list.i.i.i.i, ptr noundef %73) #9
  br i1 %call.i.i.i4, label %if.end.i.i.i6, label %if.end.i5.if.end24.i.i.i_crit_edge

if.end.i5.if.end24.i.i.i_crit_edge:               ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i.i

if.end.i.i.i6:                                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %vlan_list.i.i.i.i, ptr %prev3.i.i.i, align 4
  %77 = ptrtoint ptr %vlan_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call7.i.i.i, ptr %vlan_list.i.i.i.i, align 4
  br label %if.end24.i.i.i

if.then22.i.i.i:                                  ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i57.i.i.i = call i32 @prestera_hw_vlan_port_stp_set(ptr noundef %51, i16 noundef zeroext %53, i8 noundef zeroext 3) #9
  br label %err_port_vid_stp_set.i.i.i

if.end24.i.i.i:                                   ; preds = %if.end.i.i.i6, %if.end.i5.if.end24.i.i.i_crit_edge, %prestera_bridge_vlan_by_vid.exit.i.i.i.if.end24.i.i.i_crit_edge
  %br_vlan.0.i.i.i = phi ptr [ %br_vlan.0.i.i.i.i, %prestera_bridge_vlan_by_vid.exit.i.i.i.if.end24.i.i.i_crit_edge ], [ %call7.i.i.i, %if.end.i5.if.end24.i.i.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i6 ]
  %port_vlan_list.i.i.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.0.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %port_vlan_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %port_vlan_list.i.i.i, align 4
  %call.i.i.i11.i.i = call zeroext i1 @__list_add_valid(ptr noundef %port_vlan.0.i.i, ptr noundef %port_vlan_list.i.i.i, ptr noundef %79) #9
  br i1 %call.i.i.i11.i.i, label %if.end.i.i.i14.i.i, label %if.end24.i.i.i.list_add.exit.i.i.i_crit_edge

if.end24.i.i.i.list_add.exit.i.i.i_crit_edge:     ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i.i.i

if.end.i.i.i14.i.i:                               ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %port_vlan.0.i.i, ptr %prev1.i.i.i12.i.i, align 4
  %81 = ptrtoint ptr %port_vlan.0.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %port_vlan.0.i.i, align 4
  %prev3.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %port_vlan.0.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %port_vlan_list.i.i.i, ptr %prev3.i.i.i13.i.i, align 4
  %83 = ptrtoint ptr %port_vlan_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %port_vlan.0.i.i, ptr %port_vlan_list.i.i.i, align 4
  br label %list_add.exit.i.i.i

list_add.exit.i.i.i:                              ; preds = %if.end.i.i.i14.i.i, %if.end24.i.i.i.list_add.exit.i.i.i_crit_edge
  %ref_count.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #9
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #9, !srcloc !26
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add.exit.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !27

list_add.exit.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add.exit.i.i.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.prestera_bridge_port_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !28

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.prestera_bridge_port_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_port_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add.exit.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add.exit.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #9
  br label %prestera_bridge_port_get.exit

prestera_bridge_port_get.exit:                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.prestera_bridge_port_get.exit_crit_edge
  %86 = ptrtoint ptr %br_port3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %br_port.0.i.i.i, ptr %br_port3.i.i.i, align 4
  br label %cleanup

err_port_vid_stp_set.i.i.i:                       ; preds = %if.then22.i.i.i, %switch.lookup.err_port_vid_stp_set.i.i.i_crit_edge, %if.end12.i.i.i.err_port_vid_stp_set.i.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ %call.i.i.i.i, %switch.lookup.err_port_vid_stp_set.i.i.i_crit_edge ], [ -12, %if.then22.i.i.i ], [ -22, %if.end12.i.i.i.err_port_vid_stp_set.i.i.i_crit_edge ]
  %call27.i.i.i = call i32 @prestera_hw_port_learning_set(ptr noundef %51, i1 noundef zeroext false) #9
  br label %err_port_vlan_bridge_join.i.i

err_port_vlan_bridge_join.i.i:                    ; preds = %err_port_vid_stp_set.i.i.i, %if.end6.i.i.i.err_port_vlan_bridge_join.i.i_crit_edge, %if.end.i5.i.i.err_port_vlan_bridge_join.i.i_crit_edge
  %retval.0.i15.ph.i.i = phi i32 [ %err.0.i.i.i, %err_port_vid_stp_set.i.i.i ], [ %call9.i.i.i, %if.end6.i.i.i.err_port_vlan_bridge_join.i.i_crit_edge ], [ %call.i.i4.i, %if.end.i5.i.i.err_port_vlan_bridge_join.i.i_crit_edge ]
  %call38.i.i = call i32 @prestera_port_pvid_set(ptr noundef %add.ptr.i, i16 noundef zeroext %30) #9
  br label %err_port_pvid_set.i.i

err_port_pvid_set.i.i:                            ; preds = %err_port_vlan_bridge_join.i.i, %if.end29.i.i.err_port_pvid_set.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call30.i.i, %if.end29.i.i.err_port_pvid_set.i.i_crit_edge ], [ %retval.0.i15.ph.i.i, %err_port_vlan_bridge_join.i.i ]
  %call39.i.i = call i32 @prestera_hw_vlan_port_set(ptr noundef %add.ptr.i, i16 noundef zeroext %28, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %err_port_vlan_set.i.i

err_port_vlan_set.i.i:                            ; preds = %err_port_pvid_set.i.i, %if.else23.i.i.err_port_vlan_set.i.i_crit_edge
  %port_vlan.1.i.i = phi ptr [ %port_vlan.0.le.i.i.i, %if.else23.i.i.err_port_vlan_set.i.i_crit_edge ], [ %port_vlan.0.i.i, %err_port_pvid_set.i.i ]
  %err.1.i.i = phi i32 [ %call25.i.i, %if.else23.i.i.err_port_vlan_set.i.i_crit_edge ], [ %err.0.i.i, %err_port_pvid_set.i.i ]
  %port1.i16.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.1.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %port1.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port1.i16.i.i, align 4
  %vid2.i17.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.1.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %vid2.i17.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vid2.i17.i.i, align 4
  %br_port.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.1.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %br_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %br_port.i.i.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i18.i.i, label %err_port_vlan_set.i.i.if.end.i22.i.i_crit_edge, label %if.then.i.i.i

err_port_vlan_set.i.i.if.end.i22.i.i_crit_edge:   ; preds = %err_port_vlan_set.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i22.i.i

if.then.i.i.i:                                    ; preds = %err_port_vlan_set.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @prestera_port_vlan_bridge_leave(ptr noundef %port_vlan.1.i.i) #9
  br label %if.end.i22.i.i

if.end.i22.i.i:                                   ; preds = %if.then.i.i.i, %err_port_vlan_set.i.i.if.end.i22.i.i_crit_edge
  %call.i19.i.i = call i32 @prestera_hw_vlan_port_set(ptr noundef %88, i16 noundef zeroext %90, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %port_head.i20.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.1.i.i, i32 0, i32 1
  %call.i.i.i21.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %port_head.i20.i.i) #9
  br i1 %call.i.i.i21.i.i, label %if.end.i.i.i23.i.i, label %if.end.i22.i.i.prestera_port_vlan_destroy.exit.i.i_crit_edge

if.end.i22.i.i.prestera_port_vlan_destroy.exit.i.i_crit_edge: ; preds = %if.end.i22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_port_vlan_destroy.exit.i.i

if.end.i.i.i23.i.i:                               ; preds = %if.end.i22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.1.i.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %port_head.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %port_head.i20.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %prestera_port_vlan_destroy.exit.i.i

prestera_port_vlan_destroy.exit.i.i:              ; preds = %if.end.i.i.i23.i.i, %if.end.i22.i.i.prestera_port_vlan_destroy.exit.i.i_crit_edge
  %99 = ptrtoint ptr %port_head.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %port_head.i20.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan.1.i.i, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @kfree(ptr noundef %port_vlan.1.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %prestera_port_vlan_destroy.exit.i.i, %prestera_bridge_port_get.exit, %if.end33.i.i.cleanup_crit_edge, %if.then20.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %do.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end34.i.cleanup_crit_edge ], [ %err.1.i.i, %prestera_port_vlan_destroy.exit.i.i ], [ %49, %if.then20.i.i ], [ -17, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %if.end33.i.i.cleanup_crit_edge ], [ 0, %prestera_bridge_port_get.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_port_obj_del(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  %priv.i.i.i = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %orig_dev1.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %2 = ptrtoint ptr %orig_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_dev1.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %sw2.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %sw2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw2.i, align 4
  %swdev.i = getelementptr inbounds %struct.prestera_switch, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %swdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swdev.i, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i.i.i) #9
  %12 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %priv.i.i.i, align 8
  %call.i.i.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %11, ptr noundef nonnull @prestera_match_upper_bridge_dev, ptr noundef nonnull %priv.i.i.i) #9
  %data.i.i.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i.i.i) #9
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %bridge_list.i.i.i = getelementptr inbounds %struct.prestera_switchdev, ptr %9, i32 0, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i
  %bridge.0.in.i.i.i = phi ptr [ %bridge_list.i.i.i, %if.end.i.i ], [ %bridge.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %bridge.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bridge.0.i.i.i = load ptr, ptr %bridge.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %bridge.0.i.i.i, %bridge_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do.end.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do.end.i_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %dev2.i.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %17, %14
  br i1 %cmp3.i.i.i, label %prestera_bridge_by_dev.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

prestera_bridge_by_dev.exit.i.i:                  ; preds = %for.body.i.i.i
  %tobool2.not.i.i = icmp eq ptr %bridge.0.i.i.i, null
  br i1 %tobool2.not.i.i, label %prestera_bridge_by_dev.exit.i.i.do.end.i_crit_edge, label %if.end4.i.i

prestera_bridge_by_dev.exit.i.i.do.end.i_crit_edge: ; preds = %prestera_bridge_by_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end4.i.i:                                      ; preds = %prestera_bridge_by_dev.exit.i.i
  %port_list.i.i.i = getelementptr inbounds %struct.prestera_bridge, ptr %bridge.0.i.i.i, i32 0, i32 3
  br label %for.cond.i11.i.i

for.cond.i11.i.i:                                 ; preds = %for.body.i14.i.i.for.cond.i11.i.i_crit_edge, %if.end4.i.i
  %br_port.0.in.i.i.i = phi ptr [ %port_list.i.i.i, %if.end4.i.i ], [ %br_port.0.i.i.i, %for.body.i14.i.i.for.cond.i11.i.i_crit_edge ]
  %18 = ptrtoint ptr %br_port.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %br_port.0.i.i.i = load ptr, ptr %br_port.0.in.i.i.i, align 4
  %cmp.not.i10.i.i = icmp eq ptr %br_port.0.i.i.i, %port_list.i.i.i
  br i1 %cmp.not.i10.i.i, label %for.cond.i11.i.i.do.end.i_crit_edge, label %for.body.i14.i.i

for.cond.i11.i.i.do.end.i_crit_edge:              ; preds = %for.cond.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i14.i.i:                                 ; preds = %for.cond.i11.i.i
  %dev2.i12.i.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev2.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev2.i12.i.i, align 4
  %cmp3.i13.i.i = icmp eq ptr %20, %11
  br i1 %cmp3.i13.i.i, label %prestera_bridge_port_by_dev.exit.i, label %for.body.i14.i.i.for.cond.i11.i.i_crit_edge

for.body.i14.i.i.for.cond.i11.i.i_crit_edge:      ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i11.i.i

prestera_bridge_port_by_dev.exit.i:               ; preds = %for.body.i14.i.i
  %tobool.not.i = icmp eq ptr %br_port.0.i.i.i, null
  br i1 %tobool.not.i, label %prestera_bridge_port_by_dev.exit.i.do.end.i_crit_edge, label %if.end28.i, !prof !27

prestera_bridge_port_by_dev.exit.i.do.end.i_crit_edge: ; preds = %prestera_bridge_port_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %prestera_bridge_port_by_dev.exit.i.do.end.i_crit_edge, %for.cond.i11.i.i.do.end.i_crit_edge, %prestera_bridge_by_dev.exit.i.i.do.end.i_crit_edge, %for.cond.i.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1078, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end28.i:                                       ; preds = %prestera_bridge_port_by_dev.exit.i
  %bridge.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.0.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bridge.i, align 4
  %vlan_enabled.i = getelementptr inbounds %struct.prestera_bridge, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %vlan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vlan_enabled.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not.i = icmp eq i8 %24, 0
  br i1 %tobool29.not.i, label %if.end28.i.cleanup_crit_edge, label %if.end31.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31.i:                                       ; preds = %if.end28.i
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %25 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid.i, align 2
  %pvid1.i.i = getelementptr i8, ptr %dev, i32 2698
  %27 = ptrtoint ptr %pvid1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pvid1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %26)
  %cmp.i.i = icmp eq i16 %28, %26
  %spec.select.i.i = select i1 %cmp.i.i, i16 0, i16 %28
  %vlans_list.i.i.i = getelementptr i8, ptr %dev, i32 2744
  br label %for.cond.i.i41.i

for.cond.i.i41.i:                                 ; preds = %for.body.i.i42.i.for.cond.i.i41.i_crit_edge, %if.end31.i
  %.pn.in.i.i.i = phi ptr [ %vlans_list.i.i.i, %if.end31.i ], [ %.pn.i.i.i, %for.body.i.i42.i.for.cond.i.i41.i_crit_edge ]
  %29 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i40.i = icmp eq ptr %.pn.i.i.i, %vlans_list.i.i.i
  br i1 %cmp.not.i.i40.i, label %for.cond.i.i41.i.do.end.i.i_crit_edge, label %for.body.i.i42.i

for.cond.i.i41.i.do.end.i.i_crit_edge:            ; preds = %for.cond.i.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

for.body.i.i42.i:                                 ; preds = %for.cond.i.i41.i
  %vid2.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 16
  %30 = ptrtoint ptr %vid2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid2.i.i.i, align 4
  %cmp4.i.i.i = icmp eq i16 %31, %26
  br i1 %cmp4.i.i.i, label %prestera_port_vlan_by_vid.exit.i.i, label %for.body.i.i42.i.for.cond.i.i41.i_crit_edge

for.body.i.i42.i.for.cond.i.i41.i_crit_edge:      ; preds = %for.body.i.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i41.i

prestera_port_vlan_by_vid.exit.i.i:               ; preds = %for.body.i.i42.i
  %port_vlan.0.le.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -8
  %tobool.not.i43.i = icmp eq ptr %port_vlan.0.le.i.i.i, null
  br i1 %tobool.not.i43.i, label %prestera_port_vlan_by_vid.exit.i.i.do.end.i.i_crit_edge, label %if.end29.i.i, !prof !27

prestera_port_vlan_by_vid.exit.i.i.do.end.i.i_crit_edge: ; preds = %prestera_port_vlan_by_vid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %prestera_port_vlan_by_vid.exit.i.i.do.end.i.i_crit_edge, %for.cond.i.i41.i.do.end.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end29.i.i:                                     ; preds = %prestera_port_vlan_by_vid.exit.i.i
  %vid2.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 16
  call fastcc void @prestera_port_vlan_bridge_leave(ptr noundef nonnull %port_vlan.0.le.i.i.i) #9
  %call30.i.i = call i32 @prestera_port_pvid_set(ptr noundef %add.ptr.i, i16 noundef zeroext %spec.select.i.i) #9
  %port1.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  %32 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port1.i.i.i, align 4
  %34 = ptrtoint ptr %vid2.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vid2.i.i.i.le, align 4
  %br_port.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 12
  %36 = ptrtoint ptr %br_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %br_port.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.end29.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end29.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @prestera_port_vlan_bridge_leave(ptr noundef nonnull %port_vlan.0.le.i.i.i) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end29.i.i.if.end.i.i.i_crit_edge
  %call.i.i44.i = call i32 @prestera_hw_vlan_port_set(ptr noundef %33, i16 noundef zeroext %35, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.prestera_port_vlan_destroy.exit.i.i_crit_edge

if.end.i.i.i.prestera_port_vlan_destroy.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_port_vlan_destroy.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 4
  %38 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %.pn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %prestera_port_vlan_destroy.exit.i.i

prestera_port_vlan_destroy.exit.i.i:              ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.prestera_port_vlan_destroy.exit.i.i_crit_edge
  %44 = ptrtoint ptr %.pn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i.i.i, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 4
  %45 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %port_vlan.0.le.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %prestera_port_vlan_destroy.exit.i.i, %do.end.i.i, %if.end28.i.cleanup_crit_edge, %do.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ 0, %if.end28.i.cleanup_crit_edge ], [ 0, %do.end.i.i ], [ 0, %prestera_port_vlan_destroy.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vlan_port_set(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_port_vlan_bridge_leave(ptr noundef %port_vlan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %vid2 = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan, i32 0, i32 4
  %2 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid2, align 4
  %br_port3 = getelementptr inbounds %struct.prestera_port_vlan, ptr %port_vlan, i32 0, i32 3
  %4 = ptrtoint ptr %br_port3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %br_port3, align 4
  %bridge = getelementptr inbounds %struct.prestera_bridge_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge, align 4
  %port_list.i = getelementptr inbounds %struct.prestera_bridge, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %br_port.035.i = load ptr, ptr %port_list.i, align 4
  %cmp.not36.i = icmp eq ptr %br_port.035.i, %port_list.i
  br i1 %cmp.not36.i, label %entry.prestera_bridge_vlan_port_count.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.prestera_bridge_vlan_port_count.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_vlan_port_count.exit

for.body.i:                                       ; preds = %for.inc21.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %br_port.038.i = phi ptr [ %br_port.0.i, %for.inc21.i.for.body.i_crit_edge ], [ %br_port.035.i, %entry.for.body.i_crit_edge ]
  %count.037.i = phi i32 [ %count.1.i, %for.inc21.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %vlan_list.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %br_port.038.i, i32 0, i32 3
  br label %for.cond6.i

for.cond6.i:                                      ; preds = %for.body11.i.for.cond6.i_crit_edge, %for.body.i
  %br_vlan.0.in.i = phi ptr [ %vlan_list.i, %for.body.i ], [ %br_vlan.0.i, %for.body11.i.for.cond6.i_crit_edge ]
  %9 = ptrtoint ptr %br_vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %br_vlan.0.i = load ptr, ptr %br_vlan.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %br_vlan.0.i, %vlan_list.i
  br i1 %cmp9.not.i, label %for.cond6.i.for.inc21.i_crit_edge, label %for.body11.i

for.cond6.i.for.inc21.i_crit_edge:                ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.i

for.body11.i:                                     ; preds = %for.cond6.i
  %vid12.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %vid12.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid12.i, align 4
  %cmp14.i = icmp eq i16 %11, %3
  br i1 %cmp14.i, label %if.then.i, label %for.body11.i.for.cond6.i_crit_edge

for.body11.i.for.cond6.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond6.i

if.then.i:                                        ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %count.037.i, 1
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then.i, %for.cond6.i.for.inc21.i_crit_edge
  %count.1.i = phi i32 [ %add.i, %if.then.i ], [ %count.037.i, %for.cond6.i.for.inc21.i_crit_edge ]
  %12 = ptrtoint ptr %br_port.038.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %br_port.0.i = load ptr, ptr %br_port.038.i, align 4
  %cmp.not.i = icmp eq ptr %br_port.0.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc21.i.prestera_bridge_vlan_port_count.exit_crit_edge, label %for.inc21.i.for.body.i_crit_edge

for.inc21.i.for.body.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc21.i.prestera_bridge_vlan_port_count.exit_crit_edge: ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_vlan_port_count.exit

prestera_bridge_vlan_port_count.exit:             ; preds = %for.inc21.i.prestera_bridge_vlan_port_count.exit_crit_edge, %entry.prestera_bridge_vlan_port_count.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %entry.prestera_bridge_vlan_port_count.exit_crit_edge ], [ %count.1.i, %for.inc21.i.prestera_bridge_vlan_port_count.exit_crit_edge ]
  %vlan_list.i30 = getelementptr inbounds %struct.prestera_bridge_port, ptr %5, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i34.for.cond.i_crit_edge, %prestera_bridge_vlan_port_count.exit
  %br_vlan.0.in.i31 = phi ptr [ %vlan_list.i30, %prestera_bridge_vlan_port_count.exit ], [ %br_vlan.0.i32, %for.body.i34.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %br_vlan.0.in.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %br_vlan.0.i32 = load ptr, ptr %br_vlan.0.in.i31, align 4
  %cmp.not.i33 = icmp eq ptr %br_vlan.0.i32, %vlan_list.i30
  br i1 %cmp.not.i33, label %for.cond.i.prestera_bridge_vlan_by_vid.exit_crit_edge, label %for.body.i34

for.cond.i.prestera_bridge_vlan_by_vid.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_vlan_by_vid.exit

for.body.i34:                                     ; preds = %for.cond.i
  %vid2.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %br_vlan.0.i32, i32 0, i32 2
  %14 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid2.i, align 4
  %cmp4.i = icmp eq i16 %15, %3
  br i1 %cmp4.i, label %for.body.i34.prestera_bridge_vlan_by_vid.exit_crit_edge, label %for.body.i34.for.cond.i_crit_edge

for.body.i34.for.cond.i_crit_edge:                ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i34.prestera_bridge_vlan_by_vid.exit_crit_edge: ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_vlan_by_vid.exit

prestera_bridge_vlan_by_vid.exit:                 ; preds = %for.body.i34.prestera_bridge_vlan_by_vid.exit_crit_edge, %for.cond.i.prestera_bridge_vlan_by_vid.exit_crit_edge
  %retval.0.i = phi ptr [ %br_vlan.0.i32, %for.body.i34.prestera_bridge_vlan_by_vid.exit_crit_edge ], [ null, %for.cond.i.prestera_bridge_vlan_by_vid.exit_crit_edge ]
  %16 = ptrtoint ptr %vlan_list.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %vlan_list.i30, align 4
  %cmp.i.not.i = icmp eq ptr %17, %vlan_list.i30
  br i1 %cmp.i.not.i, label %prestera_bridge_vlan_by_vid.exit.if.else_crit_edge, label %list_is_singular.exit

prestera_bridge_vlan_by_vid.exit.if.else_crit_edge: ; preds = %prestera_bridge_vlan_by_vid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

list_is_singular.exit:                            ; preds = %prestera_bridge_vlan_by_vid.exit
  %prev.i = getelementptr inbounds %struct.prestera_bridge_port, ptr %5, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %17, %19
  br i1 %cmp.i.not, label %if.then, label %list_is_singular.exit.if.else_crit_edge

list_is_singular.exit.if.else_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %list_is_singular.exit
  %call.i = tail call zeroext i1 @prestera_port_is_lag_member(ptr noundef %1) #9
  br i1 %call.i, label %if.then.i35, label %if.else.i

if.then.i35:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sw.i = getelementptr inbounds %struct.prestera_port, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw.i, align 4
  %call1.i = tail call zeroext i16 @prestera_port_lag_id(ptr noundef %1) #9
  %call2.i = tail call i32 @prestera_hw_fdb_flush_lag(ptr noundef %21, i16 noundef zeroext %call1.i, i32 noundef 1) #9
  br label %if.end14

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @prestera_hw_fdb_flush_port(ptr noundef %1, i32 noundef 1) #9
  br label %if.end14

if.else:                                          ; preds = %list_is_singular.exit.if.else_crit_edge, %prestera_bridge_vlan_by_vid.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.lcssa.i)
  %cmp = icmp eq i32 %count.0.lcssa.i, 1
  br i1 %cmp, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sw = getelementptr inbounds %struct.prestera_port, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw, align 4
  %call11 = tail call i32 @prestera_hw_fdb_flush_vlan(ptr noundef %23, i16 noundef zeroext %3, i32 noundef 1) #9
  br label %if.end14

if.else12:                                        ; preds = %if.else
  %call.i36 = tail call zeroext i1 @prestera_port_is_lag_member(ptr noundef %1) #9
  br i1 %call.i36, label %if.then.i40, label %if.else.i42

if.then.i40:                                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %sw.i37 = getelementptr inbounds %struct.prestera_port, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %sw.i37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw.i37, align 4
  %call1.i38 = tail call zeroext i16 @prestera_port_lag_id(ptr noundef %1) #9
  %call2.i39 = tail call i32 @prestera_hw_fdb_flush_lag_vlan(ptr noundef %25, i16 noundef zeroext %call1.i38, i16 noundef zeroext %3, i32 noundef 1) #9
  br label %if.end14

if.else.i42:                                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i41 = tail call i32 @prestera_hw_fdb_flush_port_vlan(ptr noundef %1, i16 noundef zeroext %3, i32 noundef 1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else.i42, %if.then.i40, %if.then10, %if.else.i, %if.then.i35
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port_vlan) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %port_vlan, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_vlan, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %32 = ptrtoint ptr %port_vlan to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %port_vlan, align 4
  %prev.i43 = getelementptr inbounds %struct.list_head, ptr %port_vlan, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i43, align 4
  %port_vlan_list.i = getelementptr inbounds %struct.prestera_bridge_vlan, ptr %retval.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %port_vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %port_vlan_list.i, align 4
  %cmp.i.not.i44 = icmp eq ptr %35, %port_vlan_list.i
  br i1 %cmp.i.not.i44, label %if.then.i45, label %list_del.exit.prestera_bridge_vlan_put.exit_crit_edge

list_del.exit.prestera_bridge_vlan_put.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_vlan_put.exit

if.then.i45:                                      ; preds = %list_del.exit
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.0.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i45.list_del.exit.i.i_crit_edge

if.then.i45.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %retval.0.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i45.list_del.exit.i.i_crit_edge
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %port_vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %port_vlan_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %45, %port_vlan_list.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.prestera_bridge_vlan_destroy.exit.i_crit_edge, label %do.end.i.i, !prof !28

list_del.exit.i.i.prestera_bridge_vlan_destroy.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prestera_bridge_vlan_destroy.exit.i

do.end.i.i:                                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 96, i32 noundef 9, ptr noundef null) #9
  br label %prestera_bridge_vlan_destroy.exit.i

prestera_bridge_vlan_destroy.exit.i:              ; preds = %do.end.i.i, %list_del.exit.i.i.prestera_bridge_vlan_destroy.exit.i_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i) #9
  br label %prestera_bridge_vlan_put.exit

prestera_bridge_vlan_put.exit:                    ; preds = %prestera_bridge_vlan_destroy.exit.i, %list_del.exit.prestera_bridge_vlan_put.exit_crit_edge
  tail call fastcc void @prestera_bridge_port_put(ptr noundef %5)
  %46 = ptrtoint ptr %br_port3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %br_port3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_flush_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_flush_lag(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_flush_lag_vlan(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_fdb_flush_port_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_event_handler_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_fdb_event(ptr noundef %sw, ptr noundef %evt, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %info = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 0, i32 20)
  %1 = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dest = getelementptr inbounds %struct.prestera_fdb_event, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dest, align 4
  %call = tail call ptr @prestera_find_port(ptr noundef %sw, i32 noundef %6) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %dest3 = getelementptr inbounds %struct.prestera_fdb_event, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dest3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dest3, align 4
  %call4 = tail call ptr @prestera_lag_by_id(ptr noundef %sw, i16 noundef zeroext %8) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %sw.bb2.cleanup_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %dev.0.in = phi ptr [ %call, %sw.bb.sw.epilog_crit_edge ], [ %call4, %sw.bb2.sw.epilog_crit_edge ]
  %9 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %tobool9.not = icmp eq ptr %dev.0, null
  br i1 %tobool9.not, label %sw.epilog.cleanup_crit_edge, label %if.end11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %data = getelementptr inbounds %struct.prestera_fdb_event, ptr %1, i32 0, i32 3
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.prestera_event, ptr %evt, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vid, align 8
  %conv = trunc i32 %12 to i16
  %vid12 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %vid12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %vid12, align 4
  %offloaded = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %offloaded to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %offloaded, align 2
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %offloaded, align 2
  tail call void @rtnl_lock() #9
  %15 = ptrtoint ptr %evt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %evt, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %16, label %if.end11.sw.epilog20_crit_edge [
    i16 1, label %if.end11.sw.epilog20.sink.split_crit_edge
    i16 2, label %sw.bb17
  ]

if.end11.sw.epilog20.sink.split_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog20.sink.split

if.end11.sw.epilog20_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog20

sw.bb17:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog20.sink.split

sw.epilog20.sink.split:                           ; preds = %sw.bb17, %if.end11.sw.epilog20.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb17 ], [ 1, %if.end11.sw.epilog20.sink.split_crit_edge ]
  %call19 = call i32 @call_switchdev_notifiers(i32 noundef %.sink, ptr noundef nonnull %dev.0, ptr noundef nonnull %info, ptr noundef null) #9
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.epilog20.sink.split, %if.end11.sw.epilog20_crit_edge
  call void @rtnl_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog20, %sw.epilog.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_hw_event_handler_unregister(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_find_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prestera_lag_by_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c", i32 1247, i32 13}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @swdev_wq, !4, !"swdev_wq", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c", i32 70, i32 33}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c", i32 275, i32 19}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c", i32 317, i32 2}
!9 = !{ptr @prestera_switchdev_event.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c", i32 883, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_switchdev.c", i32 656, i32 26}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2148517406, i64 2148517438, i64 2148517467, i64 2148517501, i64 2148517532, i64 2148517555}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2148605431}
!30 = !{i64 2148519871, i64 2148519903, i64 2148519932, i64 2148519966, i64 2148519997, i64 2148520020}
!31 = !{i64 2149839651}
!32 = !{i64 919576, i64 919637}
!33 = !{i64 922308}
!34 = !{i64 922593}
