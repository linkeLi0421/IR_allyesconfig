; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.lan966x_port = type { ptr, ptr, i8, i16, i16, i8, i8, %struct.phylink_config, %struct.phylink_pcs, %struct.lan966x_port_config, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.148 }
%union.anon.148 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }

@lan966x_netdevice_nb = internal global %struct.notifier_block { ptr @lan966x_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@lan966x_switchdev_nb = internal global %struct.notifier_block { ptr @lan966x_switchdev_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@lan966x_switchdev_blocking_nb = internal global %struct.notifier_block { ptr @lan966x_switchdev_blocking_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@lan966x_foreign_bridging_check.__msg = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"lan966x_switch: Bridging between multiple lan966x switches disallowed\00", [58 x i8] zeroinitializer }, align 32
@lan966x_foreign_bridging_check.__msg.1 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"lan966x_switch: Bridging lan966x ports with foreign interfaces disallowed\00", [54 x i8] zeroinitializer }, align 32
@lan966x_port_bridge_join.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"lan966x_switch: Not allow to add port to different bridge\00", [38 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 26]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 291, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 306, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.14 = private constant [62 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 195, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 238, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @lan966x_foreign_bridging_check.__msg, ptr @lan966x_foreign_bridging_check.__msg.1, ptr @lan966x_port_bridge_join.__msg, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_foreign_bridging_check.__msg to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_foreign_bridging_check.__msg.1 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_port_bridge_join.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_register_notifier_blocks() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @lan966x_netdevice_nb) #5
  %call1 = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @lan966x_switchdev_nb) #5
  %call2 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @lan966x_switchdev_blocking_nb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_unregister_notifier_blocks() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @lan966x_switchdev_blocking_nb) #5
  %call1 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @lan966x_switchdev_nb) #5
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @lan966x_netdevice_nb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_netdevice_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call.i = tail call zeroext i1 @lan966x_netdevice_check(ptr noundef %1) #5
  br i1 %call.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %event)
  %cmp.i = icmp eq i32 %event, 21
  br i1 %cmp.i, label %lan966x_netdevice_port_event.exit, label %if.then.i.lan966x_netdevice_port_event.exit.thread_crit_edge

if.then.i.lan966x_netdevice_port_event.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread

if.end3.i:                                        ; preds = %entry
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end3.i.lan966x_netdevice_port_event.exit.thread_crit_edge [
    i32 26, label %sw.bb.i
    i32 21, label %sw.bb5.i
  ]

if.end3.i.lan966x_netdevice_port_event.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread

sw.bb.i:                                          ; preds = %if.end3.i
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %upper_dev.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %upper_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %upper_dev.i.i, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %6, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sw.bb.i.lan966x_netdevice_port_event.exit.thread_crit_edge, label %land.lhs.true.i.i

sw.bb.i.lan966x_netdevice_port_event.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread

land.lhs.true.i.i:                                ; preds = %sw.bb.i
  %linking.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %7 = ptrtoint ptr %linking.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %linking.i.i, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.lan966x_netdevice_port_event.exit.thread_crit_edge

land.lhs.true.i.i.lan966x_netdevice_port_event.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %10, ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @lan966x_switchdev_nb, ptr noundef nonnull @lan966x_switchdev_blocking_nb) #5
  br label %lan966x_netdevice_port_event.exit.thread

sw.bb5.i:                                         ; preds = %if.end3.i
  %call6.i = tail call fastcc i32 @lan966x_bridge_check(ptr noundef %ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %sw.bb5.i.lan966x_netdevice_port_event.exit.thread11_crit_edge

sw.bb5.i.lan966x_netdevice_port_event.exit.thread11_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread11

if.end8.i:                                        ; preds = %sw.bb5.i
  %add.ptr.i.i1.i = getelementptr i8, ptr %1, i32 2304
  %extack.i.i.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %11 = ptrtoint ptr %extack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extack.i.i.i, align 4
  %upper_dev.i2.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %13 = ptrtoint ptr %upper_dev.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %upper_dev.i2.i, align 4
  %priv_flags.i.i3.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %priv_flags.i.i3.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %priv_flags.i.i3.i, align 16
  %and.i.i4.i = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i4.i)
  %tobool.i.not.i5.i = icmp eq i64 %and.i.i4.i, 0
  br i1 %tobool.i.not.i5.i, label %if.end8.i.lan966x_netdevice_port_event.exit.thread_crit_edge, label %if.then.i8.i

if.end8.i.lan966x_netdevice_port_event.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread

if.then.i8.i:                                     ; preds = %if.end8.i
  %linking.i6.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %17 = ptrtoint ptr %linking.i6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %linking.i6.i, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i7.i = icmp eq i8 %18, 0
  %lan966x1.i14.i.i = getelementptr i8, ptr %1, i32 2308
  %19 = ptrtoint ptr %lan966x1.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lan966x1.i14.i.i, align 4
  br i1 %tobool.not.i7.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i8.i
  %21 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i1.i, align 4
  %bridge_mask.i.i.i = getelementptr inbounds %struct.lan966x, ptr %20, i32 0, i32 7
  %23 = ptrtoint ptr %bridge_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bridge_mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i.i = icmp eq i16 %24, 0
  %bridge3.i.i.i = getelementptr inbounds %struct.lan966x, ptr %20, i32 0, i32 6
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %bridge3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %14, ptr %bridge3.i.i.i, align 4
  br label %if.end9.i.i.i

if.else.i.i.i:                                    ; preds = %if.then4.i.i
  %26 = ptrtoint ptr %bridge3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge3.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %27, %14
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i.if.end9.i.i.i_crit_edge, label %do.body.i.i.i

if.else.i.i.i.if.end9.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i.i

do.body.i.i.i:                                    ; preds = %if.else.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @lan966x_port_bridge_join.__msg) #5
  %tobool6.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i.i.i, label %do.body.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge, label %if.then7.i.i.i

do.body.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread11

if.then7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @lan966x_port_bridge_join.__msg, ptr %12, align 4
  br label %lan966x_netdevice_port_event.exit.thread11

if.end9.i.i.i:                                    ; preds = %if.else.i.i.i.if.end9.i.i.i_crit_edge, %if.then.i.i.i
  %call.i.i.i = tail call i32 @switchdev_bridge_port_offload(ptr noundef %22, ptr noundef %22, ptr noundef %add.ptr.i.i1.i, ptr noundef nonnull @lan966x_switchdev_nb, ptr noundef nonnull @lan966x_switchdev_blocking_nb, i1 noundef zeroext false, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end12.i.i.i, label %if.end9.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge

if.end9.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread11

if.end12.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %chip_port.i.i.i = getelementptr i8, ptr %1, i32 2312
  %29 = ptrtoint ptr %chip_port.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_port.i.i.i, align 4
  %conv.i.i.i = zext i8 %30 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %31 = ptrtoint ptr %bridge_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bridge_mask.i.i.i, align 4
  %33 = trunc i32 %shl.i.i.i to i16
  %conv15.i.i.i = or i16 %32, %33
  store i16 %conv15.i.i.i, ptr %bridge_mask.i.i.i, align 4
  tail call fastcc void @lan966x_port_bridge_flags(ptr noundef %add.ptr.i.i1.i, [2 x i32] [i32 18528, i32 18528]) #5
  br label %lan966x_netdevice_port_event.exit.thread

if.else.i.i:                                      ; preds = %if.then.i8.i
  tail call fastcc void @lan966x_port_bridge_flags(ptr noundef %add.ptr.i.i1.i, [2 x i32] [i32 18496, i32 18528]) #5
  %chip_port.i15.i.i = getelementptr i8, ptr %1, i32 2312
  %34 = ptrtoint ptr %chip_port.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chip_port.i15.i.i, align 4
  %conv.i16.i.i = zext i8 %35 to i32
  %shl.i17.i.i = shl nuw i32 1, %conv.i16.i.i
  %bridge_mask.i18.i.i = getelementptr inbounds %struct.lan966x, ptr %20, i32 0, i32 7
  %36 = ptrtoint ptr %bridge_mask.i18.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bridge_mask.i18.i.i, align 4
  %38 = trunc i32 %shl.i17.i.i to i16
  %39 = xor i16 %38, -1
  %conv5.i.i.i = and i16 %37, %39
  store i16 %conv5.i.i.i, ptr %bridge_mask.i18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5.i.i.i)
  %tobool.not.i19.i.i = icmp eq i16 %conv5.i.i.i, 0
  br i1 %tobool.not.i19.i.i, label %if.then.i20.i.i, label %if.else.i.i.lan966x_port_bridge_leave.exit.i.i_crit_edge

if.else.i.i.lan966x_port_bridge_leave.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_port_bridge_leave.exit.i.i

if.then.i20.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %bridge7.i.i.i = getelementptr inbounds %struct.lan966x, ptr %20, i32 0, i32 6
  %40 = ptrtoint ptr %bridge7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %bridge7.i.i.i, align 4
  br label %lan966x_port_bridge_leave.exit.i.i

lan966x_port_bridge_leave.exit.i.i:               ; preds = %if.then.i20.i.i, %if.else.i.i.lan966x_port_bridge_leave.exit.i.i_crit_edge
  tail call void @lan966x_vlan_port_set_vlan_aware(ptr noundef %add.ptr.i.i1.i, i1 noundef zeroext false) #5
  %call.i21.i.i = tail call i32 @lan966x_vlan_port_set_vid(ptr noundef %add.ptr.i.i1.i, i16 noundef zeroext 4095, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @lan966x_vlan_port_apply(ptr noundef %add.ptr.i.i1.i) #5
  br label %lan966x_netdevice_port_event.exit.thread

lan966x_netdevice_port_event.exit.thread11:       ; preds = %if.end9.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge, %if.then7.i.i.i, %do.body.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge, %sw.bb5.i.lan966x_netdevice_port_event.exit.thread11_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %if.end9.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge ], [ -19, %do.body.i.i.i.lan966x_netdevice_port_event.exit.thread11_crit_edge ], [ -19, %if.then7.i.i.i ], [ %call6.i, %sw.bb5.i.lan966x_netdevice_port_event.exit.thread11_crit_edge ]
  %sub.i14 = sub i32 1, %retval.0.i.ph
  %or.i15 = or i32 %sub.i14, 32768
  br label %41

lan966x_netdevice_port_event.exit:                ; preds = %if.then.i
  %call2.i = tail call fastcc i32 @lan966x_bridge_check(ptr noundef %ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i4 = icmp eq i32 %call2.i, 0
  %sub.i = sub i32 1, %call2.i
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i4, label %lan966x_netdevice_port_event.exit.lan966x_netdevice_port_event.exit.thread_crit_edge, label %lan966x_netdevice_port_event.exit._crit_edge

lan966x_netdevice_port_event.exit._crit_edge:     ; preds = %lan966x_netdevice_port_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %41

lan966x_netdevice_port_event.exit.lan966x_netdevice_port_event.exit.thread_crit_edge: ; preds = %lan966x_netdevice_port_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_netdevice_port_event.exit.thread

lan966x_netdevice_port_event.exit.thread:         ; preds = %lan966x_netdevice_port_event.exit.lan966x_netdevice_port_event.exit.thread_crit_edge, %lan966x_port_bridge_leave.exit.i.i, %if.end12.i.i.i, %if.end8.i.lan966x_netdevice_port_event.exit.thread_crit_edge, %if.then.i.i, %land.lhs.true.i.i.lan966x_netdevice_port_event.exit.thread_crit_edge, %sw.bb.i.lan966x_netdevice_port_event.exit.thread_crit_edge, %if.end3.i.lan966x_netdevice_port_event.exit.thread_crit_edge, %if.then.i.lan966x_netdevice_port_event.exit.thread_crit_edge
  br label %41

41:                                               ; preds = %lan966x_netdevice_port_event.exit.thread, %lan966x_netdevice_port_event.exit._crit_edge, %lan966x_netdevice_port_event.exit.thread11
  %42 = phi i32 [ 1, %lan966x_netdevice_port_event.exit.thread ], [ %or.i, %lan966x_netdevice_port_event.exit._crit_edge ], [ %or.i15, %lan966x_netdevice_port_event.exit.thread11 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lan966x_netdevice_check(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan966x_bridge_check(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upper_dev, align 4
  %extack = getelementptr inbounds %struct.netdev_notifier_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #5
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.lan966x_foreign_bridging_check.exit_crit_edge, label %if.end.i

entry.lan966x_foreign_bridging_check.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_foreign_bridging_check.exit

if.end.i:                                         ; preds = %entry
  %lower.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lower.i, align 8
  %8 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %iter.i, align 4
  %call1.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #5
  %tobool.not48.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not48.i, label %if.end.i.lan966x_foreign_bridging_check.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.lan966x_foreign_bridging_check.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_foreign_bridging_check.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %dev.051.i = phi ptr [ %call29.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  %has_foreign.0.off050.i = phi i1 [ %has_foreign.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end.i.for.body.i_crit_edge ]
  %lan966x.049.i = phi ptr [ %lan966x.3.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %call2.i = call zeroext i1 @lan966x_netdevice_check(ptr noundef nonnull %dev.051.i) #5
  br i1 %call2.i, label %if.then3.i, label %for.body.i.if.end16.i_crit_edge

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then3.i:                                       ; preds = %for.body.i
  %tobool5.not.i = icmp eq ptr %lan966x.049.i, null
  %lan966x13.i = getelementptr i8, ptr %dev.051.i, i32 2308
  %9 = ptrtoint ptr %lan966x13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lan966x13.i, align 4
  br i1 %tobool5.not.i, label %if.then3.i.if.end16.i_crit_edge, label %if.then6.i

if.then3.i.if.end16.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.then3.i
  %cmp.not.i = icmp eq ptr %10, %lan966x.049.i
  br i1 %cmp.not.i, label %if.then6.i.if.end16.i_crit_edge, label %do.body.i

if.then6.i.if.end16.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

do.body.i:                                        ; preds = %if.then6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @lan966x_foreign_bridging_check.__msg) #5
  %tobool9.not.i = icmp eq ptr %3, null
  br i1 %tobool9.not.i, label %do.body.i.lan966x_foreign_bridging_check.exit_crit_edge, label %do.body.i.cleanup30.sink.split.i_crit_edge

do.body.i.cleanup30.sink.split.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30.sink.split.i

do.body.i.lan966x_foreign_bridging_check.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_foreign_bridging_check.exit

if.end16.i:                                       ; preds = %if.then6.i.if.end16.i_crit_edge, %if.then3.i.if.end16.i_crit_edge, %for.body.i.if.end16.i_crit_edge
  %lan966x.3.i = phi ptr [ %lan966x.049.i, %for.body.i.if.end16.i_crit_edge ], [ %lan966x.049.i, %if.then6.i.if.end16.i_crit_edge ], [ %10, %if.then3.i.if.end16.i_crit_edge ]
  %has_foreign.1.off0.i = phi i1 [ true, %for.body.i.if.end16.i_crit_edge ], [ %has_foreign.0.off050.i, %if.then6.i.if.end16.i_crit_edge ], [ %has_foreign.0.off050.i, %if.then3.i.if.end16.i_crit_edge ]
  %tobool17.not.i = icmp eq ptr %lan966x.3.i, null
  %has_foreign.1.off0.not.i = xor i1 %has_foreign.1.off0.i, true
  %brmerge.i = select i1 %tobool17.not.i, i1 true, i1 %has_foreign.1.off0.not.i
  br i1 %brmerge.i, label %for.inc.i, label %do.body20.i

do.body20.i:                                      ; preds = %if.end16.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @lan966x_foreign_bridging_check.__msg.1) #5
  %tobool22.not.i = icmp eq ptr %3, null
  br i1 %tobool22.not.i, label %do.body20.i.lan966x_foreign_bridging_check.exit_crit_edge, label %do.body20.i.cleanup30.sink.split.i_crit_edge

do.body20.i.cleanup30.sink.split.i_crit_edge:     ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup30.sink.split.i

do.body20.i.lan966x_foreign_bridging_check.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_foreign_bridging_check.exit

for.inc.i:                                        ; preds = %if.end16.i
  %call29.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #5
  %tobool.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool.not.i, label %for.inc.i.lan966x_foreign_bridging_check.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.lan966x_foreign_bridging_check.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_foreign_bridging_check.exit

cleanup30.sink.split.i:                           ; preds = %do.body20.i.cleanup30.sink.split.i_crit_edge, %do.body.i.cleanup30.sink.split.i_crit_edge
  %lan966x_foreign_bridging_check.__msg.sink.i = phi ptr [ @lan966x_foreign_bridging_check.__msg, %do.body.i.cleanup30.sink.split.i_crit_edge ], [ @lan966x_foreign_bridging_check.__msg.1, %do.body20.i.cleanup30.sink.split.i_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lan966x_foreign_bridging_check.__msg.sink.i, ptr %3, align 4
  br label %lan966x_foreign_bridging_check.exit

lan966x_foreign_bridging_check.exit:              ; preds = %cleanup30.sink.split.i, %for.inc.i.lan966x_foreign_bridging_check.exit_crit_edge, %do.body20.i.lan966x_foreign_bridging_check.exit_crit_edge, %do.body.i.lan966x_foreign_bridging_check.exit_crit_edge, %if.end.i.lan966x_foreign_bridging_check.exit_crit_edge, %entry.lan966x_foreign_bridging_check.exit_crit_edge
  %retval.3.i = phi i32 [ 0, %entry.lan966x_foreign_bridging_check.exit_crit_edge ], [ -22, %do.body20.i.lan966x_foreign_bridging_check.exit_crit_edge ], [ -22, %do.body.i.lan966x_foreign_bridging_check.exit_crit_edge ], [ 0, %if.end.i.lan966x_foreign_bridging_check.exit_crit_edge ], [ -22, %cleanup30.sink.split.i ], [ 0, %for.inc.i.lan966x_foreign_bridging_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #5
  ret i32 %retval.3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan966x_port_bridge_flags(ptr nocapture noundef %port, [2 x i32] %flags.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %and = and i32 %flags.coerce.fca.1.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lan966x.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr81.i.i.i = getelementptr i8, ptr %3, i32 28136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %and1 = and i32 %flags.coerce.fca.0.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %5 = and i32 %4, -16711680
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and16.i = and i32 %6, %neg.i
  %or.i = or i32 %shl.i, %6
  %val.0.i = select i1 %tobool2.not, i32 %and16.i, i32 %or.i
  %and38.i = and i32 %val.0.i, 511
  %9 = ptrtoint ptr %lan966x.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lan966x.i, align 4
  %arrayidx.i.i48.i = getelementptr %struct.lan966x, ptr %10, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i48.i, align 4
  %add.ptr81.i.i50.i = getelementptr i8, ptr %12, i32 28136
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i50.i) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %14 = and i32 %13, 16711679
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %or.i.i = or i32 %15, %and38.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %17 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i48.i, align 4
  %add.ptr81.i6.i.i = getelementptr i8, ptr %18, i32 28136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i, i32 %16) #5, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %flags.coerce.fca.1.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lan966x.i43 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %lan966x.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lan966x.i43, align 4
  %arrayidx.i.i.i44 = getelementptr %struct.lan966x, ptr %20, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i44, align 4
  %add.ptr81.i.i.i45 = getelementptr i8, ptr %22, i32 28120
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i45) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %and9 = and i32 %flags.coerce.fca.0.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %24 = and i32 %23, -16711680
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %chip_port.i46 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %26 = ptrtoint ptr %chip_port.i46 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chip_port.i46, align 4
  %conv.i47 = zext i8 %27 to i32
  %shl.i48 = shl nuw i32 1, %conv.i47
  %neg.i50 = xor i32 %shl.i48, -1
  %and16.i51 = and i32 %25, %neg.i50
  %or.i49 = or i32 %shl.i48, %25
  %val.0.i52 = select i1 %tobool10.not, i32 %and16.i51, i32 %or.i49
  %and38.i57 = and i32 %val.0.i52, 511
  %28 = ptrtoint ptr %lan966x.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lan966x.i43, align 4
  %arrayidx.i.i48.i58 = getelementptr %struct.lan966x, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx.i.i48.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i48.i58, align 4
  %add.ptr81.i.i50.i59 = getelementptr i8, ptr %31, i32 28120
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i50.i59) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %33 = and i32 %32, 16711679
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %or.i.i60 = or i32 %34, %and38.i57
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i.i60) #5
  %36 = ptrtoint ptr %arrayidx.i.i48.i58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i48.i58, align 4
  %add.ptr81.i6.i.i61 = getelementptr i8, ptr %37, i32 28120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i61, i32 %35) #5, !srcloc !28
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %and15 = and i32 %flags.coerce.fca.1.extract, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end23_crit_edge, label %if.then17

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %lan966x.i62 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %38 = ptrtoint ptr %lan966x.i62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lan966x.i62, align 4
  %arrayidx.i.i.i63 = getelementptr %struct.lan966x, ptr %39, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i63, align 4
  %add.ptr81.i.i.i64 = getelementptr i8, ptr %41, i32 28128
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i64) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %and19 = and i32 %flags.coerce.fca.0.extract, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %43 = and i32 %42, -16711680
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %chip_port.i65 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %45 = ptrtoint ptr %chip_port.i65 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %chip_port.i65, align 4
  %conv.i66 = zext i8 %46 to i32
  %shl.i67 = shl nuw i32 1, %conv.i66
  %neg.i69 = xor i32 %shl.i67, -1
  %and16.i70 = and i32 %44, %neg.i69
  %or.i68 = or i32 %shl.i67, %44
  %val.0.i71 = select i1 %tobool20.not, i32 %and16.i70, i32 %or.i68
  %and38.i76 = and i32 %val.0.i71, 511
  %47 = ptrtoint ptr %lan966x.i62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lan966x.i62, align 4
  %arrayidx.i.i48.i77 = getelementptr %struct.lan966x, ptr %48, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx.i.i48.i77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i48.i77, align 4
  %add.ptr81.i.i50.i78 = getelementptr i8, ptr %50, i32 28128
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i50.i78) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %52 = and i32 %51, 16711679
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %or.i.i79 = or i32 %53, %and38.i76
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i79) #5
  %55 = ptrtoint ptr %arrayidx.i.i48.i77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i48.i77, align 4
  %add.ptr81.i6.i.i80 = getelementptr i8, ptr %56, i32 28128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i80, i32 %54) #5, !srcloc !28
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end13.if.end23_crit_edge
  %and25 = and i32 %flags.coerce.fca.1.extract, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end33_crit_edge, label %if.then27

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then27:                                        ; preds = %if.end23
  %and29 = and i32 %flags.coerce.fca.0.extract, 32
  %lan966x.i81 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %57 = ptrtoint ptr %lan966x.i81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lan966x.i81, align 4
  %chip_port.i82 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %59 = ptrtoint ptr %chip_port.i82 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %chip_port.i82, align 4
  %conv14.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %60)
  %cmp20.not.i.i.i = icmp ult i8 %60, 9
  br i1 %cmp20.not.i.i.i, label %if.then27.lan_addr.exit.i.i_crit_edge, label %do.end36.i.i.i, !prof !29

if.then27.lan_addr.exit.i.i_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan_addr.exit.i.i

do.end36.i.i.i:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #5
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end36.i.i.i, %if.then27.lan_addr.exit.i.i_crit_edge
  %arrayidx.i.i.i83 = getelementptr %struct.lan966x, ptr %58, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i83, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 28672
  %mul.i.i.i = shl nuw nsw i32 %conv14.i, 7
  %add.ptr81.i.i.i84 = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr82.i.i.i = getelementptr i8, ptr %add.ptr81.i.i.i84, i32 112
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i.i, label %lan_addr.exit.i.i.lan966x_port_set_learning.exit_crit_edge, label %do.end36.i2.i.i, !prof !29

lan_addr.exit.i.i.lan966x_port_set_learning.exit_crit_edge: ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan966x_port_set_learning.exit

do.end36.i2.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #5
  br label %lan966x_port_set_learning.exit

lan966x_port_set_learning.exit:                   ; preds = %do.end36.i2.i.i, %lan_addr.exit.i.i.lan966x_port_set_learning.exit_crit_edge
  %and29.lobit = lshr exact i32 %and29, 5
  %64 = trunc i32 %and29.lobit to i8
  %65 = and i32 %63, -536870913
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %or.i.i86 = or i32 %66, %and29
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i86) #5
  %68 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i83, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %69, i32 28672
  %add.ptr81.i6.i.i87 = getelementptr i8, ptr %add.ptr.i4.i.i, i32 %mul.i.i.i
  %add.ptr82.i7.i.i = getelementptr i8, ptr %add.ptr81.i6.i.i87, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i.i, i32 %67) #5, !srcloc !28
  %learn_ena.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 6
  %70 = ptrtoint ptr %learn_ena.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %64, ptr %learn_ena.i, align 1
  br label %if.end33

if.end33:                                         ; preds = %lan966x_port_set_learning.exit, %if.end23.if.end33_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_port_set_vlan_aware(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_vlan_port_set_vid(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_port_apply(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_switchdev_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 9, label %sw.bb
    i32 3, label %entry.sw.bb3_crit_edge
    i32 4, label %entry.sw.bb3_crit_edge16
  ]

entry.sw.bb3_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @lan966x_netdevice_check, ptr noundef nonnull @lan966x_port_attr_set) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge16
  %call4 = tail call i32 @switchdev_handle_fdb_event_to_device(ptr noundef %1, i32 noundef %event, ptr noundef %ptr, ptr noundef nonnull @lan966x_netdevice_check, ptr noundef nonnull @lan966x_foreign_dev_check, ptr noundef nonnull @lan966x_handle_fdb, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i12 = icmp eq i32 %call4, 0
  %sub.i13 = sub i32 1, %call4
  %or.i14 = or i32 %sub.i13, 32768
  %retval.0.i15 = select i1 %tobool.not.i12, i32 1, i32 %or.i14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i15, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_attr_set(ptr noundef %dev, ptr noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb4
    i32 5, label %sw.bb6
    i32 6, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %u = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack26 = load i32, ptr %u, align 4
  %4 = insertvalue [2 x i32] undef, i32 %.unpack26, 0
  %.elt27 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %.elt27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack28 = load i32, ptr %.elt27, align 4
  %6 = insertvalue [2 x i32] %4, i32 %.unpack28, 1
  tail call fastcc void @lan966x_port_bridge_flags(ptr noundef %add.ptr.i, [2 x i32] %6)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %.elt24 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %.elt24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack25 = load i32, ptr %.elt24, align 4
  %and.i = and i32 %.unpack25, -18529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -22
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %u5 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %u5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %u5, align 4
  %lan966x1.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lan966x1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp eq i8 %9, 3
  %12 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch.i = icmp eq i8 %12, 2
  br i1 %switch.i, label %land.lhs.true.i, label %sw.bb4.if.end.i_crit_edge

sw.bb4.if.end.i_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %learn_ena6.i = getelementptr i8, ptr %dev, i32 2319
  %13 = ptrtoint ptr %learn_ena6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %learn_ena6.i, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.not.i = icmp eq i8 %14, 0
  %phi.sel.i = select i1 %tobool.not.not.i, i32 0, i32 32
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %sw.bb4.if.end.i_crit_edge
  %learn_ena.0.off0.i = phi i32 [ 0, %sw.bb4.if.end.i_crit_edge ], [ %phi.sel.i, %land.lhs.true.i ]
  %chip_port.i = getelementptr i8, ptr %dev, i32 2312
  %15 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_port.i, align 4
  %conv12.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv12.i
  %bridge_fwd_mask.i = getelementptr inbounds %struct.lan966x, ptr %11, i32 0, i32 8
  %17 = ptrtoint ptr %bridge_fwd_mask.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bridge_fwd_mask.i, align 2
  %19 = trunc i32 %shl.i to i16
  %conv14.i = or i16 %18, %19
  %20 = xor i16 %19, -1
  %conv20.i = and i16 %18, %20
  %conv14.sink.i = select i1 %cmp.i, i16 %conv14.i, i16 %conv20.i
  store i16 %conv14.sink.i, ptr %bridge_fwd_mask.i, align 2
  %21 = load i8, ptr %chip_port.i, align 4
  %conv46.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %21)
  %cmp20.not.i.i.i = icmp ult i8 %21, 9
  br i1 %cmp20.not.i.i.i, label %if.end.i.lan_addr.exit.i.i_crit_edge, label %do.end36.i.i.i, !prof !29

if.end.i.lan_addr.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan_addr.exit.i.i

do.end36.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #5
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end36.i.i.i, %if.end.i.lan_addr.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %11, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 28672
  %mul.i.i.i = shl nuw nsw i32 %conv46.i, 7
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr82.i.i.i = getelementptr i8, ptr %add.ptr81.i.i.i, i32 112
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i.i, label %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge, label %do.end36.i2.i.i, !prof !29

lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge:       ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan_rmw.exit.i

do.end36.i2.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #5
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end36.i2.i.i, %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge
  %25 = and i32 %24, -536870913
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %or.i.i = or i32 %26, %learn_ena.0.off0.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %29, i32 28672
  %add.ptr81.i6.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 %mul.i.i.i
  %add.ptr82.i7.i.i = getelementptr i8, ptr %add.ptr81.i6.i.i, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i.i, i32 %27) #5, !srcloc !28
  %num_phys_ports.i.i = getelementptr inbounds %struct.lan966x, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %num_phys_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_phys_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp39.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp39.not.i.i, label %lan_rmw.exit.i.cleanup_crit_edge, label %for.body.lr.ph.i.i

lan_rmw.exit.i.cleanup_crit_edge:                 ; preds = %lan_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %lan_rmw.exit.i
  %ports.i.i = getelementptr inbounds %struct.lan966x, ptr %11, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %lan_wr.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.040.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %lan_wr.exit.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %33, i32 %i.040.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %for.body.i.i.do.end23.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.do.end23.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %36 = ptrtoint ptr %bridge_fwd_mask.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bridge_fwd_mask.i, align 2
  %conv2.i.i = zext i16 %37 to i32
  %shl.i.i = shl nuw i32 1, %i.040.i.i
  %and.i58.i = and i32 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %tobool3.not.i.i = icmp eq i32 %and.i58.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end23.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.do.end23.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i.i = xor i32 %shl.i.i, -1
  %and7.i.i = and i32 %conv2.i.i, %neg.i.i
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true.i.i.do.end23.i.i_crit_edge, %for.body.i.i.do.end23.i.i_crit_edge
  %mask.0.i.i = phi i32 [ %and7.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.do.end23.i.i_crit_edge ], [ 0, %for.body.i.i.do.end23.i.i_crit_edge ]
  %or.i59.i = and i32 %mask.0.i.i, 255
  %and25.i.i = or i32 %or.i59.i, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.040.i.i)
  %cmp20.not.i.i.i.i = icmp ult i32 %i.040.i.i, 9
  br i1 %cmp20.not.i.i.i.i, label %do.end23.i.i.lan_wr.exit.i.i_crit_edge, label %do.end36.i.i.i.i, !prof !29

do.end23.i.i.lan_wr.exit.i.i_crit_edge:           ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lan_wr.exit.i.i

do.end36.i.i.i.i:                                 ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #5
  br label %lan_wr.exit.i.i

lan_wr.exit.i.i:                                  ; preds = %do.end36.i.i.i.i, %do.end23.i.i.lan_wr.exit.i.i_crit_edge
  %38 = tail call i32 @llvm.bswap.i32(i32 %and25.i.i) #5
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %40, i32 27648
  %add.i.i = shl i32 %i.040.i.i, 3
  %mul.i.i.i.i = add nuw nsw i32 %add.i.i, 640
  %add.ptr81.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.i.i, i32 %38) #5, !srcloc !28
  %inc.i.i = add nuw nsw i32 %i.040.i.i, 1
  %41 = ptrtoint ptr %num_phys_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_phys_ports.i.i, align 4
  %conv.i.i = zext i8 %42 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %lan_wr.exit.i.i.for.body.i.i_crit_edge, label %lan_wr.exit.i.i.cleanup_crit_edge

lan_wr.exit.i.i.cleanup_crit_edge:                ; preds = %lan_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lan_wr.exit.i.i.for.body.i.i_crit_edge:           ; preds = %lan_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %u7 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %43 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %u7, align 4
  %call.i = tail call i32 @clock_t_to_jiffies(i32 noundef %44) #5
  %call1.i = tail call i32 @jiffies_to_msecs(i32 noundef %call.i) #5
  %div.i = udiv i32 %call1.i, 1000
  %lan966x.i = getelementptr i8, ptr %dev, i32 2308
  %45 = ptrtoint ptr %lan966x.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lan966x.i, align 4
  tail call void @lan966x_mac_set_ageing(ptr noundef %46, i32 noundef %div.i) #5
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %u9 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %47 = ptrtoint ptr %u9 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %u9, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool10 = icmp ne i8 %48, 0
  tail call void @lan966x_vlan_port_set_vlan_aware(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool10) #5
  tail call void @lan966x_vlan_port_apply(ptr noundef %add.ptr.i) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb6, %lan_wr.exit.i.i.cleanup_crit_edge, %lan_rmw.exit.i.cleanup_crit_edge, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb6 ], [ %..i, %sw.bb1 ], [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %lan_rmw.exit.i.cleanup_crit_edge ], [ 0, %lan_wr.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_fdb_event_to_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lan966x_foreign_dev_check(ptr nocapture noundef readonly %dev, ptr noundef readonly %foreign_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %foreign_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lan966x1, align 4
  %bridge = getelementptr inbounds %struct.lan966x, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 4
  %cmp.not = icmp eq ptr %5, %foreign_dev
  br i1 %cmp.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end4 ], [ true, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_handle_fdb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mac_set_ageing(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_switchdev_blocking_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @lan966x_netdevice_check, ptr noundef nonnull @lan966x_handle_port_obj_add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @lan966x_netdevice_check, ptr noundef nonnull @lan966x_handle_port_obj_del) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i17 = icmp eq i32 %call4, 0
  %sub.i18 = sub i32 1, %call4
  %or.i19 = or i32 %sub.i18, 32768
  %retval.0.i20 = select i1 %tobool.not.i17, i32 1, i32 %or.i19
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @lan966x_netdevice_check, ptr noundef nonnull @lan966x_port_attr_set) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i21 = icmp eq i32 %call7, 0
  %sub.i22 = sub i32 1, %call7
  %or.i23 = or i32 %sub.i22, 32768
  %retval.0.i24 = select i1 %tobool.not.i21, i32 1, i32 %or.i23
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %sw.bb6 ], [ %retval.0.i20, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_handle_port_obj_add(ptr noundef %dev, ptr noundef readnone %ctx, ptr noundef %obj, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb2_crit_edge
    i32 3, label %if.end.sw.bb2_crit_edge10
  ]

if.end.sw.bb2_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %lan966x1.i = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lan966x1.i, align 4
  %orig_dev.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %5 = ptrtoint ptr %orig_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_dev.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then4.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %flags.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 4
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.else.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %12 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid.i, align 2
  %flags5.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 1
  %14 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags5.i, align 4
  %conv6.i = zext i16 %15 to i32
  %and7.i = and i32 %conv6.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.i = icmp ne i32 %and7.i, 0
  %and11.i = and i32 %conv6.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.i = icmp ne i32 %and11.i, 0
  tail call void @lan966x_vlan_port_add_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %13, i1 noundef zeroext %tobool8.i, i1 noundef zeroext %tobool12.i) #5
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %vid13.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %16 = ptrtoint ptr %vid13.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid13.i, align 2
  tail call void @lan966x_vlan_cpu_add_vlan(ptr noundef %4, i16 noundef zeroext %17) #5
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge10
  %call3 = tail call i32 @lan966x_handle_port_mdb_add(ptr noundef %add.ptr.i, ptr noundef %obj) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.else.i, %if.then4.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %sw.bb2 ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_handle_port_obj_del(ptr noundef %dev, ptr noundef readnone %ctx, ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb2_crit_edge
    i32 3, label %if.end.sw.bb2_crit_edge10
  ]

if.end.sw.bb2_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %orig_dev.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %3 = ptrtoint ptr %orig_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %orig_dev.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %6, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %7 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid.i, align 2
  tail call void @lan966x_vlan_port_del_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %8) #5
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %lan966x1.i = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lan966x1.i, align 4
  %vid2.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %11 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid2.i, align 2
  tail call void @lan966x_vlan_cpu_del_vlan(ptr noundef %10, i16 noundef zeroext %12) #5
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge10
  %call3 = tail call i32 @lan966x_handle_port_mdb_del(ptr noundef %add.ptr.i, ptr noundef %obj) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.else.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %sw.bb2 ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_handle_port_mdb_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_port_add_vlan(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_cpu_add_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_handle_port_mdb_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_port_del_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_cpu_del_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @lan966x_netdevice_nb, !1, !"lan966x_netdevice_nb", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c", i32 520, i32 30}
!2 = !{ptr @lan966x_foreign_bridging_check.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c", i32 291, i32 6}
!4 = !{ptr @lan966x_foreign_bridging_check.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c", i32 306, i32 4}
!6 = !{ptr @lan966x_port_bridge_join.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c", i32 195, i32 4}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!10 = !{ptr @lan966x_switchdev_nb, !11, !"lan966x_switchdev_nb", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c", i32 524, i32 30}
!12 = !{ptr @lan966x_switchdev_blocking_nb, !13, !"lan966x_switchdev_blocking_nb", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_switchdev.c", i32 528, i32 30}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
!24 = !{i64 6545088}
!25 = !{i64 2157825792}
!26 = !{i64 2157827547}
!27 = !{i64 2157827850}
!28 = !{i64 6544670}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2157826270}
