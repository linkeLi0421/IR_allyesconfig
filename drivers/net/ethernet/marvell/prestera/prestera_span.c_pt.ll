; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_span.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_span.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.129, ptr }
%union.anon.129 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i64, i64, i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.101, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.101 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.prestera_flow_block_binding = type { %struct.list_head, ptr, i32 }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.142, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.112 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.112 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.anon.142 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.143, i8 }
%struct.anon.143 = type { i8, i8 }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.prestera_span = type { ptr, %struct.list_head }
%struct.prestera_span_entry = type { %struct.list_head, ptr, %struct.refcount_struct, i8 }

@prestera_span_replace.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only singular actions are supported\00", [60 x i8] zeroinitializer }, align 32
@prestera_span_replace.__msg.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Only Marvell Prestera port is supported\00", [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_span.c\00", [42 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 174, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 182, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [57 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_span.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 238, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 676, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 664, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @prestera_span_replace.__msg, ptr @prestera_span_replace.__msg.1, ptr @.str, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_span_replace.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_span_replace.__msg.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_span_replace(ptr noundef readonly %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %new_span_id.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol1, align 4
  %rule = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_span_replace.__msg) #5
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @prestera_span_replace.__msg, ptr %7, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %entries = getelementptr inbounds %struct.flow_rule, ptr %3, i32 1
  %9 = getelementptr inbounds %struct.flow_rule, ptr %3, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call7 = tail call zeroext i1 @prestera_netdev_check(ptr noundef %11) #5
  br i1 %call7, label %if.end19, label %do.body9

do.body9:                                         ; preds = %if.end4
  %extack12 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %12 = ptrtoint ptr %extack12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack12, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @prestera_span_replace.__msg.1) #5
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %do.body9.cleanup_crit_edge, label %if.then14

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @prestera_span_replace.__msg.1, ptr %13, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 8
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %17 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 23
  %19 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %20, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %if.end19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #5
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tc_can_offload_extack.__msg, ptr %18, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end23, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #5
  %tobool3.not.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %18, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %25 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp.not = icmp eq i32 %26, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp26.not = icmp eq i16 %1, 3
  %or.cond = select i1 %cmp.not, i1 %cmp26.not, i1 false
  br i1 %or.cond, label %if.end29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %9, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 2304
  %sw1.i.i = getelementptr i8, ptr %28, i32 2308
  br label %for.cond

for.cond:                                         ; preds = %prestera_span_rule_add.exit.for.cond_crit_edge, %if.end29
  %binding.0.in = phi ptr [ %block, %if.end29 ], [ %binding.0, %prestera_span_rule_add.exit.for.cond_crit_edge ]
  %29 = ptrtoint ptr %binding.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %binding.0 = load ptr, ptr %binding.0.in, align 4
  %cmp32.not = icmp eq ptr %binding.0, %block
  br i1 %cmp32.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %port.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.0, i32 0, i32 1
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port.i, align 4
  %sw1.i = getelementptr inbounds %struct.prestera_port, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sw1.i, align 4
  %span_id2.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.0, i32 0, i32 2
  %34 = ptrtoint ptr %span_id2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %span_id2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.not.i = icmp eq i32 %35, -1
  br i1 %cmp.not.i, label %if.end.i86, label %for.body.for.cond47.preheader_crit_edge

for.body.for.cond47.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond47.preheader

if.end.i86:                                       ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_span_id.i.i) #5
  %36 = ptrtoint ptr %new_span_id.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %new_span_id.i.i, align 1, !annotation !19
  %37 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sw1.i.i, align 4
  %span.i.i = getelementptr inbounds %struct.prestera_switch, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %span.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %span.i.i, align 4
  %entries.i.i.i = getelementptr inbounds %struct.prestera_span, ptr %40, i32 0, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i86
  %entry1.0.in.i.i.i = phi ptr [ %entries.i.i.i, %if.end.i86 ], [ %entry1.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %41 = ptrtoint ptr %entry1.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %entry1.0.i.i.i = load ptr, ptr %entry1.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %entry1.0.i.i.i, %entries.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %port3.i.i.i = getelementptr inbounds %struct.prestera_span_entry, ptr %entry1.0.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %port3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %43, %add.ptr.i
  br i1 %cmp4.i.i.i, label %prestera_span_entry_find_by_port.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

prestera_span_entry_find_by_port.exit.i.i:        ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %entry1.0.i.i.i, null
  br i1 %tobool.not.i.i, label %prestera_span_entry_find_by_port.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

prestera_span_entry_find_by_port.exit.i.i.if.end.i.i_crit_edge: ; preds = %prestera_span_entry_find_by_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %prestera_span_entry_find_by_port.exit.i.i
  %ref_count.i.i = getelementptr inbounds %struct.prestera_span_entry, ptr %entry1.0.i.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %ref_count.i.i, i32 1, i32 3, i32 1) #5
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i, ptr %ref_count.i.i, i32 1, ptr elementtype(i32) %ref_count.i.i) #5, !srcloc !20
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !21

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !22

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %id.i.i = getelementptr inbounds %struct.prestera_span_entry, ptr %entry1.0.i.i.i, i32 0, i32 3
  br label %prestera_span_get.exit.thread.i

if.end.i.i:                                       ; preds = %prestera_span_entry_find_by_port.exit.i.i.if.end.i.i_crit_edge, %for.cond.i.i.i.if.end.i.i_crit_edge
  %call3.i.i = call i32 @prestera_hw_span_get(ptr noundef %add.ptr.i, ptr noundef nonnull %new_span_id.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %prestera_span_get.exit.thread26.i

prestera_span_get.exit.thread26.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_span_id.i.i) #5
  br label %for.cond47.preheader

if.end6.i.i:                                      ; preds = %if.end.i.i
  %46 = ptrtoint ptr %new_span_id.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %new_span_id.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 20) #8
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.prestera_span_get.exit.i_crit_edge, label %if.end.i.i.i

if.end6.i.i.prestera_span_get.exit.i_crit_edge:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_get.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i.i
  %ref_count.i.i.i = getelementptr inbounds %struct.prestera_span_entry, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i.i, i32 noundef 4) #5
  %49 = ptrtoint ptr %ref_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %ref_count.i.i.i, align 4
  %port3.i26.i.i = getelementptr inbounds %struct.prestera_span_entry, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %port3.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i, ptr %port3.i26.i.i, align 8
  %id.i.i.i = getelementptr inbounds %struct.prestera_span_entry, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %47, ptr %id.i.i.i, align 8
  %52 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sw1.i.i, align 4
  %span.i.i.i = getelementptr inbounds %struct.prestera_switch, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %span.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %span.i.i.i, align 4
  %entries.i27.i.i = getelementptr inbounds %struct.prestera_span, ptr %55, i32 0, i32 1
  %prev.i.i.i.i = getelementptr inbounds %struct.prestera_span, ptr %55, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %57, ptr noundef %entries.i27.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.prestera_span_entry_create.exit.i.i_crit_edge

if.end.i.i.i.prestera_span_entry_create.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_entry_create.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %59 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entries.i27.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call7.i.i.i.i.i, ptr %57, align 4
  br label %prestera_span_entry_create.exit.i.i

prestera_span_entry_create.exit.i.i:              ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.prestera_span_entry_create.exit.i.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %call7.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %prestera_span_entry_create.exit.i.i.prestera_span_get.exit.i_crit_edge, label %prestera_span_entry_create.exit.i.i.prestera_span_get.exit.thread.i_crit_edge

prestera_span_entry_create.exit.i.i.prestera_span_get.exit.thread.i_crit_edge: ; preds = %prestera_span_entry_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_get.exit.thread.i

prestera_span_entry_create.exit.i.i.prestera_span_get.exit.i_crit_edge: ; preds = %prestera_span_entry_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_get.exit.i

prestera_span_get.exit.thread.i:                  ; preds = %prestera_span_entry_create.exit.i.i.prestera_span_get.exit.thread.i_crit_edge, %refcount_inc.exit.i.i
  %span_id.0.ph.in.i = phi ptr [ %id.i.i, %refcount_inc.exit.i.i ], [ %new_span_id.i.i, %prestera_span_entry_create.exit.i.i.prestera_span_get.exit.thread.i_crit_edge ]
  %62 = ptrtoint ptr %span_id.0.ph.in.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %span_id.0.ph.i = load i8, ptr %span_id.0.ph.in.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_span_id.i.i) #5
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port.i, align 4
  %call6.i = call i32 @prestera_hw_span_bind(ptr noundef %64, i8 noundef zeroext %span_id.0.ph.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

prestera_span_get.exit.i:                         ; preds = %prestera_span_entry_create.exit.i.i.prestera_span_get.exit.i_crit_edge, %if.end6.i.i.prestera_span_get.exit.i_crit_edge
  %retval.0.i2833.i.i = phi ptr [ %call7.i.i.i.i.i, %prestera_span_entry_create.exit.i.i.prestera_span_get.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.i.i.prestera_span_get.exit.i_crit_edge ]
  %65 = ptrtoint ptr %new_span_id.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %new_span_id.i.i, align 1
  %call10.i.i = call i32 @prestera_hw_span_release(ptr noundef %38, i8 noundef zeroext %66) #5
  %67 = ptrtoint ptr %retval.0.i2833.i.i to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_span_id.i.i) #5
  br label %prestera_span_rule_add.exit

if.then8.i:                                       ; preds = %prestera_span_get.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call fastcc i32 @prestera_span_put(ptr noundef %33, i8 noundef zeroext %span_id.0.ph.i) #5
  br label %for.cond47.preheader

if.end10.i:                                       ; preds = %prestera_span_get.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %span_id.0.ph.i to i32
  %68 = ptrtoint ptr %span_id2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i, ptr %span_id2.i, align 4
  br label %prestera_span_rule_add.exit

prestera_span_rule_add.exit:                      ; preds = %if.end10.i, %prestera_span_get.exit.i
  %retval.0.i87 = phi i32 [ 0, %if.end10.i ], [ %67, %prestera_span_get.exit.i ]
  %tobool35.not = icmp eq i32 %retval.0.i87, 0
  br i1 %tobool35.not, label %prestera_span_rule_add.exit.for.cond_crit_edge, label %prestera_span_rule_add.exit.for.cond47.preheader_crit_edge

prestera_span_rule_add.exit.for.cond47.preheader_crit_edge: ; preds = %prestera_span_rule_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond47.preheader

prestera_span_rule_add.exit.for.cond_crit_edge:   ; preds = %prestera_span_rule_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.cond47.preheader:                             ; preds = %prestera_span_rule_add.exit.for.cond47.preheader_crit_edge, %if.then8.i, %prestera_span_get.exit.thread26.i, %for.body.for.cond47.preheader_crit_edge
  %retval.0.i87107 = phi i32 [ %call3.i.i, %prestera_span_get.exit.thread26.i ], [ %call6.i, %if.then8.i ], [ -17, %for.body.for.cond47.preheader_crit_edge ], [ %retval.0.i87, %prestera_span_rule_add.exit.for.cond47.preheader_crit_edge ]
  %binding.1.in97 = getelementptr inbounds %struct.list_head, ptr %binding.0, i32 0, i32 1
  %69 = ptrtoint ptr %binding.1.in97 to i32
  call void @__asan_load4_noabort(i32 %69)
  %binding.198 = load ptr, ptr %binding.1.in97, align 4
  %cmp50.not99 = icmp eq ptr %binding.198, %block
  br i1 %cmp50.not99, label %for.cond47.preheader.cleanup_crit_edge, label %for.cond47.preheader.for.body53_crit_edge

for.cond47.preheader.for.body53_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body53

for.cond47.preheader.cleanup_crit_edge:           ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body53:                                       ; preds = %prestera_span_rule_del.exit.for.body53_crit_edge, %for.cond47.preheader.for.body53_crit_edge
  %binding.1100 = phi ptr [ %binding.1, %prestera_span_rule_del.exit.for.body53_crit_edge ], [ %binding.198, %for.cond47.preheader.for.body53_crit_edge ]
  %port.i88 = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.1100, i32 0, i32 1
  %70 = ptrtoint ptr %port.i88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port.i88, align 4
  %call.i = call i32 @prestera_hw_span_unbind(ptr noundef %71) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i89 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i89, label %if.end.i92, label %for.body53.prestera_span_rule_del.exit_crit_edge

for.body53.prestera_span_rule_del.exit_crit_edge: ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_rule_del.exit

if.end.i92:                                       ; preds = %for.body53
  %72 = ptrtoint ptr %port.i88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port.i88, align 4
  %sw.i = getelementptr inbounds %struct.prestera_port, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sw.i, align 4
  %span_id.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.1100, i32 0, i32 2
  %76 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %span_id.i, align 4
  %conv.i90 = trunc i32 %77 to i8
  %call2.i = call fastcc i32 @prestera_span_put(ptr noundef %75, i8 noundef zeroext %conv.i90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i91 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i91, label %if.end5.i, label %if.end.i92.prestera_span_rule_del.exit_crit_edge

if.end.i92.prestera_span_rule_del.exit_crit_edge: ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_rule_del.exit

if.end5.i:                                        ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %span_id.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %span_id.i, align 4
  br label %prestera_span_rule_del.exit

prestera_span_rule_del.exit:                      ; preds = %if.end5.i, %if.end.i92.prestera_span_rule_del.exit_crit_edge, %for.body53.prestera_span_rule_del.exit_crit_edge
  %binding.1.in = getelementptr inbounds %struct.list_head, ptr %binding.1100, i32 0, i32 1
  %79 = ptrtoint ptr %binding.1.in to i32
  call void @__asan_load4_noabort(i32 %79)
  %binding.1 = load ptr, ptr %binding.1.in, align 4
  %cmp50.not = icmp eq ptr %binding.1, %block
  br i1 %cmp50.not, label %prestera_span_rule_del.exit.cleanup_crit_edge, label %prestera_span_rule_del.exit.for.body53_crit_edge

prestera_span_rule_del.exit.for.body53_crit_edge: ; preds = %prestera_span_rule_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53

prestera_span_rule_del.exit.cleanup_crit_edge:    ; preds = %prestera_span_rule_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %prestera_span_rule_del.exit.cleanup_crit_edge, %for.cond47.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %if.then14, %do.body9.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ -22, %if.then14 ], [ -22, %do.body9.cleanup_crit_edge ], [ -95, %if.end23.cleanup_crit_edge ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i ], [ %retval.0.i87107, %for.cond47.preheader.cleanup_crit_edge ], [ %retval.0.i87107, %prestera_span_rule_del.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prestera_netdev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_span_destroy(ptr noundef readonly %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %binding.010 = load ptr, ptr %block, align 4
  %cmp.not11 = icmp eq ptr %binding.010, %block
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %prestera_span_rule_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %binding.012 = phi ptr [ %binding.0, %prestera_span_rule_del.exit.for.body_crit_edge ], [ %binding.010, %entry.for.body_crit_edge ]
  %port.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.012, i32 0, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port.i, align 4
  %call.i = tail call i32 @prestera_hw_span_unbind(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.prestera_span_rule_del.exit_crit_edge

for.body.prestera_span_rule_del.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_rule_del.exit

if.end.i:                                         ; preds = %for.body
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i, align 4
  %sw.i = getelementptr inbounds %struct.prestera_port, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw.i, align 4
  %span_id.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.012, i32 0, i32 2
  %7 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %span_id.i, align 4
  %conv.i = trunc i32 %8 to i8
  %call2.i = tail call fastcc i32 @prestera_span_put(ptr noundef %6, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.prestera_span_rule_del.exit_crit_edge

if.end.i.prestera_span_rule_del.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_rule_del.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %span_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %span_id.i, align 4
  br label %prestera_span_rule_del.exit

prestera_span_rule_del.exit:                      ; preds = %if.end5.i, %if.end.i.prestera_span_rule_del.exit_crit_edge, %for.body.prestera_span_rule_del.exit_crit_edge
  %10 = ptrtoint ptr %binding.012 to i32
  call void @__asan_load4_noabort(i32 %10)
  %binding.0 = load ptr, ptr %binding.012, align 4
  %cmp.not = icmp eq ptr %binding.0, %block
  br i1 %cmp.not, label %prestera_span_rule_del.exit.for.end_crit_edge, label %prestera_span_rule_del.exit.for.body_crit_edge

prestera_span_rule_del.exit.for.body_crit_edge:   ; preds = %prestera_span_rule_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

prestera_span_rule_del.exit.for.end_crit_edge:    ; preds = %prestera_span_rule_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %prestera_span_rule_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_span_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %entries = getelementptr inbounds %struct.prestera_span, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i = getelementptr inbounds %struct.prestera_span, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entries, ptr %prev.i, align 8
  %span1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 4
  %3 = ptrtoint ptr %span1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %span1, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sw, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_span_fini(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %span1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 4
  %0 = ptrtoint ptr %span1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span1, align 4
  %entries = getelementptr inbounds %struct.prestera_span, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entries, align 4
  %cmp.i.not = icmp eq ptr %3, %entries
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_span_bind(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prestera_span_put(ptr noundef %sw, i8 noundef zeroext %span_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 4
  %0 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %span, align 4
  %entries.i = getelementptr inbounds %struct.prestera_span, ptr %1, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %entries.i, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %entries.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.prestera_span_entry, ptr %entry1.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id.i, align 4
  %cmp4.i = icmp eq i8 %4, %span_id
  br i1 %cmp4.i, label %prestera_span_entry_find_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

prestera_span_entry_find_by_id.exit:              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %prestera_span_entry_find_by_id.exit.cleanup_crit_edge, label %if.end

prestera_span_entry_find_by_id.exit.cleanup_crit_edge: ; preds = %prestera_span_entry_find_by_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %prestera_span_entry_find_by_id.exit
  %ref_count = getelementptr inbounds %struct.prestera_span_entry, ptr %entry1.0.i, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #5, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end4, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !22

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  %call5 = tail call i32 @prestera_hw_span_release(ptr noundef %sw, i8 noundef zeroext %span_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.0.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.prestera_span_entry_del.exit_crit_edge

if.end8.prestera_span_entry_del.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %prestera_span_entry_del.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entry1.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %prestera_span_entry_del.exit

prestera_span_entry_del.exit:                     ; preds = %if.end.i.i.i, %if.end8.prestera_span_entry_del.exit_crit_edge
  %12 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %prestera_span_entry_del.exit, %if.end4.cleanup_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %prestera_span_entry_find_by_id.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %prestera_span_entry_del.exit ], [ 0, %prestera_span_entry_find_by_id.exit.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_span_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_span_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_span_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @prestera_span_replace.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_span.c", i32 174, i32 3}
!2 = !{ptr @prestera_span_replace.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_span.c", i32 182, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_span.c", i32 238, i32 2}
!6 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!8 = !{ptr @tc_can_offload_extack.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i64 2148214441, i64 2148214473, i64 2148214502, i64 2148214536, i64 2148214567, i64 2148214590}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148302442}
!24 = !{i64 2148216906, i64 2148216938, i64 2148216967, i64 2148217001, i64 2148217032, i64 2148217055}
!25 = !{i64 2150680548}
