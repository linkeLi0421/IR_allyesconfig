; ModuleID = '/llk/IR_all_yes/net/openvswitch/vport-vxlan.c_pt.bc'
source_filename = "../net/openvswitch/vport-vxlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vport_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.vxlan_config = type { %union.vxlan_addr, %union.vxlan_addr, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i8, i32 }
%union.vxlan_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.vport_parms = type { ptr, i32, ptr, ptr, i16, ptr }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.150 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }

@ovs_vxlan_netdev_vport_ops = internal global { %struct.vport_ops, [60 x i8] } { %struct.vport_ops { i32 4, ptr @vxlan_create, ptr @ovs_netdev_tunnel_destroy, ptr null, ptr @vxlan_get_options, ptr @dev_queue_xmit, ptr null, %struct.list_head zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_vport_vxlan__568_164_ovs_vxlan_tnl_init6 = internal global ptr @ovs_vxlan_tnl_init, section ".initcall6.init", align 4
@__exitcall_ovs_vxlan_tnl_exit = internal global ptr @ovs_vxlan_tnl_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description569 = internal constant [50 x i8] c"vport_vxlan.description=OVS: VXLAN switching port\00", section ".modinfo", align 1
@__UNIQUE_ID_file570 = internal constant [45 x i8] c"vport_vxlan.file=net/openvswitch/vport-vxlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license571 = internal constant [24 x i8] c"vport_vxlan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias572 = internal constant [31 x i8] c"vport_vxlan.alias=vport-type-4\00", section ".modinfo", align 1
@exts_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.49 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"ovs_vxlan_netdev_vport_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 146, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"exts_policy\00", align 1
@___asan_gen_.5 = private constant [33 x i8] c"../net/openvswitch/vport-vxlan.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 47, i32 32 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias572, ptr @__UNIQUE_ID_description569, ptr @__UNIQUE_ID_file570, ptr @__UNIQUE_ID_license571, ptr @__exitcall_ovs_vxlan_tnl_exit, ptr @__initcall__kmod_vport_vxlan__568_164_ovs_vxlan_tnl_init6, ptr @ovs_vxlan_tnl_exit, ptr @ovs_vxlan_netdev_vport_ops, ptr @exts_policy], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_vxlan_netdev_vport_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exts_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ovs_vxlan_tnl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ovs_vport_ops_unregister(ptr noundef nonnull @ovs_vxlan_netdev_vport_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_ops_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vxlan_tnl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr getelementptr inbounds (%struct.vport_ops, ptr @ovs_vxlan_netdev_vport_ops, i32 0, i32 6), align 4
  %call = tail call i32 @__ovs_vport_ops_register(ptr noundef nonnull @ovs_vxlan_netdev_vport_ops) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vxlan_create(ptr noundef %parms) #2 align 64 {
entry:
  %exts.i.i = alloca [2 x ptr], align 4
  %conf.i = alloca %struct.vxlan_config, align 4
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
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %conf.i) #4
  %6 = call ptr @memset(ptr %conf.i, i32 0, i32 100)
  %7 = getelementptr inbounds { %union.vxlan_addr, %union.vxlan_addr, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i8, [3 x i8], i32 }, ptr %conf.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %7, align 4
  %9 = getelementptr inbounds { %union.vxlan_addr, %union.vxlan_addr, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i8, [3 x i8], i32 }, ptr %conf.i, i32 0, i32 11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8448, ptr %9, align 4
  %11 = getelementptr inbounds { %union.vxlan_addr, %union.vxlan_addr, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i8, [3 x i8], i32 }, ptr %conf.i, i32 0, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.error.i_crit_edge, label %if.end.i

entry.error.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %5, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1) #4
  %tobool3.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.error.i_crit_edge, label %land.lhs.true.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %15 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %16)
  %cmp.i = icmp eq i16 %16, 6
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.error.i_crit_edge

land.lhs.true.i.error.i_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %add.ptr.i.i58.i = getelementptr i8, ptr %call2.i.i, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i58.i, align 2
  %dst_port.i = getelementptr inbounds %struct.vxlan_config, ptr %conf.i, i32 0, i32 5
  %19 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %dst_port.i, align 4
  %call8.i = tail call ptr @ovs_vport_alloc(i32 noundef 0, ptr noundef nonnull @ovs_vxlan_netdev_vport_ops, ptr noundef %parms) #4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i.vxlan_tnl_create.exit_crit_edge, label %if.end11.i

if.then5.i.vxlan_tnl_create.exit_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vxlan_tnl_create.exit

if.end11.i:                                       ; preds = %if.then5.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 2
  %conv.i.i60.i = zext i16 %21 to i32
  %sub.i.i61.i = add nsw i32 %conv.i.i60.i, -4
  %call2.i62.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i61.i, i32 noundef 2) #4
  %tobool13.not.i = icmp eq ptr %call2.i62.i, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then14.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exts.i.i) #4
  %22 = ptrtoint ptr %exts.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %exts.i.i, align 4, !annotation !24
  %23 = getelementptr inbounds [2 x ptr], ptr %exts.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !24
  %25 = ptrtoint ptr %call2.i62.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call2.i62.i, align 2
  %conv.i.i63.i = zext i16 %26 to i32
  %sub.i.i64.i = add nsw i32 %conv.i.i63.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i64.i)
  %cmp.i65.i = icmp ult i32 %sub.i.i64.i, 4
  br i1 %cmp.i65.i, label %if.then14.i.if.then17.i_crit_edge, label %if.end.i.i

if.then14.i.if.then17.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i

if.end.i.i:                                       ; preds = %if.then14.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call2.i62.i, i32 4
  %call2.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %exts.i.i, i32 noundef 1, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i64.i, ptr noundef nonnull @exts_policy, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp2.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.if.then17.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.then17.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end4.i.i.vxlan_configure_exts.exit.thread.i_crit_edge, label %if.then5.i.i

if.end4.i.i.vxlan_configure_exts.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vxlan_configure_exts.exit.thread.i

if.then5.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %9, align 4
  %or.i.i = or i32 %30, 2048
  store i32 %or.i.i, ptr %9, align 4
  br label %vxlan_configure_exts.exit.thread.i

vxlan_configure_exts.exit.thread.i:               ; preds = %if.then5.i.i, %if.end4.i.i.vxlan_configure_exts.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exts.i.i) #4
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end.i.i.if.then17.i_crit_edge, %if.then14.i.if.then17.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %if.then14.i.if.then17.i_crit_edge ], [ %call2.i.i.i, %if.end.i.i.if.then17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exts.i.i) #4
  br label %error.sink.split.i

if.end19.i:                                       ; preds = %vxlan_configure_exts.exit.thread.i, %if.end11.i.if.end19.i_crit_edge
  call void @rtnl_lock() #4
  %31 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parms, align 4
  %call20.i = call ptr @vxlan_dev_create(ptr noundef %3, ptr noundef %32, i8 noundef zeroext 3, ptr noundef nonnull %conf.i) #4
  %cmp.i66.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66.i, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtnl_unlock() #4
  call void @ovs_vport_free(ptr noundef %call8.i) #4
  br label %vxlan_tnl_create.exit

if.end24.i:                                       ; preds = %if.end19.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 14
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %34, 1
  %call25.i = call i32 @dev_change_flags(ptr noundef %call20.i, i32 noundef %or.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end29.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %call28.i = call i32 @rtnl_delete_link(ptr noundef %call20.i) #4
  call void @rtnl_unlock() #4
  br label %error.sink.split.i

if.end29.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtnl_unlock() #4
  br label %vxlan_tnl_create.exit

error.sink.split.i:                               ; preds = %if.then27.i, %if.then17.i
  %err.0.ph.i = phi i32 [ %call25.i, %if.then27.i ], [ %retval.0.i.i, %if.then17.i ]
  call void @ovs_vport_free(ptr noundef %call8.i) #4
  br label %error.i

error.i:                                          ; preds = %error.sink.split.i, %land.lhs.true.i.error.i_crit_edge, %if.end.i.error.i_crit_edge, %entry.error.i_crit_edge
  %err.0.i = phi i32 [ -22, %entry.error.i_crit_edge ], [ -22, %land.lhs.true.i.error.i_crit_edge ], [ -22, %if.end.i.error.i_crit_edge ], [ %err.0.ph.i, %error.sink.split.i ]
  %35 = inttoptr i32 %err.0.i to ptr
  br label %vxlan_tnl_create.exit

vxlan_tnl_create.exit:                            ; preds = %error.i, %if.end29.i, %if.then22.i, %if.then5.i.vxlan_tnl_create.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %error.i ], [ %call20.i, %if.then22.i ], [ %call8.i, %if.end29.i ], [ %call8.i, %if.then5.i.vxlan_tnl_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %conf.i) #4
  %cmp.i6 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6, label %vxlan_tnl_create.exit.cleanup_crit_edge, label %if.end

vxlan_tnl_create.exit.cleanup_crit_edge:          ; preds = %vxlan_tnl_create.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %vxlan_tnl_create.exit
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parms, align 4
  %call2 = call ptr @ovs_netdev_link(ptr noundef %retval.0.i, ptr noundef %37) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vxlan_tnl_create.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ %retval.0.i, %vxlan_tnl_create.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_netdev_tunnel_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxlan_get_options(ptr nocapture noundef readonly %vport, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %dst_port1 = getelementptr i8, ptr %1, i32 13808
  %2 = ptrtoint ptr %dst_port1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dst_port1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #4
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %1, i32 13820
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup20_crit_edge, label %if.then5

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

if.then5:                                         ; preds = %if.end
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool7.not30 = icmp eq ptr %8, null
  %tobool7.not = select i1 %cmp.i, i1 true, i1 %tobool7.not30
  br i1 %tobool7.not, label %if.then5.cleanup20_crit_edge, label %if.end9

if.then5.cleanup20_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

if.end9:                                          ; preds = %if.then5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and12 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %call.i28 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool15.not = icmp eq i32 %call.i28, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup20_crit_edge

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup20

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %8, align 2
  br label %cleanup20

cleanup20:                                        ; preds = %if.end17, %land.lhs.true.cleanup20_crit_edge, %if.then5.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi i32 [ -90, %entry.cleanup20_crit_edge ], [ -90, %land.lhs.true.cleanup20_crit_edge ], [ -90, %if.then5.cleanup20_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end.cleanup20_crit_edge ]
  ret i32 %retval.1
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
declare dso_local void @ovs_vport_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxlan_dev_create(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_delete_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_vport_vxlan__568_164_ovs_vxlan_tnl_init6, !1, !"__initcall__kmod_vport_vxlan__568_164_ovs_vxlan_tnl_init6", i1 false, i1 false}
!1 = !{!"../net/openvswitch/vport-vxlan.c", i32 164, i32 1}
!2 = !{ptr @__exitcall_ovs_vxlan_tnl_exit, !3, !"__exitcall_ovs_vxlan_tnl_exit", i1 false, i1 false}
!3 = !{!"../net/openvswitch/vport-vxlan.c", i32 165, i32 1}
!4 = !{ptr @__UNIQUE_ID_description569, !5, !"__UNIQUE_ID_description569", i1 false, i1 false}
!5 = !{!"../net/openvswitch/vport-vxlan.c", i32 167, i32 1}
!6 = !{ptr @__UNIQUE_ID_file570, !7, !"__UNIQUE_ID_file570", i1 false, i1 false}
!7 = !{!"../net/openvswitch/vport-vxlan.c", i32 168, i32 1}
!8 = !{ptr @__UNIQUE_ID_license571, !7, !"__UNIQUE_ID_license571", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias572, !10, !"__UNIQUE_ID_alias572", i1 false, i1 false}
!10 = !{!"../net/openvswitch/vport-vxlan.c", i32 169, i32 1}
!11 = !{ptr @ovs_vxlan_netdev_vport_ops, !12, !"ovs_vxlan_netdev_vport_ops", i1 false, i1 false}
!12 = !{!"../net/openvswitch/vport-vxlan.c", i32 146, i32 25}
!13 = !{ptr @exts_policy, !14, !"exts_policy", i1 false, i1 false}
!14 = !{!"../net/openvswitch/vport-vxlan.c", i32 47, i32 32}
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
