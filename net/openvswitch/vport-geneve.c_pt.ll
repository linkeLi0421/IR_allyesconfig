; ModuleID = '/llk/IR_all_yes/net/openvswitch/vport-geneve.c_pt.bc'
source_filename = "../net/openvswitch/vport-geneve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vport_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.vport_parms = type { ptr, i32, ptr, ptr, i16, ptr }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.152 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }

@ovs_geneve_vport_ops = internal global { %struct.vport_ops, [60 x i8] } { %struct.vport_ops { i32 5, ptr @geneve_create, ptr @ovs_netdev_tunnel_destroy, ptr null, ptr @geneve_get_options, ptr @dev_queue_xmit, ptr null, %struct.list_head zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_vport_geneve__576_135_ovs_geneve_tnl_init6 = internal global ptr @ovs_geneve_tnl_init, section ".initcall6.init", align 4
@__exitcall_ovs_geneve_tnl_exit = internal global ptr @ovs_geneve_tnl_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description577 = internal constant [52 x i8] c"vport_geneve.description=OVS: Geneve switching port\00", section ".modinfo", align 1
@__UNIQUE_ID_file578 = internal constant [47 x i8] c"vport_geneve.file=net/openvswitch/vport-geneve\00", section ".modinfo", align 1
@__UNIQUE_ID_license579 = internal constant [25 x i8] c"vport_geneve.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias580 = internal constant [32 x i8] c"vport_geneve.alias=vport-type-5\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"ovs_geneve_vport_ops\00", align 1
@___asan_gen_.2 = private constant [34 x i8] c"../net/openvswitch/vport-geneve.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 117, i32 25 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias580, ptr @__UNIQUE_ID_description577, ptr @__UNIQUE_ID_file578, ptr @__UNIQUE_ID_license579, ptr @__exitcall_ovs_geneve_tnl_exit, ptr @__initcall__kmod_vport_geneve__576_135_ovs_geneve_tnl_init6, ptr @ovs_geneve_tnl_exit, ptr @ovs_geneve_vport_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_geneve_vport_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ovs_geneve_tnl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ovs_vport_ops_unregister(ptr noundef nonnull @ovs_geneve_vport_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_ops_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_geneve_tnl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr getelementptr inbounds (%struct.vport_ops, ptr @ovs_geneve_vport_ops, i32 0, i32 6), align 4
  %call = tail call i32 @__ovs_vport_ops_register(ptr noundef nonnull @ovs_geneve_vport_ops) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @geneve_create(ptr noundef %parms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 3
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %net.i.i = getelementptr inbounds %struct.datapath, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i.i, align 4
  %options1.i = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 2
  %4 = ptrtoint ptr %options1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1) #4
  %tobool3.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %9)
  %cmp.i = icmp eq i16 %9, 6
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5.i:                                       ; preds = %land.lhs.true.i
  %add.ptr.i.i49.i = getelementptr i8, ptr %call2.i.i, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i49.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i49.i, align 2
  %call8.i = tail call ptr @ovs_vport_alloc(i32 noundef 2, ptr noundef nonnull @ovs_geneve_vport_ops, ptr noundef %parms) #4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i.geneve_tnl_create.exit_crit_edge, label %if.end11.i

if.then5.i.geneve_tnl_create.exit_crit_edge:      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %geneve_tnl_create.exit

if.end11.i:                                       ; preds = %if.then5.i
  %add.ptr.i.i50.i = getelementptr i8, ptr %call8.i, i32 56
  %12 = ptrtoint ptr %add.ptr.i.i50.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr.i.i50.i, align 2
  tail call void @rtnl_lock() #4
  %13 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parms, align 4
  %call14.i = tail call ptr @geneve_dev_create_fb(ptr noundef %3, ptr noundef %14, i8 noundef zeroext 3, i16 noundef zeroext %11) #4
  %cmp.i51.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtnl_unlock() #4
  tail call void @ovs_vport_free(ptr noundef %call8.i) #4
  br label %geneve_tnl_create.exit

if.end18.i:                                       ; preds = %if.end11.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call14.i, i32 0, i32 14
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %16, 1
  %call19.i = tail call i32 @dev_change_flags(ptr noundef %call14.i, i32 noundef %or.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %call22.i = tail call i32 @rtnl_delete_link(ptr noundef %call14.i) #4
  tail call void @rtnl_unlock() #4
  tail call void @ovs_vport_free(ptr noundef %call8.i) #4
  %phi.cast.i = inttoptr i32 %call19.i to ptr
  br label %geneve_tnl_create.exit

if.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtnl_unlock() #4
  br label %geneve_tnl_create.exit

geneve_tnl_create.exit:                           ; preds = %if.end23.i, %if.then21.i, %if.then16.i, %if.then5.i.geneve_tnl_create.exit_crit_edge
  %retval.0.i = phi ptr [ %call14.i, %if.then16.i ], [ %call8.i, %if.end23.i ], [ %call8.i, %if.then5.i.geneve_tnl_create.exit_crit_edge ], [ %phi.cast.i, %if.then21.i ]
  %cmp.i6 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6, label %geneve_tnl_create.exit.cleanup_crit_edge, label %if.end

geneve_tnl_create.exit.cleanup_crit_edge:         ; preds = %geneve_tnl_create.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %geneve_tnl_create.exit
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parms, align 4
  %call2 = tail call ptr @ovs_netdev_link(ptr noundef %retval.0.i, ptr noundef %18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %geneve_tnl_create.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ %retval.0.i, %geneve_tnl_create.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_netdev_tunnel_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_get_options(ptr nocapture noundef readonly %vport, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %vport, i32 56
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_netdev_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_vport_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @geneve_dev_create_fb(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_delete_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ovs_vport_ops_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_vport_geneve__576_135_ovs_geneve_tnl_init6, !1, !"__initcall__kmod_vport_geneve__576_135_ovs_geneve_tnl_init6", i1 false, i1 false}
!1 = !{!"../net/openvswitch/vport-geneve.c", i32 135, i32 1}
!2 = !{ptr @__exitcall_ovs_geneve_tnl_exit, !3, !"__exitcall_ovs_geneve_tnl_exit", i1 false, i1 false}
!3 = !{!"../net/openvswitch/vport-geneve.c", i32 136, i32 1}
!4 = !{ptr @__UNIQUE_ID_description577, !5, !"__UNIQUE_ID_description577", i1 false, i1 false}
!5 = !{!"../net/openvswitch/vport-geneve.c", i32 138, i32 1}
!6 = !{ptr @__UNIQUE_ID_file578, !7, !"__UNIQUE_ID_file578", i1 false, i1 false}
!7 = !{!"../net/openvswitch/vport-geneve.c", i32 139, i32 1}
!8 = !{ptr @__UNIQUE_ID_license579, !7, !"__UNIQUE_ID_license579", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias580, !10, !"__UNIQUE_ID_alias580", i1 false, i1 false}
!10 = !{!"../net/openvswitch/vport-geneve.c", i32 140, i32 1}
!11 = !{ptr @ovs_geneve_vport_ops, !12, !"ovs_geneve_vport_ops", i1 false, i1 false}
!12 = !{!"../net/openvswitch/vport-geneve.c", i32 117, i32 25}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
