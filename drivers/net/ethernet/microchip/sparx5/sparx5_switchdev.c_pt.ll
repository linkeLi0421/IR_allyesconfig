; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sparx5_switchdev_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.150 }
%union.anon.150 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sparx5_order\00", [19 x i8] zeroinitializer }, align 32
@sparx5_owq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sparx5_switchdev_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&switchdev_work->work)\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Controlling non-bridged port %d?\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 14, i64 21]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 505, i32 15 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"sparx5_owq\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 13, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 295, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [60 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 36, i32 7 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @sparx5_owq, ptr @sparx5_switchdev_event.__key, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_owq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_switchdev_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_register_notifier_blocks(ptr noundef %s5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %netdevice_nb = getelementptr inbounds %struct.sparx5, ptr %s5, i32 0, i32 16
  %0 = ptrtoint ptr %netdevice_nb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sparx5_netdevice_event, ptr %netdevice_nb, align 4
  %call = tail call i32 @register_netdevice_notifier(ptr noundef %netdevice_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %switchdev_nb = getelementptr inbounds %struct.sparx5, ptr %s5, i32 0, i32 17
  %1 = ptrtoint ptr %switchdev_nb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sparx5_switchdev_event, ptr %switchdev_nb, align 8
  %call4 = tail call i32 @register_switchdev_notifier(ptr noundef %switchdev_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_switchdev_nb_crit_edge

if.end.err_switchdev_nb_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_switchdev_nb

if.end7:                                          ; preds = %if.end
  %switchdev_blocking_nb = getelementptr inbounds %struct.sparx5, ptr %s5, i32 0, i32 18
  %2 = ptrtoint ptr %switchdev_blocking_nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sparx5_switchdev_blocking_event, ptr %switchdev_blocking_nb, align 4
  %call10 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef %switchdev_blocking_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.err_switchdev_blocking_nb_crit_edge

if.end7.err_switchdev_blocking_nb_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_switchdev_blocking_nb

if.end13:                                         ; preds = %if.end7
  %call14 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1) #5
  store ptr %call14, ptr @sparx5_owq, align 4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.err_switchdev_blocking_nb_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.err_switchdev_blocking_nb_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_switchdev_blocking_nb

err_switchdev_blocking_nb:                        ; preds = %if.end13.err_switchdev_blocking_nb_crit_edge, %if.end7.err_switchdev_blocking_nb_crit_edge
  %err.0 = phi i32 [ %call10, %if.end7.err_switchdev_blocking_nb_crit_edge ], [ -12, %if.end13.err_switchdev_blocking_nb_crit_edge ]
  %call19 = tail call i32 @unregister_switchdev_notifier(ptr noundef %switchdev_nb) #5
  br label %err_switchdev_nb

err_switchdev_nb:                                 ; preds = %err_switchdev_blocking_nb, %if.end.err_switchdev_nb_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.err_switchdev_nb_crit_edge ], [ %err.0, %err_switchdev_blocking_nb ]
  %call21 = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdevice_nb) #5
  br label %cleanup

cleanup:                                          ; preds = %err_switchdev_nb, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_switchdev_nb ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_netdevice_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call.i = tail call zeroext i1 @sparx5_netdevice_check(ptr noundef %1) #5
  br i1 %call.i, label %if.end.i, label %entry.sparx5_netdevice_port_event.exit.thread_crit_edge

entry.sparx5_netdevice_port_event.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_netdevice_port_event.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.i.sparx5_netdevice_port_event.exit.thread_crit_edge [
    i32 21, label %sw.bb.i
    i32 14, label %sw.bb2.i
    i32 2, label %sw.bb4.i
  ]

if.end.i.sparx5_netdevice_port_event.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_netdevice_port_event.exit.thread

sw.bb.i:                                          ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %extack.i.i.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %extack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extack.i.i.i, align 4
  %upper_dev.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %upper_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %upper_dev.i.i, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sw.bb.i.sparx5_netdevice_port_event.exit.thread_crit_edge, label %if.then.i.i

sw.bb.i.sparx5_netdevice_port_event.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_netdevice_port_event.exit.thread

if.then.i.i:                                      ; preds = %sw.bb.i
  %linking.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %9 = ptrtoint ptr %linking.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %linking.i.i, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %sparx51.i16.i.i = getelementptr i8, ptr %1, i32 2308
  %11 = ptrtoint ptr %sparx51.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sparx51.i16.i.i, align 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %bridge_mask.i.i.i = getelementptr inbounds %struct.sparx5, ptr %12, i32 0, i32 21
  %call.i.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %bridge_mask.i.i.i, i32 noundef 65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call.i.i.i.i)
  %cmp4.i.i.i.i = icmp eq i32 %call.i.i.i.i, 65
  %hw_bridge_dev.i.i.i = getelementptr inbounds %struct.sparx5, ptr %12, i32 0, i32 20
  br i1 %cmp4.i.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hw_bridge_dev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %hw_bridge_dev.i.i.i, align 8
  br label %if.end5.i.i.i

if.else.i.i.i:                                    ; preds = %if.then4.i.i
  %16 = ptrtoint ptr %hw_bridge_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_bridge_dev.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %17, %6
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i.if.end5.i.i.i_crit_edge, label %if.else.i.i.i.sparx5_netdevice_port_event.exit_crit_edge

if.else.i.i.i.sparx5_netdevice_port_event.exit_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_netdevice_port_event.exit

if.else.i.i.i.if.end5.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.else.i.i.i.if.end5.i.i.i_crit_edge, %if.then.i.i.i
  %portno.i.i.i = getelementptr i8, ptr %1, i32 2396
  %18 = ptrtoint ptr %portno.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %portno.i.i.i, align 4
  %conv.i.i.i = zext i16 %19 to i32
  tail call void @_set_bit(i32 noundef %conv.i.i.i, ptr noundef %bridge_mask.i.i.i) #5
  %call8.i.i.i = tail call i32 @switchdev_bridge_port_offload(ptr noundef %14, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end10.i.i.i, label %err_switchdev_offload.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mc.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 66
  tail call void @__hw_addr_unsync_dev(ptr noundef %mc.i.i.i.i, ptr noundef %14, ptr noundef nonnull @sparx5_mc_unsync) #5
  br label %sparx5_netdevice_port_event.exit

err_switchdev_offload.i.i.i:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %portno.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %portno.i.i.i, align 4
  %conv12.i.i.i = zext i16 %21 to i32
  tail call void @_clear_bit(i32 noundef %conv12.i.i.i, ptr noundef %bridge_mask.i.i.i) #5
  br label %sparx5_netdevice_port_event.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %portno.i17.i.i = getelementptr i8, ptr %1, i32 2396
  %22 = ptrtoint ptr %portno.i17.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %portno.i17.i.i, align 4
  %conv.i18.i.i = zext i16 %23 to i32
  %bridge_mask.i19.i.i = getelementptr inbounds %struct.sparx5, ptr %12, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef %conv.i18.i.i, ptr noundef %bridge_mask.i19.i.i) #5
  %call.i.i20.i.i = tail call i32 @_find_first_bit_be(ptr noundef %bridge_mask.i19.i.i, i32 noundef 65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call.i.i20.i.i)
  %cmp4.i.i21.i.i = icmp eq i32 %call.i.i20.i.i, 65
  br i1 %cmp4.i.i21.i.i, label %if.then.i23.i.i, label %if.else.i.i.sparx5_port_bridge_leave.exit.i.i_crit_edge

if.else.i.i.sparx5_port_bridge_leave.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_bridge_leave.exit.i.i

if.then.i23.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %hw_bridge_dev.i22.i.i = getelementptr inbounds %struct.sparx5, ptr %12, i32 0, i32 20
  %24 = ptrtoint ptr %hw_bridge_dev.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %hw_bridge_dev.i22.i.i, align 8
  br label %sparx5_port_bridge_leave.exit.i.i

sparx5_port_bridge_leave.exit.i.i:                ; preds = %if.then.i23.i.i, %if.else.i.i.sparx5_port_bridge_leave.exit.i.i_crit_edge
  %vlan_aware.i.i.i = getelementptr i8, ptr %1, i32 2456
  %25 = ptrtoint ptr %vlan_aware.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %vlan_aware.i.i.i, align 8
  %pvid.i.i.i = getelementptr i8, ptr %1, i32 2398
  %26 = ptrtoint ptr %pvid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %pvid.i.i.i, align 2
  %vid.i.i.i = getelementptr i8, ptr %1, i32 2400
  %27 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %vid.i.i.i, align 8
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i.i, align 8
  %mc.i.i24.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 66
  %call.i1.i.i.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i.i24.i.i, ptr noundef %29, ptr noundef nonnull @sparx5_mc_sync, ptr noundef nonnull @sparx5_mc_unsync) #5
  br label %sparx5_netdevice_port_event.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i1.i = getelementptr i8, ptr %1, i32 2304
  %sparx51.i.i = getelementptr i8, ptr %1, i32 2308
  %30 = ptrtoint ptr %sparx51.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sparx51.i.i, align 4
  %pvid.i.i = getelementptr i8, ptr %1, i32 2398
  %32 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pvid.i.i, align 2
  %34 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i1.i, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr.i.i, align 64
  %call2.i.i = tail call i32 @sparx5_mact_learn(ptr noundef %31, i32 noundef 72, ptr noundef %37, i16 noundef zeroext %33) #5
  br label %sparx5_netdevice_port_event.exit.thread

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i4.i = getelementptr i8, ptr %1, i32 2304
  %sparx51.i5.i = getelementptr i8, ptr %1, i32 2308
  %38 = ptrtoint ptr %sparx51.i5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sparx51.i5.i, align 4
  %pvid.i6.i = getelementptr i8, ptr %1, i32 2398
  %40 = ptrtoint ptr %pvid.i6.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pvid.i6.i, align 2
  %42 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i4.i, align 8
  %dev_addr.i7.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr.i7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i7.i, align 64
  %call5.i.i = tail call i32 @sparx5_mact_forget(ptr noundef %39, ptr noundef %45, i16 noundef zeroext %41) #5
  br label %sparx5_netdevice_port_event.exit.thread

sparx5_netdevice_port_event.exit:                 ; preds = %sparx5_port_bridge_leave.exit.i.i, %err_switchdev_offload.i.i.i, %if.end10.i.i.i, %if.else.i.i.i.sparx5_netdevice_port_event.exit_crit_edge
  %err.0.i.i = phi i32 [ 0, %sparx5_port_bridge_leave.exit.i.i ], [ %call8.i.i.i, %err_switchdev_offload.i.i.i ], [ 0, %if.end10.i.i.i ], [ -19, %if.else.i.i.i.sparx5_netdevice_port_event.exit_crit_edge ]
  %46 = ptrtoint ptr %sparx51.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sparx51.i16.i.i, align 4
  tail call void @sparx5_vlan_port_apply(ptr noundef %47, ptr noundef %add.ptr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not.i = icmp eq i32 %err.0.i.i, 0
  %sub.i = sub i32 1, %err.0.i.i
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i, label %sparx5_netdevice_port_event.exit.sparx5_netdevice_port_event.exit.thread_crit_edge, label %sparx5_netdevice_port_event.exit._crit_edge

sparx5_netdevice_port_event.exit._crit_edge:      ; preds = %sparx5_netdevice_port_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %48

sparx5_netdevice_port_event.exit.sparx5_netdevice_port_event.exit.thread_crit_edge: ; preds = %sparx5_netdevice_port_event.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_netdevice_port_event.exit.thread

sparx5_netdevice_port_event.exit.thread:          ; preds = %sparx5_netdevice_port_event.exit.sparx5_netdevice_port_event.exit.thread_crit_edge, %sw.bb4.i, %sw.bb2.i, %sw.bb.i.sparx5_netdevice_port_event.exit.thread_crit_edge, %if.end.i.sparx5_netdevice_port_event.exit.thread_crit_edge, %entry.sparx5_netdevice_port_event.exit.thread_crit_edge
  br label %48

48:                                               ; preds = %sparx5_netdevice_port_event.exit.thread, %sparx5_netdevice_port_event.exit._crit_edge
  %49 = phi i32 [ 1, %sparx5_netdevice_port_event.exit.thread ], [ %or.i, %sparx5_netdevice_port_event.exit._crit_edge ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 9, label %sw.bb
    i32 3, label %entry.sw.bb4_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge50
  ]

entry.sw.bb4_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @sparx5_netdevice_check, ptr noundef nonnull @sparx5_port_attr_set) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 72) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb4.cleanup_crit_edge, label %if.end

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb4
  %dev6 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev6, align 8
  %event7 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %event7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %event, ptr %event7, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #5
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @sparx5_switchdev_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry11 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sparx5_switchdev_bridge_fdb_event_work, ptr %func, align 4
  %fdb_info13 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %fdb_info13, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 6) #8
  %addr = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i48, ptr %addr, align 8
  %tobool18.not = icmp eq ptr %call7.i.i48, null
  br i1 %tobool18.not, label %err_addr_alloc, label %if.end20

if.end20:                                         ; preds = %if.end
  %addr23 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %13 = ptrtoint ptr %addr23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr23, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %call7.i.i48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call7.i.i48, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i48, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i, align 4
  %tobool.not.i49 = icmp eq ptr %1, null
  br i1 %tobool.not.i49, label %if.end20.dev_hold.exit_crit_edge, label %do.body1.i

if.end20.dev_hold.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end20
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !20
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i = add i32 %33, 1
  store i32 %add13.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !21
  %and.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !22

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #5, !srcloc !23
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end20.dev_hold.exit_crit_edge
  %35 = load ptr, ptr @sparx5_owq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

err_addr_alloc:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_addr_alloc, %dev_hold.exit, %sw.bb4.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32770, %err_addr_alloc ], [ %retval.0.i, %sw.bb ], [ 32770, %sw.bb4.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %dev_hold.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_switchdev_blocking_event(ptr noundef %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
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
  %obj1.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %obj1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %obj1.i, align 4
  %id.i = getelementptr inbounds %struct.switchdev_obj, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cond.i = icmp eq i32 %6, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.sparx5_handle_port_obj_add.exit.thread62_crit_edge

sw.bb.sparx5_handle_port_obj_add.exit.thread62_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_add.exit.thread62

sw.bb.i:                                          ; preds = %sw.bb
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %flags.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i.i, align 4
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.sparx5_handle_port_obj_add.exit.thread_crit_edge, label %if.then2.i.i

if.then.i.i.sparx5_handle_port_obj_add.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_add.exit.thread

if.then2.i.i:                                     ; preds = %if.then.i.i
  %add.ptr.i.i = getelementptr i8, ptr %nb, i32 -1940
  %vid.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid.i.i, align 2
  %dev_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i.i.i, align 64
  %call.i.i.i = tail call i32 @sparx5_mact_learn(ptr noundef %add.ptr.i.i, i32 noundef 72, ptr noundef %15, i16 noundef zeroext %13) #5
  %broadcast.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %call1.i.i.i = tail call i32 @sparx5_mact_learn(ptr noundef %add.ptr.i.i, i32 noundef 71, ptr noundef %broadcast.i.i.i, i16 noundef zeroext %13) #5
  %bridge_mask.i.i.i.i = getelementptr i8, ptr %nb, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i.for.body.i.i.i_crit_edge, %if.then2.i.i
  %i.023.i.i.i = phi i32 [ 0, %if.then2.i.i ], [ %inc.i.i.i, %sparx5_sync_port_dev_addr.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %add.ptr.i.i, i32 0, i32 7, i32 %i.023.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.sparx5_sync_port_dev_addr.exit.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

for.body.i.i.i.sparx5_sync_port_dev_addr.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_sync_port_dev_addr.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %for.body.i.i.i
  %portno.i.i.i.i = getelementptr inbounds %struct.sparx5_port, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %portno.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %portno.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %19 to i32
  %div3.i.i.i.i.i = lshr i32 %conv.i.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %bridge_mask.i.i.i.i, i32 %div3.i.i.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %conv.i.i.i.i, 31
  %22 = shl nuw i32 1, %and.i.i.i.i.i
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool1.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.sparx5_sync_port_dev_addr.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false.i.i.i.i.sparx5_sync_port_dev_addr.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_sync_port_dev_addr.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 8
  %dev_addr.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr.i.i.i.i, align 64
  %call4.i.i.i.i = tail call i32 @sparx5_mact_learn(ptr noundef %add.ptr.i.i, i32 noundef 72, ptr noundef %27, i16 noundef zeroext %13) #5
  br label %sparx5_sync_port_dev_addr.exit.i.i.i

sparx5_sync_port_dev_addr.exit.i.i.i:             ; preds = %if.end.i.i.i.i, %lor.lhs.false.i.i.i.i.sparx5_sync_port_dev_addr.exit.i.i.i_crit_edge, %for.body.i.i.i.sparx5_sync_port_dev_addr.exit.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.023.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 65
  br i1 %exitcond.not.i.i.i, label %sparx5_sync_port_dev_addr.exit.i.i.i.sparx5_handle_port_obj_add.exit.thread_crit_edge, label %sparx5_sync_port_dev_addr.exit.i.i.i.for.body.i.i.i_crit_edge

sparx5_sync_port_dev_addr.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

sparx5_sync_port_dev_addr.exit.i.i.i.sparx5_handle_port_obj_add.exit.thread_crit_edge: ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_add.exit.thread

if.end3.i.i:                                      ; preds = %sw.bb.i
  %call4.i.i = tail call zeroext i1 @sparx5_netdevice_check(ptr noundef %1) #5
  br i1 %call4.i.i, label %sparx5_handle_port_obj_add.exit, label %if.end3.i.i.sparx5_handle_port_obj_add.exit.thread62_crit_edge

if.end3.i.i.sparx5_handle_port_obj_add.exit.thread62_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_add.exit.thread62

sparx5_handle_port_obj_add.exit.thread:           ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i.sparx5_handle_port_obj_add.exit.thread_crit_edge, %if.then.i.i.sparx5_handle_port_obj_add.exit.thread_crit_edge
  %handled.i57 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %28 = ptrtoint ptr %handled.i57 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %handled.i57, align 4
  br label %35

sparx5_handle_port_obj_add.exit.thread62:         ; preds = %if.end3.i.i.sparx5_handle_port_obj_add.exit.thread62_crit_edge, %sw.bb.sparx5_handle_port_obj_add.exit.thread62_crit_edge
  %handled.i64 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %29 = ptrtoint ptr %handled.i64 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %handled.i64, align 4
  br label %cleanup

sparx5_handle_port_obj_add.exit:                  ; preds = %if.end3.i.i
  %vid7.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %4, i32 0, i32 2
  %30 = ptrtoint ptr %vid7.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid7.i.i, align 2
  %flags8.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %4, i32 0, i32 1
  %32 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags8.i.i, align 4
  %conv9.i.i = zext i16 %33 to i32
  %and10.i.i = and i32 %conv9.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.i.i = icmp ne i32 %and10.i.i, 0
  %and14.i.i = and i32 %conv9.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.i.i = icmp ne i32 %and14.i.i, 0
  %call16.i.i = tail call i32 @sparx5_vlan_vid_add(ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %31, i1 noundef zeroext %tobool11.i.i, i1 noundef zeroext %tobool15.i.i) #5
  %handled.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %34 = ptrtoint ptr %handled.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %handled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool.not.i = icmp eq i32 %call16.i.i, 0
  %sub.i = sub i32 1, %call16.i.i
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i, label %sparx5_handle_port_obj_add.exit._crit_edge, label %sparx5_handle_port_obj_add.exit.cleanup_crit_edge

sparx5_handle_port_obj_add.exit.cleanup_crit_edge: ; preds = %sparx5_handle_port_obj_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sparx5_handle_port_obj_add.exit._crit_edge:       ; preds = %sparx5_handle_port_obj_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %35

35:                                               ; preds = %sparx5_handle_port_obj_add.exit._crit_edge, %sparx5_handle_port_obj_add.exit.thread
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %obj1.i18 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %36 = ptrtoint ptr %obj1.i18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %obj1.i18, align 4
  %id.i19 = getelementptr inbounds %struct.switchdev_obj, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %id.i19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cond.i20 = icmp eq i32 %39, 1
  br i1 %cond.i20, label %sw.bb.i25, label %sw.bb3.sparx5_handle_port_obj_del.exit.thread_crit_edge

sw.bb3.sparx5_handle_port_obj_del.exit.thread_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_del.exit.thread

sw.bb.i25:                                        ; preds = %sw.bb3
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid.i, align 2
  %add.ptr.i.i.i21 = getelementptr i8, ptr %1, i32 2304
  %priv_flags.i.i.i22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %42 = ptrtoint ptr %priv_flags.i.i.i22 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %priv_flags.i.i.i22, align 16
  %and.i.i.i23 = and i64 %43, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i23)
  %tobool.i.not.i.i24 = icmp eq i64 %and.i.i.i23, 0
  br i1 %tobool.i.not.i.i24, label %if.end.i.i, label %if.then.i.i29

if.then.i.i29:                                    ; preds = %sw.bb.i25
  %add.ptr.i.i26 = getelementptr i8, ptr %nb, i32 -1940
  %dev_addr.i.i.i27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr.i.i.i27, align 64
  %call3.i.i.i = tail call i32 @sparx5_mact_forget(ptr noundef %add.ptr.i.i26, ptr noundef %45, i16 noundef zeroext %41) #5
  %broadcast4.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %call6.i.i.i = tail call i32 @sparx5_mact_forget(ptr noundef %add.ptr.i.i26, ptr noundef %broadcast4.i.i.i, i16 noundef zeroext %41) #5
  %bridge_mask.i.i.i.i28 = getelementptr i8, ptr %nb, i32 24
  %idxprom.i.i.i.i = zext i16 %41 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.sparx5, ptr %add.ptr.i.i26, i32 0, i32 24, i32 %idxprom.i.i.i.i
  br label %for.body.i.i.i33

for.body.i.i.i33:                                 ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i44.for.body.i.i.i33_crit_edge, %if.then.i.i29
  %i.023.i.i.i30 = phi i32 [ 0, %if.then.i.i29 ], [ %inc.i.i.i42, %sparx5_sync_port_dev_addr.exit.i.i.i44.for.body.i.i.i33_crit_edge ]
  %arrayidx.i.i.i31 = getelementptr %struct.sparx5, ptr %add.ptr.i.i26, i32 0, i32 7, i32 %i.023.i.i.i30
  %46 = ptrtoint ptr %arrayidx.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i31, align 4
  %tobool.not.i.i.i.i32 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i.i32, label %for.body.i.i.i33.sparx5_sync_port_dev_addr.exit.i.i.i44_crit_edge, label %lor.lhs.false.i.i.i.i40

for.body.i.i.i33.sparx5_sync_port_dev_addr.exit.i.i.i44_crit_edge: ; preds = %for.body.i.i.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_sync_port_dev_addr.exit.i.i.i44

lor.lhs.false.i.i.i.i40:                          ; preds = %for.body.i.i.i33
  %portno.i.i.i.i34 = getelementptr inbounds %struct.sparx5_port, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %portno.i.i.i.i34 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %portno.i.i.i.i34, align 4
  %conv.i.i.i.i35 = zext i16 %49 to i32
  %div3.i.i.i.i.i36 = lshr i32 %conv.i.i.i.i35, 5
  %arrayidx.i.i.i.i.i37 = getelementptr i32, ptr %bridge_mask.i.i.i.i28, i32 %div3.i.i.i.i.i36
  %50 = ptrtoint ptr %arrayidx.i.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i.i.i.i.i37, align 4
  %and.i.i.i.i.i38 = and i32 %conv.i.i.i.i35, 31
  %52 = shl nuw i32 1, %and.i.i.i.i.i38
  %53 = and i32 %52, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool1.not.i.i.i.i39 = icmp eq i32 %53, 0
  br i1 %tobool1.not.i.i.i.i39, label %lor.lhs.false.i.i.i.i40.sparx5_sync_port_dev_addr.exit.i.i.i44_crit_edge, label %if.end.i.i.i.i41

lor.lhs.false.i.i.i.i40.sparx5_sync_port_dev_addr.exit.i.i.i44_crit_edge: ; preds = %lor.lhs.false.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_sync_port_dev_addr.exit.i.i.i44

if.end.i.i.i.i41:                                 ; preds = %lor.lhs.false.i.i.i.i40
  %arrayidx.i33.i.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i.i, i32 %div3.i.i.i.i.i36
  %54 = ptrtoint ptr %arrayidx.i33.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i33.i.i.i.i, align 4
  %56 = and i32 %55, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool9.not.i.i.i.i = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %47, align 8
  %dev_addr16.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr16.i.i.i.i, align 64
  br i1 %tobool9.not.i.i.i.i, label %if.else14.i.i.i.i, label %if.then10.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i.i.i.i = tail call i32 @sparx5_mact_learn(ptr noundef %add.ptr.i.i26, i32 noundef 72, ptr noundef %60, i16 noundef zeroext %41) #5
  br label %sparx5_sync_port_dev_addr.exit.i.i.i44

if.else14.i.i.i.i:                                ; preds = %if.end.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i.i.i = tail call i32 @sparx5_mact_forget(ptr noundef %add.ptr.i.i26, ptr noundef %60, i16 noundef zeroext %41) #5
  br label %sparx5_sync_port_dev_addr.exit.i.i.i44

sparx5_sync_port_dev_addr.exit.i.i.i44:           ; preds = %if.else14.i.i.i.i, %if.then10.i.i.i.i, %lor.lhs.false.i.i.i.i40.sparx5_sync_port_dev_addr.exit.i.i.i44_crit_edge, %for.body.i.i.i33.sparx5_sync_port_dev_addr.exit.i.i.i44_crit_edge
  %inc.i.i.i42 = add nuw nsw i32 %i.023.i.i.i30, 1
  %exitcond.not.i.i.i43 = icmp eq i32 %inc.i.i.i42, 65
  br i1 %exitcond.not.i.i.i43, label %sparx5_sync_port_dev_addr.exit.i.i.i44..loopexit_crit_edge, label %sparx5_sync_port_dev_addr.exit.i.i.i44.for.body.i.i.i33_crit_edge

sparx5_sync_port_dev_addr.exit.i.i.i44.for.body.i.i.i33_crit_edge: ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i33

sparx5_sync_port_dev_addr.exit.i.i.i44..loopexit_crit_edge: ; preds = %sparx5_sync_port_dev_addr.exit.i.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.end.i.i:                                       ; preds = %sw.bb.i25
  %call2.i.i = tail call zeroext i1 @sparx5_netdevice_check(ptr noundef %1) #5
  br i1 %call2.i.i, label %if.end4.i.i, label %if.end.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge

if.end.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_del.exit.thread

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = tail call i32 @sparx5_vlan_vid_del(ptr noundef %add.ptr.i.i.i21, i16 noundef zeroext %41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i45 = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i45, label %if.end7.i.i, label %if.end4.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge

if.end4.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_handle_port_obj_del.exit.thread

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sparx58.i.i = getelementptr i8, ptr %1, i32 2308
  %61 = ptrtoint ptr %sparx58.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sparx58.i.i, align 4
  %63 = ptrtoint ptr %add.ptr.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i.i21, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 86
  %65 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr.i.i, align 64
  %call9.i.i = tail call i32 @sparx5_mact_forget(ptr noundef %62, ptr noundef %66, i16 noundef zeroext %41) #5
  br label %.loopexit

sparx5_handle_port_obj_del.exit.thread:           ; preds = %if.end4.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge, %if.end.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge, %sw.bb3.sparx5_handle_port_obj_del.exit.thread_crit_edge
  %err.0.i46.ph = phi i32 [ %call5.i.i, %if.end4.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge ], [ -95, %if.end.i.i.sparx5_handle_port_obj_del.exit.thread_crit_edge ], [ -95, %sw.bb3.sparx5_handle_port_obj_del.exit.thread_crit_edge ]
  %handled.i4769 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %67 = ptrtoint ptr %handled.i4769 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %handled.i4769, align 4
  %sub.i4971 = sub i32 1, %err.0.i46.ph
  %or.i5072 = or i32 %sub.i4971, 32768
  br label %cleanup

.loopexit:                                        ; preds = %if.end7.i.i, %sparx5_sync_port_dev_addr.exit.i.i.i44..loopexit_crit_edge
  %handled.i47 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %68 = ptrtoint ptr %handled.i47 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %handled.i47, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @sparx5_netdevice_check, ptr noundef nonnull @sparx5_port_attr_set) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i52 = icmp eq i32 %call7, 0
  %sub.i53 = sub i32 1, %call7
  %or.i54 = or i32 %sub.i53, 32768
  %retval.0.i55 = select i1 %tobool.not.i52, i32 1, i32 %or.i54
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %.loopexit, %sparx5_handle_port_obj_del.exit.thread, %35, %sparx5_handle_port_obj_add.exit.cleanup_crit_edge, %sparx5_handle_port_obj_add.exit.thread62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i55, %sw.bb6 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %35 ], [ %or.i, %sparx5_handle_port_obj_add.exit.cleanup_crit_edge ], [ 32864, %sparx5_handle_port_obj_add.exit.thread62 ], [ 1, %.loopexit ], [ %or.i5072, %sparx5_handle_port_obj_del.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_unregister_notifier_blocks(ptr noundef %s5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sparx5_owq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #5
  %switchdev_blocking_nb = getelementptr inbounds %struct.sparx5, ptr %s5, i32 0, i32 18
  %call = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef %switchdev_blocking_nb) #5
  %switchdev_nb = getelementptr inbounds %struct.sparx5, ptr %s5, i32 0, i32 17
  %call1 = tail call i32 @unregister_switchdev_notifier(ptr noundef %switchdev_nb) #5
  %netdevice_nb = getelementptr inbounds %struct.sparx5, ptr %s5, i32 0, i32 16
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdevice_nb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sparx5_netdevice_check(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_vlan_port_apply(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mc_unsync(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mc_sync(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mact_learn(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mact_forget(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_port_attr_set(ptr noundef %dev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 5, label %sw.bb3
    i32 6, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %.elt16 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %.elt16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack17 = load i32, ptr %.elt16, align 4
  %and.i = and i32 %.unpack17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.then.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sparx5_pgid_update_mask(ptr noundef %add.ptr.i, i32 noundef 66, i1 noundef zeroext true) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %u2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %u2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %u2, align 4
  %sparx51.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %sparx51.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sparx51.i, align 4
  %portno.i = getelementptr i8, ptr %dev, i32 2396
  %8 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %portno.i, align 4
  %conv.i = zext i16 %9 to i32
  %bridge_mask.i = getelementptr inbounds %struct.sparx5, ptr %7, i32 0, i32 21
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %bridge_mask.i, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i18 = icmp eq i32 %13, 0
  br i1 %tobool.not.i18, label %if.then.i19, label %if.end.i

if.then.i19:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef %conv.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  %16 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %5, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 2, label %if.end.i.sw.bb8.i_crit_edge
  ]

if.end.i.sw.bb8.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bridge_fwd_mask.i = getelementptr inbounds %struct.sparx5, ptr %7, i32 0, i32 22
  tail call void @_set_bit(i32 noundef %conv.i, ptr noundef %bridge_fwd_mask.i) #5
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb8.i_crit_edge
  %17 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %portno.i, align 4
  %conv10.i = zext i16 %18 to i32
  %bridge_lrn_mask.i = getelementptr inbounds %struct.sparx5, ptr %7, i32 0, i32 23
  tail call void @_set_bit(i32 noundef %conv10.i, ptr noundef %bridge_lrn_mask.i) #5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bridge_fwd_mask14.i = getelementptr inbounds %struct.sparx5, ptr %7, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %bridge_fwd_mask14.i) #5
  %19 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %portno.i, align 4
  %conv17.i = zext i16 %20 to i32
  %bridge_lrn_mask18.i = getelementptr inbounds %struct.sparx5, ptr %7, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef %conv17.i, ptr noundef %bridge_lrn_mask18.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb8.i
  tail call void @sparx5_update_fwd(ptr noundef %7) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %u4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %21 = ptrtoint ptr %u4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %u4, align 4
  %call.i = tail call i32 @clock_t_to_jiffies(i32 noundef %22) #5
  %call1.i = tail call i32 @jiffies_to_msecs(i32 noundef %call.i) #5
  %sparx5.i = getelementptr i8, ptr %dev, i32 2308
  %23 = ptrtoint ptr %sparx5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sparx5.i, align 4
  tail call void @sparx5_set_ageing(ptr noundef %24, i32 noundef %call1.i) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %u6 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %25 = ptrtoint ptr %u6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %u6, align 4, !range !19
  %vlan_aware = getelementptr i8, ptr %dev, i32 2456
  %27 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %vlan_aware, align 8
  %sparx5 = getelementptr i8, ptr %dev, i32 2308
  %28 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sparx5, align 4
  tail call void @sparx5_vlan_port_apply(ptr noundef %29, ptr noundef %add.ptr.i) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb3, %sw.epilog.i, %if.then.i19, %if.then.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.then.i19 ], [ 0, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_switchdev_bridge_fdb_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtnl_lock() #5
  %call = tail call zeroext i1 @sparx5_netdevice_check(ptr noundef %1) #5
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %sparx53 = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %sparx53 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sparx53, align 4
  %event = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %5, label %if.end.out_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb8
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  %added_by_user = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %added_by_user, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %sw.bb.out_crit_edge, label %if.end6

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 4
  %call7 = tail call i32 @sparx5_add_mact_entry(ptr noundef %3, ptr noundef %add.ptr.i, ptr noundef %9, i16 noundef zeroext %11) #5
  br label %out

sw.bb8:                                           ; preds = %if.end
  %added_by_user9 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %added_by_user9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load10 = load i8, ptr %added_by_user9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10)
  %tobool12.not = icmp sgt i8 %bf.load10, -1
  br i1 %tobool12.not, label %sw.bb8.out_crit_edge, label %if.end14

sw.bb8.out_crit_edge:                             ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %addr15 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %addr15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr15, align 4
  %vid16 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %vid16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid16, align 4
  %call17 = tail call i32 @sparx5_del_mact_entry(ptr noundef %3, ptr noundef %14, i16 noundef zeroext %16) #5
  br label %out

out:                                              ; preds = %if.end14, %sw.bb8.out_crit_edge, %if.end6, %sw.bb.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @rtnl_unlock() #5
  %addr19 = getelementptr inbounds %struct.sparx5_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %addr19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr19, align 4
  tail call void @kfree(ptr noundef %18) #5
  tail call void @kfree(ptr noundef %work) #5
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %out.dev_put.exit_crit_edge, label %do.body1.i

out.dev_put.exit_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit

do.body1.i:                                       ; preds = %out
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !20
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i = add i32 %31, -1
  store i32 %add13.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !21
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !22

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #5, !srcloc !23
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %out.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_pgid_update_mask(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_update_fwd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_set_ageing(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_add_mact_entry(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_del_mact_entry(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_vlan_vid_add(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_vlan_vid_del(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c", i32 505, i32 15}
!2 = !{ptr @sparx5_owq, !3, !"sparx5_owq", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c", i32 13, i32 33}
!4 = !{ptr @sparx5_switchdev_event.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c", i32 295, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_switchdev.c", i32 36, i32 7}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{i64 902156, i64 902217}
!21 = !{i64 904888}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 905173}
