; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_flow.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_flow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.prestera_port = type { ptr, ptr, ptr, %struct.devlink_port, %struct.list_head, ptr, i32, i32, i32, i16, i16, i8, i64, i8, %struct.prestera_port_caps, %struct.list_head, %struct.list_head, %struct.anon.125, %struct.prestera_port_mac_config, %struct.prestera_port_phy_config, %struct.prestera_port_mac_state, %struct.prestera_port_phy_state }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.112 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.112 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.prestera_port_caps = type { i64, i8, i8, i8 }
%struct.anon.125 = type { %struct.prestera_port_stats, %struct.delayed_work }
%struct.prestera_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.prestera_port_mac_config = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_config = type { i32, i8, i8 }
%struct.prestera_port_mac_state = type { i32, i32, i8, i8, i8, i8 }
%struct.prestera_port_phy_state = type { i64, %struct.anon.126, i8 }
%struct.anon.126 = type { i8, i8 }
%struct.prestera_flow_block = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.prestera_flow_block_binding = type { %struct.list_head, ptr, i32 }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }

@prestera_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @prestera_block_cb_list, ptr @prestera_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_flow.c\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"prestera_block_cb_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 13, i32 8 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [57 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_flow.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 74, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @prestera_block_cb_list, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_flow_block_setup(ptr noundef %port, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %binder_type = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %binder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %binder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %driver_block_list = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %driver_block_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @prestera_block_cb_list, ptr %driver_block_list, align 4
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %if.end
  %sw1.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw1.i, align 4
  %block1.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %8 = ptrtoint ptr %block1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block1.i.i, align 4
  %call.i.i = tail call ptr @flow_block_cb_lookup(ptr noundef %9, ptr noundef nonnull @prestera_flow_block_cb, ptr noundef %7) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb
  %net.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 32) #6
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %if.end.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %13 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %net1.i.i.i = getelementptr inbounds %struct.prestera_flow_block, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %net1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %net1.i.i.i, align 4
  %sw2.i.i.i = getelementptr inbounds %struct.prestera_flow_block, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %sw2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %sw2.i.i.i, align 8
  %call6.i.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @prestera_flow_block_cb, ptr noundef %7, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @prestera_flow_block_release) #3
  %cmp.i.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  tail call void @prestera_flower_template_cleanup(ptr noundef nonnull %call7.i.i.i.i.i) #3
  %17 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %call7.i.i.i.i.i, align 8
  %cmp.i.not.i.i.i = icmp eq ptr %18, %call7.i.i.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then8.i.i.prestera_flow_block_destroy.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !13

if.then8.i.i.prestera_flow_block_destroy.exit.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %prestera_flow_block_destroy.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %prestera_flow_block_destroy.exit.i.i

prestera_flow_block_destroy.exit.i.i:             ; preds = %do.end.i.i.i, %if.then8.i.i.prestera_flow_block_destroy.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #3
  br label %prestera_flow_block_get.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %block_cb11.i.i = getelementptr inbounds %struct.prestera_flow_block, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %block_cb11.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6.i.i, ptr %block_cb11.i.i, align 4
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %call12.i.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call.i.i) #3
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else.i.i, %if.end10.i.i
  %storemerge.i.i = phi i8 [ 1, %if.end10.i.i ], [ 0, %if.else.i.i ]
  %block.0.i.i = phi ptr [ %call7.i.i.i.i.i, %if.end10.i.i ], [ %call12.i.i, %if.else.i.i ]
  %block_cb.0.i.i = phi ptr [ %call6.i.i, %if.end10.i.i ], [ %call.i.i, %if.else.i.i ]
  tail call void @flow_block_cb_incref(ptr noundef %block_cb.0.i.i) #3
  br label %prestera_flow_block_get.exit.i

prestera_flow_block_get.exit.i:                   ; preds = %if.end13.i.i, %prestera_flow_block_destroy.exit.i.i
  %register_block.0.i = phi i8 [ -1, %prestera_flow_block_destroy.exit.i.i ], [ %storemerge.i.i, %if.end13.i.i ]
  %retval.0.i.i = phi ptr [ %call6.i.i, %prestera_flow_block_destroy.exit.i.i ], [ %block.0.i.i, %if.end13.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %prestera_flow_block_get.exit.i.if.then.i_crit_edge, label %if.end.i

prestera_flow_block_get.exit.i.if.then.i_crit_edge: ; preds = %prestera_flow_block_get.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %prestera_flow_block_get.exit.i.if.then.i_crit_edge, %if.then.i.i.if.then.i_crit_edge
  %retval.0.i40.i = phi ptr [ %retval.0.i.i, %prestera_flow_block_get.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.i.if.then.i_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i40.i to i32
  br label %return

if.end.i:                                         ; preds = %prestera_flow_block_get.exit.i
  %block_cb4.i = getelementptr inbounds %struct.prestera_flow_block, ptr %retval.0.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %block_cb4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %block_cb4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 16) #6
  %tobool.not.i25.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i25.i, label %if.end.i.err_block_bind.i_crit_edge, label %if.end.i26.i

if.end.i.err_block_bind.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_block_bind.i

if.end.i26.i:                                     ; preds = %if.end.i
  %span_id.i.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %span_id.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %span_id.i.i, align 4
  %port1.i.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %call7.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %port, ptr %port1.i.i, align 8
  %ruleset_zero.i.i.i = getelementptr inbounds %struct.prestera_flow_block, ptr %retval.0.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %ruleset_zero.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ruleset_zero.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.i.not.i.i, label %if.end.i26.i.if.end8.i.i_crit_edge, label %if.then3.i.i

if.end.i26.i.if.end8.i.i_crit_edge:               ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i26.i
  %call4.i.i = tail call i32 @prestera_acl_ruleset_bind(ptr noundef nonnull %27, ptr noundef %port) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then3.i.i.if.end8.i.i_crit_edge, label %err_ruleset_bind.i.i

if.then3.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then3.i.i.if.end8.i.i_crit_edge, %if.end.i26.i.if.end8.i.i_crit_edge
  %28 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %retval.0.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %retval.0.i.i, ptr noundef %29) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end8.i.i.if.end7.i_crit_edge

if.end8.i.i.if.end7.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.end.i.i.i.i:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.i, ptr %prev3.i.i.i.i, align 4
  %33 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i.i.i, ptr %retval.0.i.i, align 4
  br label %if.end7.i

err_ruleset_bind.i.i:                             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #3
  br label %err_block_bind.i

if.end7.i:                                        ; preds = %if.end.i.i.i.i, %if.end8.i.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %register_block.0.i)
  %tobool8.not.i = icmp eq i8 %register_block.0.i, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end10.i_crit_edge, label %if.then9.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %22, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i28.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %35, ptr noundef %cb_list.i.i) #3
  br i1 %call.i.i.i28.i, label %if.end.i.i.i30.i, label %if.then9.i.flow_block_cb_add.exit.i_crit_edge

if.then9.i.flow_block_cb_add.exit.i_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %flow_block_cb_add.exit.i

if.end.i.i.i30.i:                                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i29.i = getelementptr inbounds %struct.flow_block_cb, ptr %22, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i29.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i.i, ptr %35, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i30.i, %if.then9.i.flow_block_cb_add.exit.i_crit_edge
  %40 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @prestera_block_cb_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %40, ptr noundef nonnull @prestera_block_cb_list) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %flow_block_cb_add.exit.i.if.end10.i_crit_edge

flow_block_cb_add.exit.i.if.end10.i_crit_edge:    ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.end.i.i.i:                                     ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %22, ptr getelementptr inbounds (%struct.list_head, ptr @prestera_block_cb_list, i32 0, i32 1), align 4
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @prestera_block_cb_list, ptr %22, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %22, ptr %40, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.i.i, %flow_block_cb_add.exit.i.if.end10.i_crit_edge, %if.end7.i.if.end10.i_crit_edge
  %flow_block.i = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 2
  %44 = ptrtoint ptr %flow_block.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %retval.0.i.i, ptr %flow_block.i, align 8
  br label %return

err_block_bind.i:                                 ; preds = %err_ruleset_bind.i.i, %if.end.i.err_block_bind.i_crit_edge
  %retval.0.i27.i = phi i32 [ %call4.i.i, %err_ruleset_bind.i.i ], [ -12, %if.end.i.err_block_bind.i_crit_edge ]
  %45 = ptrtoint ptr %block_cb4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %block_cb4.i, align 4
  %call.i31.i = tail call i32 @flow_block_cb_decref(ptr noundef %46) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i34.i, label %err_block_bind.i.return_crit_edge

err_block_bind.i.return_crit_edge:                ; preds = %err_block_bind.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i34.i:                                     ; preds = %err_block_bind.i
  tail call void @flow_block_cb_free(ptr noundef %46) #3
  tail call void @prestera_flower_template_cleanup(ptr noundef %retval.0.i.i) #3
  %47 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %retval.0.i.i, align 4
  %cmp.i.not.i.i33.i = icmp eq ptr %48, %retval.0.i.i
  br i1 %cmp.i.not.i.i33.i, label %if.end.i34.i.prestera_flow_block_destroy.exit.i36.i_crit_edge, label %do.end.i.i35.i, !prof !13

if.end.i34.i.prestera_flow_block_destroy.exit.i36.i_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %prestera_flow_block_destroy.exit.i36.i

do.end.i.i35.i:                                   ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %prestera_flow_block_destroy.exit.i36.i

prestera_flow_block_destroy.exit.i36.i:           ; preds = %do.end.i.i35.i, %if.end.i34.i.prestera_flow_block_destroy.exit.i36.i_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i.i) #3
  br label %return

sw.bb1:                                           ; preds = %if.end
  %sw1.i7 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 1
  %49 = ptrtoint ptr %sw1.i7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sw1.i7, align 4
  %block2.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %51 = ptrtoint ptr %block2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %block2.i, align 4
  %call.i = tail call ptr @flow_block_cb_lookup(ptr noundef %52, ptr noundef nonnull @prestera_flow_block_cb, ptr noundef %50) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb1.return_crit_edge, label %if.end.i8

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i8:                                        ; preds = %sw.bb1
  %call3.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call.i) #3
  tail call void @prestera_span_destroy(ptr noundef %call3.i) #3
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i8
  %binding.0.in.i.i.i = phi ptr [ %call3.i, %if.end.i8 ], [ %binding.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %53 = ptrtoint ptr %binding.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %binding.0.i.i.i = load ptr, ptr %binding.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %binding.0.i.i.i, %call3.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.error.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.error.i_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %port2.i.i.i = getelementptr inbounds %struct.prestera_flow_block_binding, ptr %binding.0.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %port2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %55, %port
  br i1 %cmp3.i.i.i, label %prestera_flow_block_lookup.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i.i.i

prestera_flow_block_lookup.exit.i.i:              ; preds = %for.body.i.i.i
  %tobool.not.i.i9 = icmp eq ptr %binding.0.i.i.i, null
  br i1 %tobool.not.i.i9, label %prestera_flow_block_lookup.exit.i.i.error.i_crit_edge, label %if.end.i.i11

prestera_flow_block_lookup.exit.i.i.error.i_crit_edge: ; preds = %prestera_flow_block_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error.i

if.end.i.i11:                                     ; preds = %prestera_flow_block_lookup.exit.i.i
  %call.i.i.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %binding.0.i.i.i) #3
  br i1 %call.i.i.i.i10, label %if.end.i.i.i.i13, label %if.end.i.i11.list_del.exit.i.i_crit_edge

if.end.i.i11.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i13:                                 ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %binding.0.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i.i12, align 4
  %58 = ptrtoint ptr %binding.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %binding.0.i.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i13, %if.end.i.i11.list_del.exit.i.i_crit_edge
  %62 = ptrtoint ptr %binding.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %binding.0.i.i.i, align 4
  %prev.i.i.i14 = getelementptr inbounds %struct.list_head, ptr %binding.0.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i14, align 4
  %ruleset_zero.i.i.i15 = getelementptr inbounds %struct.prestera_flow_block, ptr %call3.i, i32 0, i32 3
  %64 = ptrtoint ptr %ruleset_zero.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ruleset_zero.i.i.i15, align 4
  %tobool.i.not.i.i16 = icmp eq ptr %65, null
  br i1 %tobool.i.not.i.i16, label %list_del.exit.i.i.if.end7.i17_crit_edge, label %if.then2.i.i

list_del.exit.i.i.if.end7.i17_crit_edge:          ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i17

if.then2.i.i:                                     ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i.i = tail call i32 @prestera_acl_ruleset_unbind(ptr noundef nonnull %65, ptr noundef %port) #3
  br label %if.end7.i17

if.end7.i17:                                      ; preds = %if.then2.i.i, %list_del.exit.i.i.if.end7.i17_crit_edge
  tail call void @kfree(ptr noundef nonnull %binding.0.i.i.i) #3
  %call8.i = tail call i32 @flow_block_cb_decref(ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end7.i17.error.i_crit_edge

if.end7.i17.error.i_crit_edge:                    ; preds = %if.end7.i17
  call void @__sanitizer_cov_trace_pc() #5
  br label %error.i

if.then10.i:                                      ; preds = %if.end7.i17
  %list.i.i18 = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1
  %cb_list.i.i19 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %call.i.i.i23.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i18) #3
  br i1 %call.i.i.i23.i, label %if.end.i.i.i26.i, label %if.then10.i.__list_del_entry.exit.i.i.i_crit_edge

if.then10.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i26.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i24.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i24.i, align 4
  %68 = ptrtoint ptr %list.i.i18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %list.i.i18, align 4
  %prev1.i.i.i.i25.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i25.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i26.i, %if.then10.i.__list_del_entry.exit.i.i.i_crit_edge
  %72 = ptrtoint ptr %cb_list.i.i19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cb_list.i.i19, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i18, ptr noundef %cb_list.i.i19, ptr noundef %73) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %list.i.i18, ptr %prev1.i.i2.i.i.i, align 4
  %75 = ptrtoint ptr %list.i.i18 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %list.i.i18, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %cb_list.i.i19, ptr %prev3.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %cb_list.i.i19 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list.i.i18, ptr %cb_list.i.i19, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #3
  br i1 %call.i.i.i20, label %if.end.i.i.i22, label %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i

if.end.i.i.i22:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i27.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i27.i, align 4
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i21, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i22, %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %error.i

error.i:                                          ; preds = %list_del.exit.i, %if.end7.i17.error.i_crit_edge, %prestera_flow_block_lookup.exit.i.i.error.i_crit_edge, %for.cond.i.i.i.error.i_crit_edge
  %flow_block.i23 = getelementptr inbounds %struct.prestera_port, ptr %port, i32 0, i32 2
  %86 = ptrtoint ptr %flow_block.i23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %flow_block.i23, align 8
  br label %return

return:                                           ; preds = %error.i, %sw.bb1.return_crit_edge, %prestera_flow_block_destroy.exit.i36.i, %err_block_bind.i.return_crit_edge, %if.end10.i, %if.then.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ %20, %if.then.i ], [ 0, %if.end10.i ], [ %retval.0.i27.i, %err_block_bind.i.return_crit_edge ], [ %retval.0.i27.i, %prestera_flow_block_destroy.exit.i36.i ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %error.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prestera_flow_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %3 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %command.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %4, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb4.i
    i32 4, label %sw.bb6.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @prestera_flower_replace(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @prestera_flower_destroy(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @prestera_flower_stats(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i = tail call i32 @prestera_flower_tmplt_create(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @prestera_flower_tmplt_destroy(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %command.i5 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %6 = ptrtoint ptr %command.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command.i5, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %7, label %sw.bb1.cleanup_crit_edge [
    i32 0, label %sw.bb.i7
    i32 1, label %sw.bb1.i8
  ]

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i7:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %call.i6 = tail call i32 @prestera_span_replace(ptr noundef %cb_priv, ptr noundef %type_data) #3
  br label %cleanup

sw.bb1.i8:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @prestera_span_destroy(ptr noundef %cb_priv) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i8, %sw.bb.i7, %sw.bb1.cleanup_crit_edge, %sw.bb6.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb6.i ], [ %call5.i, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ 0, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb1.i8 ], [ %call.i6, %sw.bb.i7 ], [ -95, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_flow_block_release(ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @prestera_flower_template_cleanup(ptr noundef %cb_priv) #3
  %0 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cb_priv, align 4
  %cmp.i.not.i = icmp eq ptr %1, %cb_priv
  br i1 %cmp.i.not.i, label %entry.prestera_flow_block_destroy.exit_crit_edge, label %do.end.i, !prof !13

entry.prestera_flow_block_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %prestera_flow_block_destroy.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %prestera_flow_block_destroy.exit

prestera_flow_block_destroy.exit:                 ; preds = %do.end.i, %entry.prestera_flow_block_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %cb_priv) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_incref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_flower_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_flower_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_flower_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_flower_tmplt_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_flower_tmplt_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_span_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_span_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prestera_flower_template_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_acl_ruleset_bind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_decref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_acl_ruleset_unbind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @prestera_block_cb_list, !1, !"prestera_block_cb_list", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flow.c", i32 13, i32 8}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_flow.c", i32 74, i32 2}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
