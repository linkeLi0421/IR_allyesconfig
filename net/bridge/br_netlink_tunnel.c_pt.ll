; ModuleID = '/llk/IR_all_yes/net/bridge/br_netlink_tunnel.c_pt.bc'
source_filename = "../net/bridge/br_netlink_tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_bridge_vlan = type { %struct.rhash_head, %struct.rhash_head, i16, i16, i16, i8, ptr, %union.anon.0, %union.anon.154, %struct.br_tunnel_info, %union.anon.159, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.154 = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.br_tunnel_info = type { i64, ptr }
%union.anon.159 = type { %struct.net_bridge_mcast }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.152, %union.anon.153, i16, i16 }
%union.anon.152 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.anon.153 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.vtunnel_info = type { i32, i16, i16 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { %union.anon.4, %union.anon.7, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }

@br_fill_vlan_tunnel_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/bridge/br_netlink_tunnel.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@vlan_tunnel_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__get_num_vlan_tunnel_infos.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 19]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 19]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 19]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 157, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"vlan_tunnel_policy\00", align 1
@___asan_gen_.17 = private constant [34 x i8] c"../net/bridge/br_netlink_tunnel.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 190, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 991, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 1477, i32 9 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @vlan_tunnel_policy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_tunnel_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vlan_tunid_inrange(ptr nocapture noundef readonly %v_curr, ptr nocapture noundef readonly %v_last) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tinfo = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_curr, i32 0, i32 9
  %0 = ptrtoint ptr %tinfo to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tinfo, align 8
  %conv.i = trunc i64 %1 to i32
  %tinfo1 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_last, i32 0, i32 9
  %2 = ptrtoint ptr %tinfo1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tinfo1, align 8
  %conv.i4 = trunc i64 %3 to i32
  %sub = sub i32 %conv.i, %conv.i4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_get_vlan_tunnel_info_size(ptr noundef %vg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call.i3 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i6, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i6:                                 ; preds = %rcu_read_lock.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool2.not.i = icmp eq i32 %call1.i5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i6.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i6.do.end.i_crit_edge:              ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i6
  %.b84.i = load i1, ptr @__get_num_vlan_tunnel_infos.__warned, align 1
  br i1 %.b84.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i7

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i7:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__get_num_vlan_tunnel_infos.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @.str.1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i7, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i6.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %vlan_list.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 2
  %4 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn85.i = load volatile ptr, ptr %vlan_list.i, align 4
  %cmp.not87.i = icmp eq ptr %.pn85.i, %vlan_list.i
  br i1 %cmp.not87.i, label %do.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_num_vlan_tunnel_infos.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn93.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn85.i, %do.end.i.for.body.i_crit_edge ]
  %vtbegin.091.i = phi ptr [ %vtbegin.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %do.end.i.for.body.i_crit_edge ]
  %vtend.090.i = phi ptr [ %vtend.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %do.end.i.for.body.i_crit_edge ]
  %num_tinfos.088.i = phi i32 [ %num_tinfos.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %v.094.i = getelementptr i8, ptr %.pn93.i, i32 -556
  %flags.i.i.i = getelementptr i8, ptr %.pn93.i, i32 -546
  %5 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i.i, align 2
  %7 = and i16 %6, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %.not.i = icmp eq i16 %7, 1
  br i1 %.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %tinfo.i = getelementptr i8, ptr %.pn93.i, i32 -524
  %8 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tinfo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool11.not.i = icmp eq i64 %9, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end13.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %tobool14.not.i = icmp eq ptr %vtbegin.091.i, null
  br i1 %tobool14.not.i, label %if.end13.i.for.inc.i_crit_edge, label %if.else.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end13.i
  %vid.i = getelementptr i8, ptr %.pn93.i, i32 -548
  %10 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid.i, align 8
  %conv.i = zext i16 %11 to i32
  %vid16.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.090.i, i32 0, i32 2
  %12 = ptrtoint ptr %vid16.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid16.i, align 8
  %conv17.i = zext i16 %13 to i32
  %sub.i = sub nsw i32 %conv.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp18.i = icmp eq i32 %sub.i, 1
  br i1 %cmp18.i, label %land.lhs.true20.i, label %if.else.i.if.else24.i_crit_edge

if.else.i.if.else24.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24.i

land.lhs.true20.i:                                ; preds = %if.else.i
  %conv.i.i.i = trunc i64 %9 to i32
  %tinfo1.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.090.i, i32 0, i32 9
  %14 = ptrtoint ptr %tinfo1.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tinfo1.i.i, align 8
  %conv.i4.i.i = trunc i64 %15 to i32
  %sub.i.i = sub i32 %conv.i.i.i, %conv.i4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %land.lhs.true20.i.for.inc.i_crit_edge, label %land.lhs.true20.i.if.else24.i_crit_edge

land.lhs.true20.i.if.else24.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24.i

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else24.i:                                      ; preds = %land.lhs.true20.i.if.else24.i_crit_edge, %if.else.i.if.else24.i_crit_edge
  %vid27.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.091.i, i32 0, i32 2
  %16 = ptrtoint ptr %vid27.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid27.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp30.i = icmp ugt i16 %13, %17
  br i1 %cmp30.i, label %if.then32.i, label %if.else33.i

if.then32.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %num_tinfos.088.i, 2
  br label %for.inc.i

if.else33.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i = add i32 %num_tinfos.088.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else33.i, %if.then32.i, %land.lhs.true20.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %num_tinfos.2.i = phi i32 [ %num_tinfos.088.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %num_tinfos.088.i, %for.body.i.for.inc.i_crit_edge ], [ %num_tinfos.088.i, %land.lhs.true20.i.for.inc.i_crit_edge ], [ %add.i, %if.then32.i ], [ %add34.i, %if.else33.i ], [ %num_tinfos.088.i, %if.end13.i.for.inc.i_crit_edge ]
  %vtend.1.i = phi ptr [ %vtend.090.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %vtend.090.i, %for.body.i.for.inc.i_crit_edge ], [ %v.094.i, %land.lhs.true20.i.for.inc.i_crit_edge ], [ %v.094.i, %if.then32.i ], [ %v.094.i, %if.else33.i ], [ %v.094.i, %if.end13.i.for.inc.i_crit_edge ]
  %vtbegin.1.i = phi ptr [ %vtbegin.091.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %vtbegin.091.i, %for.body.i.for.inc.i_crit_edge ], [ %vtbegin.091.i, %land.lhs.true20.i.for.inc.i_crit_edge ], [ %v.094.i, %if.then32.i ], [ %v.094.i, %if.else33.i ], [ %v.094.i, %if.end13.i.for.inc.i_crit_edge ]
  %18 = ptrtoint ptr %.pn93.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load volatile ptr, ptr %.pn93.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool47.not.i = icmp eq ptr %vtbegin.1.i, null
  %tobool49.not.i = icmp eq ptr %vtend.1.i, null
  %or.cond.i = select i1 %tobool47.not.i, i1 true, i1 %tobool49.not.i
  br i1 %or.cond.i, label %for.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge, label %if.then50.i

for.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_num_vlan_tunnel_infos.exit

if.then50.i:                                      ; preds = %for.end.i
  %vid51.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.1.i, i32 0, i32 2
  %19 = ptrtoint ptr %vid51.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid51.i, align 8
  %vid53.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.1.i, i32 0, i32 2
  %21 = ptrtoint ptr %vid53.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid53.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp56.i = icmp ugt i16 %20, %22
  br i1 %cmp56.i, label %if.then58.i, label %if.else60.i

if.then58.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  %add59.i = add i32 %num_tinfos.2.i, 2
  br label %__get_num_vlan_tunnel_infos.exit

if.else60.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  %add61.i = add i32 %num_tinfos.2.i, 1
  br label %__get_num_vlan_tunnel_infos.exit

__get_num_vlan_tunnel_infos.exit:                 ; preds = %if.else60.i, %if.then58.i, %for.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge, %do.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge
  %num_tinfos.3.i = phi i32 [ %add59.i, %if.then58.i ], [ %add61.i, %if.else60.i ], [ %num_tinfos.2.i, %for.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge ], [ 0, %do.end.i.__get_num_vlan_tunnel_infos.exit_crit_edge ]
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i8, label %__get_num_vlan_tunnel_infos.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

__get_num_vlan_tunnel_infos.exit.rcu_read_unlock.exit_crit_edge: ; preds = %__get_num_vlan_tunnel_infos.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %__get_num_vlan_tunnel_infos.exit
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %__get_num_vlan_tunnel_infos.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !32
  %23 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i15 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %mul = mul i32 %num_tinfos.3.i, 28
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fill_vlan_tunnel_info(ptr noundef %skb, ptr noundef %vg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @br_fill_vlan_tunnel_info.__warned, align 1
  br i1 %.b71, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_fill_vlan_tunnel_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 2
  %0 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn102 = load volatile ptr, ptr %vlan_list, align 4
  %cmp.not104 = icmp eq ptr %.pn102, %vlan_list
  br i1 %cmp.not104, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn108 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn102, %do.end.for.body_crit_edge ]
  %vtbegin.0106 = phi ptr [ %vtbegin.1, %for.inc.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %vtend.0105 = phi ptr [ %vtend.1, %for.inc.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %v.0109 = getelementptr i8, ptr %.pn108, i32 -556
  %flags.i.i = getelementptr i8, ptr %.pn108, i32 -546
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i.i, align 2
  %3 = and i16 %2, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %.not = icmp eq i16 %3, 1
  br i1 %.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %tunnel_dst = getelementptr i8, ptr %.pn108, i32 -516
  %4 = ptrtoint ptr %tunnel_dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tunnel_dst, align 8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end12.for.inc_crit_edge, label %if.end15

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end15:                                         ; preds = %if.end12
  %tobool16.not = icmp eq ptr %vtbegin.0106, null
  br i1 %tobool16.not, label %if.end15.for.inc_crit_edge, label %if.else

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %if.end15
  %vid = getelementptr i8, ptr %.pn108, i32 -548
  %6 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid, align 8
  %conv = zext i16 %7 to i32
  %vid18 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.0105, i32 0, i32 2
  %8 = ptrtoint ptr %vid18 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid18, align 8
  %conv19 = zext i16 %9 to i32
  %sub = sub nsw i32 %conv, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp20 = icmp eq i32 %sub, 1
  br i1 %cmp20, label %land.lhs.true22, label %if.else.if.else26_crit_edge

if.else.if.else26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

land.lhs.true22:                                  ; preds = %if.else
  %tinfo.i = getelementptr i8, ptr %.pn108, i32 -524
  %10 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tinfo.i, align 8
  %conv.i.i = trunc i64 %11 to i32
  %tinfo1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.0105, i32 0, i32 9
  %12 = ptrtoint ptr %tinfo1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tinfo1.i, align 8
  %conv.i4.i = trunc i64 %13 to i32
  %sub.i = sub i32 %conv.i.i, %conv.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 1
  br i1 %cmp.i, label %land.lhs.true22.for.inc_crit_edge, label %land.lhs.true22.if.else26_crit_edge

land.lhs.true22.if.else26_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else26:                                        ; preds = %land.lhs.true22.if.else26_crit_edge, %if.else.if.else26_crit_edge
  %tobool.not.i = icmp eq ptr %vtend.0105, null
  br i1 %tobool.not.i, label %if.else26.if.else.i_crit_edge, label %land.lhs.true.i

if.else26.if.else.i_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.else26
  %vid1.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.0106, i32 0, i32 2
  %14 = ptrtoint ptr %vid1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid1.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %15)
  %cmp.i72 = icmp ugt i16 %9, %15
  br i1 %cmp.i72, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %tinfo.i73 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.0106, i32 0, i32 9
  %16 = ptrtoint ptr %tinfo.i73 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tinfo.i73, align 8
  %call.i = tail call fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %15, i64 noundef %17, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %18 = ptrtoint ptr %vid18 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vid18, align 8
  %tinfo8.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.0105, i32 0, i32 9
  %20 = ptrtoint ptr %tinfo8.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tinfo8.i, align 8
  %call10.i = tail call fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %19, i64 noundef %21, i16 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.for.inc_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.else26.if.else.i_crit_edge
  %vid14.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.0106, i32 0, i32 2
  %22 = ptrtoint ptr %vid14.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid14.i, align 8
  %tinfo15.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.0106, i32 0, i32 9
  %24 = ptrtoint ptr %tinfo15.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tinfo15.i, align 8
  %call17.i = tail call fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %23, i64 noundef %25, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.else.i.for.inc_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vtend.1 = phi ptr [ %vtend.0105, %if.end12.for.inc_crit_edge ], [ %vtend.0105, %for.body.for.inc_crit_edge ], [ %v.0109, %land.lhs.true22.for.inc_crit_edge ], [ %v.0109, %if.end15.for.inc_crit_edge ], [ %v.0109, %if.end.i.for.inc_crit_edge ], [ %v.0109, %if.else.i.for.inc_crit_edge ]
  %vtbegin.1 = phi ptr [ %vtbegin.0106, %if.end12.for.inc_crit_edge ], [ %vtbegin.0106, %for.body.for.inc_crit_edge ], [ %vtbegin.0106, %land.lhs.true22.for.inc_crit_edge ], [ %v.0109, %if.end15.for.inc_crit_edge ], [ %v.0109, %if.end.i.for.inc_crit_edge ], [ %v.0109, %if.else.i.for.inc_crit_edge ]
  %26 = ptrtoint ptr %.pn108 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load volatile ptr, ptr %.pn108, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool42.not = icmp eq ptr %vtbegin.1, null
  br i1 %tobool42.not, label %for.end.cleanup_crit_edge, label %if.then43

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %for.end
  %tobool.not.i74 = icmp eq ptr %vtend.1, null
  br i1 %tobool.not.i74, label %if.then43.if.else.i91_crit_edge, label %land.lhs.true.i78

if.then43.if.else.i91_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i91

land.lhs.true.i78:                                ; preds = %if.then43
  %vid.i75 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.1, i32 0, i32 2
  %27 = ptrtoint ptr %vid.i75 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid.i75, align 8
  %vid1.i76 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.1, i32 0, i32 2
  %29 = ptrtoint ptr %vid1.i76 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid1.i76, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp.i77 = icmp ugt i16 %28, %30
  br i1 %cmp.i77, label %if.then.i82, label %land.lhs.true.i78.if.else.i91_crit_edge

land.lhs.true.i78.if.else.i91_crit_edge:          ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i91

if.then.i82:                                      ; preds = %land.lhs.true.i78
  %tinfo.i79 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.1, i32 0, i32 9
  %31 = ptrtoint ptr %tinfo.i79 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tinfo.i79, align 8
  %call.i80 = tail call fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %30, i64 noundef %32, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool5.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool5.not.i81, label %if.end.i86, label %if.then.i82.br_fill_vlan_tinfo_range.exit94.thread_crit_edge

if.then.i82.br_fill_vlan_tinfo_range.exit94.thread_crit_edge: ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_fill_vlan_tinfo_range.exit94.thread

if.end.i86:                                       ; preds = %if.then.i82
  %33 = ptrtoint ptr %vid.i75 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vid.i75, align 8
  %tinfo8.i83 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtend.1, i32 0, i32 9
  %35 = ptrtoint ptr %tinfo8.i83 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tinfo8.i83, align 8
  %call10.i84 = tail call fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %34, i64 noundef %36, i16 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i84)
  %tobool11.not.i85 = icmp eq i32 %call10.i84, 0
  br i1 %tobool11.not.i85, label %if.end.i86.cleanup_crit_edge, label %if.end.i86.br_fill_vlan_tinfo_range.exit94.thread_crit_edge

if.end.i86.br_fill_vlan_tinfo_range.exit94.thread_crit_edge: ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_fill_vlan_tinfo_range.exit94.thread

if.end.i86.cleanup_crit_edge:                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i91:                                      ; preds = %land.lhs.true.i78.if.else.i91_crit_edge, %if.then43.if.else.i91_crit_edge
  %vid14.i87 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.1, i32 0, i32 2
  %37 = ptrtoint ptr %vid14.i87 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid14.i87, align 8
  %tinfo15.i88 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vtbegin.1, i32 0, i32 9
  %39 = ptrtoint ptr %tinfo15.i88 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tinfo15.i88, align 8
  %call17.i89 = tail call fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %38, i64 noundef %40, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i89)
  %tobool18.not.i90 = icmp eq i32 %call17.i89, 0
  br i1 %tobool18.not.i90, label %if.else.i91.cleanup_crit_edge, label %if.else.i91.br_fill_vlan_tinfo_range.exit94.thread_crit_edge

if.else.i91.br_fill_vlan_tinfo_range.exit94.thread_crit_edge: ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_fill_vlan_tinfo_range.exit94.thread

if.else.i91.cleanup_crit_edge:                    ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

br_fill_vlan_tinfo_range.exit94.thread:           ; preds = %if.else.i91.br_fill_vlan_tinfo_range.exit94.thread_crit_edge, %if.end.i86.br_fill_vlan_tinfo_range.exit94.thread_crit_edge, %if.then.i82.br_fill_vlan_tinfo_range.exit94.thread_crit_edge
  %retval.0.i93.ph = phi i32 [ %call17.i89, %if.else.i91.br_fill_vlan_tinfo_range.exit94.thread_crit_edge ], [ %call10.i84, %if.end.i86.br_fill_vlan_tinfo_range.exit94.thread_crit_edge ], [ %call.i80, %if.then.i82.br_fill_vlan_tinfo_range.exit94.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %br_fill_vlan_tinfo_range.exit94.thread, %if.else.i91.cleanup_crit_edge, %if.end.i86.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i93.ph, %br_fill_vlan_tinfo_range.exit94.thread ], [ 0, %if.else.i91.cleanup_crit_edge ], [ 0, %if.end.i86.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call10.i, %if.end.i.cleanup_crit_edge ], [ %call17.i, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_vlan_tunnel_info(ptr noundef %p, i32 noundef %cmd, i16 noundef zeroext %vid, i32 noundef %tun_id, ptr nocapture noundef writeonly %changed) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 19, label %sw.bb
    i32 17, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @nbp_vlan_tunnel_info_add(ptr noundef nonnull %p, i16 noundef zeroext %vid, i32 noundef %tun_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end
  %call5 = tail call i32 @nbp_vlan_tunnel_info_delete(ptr noundef nonnull %p, i16 noundef zeroext %vid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb4.cleanup.sink.split_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %1 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %changed, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_vlan_tunnel_info_add(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_vlan_tunnel_info_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_parse_vlan_tunnel_info(ptr noundef %attr, ptr nocapture noundef writeonly %tinfo) local_unnamed_addr #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #6
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  %3 = ptrtoint ptr %tinfo to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %tinfo, align 4
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @vlan_tunnel_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i31 = getelementptr i8, ptr %8, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i31, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %10, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %14)
  %cmp9 = icmp ugt i16 %14, 4094
  br i1 %cmp9, label %if.end4.cleanup_crit_edge, label %if.end12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i33 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i33 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i33, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %flags.0 = phi i16 [ %18, %if.then15 ], [ 0, %if.end12.if.end18_crit_edge ]
  %19 = ptrtoint ptr %tinfo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %tinfo, align 4
  %vid19 = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo, i32 0, i32 1
  %20 = ptrtoint ptr %vid19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %14, ptr %vid19, align 4
  %flags20 = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo, i32 0, i32 2
  %21 = ptrtoint ptr %flags20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %flags.0, ptr %flags20, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call2.i, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_process_vlan_tunnel_info(ptr noundef %br, ptr noundef %p, i32 noundef %cmd, ptr nocapture noundef %tinfo_curr, ptr nocapture noundef %tinfo_last, ptr nocapture noundef writeonly %changed) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo_curr, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo_last, i32 0, i32 2
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 2
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup71_crit_edge

if.then.cleanup71_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tinfo_curr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %tinfo_curr, align 4
  %7 = ptrtoint ptr %tinfo_last to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %tinfo_last, align 4
  br label %cleanup71

if.else:                                          ; preds = %entry
  %and8 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %flags58 = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo_last, i32 0, i32 2
  %8 = ptrtoint ptr %flags58 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags58, align 2
  br i1 %tobool9.not, label %if.else57, label %if.then10

if.then10:                                        ; preds = %if.else
  %10 = and i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool14.not = icmp eq i16 %10, 0
  br i1 %tobool14.not, label %if.then10.cleanup71_crit_edge, label %if.end16

if.then10.cleanup71_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end16:                                         ; preds = %if.then10
  %vid = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo_curr, i32 0, i32 1
  %11 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid, align 4
  %conv17 = zext i16 %12 to i32
  %vid18 = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo_last, i32 0, i32 1
  %13 = ptrtoint ptr %vid18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid18, align 4
  %conv19 = zext i16 %14 to i32
  %sub = sub nsw i32 %conv17, %conv19
  %15 = ptrtoint ptr %tinfo_curr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tinfo_curr, align 4
  %17 = ptrtoint ptr %tinfo_last to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tinfo_last, align 4
  %sub21 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub21)
  %cmp.not = icmp eq i32 %sub, %sub21
  br i1 %cmp.not, label %for.cond.preheader, label %if.end16.cleanup71_crit_edge

if.end16.cleanup71_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

for.cond.preheader:                               ; preds = %if.end16
  %19 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %20)
  %cmp30.not153 = icmp ugt i16 %14, %20
  br i1 %cmp30.not153, label %for.cond.preheader.cleanup71_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup71_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i = icmp eq ptr %p, null
  %vlgrp.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %v.0162 = phi i32 [ %conv19, %for.body.lr.ph ], [ %inc41, %for.inc.for.body_crit_edge ]
  %t.0161 = phi i32 [ %18, %for.body.lr.ph ], [ %inc137, %for.inc.for.body_crit_edge ]
  %v_end.0158 = phi ptr [ null, %for.body.lr.ph ], [ %v_end.2.ph, %for.inc.for.body_crit_edge ]
  %v_start.0154 = phi ptr [ null, %for.body.lr.ph ], [ %v_start.3.ph, %for.inc.for.body_crit_edge ]
  %conv32 = trunc i32 %v.0162 to i16
  br i1 %tobool.not.i, label %for.body.cleanup71_crit_edge, label %if.end.i

for.body.cleanup71_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end.i:                                         ; preds = %for.body
  %21 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %cmd, label %if.end.i.if.end39_crit_edge [
    i32 19, label %sw.bb.i
    i32 17, label %sw.bb4.i
  ]

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.bb.i:                                          ; preds = %if.end.i
  %call.i = tail call i32 @nbp_vlan_tunnel_info_add(ptr noundef nonnull %p, i16 noundef zeroext %conv32, i32 noundef %t.0161) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %sw.bb.i.if.then37_crit_edge, label %sw.bb.i.for.end_crit_edge

sw.bb.i.for.end_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

sw.bb.i.if.then37_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

sw.bb4.i:                                         ; preds = %if.end.i
  %call5.i = tail call i32 @nbp_vlan_tunnel_info_delete(ptr noundef nonnull %p, i16 noundef zeroext %conv32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %sw.bb4.i.if.then37_crit_edge, label %sw.bb4.i.if.end39_crit_edge

sw.bb4.i.if.end39_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.bb4.i.if.then37_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

if.then37:                                        ; preds = %sw.bb4.i.if.then37_crit_edge, %sw.bb.i.if.then37_crit_edge
  %22 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %changed, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %sw.bb4.i.if.end39_crit_edge, %if.end.i.if.end39_crit_edge
  %tobool40 = phi i1 [ true, %if.then37 ], [ false, %sw.bb4.i.if.end39_crit_edge ], [ false, %if.end.i.if.end39_crit_edge ]
  %inc137 = add i32 %t.0161, 1
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i.i, label %if.end39.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true.i.i

if.end39.nbp_vlan_group.exit.i_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit.i

land.lhs.true.i.i:                                ; preds = %if.end39
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.nbp_vlan_group.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.nbp_vlan_group.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.nbp_vlan_group.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1477, ptr noundef nonnull @.str.7) #6
  br label %nbp_vlan_group.exit.i

nbp_vlan_group.exit.i:                            ; preds = %if.then.i.i, %land.lhs.true2.i.i.nbp_vlan_group.exit.i_crit_edge, %land.lhs.true.i.i.nbp_vlan_group.exit.i_crit_edge, %if.end39.nbp_vlan_group.exit.i_crit_edge
  %23 = ptrtoint ptr %vlgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vlgrp.i.i, align 8
  %tobool.not.i108 = icmp eq ptr %24, null
  br i1 %tobool.not.i108, label %nbp_vlan_group.exit.i.for.inc_crit_edge, label %if.end.i109

nbp_vlan_group.exit.i.for.inc_crit_edge:          ; preds = %nbp_vlan_group.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i109:                                      ; preds = %nbp_vlan_group.exit.i
  %call1.i = tail call ptr @br_vlan_find(ptr noundef nonnull %24, i16 noundef zeroext %conv32) #6
  %tobool2.not.i = icmp eq ptr %v_start.0154, null
  br i1 %tobool2.not.i, label %if.end.i109.out_init.i_crit_edge, label %if.end4.i

if.end.i109.out_init.i_crit_edge:                 ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_init.i

if.end4.i:                                        ; preds = %if.end.i109
  %tobool5.not.i = icmp ne ptr %call1.i, null
  %25 = and i1 %tobool40, %tobool5.not.i
  br i1 %25, label %land.lhs.true8.i, label %if.end4.i.if.end12.i_crit_edge

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true8.i:                                 ; preds = %if.end4.i
  %call9.i = tail call zeroext i1 @br_vlan_can_enter_range(ptr noundef nonnull %call1.i, ptr noundef %v_end.0158) #6
  br i1 %call9.i, label %land.lhs.true8.i.for.inc_crit_edge, label %land.lhs.true8.i.if.end12.i_crit_edge

land.lhs.true8.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true8.i.for.inc_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12.i:                                       ; preds = %land.lhs.true8.i.if.end12.i_crit_edge, %if.end4.i.if.end12.i_crit_edge
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 8
  %vid.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_start.0154, i32 0, i32 2
  %28 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid.i, align 8
  %vid13.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_end.0158, i32 0, i32 2
  %30 = ptrtoint ptr %vid13.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid13.i, align 8
  tail call void @br_vlan_notify(ptr noundef %27, ptr noundef nonnull %p, i16 noundef zeroext %29, i16 noundef zeroext %31, i32 noundef 112) #6
  br label %out_init.i

out_init.i:                                       ; preds = %if.end12.i, %if.end.i109.out_init.i_crit_edge
  %spec.select.i = select i1 %tobool40, ptr %call1.i, ptr null
  br label %for.inc

for.inc:                                          ; preds = %out_init.i, %land.lhs.true8.i.for.inc_crit_edge, %nbp_vlan_group.exit.i.for.inc_crit_edge
  %v_start.3.ph = phi ptr [ %v_start.0154, %land.lhs.true8.i.for.inc_crit_edge ], [ %spec.select.i, %out_init.i ], [ %v_start.0154, %nbp_vlan_group.exit.i.for.inc_crit_edge ]
  %v_end.2.ph = phi ptr [ %call1.i, %land.lhs.true8.i.for.inc_crit_edge ], [ %spec.select.i, %out_init.i ], [ %v_end.0158, %nbp_vlan_group.exit.i.for.inc_crit_edge ]
  %inc41 = add nuw nsw i32 %v.0162, 1
  %32 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid, align 4
  %conv29 = zext i16 %33 to i32
  %cmp30.not.not = icmp ult i32 %v.0162, %conv29
  br i1 %cmp30.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb.i.for.end_crit_edge
  %v_start.0.lcssa = phi ptr [ %v_start.3.ph, %for.inc.for.end_crit_edge ], [ %v_start.0154, %sw.bb.i.for.end_crit_edge ]
  %v_end.0.lcssa = phi ptr [ %v_end.2.ph, %for.inc.for.end_crit_edge ], [ %v_end.0158, %sw.bb.i.for.end_crit_edge ]
  %err.1 = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ %call.i, %sw.bb.i.for.end_crit_edge ]
  %tobool42.not = icmp eq ptr %v_start.0.lcssa, null
  %tobool43.not = icmp eq ptr %v_end.0.lcssa, null
  %or.cond = select i1 %tobool42.not, i1 true, i1 %tobool43.not
  br i1 %or.cond, label %for.end.if.end47_crit_edge, label %if.then44

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %vid45 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_start.0.lcssa, i32 0, i32 2
  %34 = ptrtoint ptr %vid45 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vid45, align 8
  %vid46 = getelementptr inbounds %struct.net_bridge_vlan, ptr %v_end.0.lcssa, i32 0, i32 2
  %36 = ptrtoint ptr %vid46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vid46, align 8
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef nonnull %p, i16 noundef zeroext %35, i16 noundef zeroext %37, i32 noundef 112) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %for.end.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool48.not = icmp eq i32 %err.1, 0
  br i1 %tobool48.not, label %cleanup51, label %if.end47.cleanup71_crit_edge

if.end47.cleanup71_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

cleanup51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %tinfo_last to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %tinfo_last, align 4
  %39 = ptrtoint ptr %tinfo_curr to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 0, ptr %tinfo_curr, align 4
  br label %cleanup71

if.else57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool59.not = icmp eq i16 %9, 0
  br i1 %tobool59.not, label %if.end61, label %if.else57.cleanup71_crit_edge

if.else57.cleanup71_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end61:                                         ; preds = %if.else57
  %vid62 = getelementptr inbounds %struct.vtunnel_info, ptr %tinfo_curr, i32 0, i32 1
  %40 = ptrtoint ptr %vid62 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid62, align 4
  %42 = ptrtoint ptr %tinfo_curr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tinfo_curr, align 4
  %tobool.not.i111 = icmp eq ptr %p, null
  br i1 %tobool.not.i111, label %if.end61.cleanup71_crit_edge, label %if.end.i112

if.end61.cleanup71_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end.i112:                                      ; preds = %if.end61
  %44 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %cmd, label %if.end.i112.if.end67_crit_edge [
    i32 19, label %sw.bb.i115
    i32 17, label %sw.bb4.i118
  ]

if.end.i112.if.end67_crit_edge:                   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

sw.bb.i115:                                       ; preds = %if.end.i112
  %call.i113 = tail call i32 @nbp_vlan_tunnel_info_add(ptr noundef nonnull %p, i16 noundef zeroext %41, i32 noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool1.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool1.not.i114, label %sw.bb.i115.cleanup.sink.split.i119_crit_edge, label %sw.bb.i115.cleanup71_crit_edge

sw.bb.i115.cleanup71_crit_edge:                   ; preds = %sw.bb.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

sw.bb.i115.cleanup.sink.split.i119_crit_edge:     ; preds = %sw.bb.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i119

sw.bb4.i118:                                      ; preds = %if.end.i112
  %call5.i116 = tail call i32 @nbp_vlan_tunnel_info_delete(ptr noundef nonnull %p, i16 noundef zeroext %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i116)
  %tobool6.not.i117 = icmp eq i32 %call5.i116, 0
  br i1 %tobool6.not.i117, label %sw.bb4.i118.cleanup.sink.split.i119_crit_edge, label %sw.bb4.i118.if.end67_crit_edge

sw.bb4.i118.if.end67_crit_edge:                   ; preds = %sw.bb4.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

sw.bb4.i118.cleanup.sink.split.i119_crit_edge:    ; preds = %sw.bb4.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i119

cleanup.sink.split.i119:                          ; preds = %sw.bb4.i118.cleanup.sink.split.i119_crit_edge, %sw.bb.i115.cleanup.sink.split.i119_crit_edge
  %45 = ptrtoint ptr %changed to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %changed, align 1
  br label %if.end67

if.end67:                                         ; preds = %cleanup.sink.split.i119, %sw.bb4.i118.if.end67_crit_edge, %if.end.i112.if.end67_crit_edge
  %46 = ptrtoint ptr %vid62 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vid62, align 4
  tail call void @br_vlan_notify(ptr noundef %br, ptr noundef nonnull %p, i16 noundef zeroext %47, i16 noundef zeroext 0, i32 noundef 112) #6
  %48 = ptrtoint ptr %tinfo_last to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 0, ptr %tinfo_last, align 4
  %49 = ptrtoint ptr %tinfo_curr to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %tinfo_curr, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %if.end67, %sw.bb.i115.cleanup71_crit_edge, %if.end61.cleanup71_crit_edge, %if.else57.cleanup71_crit_edge, %cleanup51, %if.end47.cleanup71_crit_edge, %for.body.cleanup71_crit_edge, %for.cond.preheader.cleanup71_crit_edge, %if.end16.cleanup71_crit_edge, %if.then10.cleanup71_crit_edge, %if.end, %if.then.cleanup71_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup71_crit_edge ], [ -22, %if.else57.cleanup71_crit_edge ], [ -22, %if.end61.cleanup71_crit_edge ], [ %call.i113, %sw.bb.i115.cleanup71_crit_edge ], [ 0, %cleanup51 ], [ 0, %if.end67 ], [ 0, %if.end ], [ %err.1, %if.end47.cleanup71_crit_edge ], [ -22, %if.end16.cleanup71_crit_edge ], [ -22, %if.then10.cleanup71_crit_edge ], [ -1, %for.cond.preheader.cleanup71_crit_edge ], [ -22, %for.body.cleanup71_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_notify(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_fill_vlan_tinfo(ptr noundef %skb, i16 noundef zeroext %vid, i64 noundef %tunnel_id, i16 noundef zeroext %flags) unnamed_addr #2 align 64 {
entry:
  %tmp.i25 = alloca i16, align 2
  %tmp.i23 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not29 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not29
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = trunc i64 %tunnel_id to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i23) #6
  %3 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %vid, ptr %tmp.i23, align 2
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool7.not = icmp eq i32 %call.i24, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i25) #6
  %4 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %flags, ptr %tmp.i25, align 2
  %call.i26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i25) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool11.not = icmp eq i32 %call.i26, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.if.then.i.i_crit_edge

if.end9.if.then.i.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i28 = trunc i32 %sub.ptr.sub.i to i16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i28, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end9.if.then.i.i_crit_edge, %if.end5.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %9, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !33

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end13 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_vlan_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_can_enter_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !12, !13, !15, !17, !19, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/bridge/br_netlink_tunnel.c", i32 157, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/bridge/br_netlink_tunnel.c", i32 44, i32 2}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/net/netlink.h", i32 991, i32 3}
!15 = !{ptr @vlan_tunnel_policy, !16, !"vlan_tunnel_policy", i1 false, i1 false}
!16 = !{!"../net/bridge/br_netlink_tunnel.c", i32 190, i32 32}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149923529}
!32 = !{i64 2149923795}
!33 = !{!"branch_weights", i32 1, i32 2000}
