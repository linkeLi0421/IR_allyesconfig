; ModuleID = '/llk/IR_all_yes/net/dsa/master.c_pt.bc'
source_filename = "../net/dsa/master.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dsa_netdevice_ops = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.dsa_port = type { %union.anon.145, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.145 = type { ptr }
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
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.159 = type { ptr }
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
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to create a device link to DSA switch %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&dsa_master_addr_list_lock_key\00", [33 x i8] zeroinitializer }, align 32
@dsa_master_addr_list_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dsa_netdev_ops = internal constant { %struct.dsa_netdevice_ops, [28 x i8] } { %struct.dsa_netdevice_ops { ptr @dsa_master_ioctl }, [28 x i8] zeroinitializer }, align 32
@dsa_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.4, ptr null, ptr null, ptr @dsa_slave_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dsa_master_set_promiscuity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/dsa/master.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsa\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p%.2d\00", [26 x i8] zeroinitializer }, align 32
@dsa_slave_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_tagging, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_tagging = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tagging_show, ptr @tagging_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tagging\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 351, i32 7 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 361, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"dsa_master_addr_list_lock_key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 338, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"dsa_netdev_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 219, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"dsa_group\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 333, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 275, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 61, i32 28 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 154, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"dsa_slave_attrs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 328, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"dev_attr_tagging\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 326, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [20 x i8] c"../net/dsa/master.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 286, i32 22 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @dsa_master_addr_list_lock_key, ptr @dsa_netdev_ops, ptr @dsa_group, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dsa_slave_attrs, ptr @dev_attr_tagging, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_master_addr_list_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_netdev_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tagging to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_master_setup(ptr noundef %dev, ptr noundef %cpu_dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %cpu_dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call = tail call ptr @device_link_add(ptr noundef %3, ptr noundef %5, i32 noundef 2) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #10
  br label %do.body

do.body:                                          ; preds = %dev_name.exit, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %12 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cpu_dp, ptr %dsa_ptr, align 4
  %dep_map = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @dsa_master_addr_list_lock_key, i32 noundef 0, i8 noundef zeroext %14, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %15 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i38 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i38, label %do.body.if.end.i39_crit_edge, label %land.lhs.true.i

do.body.if.end.i39_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i39

land.lhs.true.i:                                  ; preds = %do.body
  %17 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsa_ptr, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_port, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tag_ops.i, align 4
  %promisc_on_master.i = getelementptr inbounds %struct.dsa_device_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %promisc_on_master.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %promisc_on_master.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.dsa_master_set_promiscuity.exit_crit_edge, label %land.lhs.true.i.if.end.i39_crit_edge

land.lhs.true.i.if.end.i39_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i39

land.lhs.true.i.dsa_master_set_promiscuity.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_master_set_promiscuity.exit

if.end.i39:                                       ; preds = %land.lhs.true.i.if.end.i39_crit_edge, %do.body.if.end.i39_crit_edge
  %call.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %if.end.i39.if.end33.i_crit_edge

if.end.i39.if.end33.i_crit_edge:                  ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

land.rhs.i:                                       ; preds = %if.end.i39
  %.b46.i = load i1, ptr @dsa_master_set_promiscuity.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then11.i, !prof !36

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dsa_master_set_promiscuity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 275) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then11.i, %land.rhs.i.if.end33.i_crit_edge, %if.end.i39.if.end33.i_crit_edge
  %call41.i = tail call i32 @dev_set_promiscuity(ptr noundef %dev, i32 noundef 1) #7
  br label %dsa_master_set_promiscuity.exit

dsa_master_set_promiscuity.exit:                  ; preds = %if.end33.i, %land.lhs.true.i.dsa_master_set_promiscuity.exit_crit_edge
  %23 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsa_ptr, align 4
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds1.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef 284, i32 noundef 3520) #7
  %tobool.not.i41 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i41, label %dsa_master_set_promiscuity.exit.out_err_reset_promisc_crit_edge, label %if.end.i42

dsa_master_set_promiscuity.exit.out_err_reset_promisc_crit_edge: ; preds = %dsa_master_set_promiscuity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err_reset_promisc

if.end.i42:                                       ; preds = %dsa_master_set_promiscuity.exit
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %29 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ethtool_ops.i, align 16
  %orig_ethtool_ops.i = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 21
  %31 = ptrtoint ptr %orig_ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %orig_ethtool_ops.i, align 4
  %tobool4.not.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i, label %if.end.i42.if.end13_crit_edge, label %if.then5.i

if.end.i42.if.end13_crit_edge:                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  %32 = call ptr @memcpy(ptr %call.i.i, ptr %30, i32 284)
  br label %if.end13

if.end13:                                         ; preds = %if.then5.i, %if.end.i42.if.end13_crit_edge
  %get_regs_len.i = getelementptr inbounds %struct.ethtool_ops, ptr %call.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %get_regs_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dsa_master_get_regs_len, ptr %get_regs_len.i, align 4
  %get_regs.i = getelementptr inbounds %struct.ethtool_ops, ptr %call.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %get_regs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dsa_master_get_regs, ptr %get_regs.i, align 4
  %get_sset_count.i = getelementptr inbounds %struct.ethtool_ops, ptr %call.i.i, i32 0, i32 31
  %35 = ptrtoint ptr %get_sset_count.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dsa_master_get_sset_count, ptr %get_sset_count.i, align 4
  %get_ethtool_stats.i = getelementptr inbounds %struct.ethtool_ops, ptr %call.i.i, i32 0, i32 26
  %36 = ptrtoint ptr %get_ethtool_stats.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @dsa_master_get_ethtool_stats, ptr %get_ethtool_stats.i, align 4
  %get_strings.i = getelementptr inbounds %struct.ethtool_ops, ptr %call.i.i, i32 0, i32 24
  %37 = ptrtoint ptr %get_strings.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dsa_master_get_strings, ptr %get_strings.i, align 4
  %get_ethtool_phy_stats.i = getelementptr inbounds %struct.ethtool_ops, ptr %call.i.i, i32 0, i32 61
  %38 = ptrtoint ptr %get_ethtool_phy_stats.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dsa_master_get_ethtool_phy_stats, ptr %get_ethtool_phy_stats.i, align 4
  %39 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %ethtool_ops.i, align 16
  %40 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsa_ptr, align 4
  %netdev_ops.i = getelementptr inbounds %struct.dsa_port, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dsa_netdev_ops, ptr %netdev_ops.i, align 4
  %call15 = tail call i32 @sysfs_create_group(ptr noundef %dev3, ptr noundef nonnull @dsa_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %out_err_ndo_teardown

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_err_ndo_teardown:                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dsa_ptr, align 4
  %netdev_ops.i46 = getelementptr inbounds %struct.dsa_port, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %netdev_ops.i46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %netdev_ops.i46, align 4
  %46 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops.i48 = getelementptr inbounds %struct.dsa_port, ptr %46, i32 0, i32 21
  %47 = ptrtoint ptr %orig_ethtool_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %orig_ethtool_ops.i48, align 4
  %49 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %ethtool_ops.i, align 16
  store ptr null, ptr %orig_ethtool_ops.i48, align 4
  br label %out_err_reset_promisc

out_err_reset_promisc:                            ; preds = %out_err_ndo_teardown, %dsa_master_set_promiscuity.exit.out_err_reset_promisc_crit_edge
  %ret.0 = phi i32 [ %call15, %out_err_ndo_teardown ], [ -12, %dsa_master_set_promiscuity.exit.out_err_reset_promisc_crit_edge ]
  %50 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %priv_flags.i, align 16
  %and.i51 = and i64 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i51)
  %tobool.not.i52 = icmp eq i64 %and.i51, 0
  br i1 %tobool.not.i52, label %out_err_reset_promisc.if.end.i60_crit_edge, label %land.lhs.true.i57

out_err_reset_promisc.if.end.i60_crit_edge:       ; preds = %out_err_reset_promisc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i60

land.lhs.true.i57:                                ; preds = %out_err_reset_promisc
  %52 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dsa_ptr, align 4
  %tag_ops.i54 = getelementptr inbounds %struct.dsa_port, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %tag_ops.i54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tag_ops.i54, align 4
  %promisc_on_master.i55 = getelementptr inbounds %struct.dsa_device_ops, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %promisc_on_master.i55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %promisc_on_master.i55, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not.i56 = icmp eq i8 %57, 0
  br i1 %tobool1.not.i56, label %land.lhs.true.i57.cleanup_crit_edge, label %land.lhs.true.i57.if.end.i60_crit_edge

land.lhs.true.i57.if.end.i60_crit_edge:           ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i60

land.lhs.true.i57.cleanup_crit_edge:              ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i60:                                       ; preds = %land.lhs.true.i57.if.end.i60_crit_edge, %out_err_reset_promisc.if.end.i60_crit_edge
  %call.i58 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool2.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool2.not.i59, label %land.rhs.i62, label %if.end.i60.if.end33.i65_crit_edge

if.end.i60.if.end33.i65_crit_edge:                ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i65

land.rhs.i62:                                     ; preds = %if.end.i60
  %.b46.i61 = load i1, ptr @dsa_master_set_promiscuity.__already_done, align 1
  br i1 %.b46.i61, label %land.rhs.i62.if.end33.i65_crit_edge, label %if.then11.i63, !prof !36

land.rhs.i62.if.end33.i65_crit_edge:              ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i65

if.then11.i63:                                    ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dsa_master_set_promiscuity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 275) #7
  br label %if.end33.i65

if.end33.i65:                                     ; preds = %if.then11.i63, %land.rhs.i62.if.end33.i65_crit_edge, %if.end.i60.if.end33.i65_crit_edge
  %call41.i64 = tail call i32 @dev_set_promiscuity(ptr noundef %dev, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i65, %land.lhs.true.i57.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %ret.0, %land.lhs.true.i57.cleanup_crit_edge ], [ %ret.0, %if.end33.i65 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_master_teardown(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @dsa_group) #7
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %netdev_ops.i, align 4
  %3 = load ptr, ptr %dsa_ptr.i, align 4
  %orig_ethtool_ops.i = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %orig_ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_ethtool_ops.i, align 4
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ethtool_ops.i, align 16
  store ptr null, ptr %orig_ethtool_ops.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %9 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsa_ptr.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_port, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tag_ops.i, align 4
  %promisc_on_master.i = getelementptr inbounds %struct.dsa_device_ops, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %promisc_on_master.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %promisc_on_master.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.dsa_master_set_promiscuity.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.dsa_master_set_promiscuity.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_master_set_promiscuity.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i, label %if.end.i.if.end33.i_crit_edge

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b46.i = load i1, ptr @dsa_master_set_promiscuity.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then11.i, !prof !36

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dsa_master_set_promiscuity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 275) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then11.i, %land.rhs.i.if.end33.i_crit_edge, %if.end.i.if.end33.i_crit_edge
  %call41.i = tail call i32 @dev_set_promiscuity(ptr noundef %dev, i32 noundef -1) #7
  br label %dsa_master_set_promiscuity.exit

dsa_master_set_promiscuity.exit:                  ; preds = %if.end33.i, %land.lhs.true.i.dsa_master_set_promiscuity.exit_crit_edge
  %15 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dsa_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_master_get_regs_len(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %orig_ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_ethtool_ops, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %get_regs_len = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %get_regs_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_regs_len, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 %9(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo40 = add nuw i32 %call, 208
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %phi.bo40, %if.end ], [ 208, %entry.if.end4_crit_edge ]
  %ops7 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops7, align 4
  %get_regs_len8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %get_regs_len8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_regs_len8, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %if.then10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %13(ptr noundef %5, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  %add17 = select i1 %cmp14, i32 0, i32 %ret.0
  %spec.select = add i32 %add17, %call13
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %ret.0, %if.end4.cleanup_crit_edge ], [ %spec.select, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_master_get_regs(ptr noundef %dev, ptr noundef %regs, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %orig_ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_ethtool_ops, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %get_regs_len = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %get_regs_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_regs_len, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %get_regs = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %get_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_regs, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %9(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %len5 = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %len5, align 4
  %13 = ptrtoint ptr %get_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_regs, align 4
  tail call void %14(ptr noundef %dev, ptr noundef %regs, ptr noundef %data) #7
  %15 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len5, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %16
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.end ], [ %data, %land.lhs.true.if.end8_crit_edge ], [ %data, %entry.if.end8_crit_edge ]
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %data.addr.0, i32 0, i32 1
  %call9 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.4, i32 noundef 32) #7
  %add.ptr10 = getelementptr i8, ptr %data.addr.0, i32 196
  %add.ptr11 = getelementptr i8, ptr %data.addr.0, i32 208
  %ops12 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops12, align 4
  %get_regs_len13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %18, i32 0, i32 41
  %19 = ptrtoint ptr %get_regs_len13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_regs_len13, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end8
  %get_regs17 = getelementptr inbounds %struct.dsa_switch_ops, ptr %18, i32 0, i32 42
  %21 = ptrtoint ptr %get_regs17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_regs17, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then19

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true15
  %call22 = tail call i32 %20(ptr noundef %5, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then19.cleanup_crit_edge, label %if.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %len26 = getelementptr i8, ptr %data.addr.0, i32 204
  %23 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call22, ptr %len26, align 4
  %24 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops12, align 4
  %get_regs28 = getelementptr inbounds %struct.dsa_switch_ops, ptr %25, i32 0, i32 42
  %26 = ptrtoint ptr %get_regs28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_regs28, align 4
  tail call void %27(ptr noundef %5, i32 noundef %7, ptr noundef %add.ptr10, ptr noundef %add.ptr11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then19.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_master_get_sset_count(ptr noundef %dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %orig_ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_ethtool_ops, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sset)
  %cmp = icmp eq i32 %sset, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_ethtool_phy_stats = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 61
  %8 = ptrtoint ptr %get_ethtool_phy_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_ethtool_phy_stats, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %7) #7
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_sset_count, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %if.then6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %11(ptr noundef %dev, i32 noundef %sset) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else.if.end9_crit_edge, %if.then
  %count.0 = phi i32 [ %call8, %if.then6 ], [ 0, %if.else.if.end9_crit_edge ], [ %call, %if.then ]
  %12 = tail call i32 @llvm.smax.i32(i32 %count.0, i32 0)
  %ops13 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %ops13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops13, align 4
  %get_sset_count14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %get_sset_count14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_sset_count14, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end9.if.end20_crit_edge, label %if.then16

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %call19 = tail call i32 %16(ptr noundef %5, i32 noundef %18, i32 noundef %sset) #7
  %add = add i32 %call19, %12
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end9.if.end20_crit_edge
  %count.1 = phi i32 [ %add, %if.then16 ], [ %12, %if.end9.if.end20_crit_edge ]
  ret i32 %count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_master_get_ethtool_stats(ptr noundef %dev, ptr noundef %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %orig_ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_ethtool_ops, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_sset_count, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_ethtool_stats = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %get_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_ethtool_stats, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %9(ptr noundef %dev, i32 noundef 1) #7
  %12 = ptrtoint ptr %get_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_ethtool_stats, align 4
  tail call void %13(ptr noundef %dev, ptr noundef %stats, ptr noundef %data) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %count.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %ops5 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops5, align 4
  %get_ethtool_stats6 = getelementptr inbounds %struct.dsa_switch_ops, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %get_ethtool_stats6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_ethtool_stats6, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i64, ptr %data, i32 %count.0
  tail call void %17(ptr noundef %5, i32 noundef %7, ptr noundef %add.ptr) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_master_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %pfx = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %orig_ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_ethtool_ops, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfx) #7
  %8 = getelementptr inbounds [4 x i8], ptr %pfx, i32 0, i32 3
  %9 = ptrtoint ptr %pfx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pfx, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfx, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %7)
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 95, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.else10_crit_edge

entry.if.else10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10

land.lhs.true:                                    ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %11 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %land.lhs.true.if.else10_crit_edge, label %land.lhs.true2

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_ethtool_phy_stats = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 61
  %13 = ptrtoint ptr %get_ethtool_phy_stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_ethtool_phy_stats, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true2.if.else10_crit_edge

land.lhs.true2.if.else10_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10

if.then:                                          ; preds = %land.lhs.true2
  %call5 = tail call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.if.end22_crit_edge, label %if.else

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phydev, align 16
  %call9 = tail call i32 @phy_ethtool_get_strings(ptr noundef %16, ptr noundef %data) #7
  br label %if.end22

if.else10:                                        ; preds = %land.lhs.true2.if.else10_crit_edge, %land.lhs.true.if.else10_crit_edge, %entry.if.else10_crit_edge
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_sset_count, align 4
  %tobool11.not = icmp eq ptr %18, null
  br i1 %tobool11.not, label %if.else10.if.end22_crit_edge, label %land.lhs.true12

if.else10.if.end22_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true12:                                  ; preds = %if.else10
  %get_strings = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 24
  %19 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_strings, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %land.lhs.true12.if.end22_crit_edge, label %if.then14

land.lhs.true12.if.end22_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 %18(ptr noundef %dev, i32 noundef %stringset) #7
  %21 = tail call i32 @llvm.smax.i32(i32 %call16, i32 0)
  %22 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_strings, align 4
  tail call void %23(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %land.lhs.true12.if.end22_crit_edge, %if.else10.if.end22_crit_edge, %if.else, %if.then.if.end22_crit_edge
  %mcount.0 = phi i32 [ %21, %if.then14 ], [ 0, %land.lhs.true12.if.end22_crit_edge ], [ 0, %if.else10.if.end22_crit_edge ], [ %call5, %if.else ], [ 0, %if.then.if.end22_crit_edge ]
  %ops23 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops23, align 4
  %get_strings24 = getelementptr inbounds %struct.dsa_switch_ops, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %get_strings24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_strings24, align 4
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  %mul = shl i32 %mcount.0, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  tail call void %27(ptr noundef %5, i32 noundef %7, i32 noundef %stringset, ptr noundef %add.ptr) #7
  %28 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops23, align 4
  %get_sset_count30 = getelementptr inbounds %struct.dsa_switch_ops, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %get_sset_count30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_sset_count30, align 4
  %call31 = tail call i32 %31(ptr noundef %5, i32 noundef %7, i32 noundef %stringset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp3592 = icmp sgt i32 %call31, 0
  br i1 %cmp3592, label %for.body.lr.ph, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then26
  %32 = ptrtoint ptr %pfx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pfx, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul36 = shl i32 %i.093, 5
  %add = or i32 %mul36, 4
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %add
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 %mul36
  %34 = call ptr @memmove(ptr %add.ptr37, ptr %add.ptr39, i32 28)
  %35 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %33, ptr %add.ptr39, align 1
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %call31
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_master_get_ethtool_phy_stats(ptr noundef %dev, ptr noundef %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %orig_ethtool_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %orig_ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_ethtool_ops, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %get_ethtool_phy_stats = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 61
  %10 = ptrtoint ptr %get_ethtool_phy_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_ethtool_phy_stats, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @phy_ethtool_get_sset_count(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then4, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 16
  %call6 = tail call i32 @phy_ethtool_get_stats(ptr noundef %13, ptr noundef %stats, ptr noundef %data) #7
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_sset_count, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.else.if.end16_crit_edge, label %land.lhs.true8

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true8:                                   ; preds = %if.else
  %get_ethtool_phy_stats9 = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 61
  %16 = ptrtoint ptr %get_ethtool_phy_stats9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_ethtool_phy_stats9, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %land.lhs.true8.if.end16_crit_edge, label %if.then11

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %15(ptr noundef %dev, i32 noundef 7) #7
  %18 = ptrtoint ptr %get_ethtool_phy_stats9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_ethtool_phy_stats9, align 4
  tail call void %19(ptr noundef %dev, ptr noundef %stats, ptr noundef %data) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true8.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.then4, %if.then.if.end16_crit_edge
  %count.0 = phi i32 [ %call13, %if.then11 ], [ 0, %land.lhs.true8.if.end16_crit_edge ], [ 0, %if.else.if.end16_crit_edge ], [ %call, %if.then4 ], [ %call, %if.then.if.end16_crit_edge ]
  %ops20 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops20, align 4
  %get_ethtool_phy_stats21 = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %get_ethtool_phy_stats21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_ethtool_phy_stats21, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end16.if.end26_crit_edge, label %if.then23

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %24 = tail call i32 @llvm.smax.i32(i32 %count.0, i32 0)
  %add.ptr = getelementptr i64, ptr %data, i32 %24
  tail call void %23(ptr noundef %5, i32 noundef %7, ptr noundef %add.ptr) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end16.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_sset_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_master_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 35248, i32 %0)
  %switch = icmp eq i32 %0, 35248
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %1 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsa_ptr, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds1, align 4
  %dst2 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst2, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %sw.bb
  %.pn.in = phi ptr [ %ports, %sw.bb ], [ %.pn, %lor.lhs.false.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.cond.sw.epilog_crit_edge, label %for.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body:                                         ; preds = %for.cond
  %ds4 = getelementptr i8, ptr %.pn, i32 -432
  %8 = ptrtoint ptr %ds4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds4, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %port_hwtstamp_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 74
  %12 = ptrtoint ptr %port_hwtstamp_get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_hwtstamp_get, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %port_hwtstamp_set = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 75
  %14 = ptrtoint ptr %port_hwtstamp_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_hwtstamp_set, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %lor.lhs.false.for.cond_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

sw.epilog:                                        ; preds = %for.cond.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev_ops, align 8
  %ndo_eth_ioctl = getelementptr inbounds %struct.net_device_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %ndo_eth_ioctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndo_eth_ioctl, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %sw.epilog.cleanup_crit_edge, label %if.then14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %19(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then14 ], [ -95, %sw.epilog.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tagging_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsa_ptr = getelementptr i8, ptr %d, i32 -572
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %tag_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tag_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_ops, align 4
  %call = tail call ptr @dsa_tag_protocol_to_str(ptr noundef %3) #7
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tagging_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %d, i32 -1104
  %dsa_ptr = getelementptr i8, ptr %d, i32 -572
  %0 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsa_ptr, align 4
  %tag_ops = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tag_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_ops, align 4
  %call = tail call ptr @dsa_find_tagger_by_name(ptr noundef %buf) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %call, %3
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %ds = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 4
  %call5 = tail call i32 @dsa_tree_change_tag_proto(ptr noundef %8, ptr noundef %add.ptr, ptr noundef %call, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end4.out_crit_edge, label %if.then6

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dsa_tag_driver_put(ptr noundef %call) #7
  br label %cleanup

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  tail call void @dsa_tag_driver_put(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %count, %out ], [ %call5, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_tag_protocol_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_find_tagger_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tree_change_tag_proto(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_driver_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dsa/master.c", i32 351, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/dsa/master.c", i32 361, i32 2}
!4 = !{ptr @dsa_master_addr_list_lock_key, !5, !"dsa_master_addr_list_lock_key", i1 false, i1 false}
!5 = !{!"../net/dsa/master.c", i32 338, i32 30}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/dsa/master.c", i32 275, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dsa/master.c", i32 61, i32 28}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/dsa/master.c", i32 154, i32 29}
!14 = !{ptr @dsa_netdev_ops, !15, !"dsa_netdev_ops", i1 false, i1 false}
!15 = !{!"../net/dsa/master.c", i32 219, i32 39}
!16 = !{ptr @dsa_group, !17, !"dsa_group", i1 false, i1 false}
!17 = !{!"../net/dsa/master.c", i32 333, i32 37}
!18 = !{ptr @dsa_slave_attrs, !19, !"dsa_slave_attrs", i1 false, i1 false}
!19 = !{!"../net/dsa/master.c", i32 328, i32 26}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/dsa/master.c", i32 326, i32 8}
!22 = !{ptr @dev_attr_tagging, !21, !"dev_attr_tagging", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/dsa/master.c", i32 286, i32 22}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2158072025}
!35 = !{i8 0, i8 2}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2158072481}
