; ModuleID = '/llk/IR_all_yes/net/bridge/br_mrp_switchdev.c_pt.bc'
source_filename = "../net/bridge/br_mrp_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.switchdev_obj_mrp = type { %struct.switchdev_obj, ptr, ptr, i32, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.br_mrp = type { %struct.hlist_node, ptr, ptr, ptr, i32, i16, i16, i32, i8, i32, i32, i32, i8, i32, i32, %struct.delayed_work, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i32, i32, i32, i32, %struct.callback_head }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.switchdev_obj_ring_role_mrp = type { %struct.switchdev_obj, i8, i32, i8 }
%struct.switchdev_obj_ring_test_mrp = type { %struct.switchdev_obj, i32, i8, i32, i32, i8 }
%struct.switchdev_obj_ring_state_mrp = type { %struct.switchdev_obj, i8, i32 }
%struct.switchdev_obj_in_role_mrp = type { %struct.switchdev_obj, ptr, i32, i16, i8, i8 }
%struct.switchdev_obj_in_state_mrp = type { %struct.switchdev_obj, i32, i8 }
%struct.switchdev_obj_in_test_mrp = type { %struct.switchdev_obj, i32, i32, i32, i8 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.154 }
%union.anon.154 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }

@br_mrp_switchdev_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/bridge/br_mrp_switchdev.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_mrp_switchdev_add.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mrp_switchdev_set_in_role.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [33 x i8] c"../net/bridge/br_mrp_switchdev.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 36, i32 13 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_add(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp) local_unnamed_addr #0 align 64 {
entry:
  %mrp_obj = alloca %struct.switchdev_obj_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mrp_obj) #3
  %0 = getelementptr inbounds i8, ptr %mrp_obj, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = ptrtoint ptr %mrp_obj to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mrp_obj, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 4
  %8 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 5
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %complete, align 8
  %p_port = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp_obj, i32 0, i32 1
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #3
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @br_mrp_switchdev_add.__warned, align 1
  br i1 %.b31, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_switchdev_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %p_port4 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 1
  %10 = ptrtoint ptr %p_port4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_port4, align 4
  %dev5 = getelementptr inbounds %struct.net_bridge_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %14 = ptrtoint ptr %p_port to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %p_port, align 4
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #3
  br i1 %call7, label %do.end.do.end16_crit_edge, label %land.lhs.true8

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b2930 = load i1, ptr @br_mrp_switchdev_add.__warned.2, align 1
  br i1 %.b2930, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_switchdev_add.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @.str.1) #3
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %s_port = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp_obj, i32 0, i32 2
  %s_port18 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 2
  %15 = ptrtoint ptr %s_port18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_port18, align 4
  %dev19 = getelementptr inbounds %struct.net_bridge_port, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev19, align 4
  %19 = ptrtoint ptr %s_port to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %s_port, align 8
  %ring_id = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp_obj, i32 0, i32 3
  %ring_id20 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %20 = ptrtoint ptr %ring_id20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring_id20, align 4
  %22 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ring_id, align 4
  %prio = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp_obj, i32 0, i32 4
  %prio21 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 6
  %23 = ptrtoint ptr %prio21 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %prio21, align 2
  %25 = ptrtoint ptr %prio to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %prio, align 8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call24 = call i32 @switchdev_port_obj_add(ptr noundef %27, ptr noundef nonnull %mrp_obj, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mrp_obj) #3
  ret i32 %call24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_obj_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_del(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp) local_unnamed_addr #0 align 64 {
entry:
  %mrp_obj = alloca %struct.switchdev_obj_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mrp_obj) #3
  %0 = getelementptr inbounds i8, ptr %mrp_obj, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 8, !annotation !17
  %2 = ptrtoint ptr %mrp_obj to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mrp_obj, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_obj, i32 0, i32 3
  %ring_id = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp_obj, i32 0, i32 3
  %ring_id1 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %7 = call ptr @memset(ptr %flags, i32 0, i32 20)
  %8 = ptrtoint ptr %ring_id1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring_id1, align 4
  %10 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ring_id, align 4
  %prio = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp_obj, i32 0, i32 4
  %11 = ptrtoint ptr %prio to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %prio, align 8
  %call = call i32 @switchdev_port_obj_del(ptr noundef %4, ptr noundef nonnull %mrp_obj) #3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mrp_obj) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_obj_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_set_ring_role(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp, i32 noundef %role) local_unnamed_addr #0 align 64 {
entry:
  %mrp_role = alloca %struct.switchdev_obj_ring_role_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mrp_role) #3
  %0 = getelementptr inbounds i8, ptr %mrp_role, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %mrp_role to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mrp_role, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 4
  %8 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 5
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %complete, align 8
  %ring_role = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp_role, i32 0, i32 1
  %conv = trunc i32 %role to i8
  %10 = ptrtoint ptr %ring_role to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ring_role, align 4
  %ring_id = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp_role, i32 0, i32 2
  %ring_id1 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %11 = ptrtoint ptr %ring_id1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ring_id1, align 4
  %13 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ring_id, align 8
  %sw_backup = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp_role, i32 0, i32 3
  %14 = ptrtoint ptr %sw_backup to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %sw_backup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp.not = icmp eq i32 %role, 0
  br i1 %cmp.not, label %br_mrp_switchdev_port_obj.exit.thread, label %br_mrp_switchdev_port_obj.exit

br_mrp_switchdev_port_obj.exit:                   ; preds = %entry
  %call.i = call i32 @switchdev_port_obj_add(ptr noundef %4, ptr noundef nonnull %mrp_role, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i)
  %switch.selectcmp.i = icmp eq i32 %call.i, -95
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %switch.selectcmp11.i = icmp eq i32 %call.i, 0
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %switch.select12.i)
  %cmp4.not = icmp eq i32 %switch.select12.i, 1
  br i1 %cmp4.not, label %if.then9, label %br_mrp_switchdev_port_obj.exit.cleanup_crit_edge

br_mrp_switchdev_port_obj.exit.cleanup_crit_edge: ; preds = %br_mrp_switchdev_port_obj.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mrp_switchdev_port_obj.exit.thread:            ; preds = %entry
  %call2.i = call i32 @switchdev_port_obj_del(ptr noundef %4, ptr noundef nonnull %mrp_role) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call2.i)
  %switch.selectcmp.i28 = icmp eq i32 %call2.i, -95
  %switch.select.i29 = zext i1 %switch.selectcmp.i28 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %switch.selectcmp11.i30 = icmp eq i32 %call2.i, 0
  %switch.select12.i31 = select i1 %switch.selectcmp11.i30, i32 2, i32 %switch.select.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %switch.select12.i31)
  %cmp4.not32 = icmp eq i32 %switch.select12.i31, 1
  br i1 %cmp4.not32, label %if.else, label %br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge

br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge: ; preds = %br_mrp_switchdev_port_obj.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %br_mrp_switchdev_port_obj.exit
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %sw_backup to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %sw_backup, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call12 = call i32 @switchdev_port_obj_add(ptr noundef %17, ptr noundef nonnull %mrp_role, ptr noundef null) #3
  br label %if.end16

if.else:                                          ; preds = %br_mrp_switchdev_port_obj.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %sw_backup to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sw_backup, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call15 = call i32 @switchdev_port_obj_del(ptr noundef %20, ptr noundef nonnull %mrp_role) #3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %err.0 = phi i32 [ %call12, %if.then9 ], [ %call15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge, %br_mrp_switchdev_port_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.select12.i, %br_mrp_switchdev_port_obj.exit.cleanup_crit_edge ], [ %., %if.end16 ], [ %switch.select12.i31, %br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mrp_role) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_send_ring_test(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp, i32 noundef %interval, i8 noundef zeroext %max_miss, i32 noundef %period, i1 noundef zeroext %monitor) local_unnamed_addr #0 align 64 {
entry:
  %test = alloca %struct.switchdev_obj_ring_test_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %monitor to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %test) #3
  %0 = getelementptr inbounds i8, ptr %test, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %test to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %test, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 4
  %8 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 5
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %complete, align 8
  %interval1 = getelementptr inbounds %struct.switchdev_obj_ring_test_mrp, ptr %test, i32 0, i32 1
  %10 = ptrtoint ptr %interval1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %interval, ptr %interval1, align 4
  %max_miss2 = getelementptr inbounds %struct.switchdev_obj_ring_test_mrp, ptr %test, i32 0, i32 2
  %11 = ptrtoint ptr %max_miss2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %max_miss, ptr %max_miss2, align 8
  %ring_id = getelementptr inbounds %struct.switchdev_obj_ring_test_mrp, ptr %test, i32 0, i32 3
  %ring_id3 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %12 = ptrtoint ptr %ring_id3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_id3, align 4
  %14 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ring_id, align 4
  %period4 = getelementptr inbounds %struct.switchdev_obj_ring_test_mrp, ptr %test, i32 0, i32 4
  %15 = ptrtoint ptr %period4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %period, ptr %period4, align 8
  %monitor5 = getelementptr inbounds %struct.switchdev_obj_ring_test_mrp, ptr %test, i32 0, i32 5
  %16 = ptrtoint ptr %monitor5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %monitor5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interval)
  %cmp.not = icmp eq i32 %interval, 0
  br i1 %cmp.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call i32 @switchdev_port_obj_add(ptr noundef %4, ptr noundef nonnull %test, ptr noundef null) #3
  br label %br_mrp_switchdev_port_obj.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i = call i32 @switchdev_port_obj_del(ptr noundef %4, ptr noundef nonnull %test) #3
  br label %br_mrp_switchdev_port_obj.exit

br_mrp_switchdev_port_obj.exit:                   ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %err.0.i)
  %switch.selectcmp.i = icmp eq i32 %err.0.i, -95
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %switch.selectcmp11.i = icmp eq i32 %err.0.i, 0
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %test) #3
  ret i32 %switch.select12.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_set_ring_state(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %mrp_state = alloca %struct.switchdev_obj_ring_state_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mrp_state) #3
  %0 = getelementptr inbounds i8, ptr %mrp_state, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !17
  %2 = ptrtoint ptr %mrp_state to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mrp_state, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 4
  %8 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 5
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %complete, align 8
  %ring_state = getelementptr inbounds %struct.switchdev_obj_ring_state_mrp, ptr %mrp_state, i32 0, i32 1
  %conv = trunc i32 %state to i8
  %10 = ptrtoint ptr %ring_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ring_state, align 4
  %ring_id = getelementptr inbounds %struct.switchdev_obj_ring_state_mrp, ptr %mrp_state, i32 0, i32 2
  %ring_id1 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %11 = ptrtoint ptr %ring_id1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ring_id1, align 4
  %13 = ptrtoint ptr %ring_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ring_id, align 8
  %call = call i32 @switchdev_port_obj_add(ptr noundef %4, ptr noundef nonnull %mrp_state, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mrp_state) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_set_in_role(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp, i16 noundef zeroext %in_id, i32 noundef %ring_id, i32 noundef %role) local_unnamed_addr #0 align 64 {
entry:
  %mrp_role = alloca %struct.switchdev_obj_in_role_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mrp_role) #3
  %0 = ptrtoint ptr %mrp_role to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mrp_role, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 4
  %6 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_role, i32 0, i32 5
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %complete, align 8
  %i_port = getelementptr inbounds %struct.switchdev_obj_in_role_mrp, ptr %mrp_role, i32 0, i32 1
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #3
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @br_mrp_switchdev_set_in_role.__warned, align 1
  br i1 %.b41, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_mrp_switchdev_set_in_role.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %i_port4 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 3
  %8 = ptrtoint ptr %i_port4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_port4, align 4
  %dev5 = getelementptr inbounds %struct.net_bridge_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %12 = ptrtoint ptr %i_port to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %i_port, align 4
  %ring_id6 = getelementptr inbounds %struct.switchdev_obj_in_role_mrp, ptr %mrp_role, i32 0, i32 2
  %ring_id7 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 4
  %13 = ptrtoint ptr %ring_id7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ring_id7, align 4
  %15 = ptrtoint ptr %ring_id6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ring_id6, align 8
  %in_id8 = getelementptr inbounds %struct.switchdev_obj_in_role_mrp, ptr %mrp_role, i32 0, i32 3
  %in_id9 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 5
  %16 = ptrtoint ptr %in_id9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %in_id9, align 4
  %18 = ptrtoint ptr %in_id8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %in_id8, align 4
  %in_role = getelementptr inbounds %struct.switchdev_obj_in_role_mrp, ptr %mrp_role, i32 0, i32 4
  %conv = trunc i32 %role to i8
  %19 = ptrtoint ptr %in_role to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %in_role, align 2
  %sw_backup = getelementptr inbounds %struct.switchdev_obj_in_role_mrp, ptr %mrp_role, i32 0, i32 5
  %20 = ptrtoint ptr %sw_backup to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %sw_backup, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp.not = icmp eq i32 %role, 0
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br i1 %cmp.not, label %br_mrp_switchdev_port_obj.exit.thread, label %br_mrp_switchdev_port_obj.exit

br_mrp_switchdev_port_obj.exit:                   ; preds = %do.end
  %call.i = call i32 @switchdev_port_obj_add(ptr noundef %22, ptr noundef nonnull %mrp_role, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i)
  %switch.selectcmp.i = icmp eq i32 %call.i, -95
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %switch.selectcmp11.i = icmp eq i32 %call.i, 0
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select12.i)
  %cmp13.not = icmp eq i32 %switch.select12.i, 0
  br i1 %cmp13.not, label %if.then20, label %br_mrp_switchdev_port_obj.exit.cleanup_crit_edge

br_mrp_switchdev_port_obj.exit.cleanup_crit_edge: ; preds = %br_mrp_switchdev_port_obj.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mrp_switchdev_port_obj.exit.thread:            ; preds = %do.end
  %call2.i = call i32 @switchdev_port_obj_del(ptr noundef %22, ptr noundef nonnull %mrp_role) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call2.i)
  %switch.selectcmp.i43 = icmp eq i32 %call2.i, -95
  %switch.select.i44 = zext i1 %switch.selectcmp.i43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %switch.selectcmp11.i45 = icmp eq i32 %call2.i, 0
  %switch.select12.i46 = select i1 %switch.selectcmp11.i45, i32 2, i32 %switch.select.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select12.i46)
  %cmp13.not47 = icmp eq i32 %switch.select12.i46, 0
  br i1 %cmp13.not47, label %if.else, label %br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge

br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge: ; preds = %br_mrp_switchdev_port_obj.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then20:                                        ; preds = %br_mrp_switchdev_port_obj.exit
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %sw_backup to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %sw_backup, align 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call23 = call i32 @switchdev_port_obj_add(ptr noundef %25, ptr noundef nonnull %mrp_role, ptr noundef null) #3
  br label %if.end27

if.else:                                          ; preds = %br_mrp_switchdev_port_obj.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %sw_backup to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %sw_backup, align 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call26 = call i32 @switchdev_port_obj_del(ptr noundef %28, ptr noundef nonnull %mrp_role) #3
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20
  %err.0 = phi i32 [ %call23, %if.then20 ], [ %call26, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool28.not = icmp eq i32 %err.0, 0
  %. = zext i1 %tobool28.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge, %br_mrp_switchdev_port_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.select12.i, %br_mrp_switchdev_port_obj.exit.cleanup_crit_edge ], [ %., %if.end27 ], [ %switch.select12.i46, %br_mrp_switchdev_port_obj.exit.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mrp_role) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_set_in_state(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %mrp_state = alloca %struct.switchdev_obj_in_state_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mrp_state) #3
  %0 = getelementptr inbounds i8, ptr %mrp_state, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 8, !annotation !17
  %2 = ptrtoint ptr %mrp_state to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mrp_state, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 4
  %8 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %mrp_state, i32 0, i32 5
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %complete, align 8
  %in_id = getelementptr inbounds %struct.switchdev_obj_in_state_mrp, ptr %mrp_state, i32 0, i32 1
  %in_id1 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 5
  %10 = ptrtoint ptr %in_id1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %in_id1, align 4
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %in_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %in_id, align 4
  %in_state = getelementptr inbounds %struct.switchdev_obj_in_state_mrp, ptr %mrp_state, i32 0, i32 2
  %conv2 = trunc i32 %state to i8
  %13 = ptrtoint ptr %in_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2, ptr %in_state, align 8
  %call = call i32 @switchdev_port_obj_add(ptr noundef %4, ptr noundef nonnull %mrp_state, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mrp_state) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_switchdev_send_in_test(ptr nocapture noundef readonly %br, ptr nocapture noundef readonly %mrp, i32 noundef %interval, i8 noundef zeroext %max_miss, i32 noundef %period) local_unnamed_addr #0 align 64 {
entry:
  %test = alloca %struct.switchdev_obj_in_test_mrp, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %test) #3
  %0 = getelementptr inbounds i8, ptr %test, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 8, !annotation !17
  %2 = ptrtoint ptr %test to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %test, align 8
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 1
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %orig_dev, align 8
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %id, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 8
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 4
  %8 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %test, i32 0, i32 5
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %complete, align 8
  %interval1 = getelementptr inbounds %struct.switchdev_obj_in_test_mrp, ptr %test, i32 0, i32 1
  %10 = ptrtoint ptr %interval1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %interval, ptr %interval1, align 4
  %in_id = getelementptr inbounds %struct.switchdev_obj_in_test_mrp, ptr %test, i32 0, i32 2
  %in_id2 = getelementptr inbounds %struct.br_mrp, ptr %mrp, i32 0, i32 5
  %11 = ptrtoint ptr %in_id2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %in_id2, align 4
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %in_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %in_id, align 8
  %period3 = getelementptr inbounds %struct.switchdev_obj_in_test_mrp, ptr %test, i32 0, i32 3
  %14 = ptrtoint ptr %period3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %period, ptr %period3, align 4
  %max_miss4 = getelementptr inbounds %struct.switchdev_obj_in_test_mrp, ptr %test, i32 0, i32 4
  %15 = ptrtoint ptr %max_miss4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %max_miss, ptr %max_miss4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interval)
  %cmp.not = icmp eq i32 %interval, 0
  br i1 %cmp.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = call i32 @switchdev_port_obj_add(ptr noundef %4, ptr noundef nonnull %test, ptr noundef null) #3
  br label %br_mrp_switchdev_port_obj.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i = call i32 @switchdev_port_obj_del(ptr noundef %4, ptr noundef nonnull %test) #3
  br label %br_mrp_switchdev_port_obj.exit

br_mrp_switchdev_port_obj.exit:                   ; preds = %if.else.i, %if.then.i
  %err.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %err.0.i)
  %switch.selectcmp.i = icmp eq i32 %err.0.i, -95
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %switch.selectcmp11.i = icmp eq i32 %err.0.i, 0
  %switch.select12.i = select i1 %switch.selectcmp11.i, i32 2, i32 %switch.select.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %test) #3
  ret i32 %switch.select12.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_port_switchdev_set_state(ptr nocapture noundef readonly %p, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #3
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %attr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %attr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %3, align 4
  %conv = trunc i32 %state to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %4, align 4
  %call = call i32 @switchdev_port_attr_set(ptr noundef %8, ptr noundef nonnull %attr, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_attr_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_mrp_port_switchdev_set_role(ptr nocapture noundef readonly %p, i32 noundef %role) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #3
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %attr, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %attr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %3, align 4
  %conv = trunc i32 %role to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %4, align 4
  %call = call i32 @switchdev_port_attr_set(ptr noundef %8, ptr noundef nonnull %attr, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #3
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/bridge/br_mrp_switchdev.c", i32 36, i32 13}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/bridge/br_mrp_switchdev.c", i32 37, i32 13}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/bridge/br_mrp_switchdev.c", i32 150, i32 13}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
