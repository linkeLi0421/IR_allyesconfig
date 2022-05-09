; ModuleID = '/llk/IR_all_yes/net/bridge/br_vlan_tunnel.c_pt.bc'
source_filename = "../net/bridge/br_vlan_tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_bridge_vlan = type { %struct.rhash_head, %struct.rhash_head, i16, i16, i16, i8, ptr, %union.anon.2, %union.anon.154, %struct.br_tunnel_info, %union.anon.159, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.2 = type { ptr }
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
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.155 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.155 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.156, i16, i8, i8, i32, i16, i16 }
%union.anon.156 = type { %struct.anon.158 }
%struct.anon.158 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
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
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.151, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.151 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@br_vlan_tunnel_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 3, i16 8, i16 32, i16 4, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @br_vlan_tunid_cmp }, [36 x i8] zeroinitializer }, align 32
@nbp_vlan_tunnel_info_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bridge/br_vlan_tunnel.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@nbp_vlan_tunnel_info_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nbp_vlan_tunnel_info_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_handle_egress_vlan_tunnel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@vlan_tunnel_info_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@__vlan_tunnel_info_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"br_vlan_tunnel_rht_params\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 28, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 103, i32 2 }
@___asan_gen_.29 = private constant [31 x i8] c"../net/bridge/br_vlan_tunnel.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 204, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1076, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1019, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1477, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1011, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @br_vlan_tunnel_rht_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.12, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_vlan_tunnel_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_tunnel_info_del(ptr noundef %vg, ptr noundef %vlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel_dst = getelementptr inbounds %struct.net_bridge_vlan, ptr %vlan, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %tunnel_dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tunnel_dst, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %tunnel_hash = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1
  %tnode = getelementptr inbounds %struct.net_bridge_vlan, ptr %vlan, i32 0, i32 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %tunnel_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tunnel_hash, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tunnel_hash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1076, ptr noundef nonnull @.str.2) #7
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1, i32 3, i32 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tnode, i32 32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %7, %do.end10.i.i ], [ %42, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %9 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %11, -559038729
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i = add i32 %13, %add1.i.i.i.i.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %15, %add1.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #7
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #7
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #7
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #7
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #7
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #7
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #7
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i3.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !70

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #7
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #7
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.7) #7
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %20 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cond.i6.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %and.i.i.i.i.i = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %23 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %23, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %24 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %tnode, %24
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %29, %tnode
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.9, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1032, ptr noundef nonnull @.str.7) #7
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %25 = ptrtoint ptr %tnode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tnode, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %27 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #7
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %26) #7
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %29, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %24, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.11, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1004, ptr noundef nonnull @.str.7) #7
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %28 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %he.022.i21.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #7
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #7
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #7, !srcloc !72
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1, i32 3, i32 6
  %32 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool161.not.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #7
  %34 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %nelems.i.i.i, align 4
  %36 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %37, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %35, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1, i32 3, i32 5
  %38 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %37, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !74

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %run_work.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %run_work.i.i.i) #7
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tunnel_hash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.4, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_remove_fast.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1085, ptr noundef nonnull @.str.2) #7
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %42, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %43 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i11.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %rhashtable_remove_fast.exit.vlan_tunnel_info_release.exit_crit_edge, label %land.lhs.true.i

rhashtable_remove_fast.exit.vlan_tunnel_info_release.exit_crit_edge: ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlan_tunnel_info_release.exit

land.lhs.true.i:                                  ; preds = %rhashtable_remove_fast.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.vlan_tunnel_info_release.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.vlan_tunnel_info_release.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlan_tunnel_info_release.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b30.i = load i1, ptr @vlan_tunnel_info_release.__warned, align 1
  br i1 %.b30.i, label %land.lhs.true2.i.vlan_tunnel_info_release.exit_crit_edge, label %if.then.i

land.lhs.true2.i.vlan_tunnel_info_release.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlan_tunnel_info_release.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vlan_tunnel_info_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.7) #7
  br label %vlan_tunnel_info_release.exit

vlan_tunnel_info_release.exit:                    ; preds = %if.then.i, %land.lhs.true2.i.vlan_tunnel_info_release.exit_crit_edge, %land.lhs.true.i.vlan_tunnel_info_release.exit_crit_edge, %rhashtable_remove_fast.exit.vlan_tunnel_info_release.exit_crit_edge
  %tinfo.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %vlan, i32 0, i32 9
  %47 = ptrtoint ptr %tunnel_dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tunnel_dst, align 8
  %49 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store volatile i64 0, ptr %tinfo.i, align 8
  store volatile ptr null, ptr %tunnel_dst, align 8
  tail call void @dst_release(ptr noundef %48) #7
  br label %return

return:                                           ; preds = %vlan_tunnel_info_release.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nbp_vlan_tunnel_info_add(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid, i32 noundef %tun_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @nbp_vlan_tunnel_info_add.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !70

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_tunnel_info_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 103) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end29.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1477, ptr noundef nonnull @.str.7) #7
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.end29.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 8
  %call38 = tail call ptr @br_vlan_find(ptr noundef %1, i16 noundef zeroext %vid) #7
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %nbp_vlan_group.exit.cleanup_crit_edge, label %if.end41

nbp_vlan_group.exit.cleanup_crit_edge:            ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %nbp_vlan_group.exit
  %call.i49 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i49, label %if.end41.do.end.i_crit_edge, label %land.lhs.true.i52

if.end41.do.end.i_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i52:                                ; preds = %if.end41
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.do.end.i_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i52.do.end.i_crit_edge:             ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i52
  %.b85.i = load i1, ptr @__vlan_tunnel_info_add.__warned, align 1
  br i1 %.b85.i, label %land.lhs.true2.i53.do.end.i_crit_edge, label %if.then.i54

land.lhs.true2.i53.do.end.i_crit_edge:            ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__vlan_tunnel_info_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 66, ptr noundef nonnull @.str.7) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i54, %land.lhs.true2.i53.do.end.i_crit_edge, %land.lhs.true.i52.do.end.i_crit_edge, %if.end41.do.end.i_crit_edge
  %tinfo.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call38, i32 0, i32 9
  %tunnel_dst.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call38, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %tunnel_dst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunnel_dst.i, align 8
  %conv.i.i = zext i32 %tun_id to i64
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %do.end.i
  %call.i.i.i = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end7.i.cleanup_crit_edge, label %if.end11.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %options_len.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %options_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %options_len.i.i.i, align 8
  %mode.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 3
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i.i, ptr %u.i.i, align 8
  %u.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %tos3.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %tos3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tos3.i.i.i, align 2
  %ttl4.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %ttl4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ttl4.i.i.i, align 1
  %label5.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %label5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %label5.i.i.i, align 4
  %tun_flags6.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %9 = call ptr @memset(ptr %u.i.i.i, i32 0, i32 32)
  %10 = ptrtoint ptr %tun_flags6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %tun_flags6.i.i.i, align 8
  %tp_src7.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %11 = ptrtoint ptr %tp_src7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %tp_src7.i.i.i, align 8
  %12 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %mode.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  %13 = ptrtoint ptr %tunnel_dst.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call.i.i.i, ptr %tunnel_dst.i, align 8
  %14 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %conv.i.i, ptr %tinfo.i, align 8
  %tunnel_hash.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1
  %tnode.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call38, i32 0, i32 1
  %head_offset.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 3, i32 3
  %obj_hashfn.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 3, i32 8
  %15 = ptrtoint ptr %obj_hashfn.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %obj_hashfn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %do.end8.i.i, label %do.body3.i.i, !prof !70

do.body3.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #7, !srcloc !77
  unreachable

do.end8.i.i:                                      ; preds = %if.end11.i
  %17 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %tnode.i, i32 %idx.neg.i.i.i
  %key_offset.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 3, i32 2
  %19 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %key_offset.i.i, align 4
  %conv.i86.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i86.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i.i, label %do.end8.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.end8.i.i.rcu_read_lock.exit.i.i.i_crit_edge:   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end8.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %do.end8.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %25 = ptrtoint ptr %tunnel_hash.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %tunnel_hash.i, align 4
  %call.i.i87.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tunnel_hash.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %tobool.not.i.i88.i = icmp eq i32 %call.i.i87.i, 0
  br i1 %tobool.not.i.i88.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 715, ptr noundef nonnull @.str.2) #7
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge
  %27 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %28 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tnode.i, i32 %idx.neg.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 32
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %30, -559038729
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 1
  %31 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i = add i32 %32, %add1.i.i.i.i.i.i.i
  %33 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %34, %add1.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #7
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #7
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #7
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #7
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #7
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #7
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #7
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %26, align 128
  %sub.i.i.i.i.i.i = add i32 %36, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 1
  %37 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i5.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i5.i.i.i, label %cond.false.i8.i.i.i, label %cond.true.i7.i.i.i, !prof !70

cond.true.i7.i.i.i:                               ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i6.i.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %tunnel_hash.i, ptr noundef %26, i32 noundef %and.i3.i.i.i.i.i) #7
  br label %rht_bucket_insert.exit.i.i.i

cond.false.i8.i.i.i:                              ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %26, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i

rht_bucket_insert.exit.i.i.i:                     ; preds = %cond.false.i8.i.i.i, %cond.true.i7.i.i.i
  %cond.i9.i.i.i = phi ptr [ %call.i6.i.i.i, %cond.true.i7.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i8.i.i.i ]
  %tobool17.not.i.i.i = icmp eq ptr %cond.i9.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge, label %if.end19.i.i.i

rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %rht_bucket_insert.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i.i) #7
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %tobool25.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool25.not.i.i.i, label %if.end30.i.i.i, label %if.end19.i.i.i.slow_path.i.i.i_crit_edge, !prof !70

if.end19.i.i.i.slow_path.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %slow_path.i.i.i

slow_path.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, %for.end.i.i.i.slow_path.i.i.i_crit_edge, %if.end19.i.i.i.slow_path.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i.i) #7
  %call.i11.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i11.i.i.i, label %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i

slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %slow_path.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i14.i.i.i:                          ; preds = %slow_path.i.i.i
  %call1.i12.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i.i)
  %tobool.not.i13.i.i.i = icmp eq i32 %call1.i12.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i, label %land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i16.i.i.i

land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i16.i.i.i:                         ; preds = %land.lhs.true.i14.i.i.i
  %.b4.i15.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i.i, label %land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i17.i.i.i

land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i.i

if.then.i17.i.i.i:                                ; preds = %land.lhs.true2.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i17.i.i.i, %land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %41 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i18.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i18.i.i.i to ptr
  %preempt_count.i.i.i.i19.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i.i, align 4
  %sub.i.i.i20.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i20.i.i.i, ptr %preempt_count.i.i.i.i19.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %call29.i.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %tunnel_hash.i, ptr noundef %add.ptr.i.i, ptr noundef %tnode.i) #7
  br label %rhashtable_lookup_insert_fast.exit.i

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call.i21.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %26, i32 noundef %and.i3.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i.i)
  %tobool.not.i22.i.i.i = icmp eq i32 %call.i21.i.i.i, 0
  br i1 %tobool.not.i22.i.i.i, label %land.lhs.true.i24.i.i.i, label %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge:      ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i24.i.i.i:                          ; preds = %if.end30.i.i.i
  %call1.i23.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i23.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i24.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i25.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit.i.i.i

if.then.i25.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.7) #7
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i25.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %45 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond.i9.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %and.i.i.i.i.i = and i32 %47, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %48 = ptrtoint ptr %cond.i9.i.i.i to i32
  %or.i.i.i.i.i = or i32 %48, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i84.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i.i)
  %tobool.i.not85.i.i.i = icmp eq i32 %and.i84.i.i.i, 0
  br i1 %tobool.i.not85.i.i.i, label %for.body.lr.ph.i.i.i, label %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge

rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge:     ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %rht_ptr.exit.i.i.i
  %49 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %tobool35.not.i.i.i = icmp eq ptr %add.ptr.i.i, null
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.end147.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %head.087.i.i.i = phi ptr [ %49, %for.body.lr.ph.i.i.i ], [ %57, %do.end147.i.i.i.for.body.i.i.i_crit_edge ]
  %elasticity.086.i.i.i = phi i32 [ 16, %for.body.lr.ph.i.i.i ], [ %dec.i.i.i, %do.end147.i.i.i.for.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %elasticity.086.i.i.i, -1
  br i1 %tobool35.not.i.i.i, label %for.body.i.i.i.do.body136.i.i.i_crit_edge, label %lor.lhs.false36.i.i.i

for.body.i.i.i.do.body136.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body136.i.i.i

lor.lhs.false36.i.i.i:                            ; preds = %for.body.i.i.i
  %50 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i29.i.i.i = zext i16 %51 to i32
  %idx.neg.i30.i.i.i = sub nsw i32 0, %conv.i29.i.i.i
  %add.ptr.i31.i.i.i = getelementptr i8, ptr %head.087.i.i.i, i32 %idx.neg.i30.i.i.i
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr.i.i, align 8
  %tinfo.i90.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %add.ptr.i31.i.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %tinfo.i90.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tinfo.i90.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %53)
  %cmp.i91.not.i = icmp eq i64 %55, %53
  br i1 %cmp.i91.not.i, label %lor.lhs.false36.i.i.i.out_unlock.i.i.i_crit_edge, label %lor.lhs.false36.i.i.i.do.body136.i.i.i_crit_edge

lor.lhs.false36.i.i.i.do.body136.i.i.i_crit_edge: ; preds = %lor.lhs.false36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body136.i.i.i

lor.lhs.false36.i.i.i.out_unlock.i.i.i_crit_edge: ; preds = %lor.lhs.false36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i.i.i

do.body136.i.i.i:                                 ; preds = %lor.lhs.false36.i.i.i.do.body136.i.i.i_crit_edge, %for.body.i.i.i.do.body136.i.i.i_crit_edge
  %call137.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %26, i32 noundef %and.i3.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i)
  %tobool138.not.i.i.i = icmp eq i32 %call137.i.i.i, 0
  br i1 %tobool138.not.i.i.i, label %land.lhs.true139.i.i.i, label %do.body136.i.i.i.do.end147.i.i.i_crit_edge

do.body136.i.i.i.do.end147.i.i.i_crit_edge:       ; preds = %do.body136.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end147.i.i.i

land.lhs.true139.i.i.i:                           ; preds = %do.body136.i.i.i
  %call140.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %call140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, label %land.lhs.true142.i.i.i

land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end147.i.i.i

land.lhs.true142.i.i.i:                           ; preds = %land.lhs.true139.i.i.i
  %.b2811.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.15, align 1
  br i1 %.b2811.i.i.i, label %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, label %if.then144.i.i.i

land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_insert_fast.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 732, ptr noundef nonnull @.str.7) #7
  br label %do.end147.i.i.i

do.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, %do.body136.i.i.i.do.end147.i.i.i_crit_edge
  %56 = ptrtoint ptr %head.087.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.087.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %and.i.i.i.i = and i32 %58, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.end147.i.i.i.for.body.i.i.i_crit_edge, label %for.end.i.i.i

do.end147.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i)
  %phi.cmp.i.i.i = icmp slt i32 %dec.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %for.end.i.i.i.slow_path.i.i.i_crit_edge, label %for.end.i.i.i.if.end152.i.i.i_crit_edge

for.end.i.i.i.if.end152.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152.i.i.i

for.end.i.i.i.slow_path.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %slow_path.i.i.i

if.end152.i.i.i:                                  ; preds = %for.end.i.i.i.if.end152.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge
  %nelems.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 8
  %call.i.i.i39.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #7
  %59 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %max_elems.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %max_elems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_elems.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i.not.i.i.i = icmp ult i32 %60, %62
  br i1 %cmp.i.not.i.i.i, label %if.end162.i.i.i, label %if.end152.i.i.i.out_unlock.i.i.i_crit_edge, !prof !70

if.end152.i.i.i.out_unlock.i.i.i_crit_edge:       ; preds = %if.end152.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i.i.i

if.end162.i.i.i:                                  ; preds = %if.end152.i.i.i
  %call.i.i.i41.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #7
  %63 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %65 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %26, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.i42.i.i.i = icmp ugt i32 %64, %66
  br i1 %cmp.i42.i.i.i, label %rht_grow_above_100.exit.i.i.i, label %if.end162.i.i.i.if.end171.i.i.i_crit_edge

if.end162.i.i.i.if.end171.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i:                    ; preds = %if.end162.i.i.i
  %max_size.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 3, i32 4
  %67 = ptrtoint ptr %max_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i43.i.i.i = icmp eq i32 %68, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp4.i.i.i.i = icmp ult i32 %66, %68
  %spec.select.i.i.i.i = select i1 %tobool.not.i43.i.i.i, i1 true, i1 %cmp4.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, !prof !74

rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %slow_path.i.i.i

if.end171.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, %if.end162.i.i.i.if.end171.i.i.i_crit_edge
  %call.i44.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %26, i32 noundef %and.i3.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i.i)
  %tobool.not.i45.i.i.i = icmp eq i32 %call.i44.i.i.i, 0
  br i1 %tobool.not.i45.i.i.i, label %land.lhs.true.i48.i.i.i, label %if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge

if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge:   ; preds = %if.end171.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit56.i.i.i

land.lhs.true.i48.i.i.i:                          ; preds = %if.end171.i.i.i
  %call1.i46.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i.i)
  %tobool2.not.i47.i.i.i = icmp eq i32 %call1.i46.i.i.i, 0
  br i1 %tobool2.not.i47.i.i.i, label %land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, label %land.lhs.true3.i50.i.i.i

land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit56.i.i.i

land.lhs.true3.i50.i.i.i:                         ; preds = %land.lhs.true.i48.i.i.i
  %.b7.i49.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i.i, label %land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, label %if.then.i51.i.i.i

land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr.exit56.i.i.i

if.then.i51.i.i.i:                                ; preds = %land.lhs.true3.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.7) #7
  br label %rht_ptr.exit56.i.i.i

rht_ptr.exit56.i.i.i:                             ; preds = %if.then.i51.i.i.i, %land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, %land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, %if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge
  %69 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cond.i9.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  %and.i.i52.i.i.i = and i32 %71, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i.i)
  %tobool.not.i.i53.i.i.i = icmp eq i32 %and.i.i52.i.i.i, 0
  %cond.i.i55.i.i.i = select i1 %tobool.not.i.i53.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i52.i.i.i
  %72 = inttoptr i32 %cond.i.i55.i.i.i to ptr
  %73 = ptrtoint ptr %tnode.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %tnode.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #7
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #7, !srcloc !78
  tail call fastcc void @rht_assign_unlock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i.i, ptr noundef %tnode.i) #7
  %call.i.i.i58.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #7
  %75 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %77 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %26, align 128
  %div8.i.i.i.i = lshr i32 %78, 2
  %mul.i.i.i.i = mul nuw i32 %div8.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %mul.i.i.i.i)
  %cmp.i59.i.i.i = icmp ugt i32 %76, %mul.i.i.i.i
  br i1 %cmp.i59.i.i.i, label %rht_grow_above_75.exit.i.i.i, label %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge

rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge:         ; preds = %rht_ptr.exit56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i.i

rht_grow_above_75.exit.i.i.i:                     ; preds = %rht_ptr.exit56.i.i.i
  %max_size.i60.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 3, i32 4
  %79 = ptrtoint ptr %max_size.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_size.i60.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i61.i.i.i = icmp eq i32 %80, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp4.i62.i.i.i = icmp ult i32 %78, %80
  %spec.select.i63.i.i.i = select i1 %tobool.not.i61.i.i.i, i1 true, i1 %cmp4.i62.i.i.i
  br i1 %spec.select.i63.i.i.i, label %if.then207.i.i.i, label %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i.i

if.then207.i.i.i:                                 ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %run_work.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 1, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %run_work.i.i.i) #7
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %out_unlock.i.i.i, %if.then207.i.i.i, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge, %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge
  %data.2.i.i.i = phi ptr [ %data.3.i.i.i, %out_unlock.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %if.then207.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge ]
  %call.i66.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i66.i.i.i, label %out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %land.lhs.true.i69.i.i.i

out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit76.i.i.i

land.lhs.true.i69.i.i.i:                          ; preds = %out.i.i.i
  %call1.i67.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i.i)
  %tobool.not.i68.i.i.i = icmp eq i32 %call1.i67.i.i.i, 0
  br i1 %tobool.not.i68.i.i.i, label %land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %land.lhs.true2.i71.i.i.i

land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit76.i.i.i

land.lhs.true2.i71.i.i.i:                         ; preds = %land.lhs.true.i69.i.i.i
  %.b4.i70.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i.i, label %land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %if.then.i72.i.i.i

land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit76.i.i.i

if.then.i72.i.i.i:                                ; preds = %land.lhs.true2.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit76.i.i.i

rcu_read_unlock.exit76.i.i.i:                     ; preds = %if.then.i72.i.i.i, %land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, %land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, %out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %82 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i73.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i73.i.i.i to ptr
  %preempt_count.i.i.i.i74.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i.i, align 4
  %sub.i.i.i75.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i75.i.i.i, ptr %preempt_count.i.i.i.i74.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %rhashtable_lookup_insert_fast.exit.i

out_unlock.i.i.i:                                 ; preds = %if.end152.i.i.i.out_unlock.i.i.i_crit_edge, %lor.lhs.false36.i.i.i.out_unlock.i.i.i_crit_edge
  %data.3.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %if.end152.i.i.i.out_unlock.i.i.i_crit_edge ], [ %add.ptr.i31.i.i.i, %lor.lhs.false36.i.i.i.out_unlock.i.i.i_crit_edge ]
  tail call fastcc void @rht_unlock(ptr noundef %26, ptr noundef nonnull %cond.i9.i.i.i) #7
  br label %out.i.i.i

rhashtable_lookup_insert_fast.exit.i:             ; preds = %rcu_read_unlock.exit76.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.i.i.i = phi ptr [ %call29.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %data.2.i.i.i, %rcu_read_unlock.exit76.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  %86 = ptrtoint ptr %retval.0.i.i.i to i32
  %cmp.i.i = icmp eq ptr %retval.0.i.i.i, null
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 -17
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %86, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool65.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool65.not.i, label %rhashtable_lookup_insert_fast.exit.i.cleanup_crit_edge, label %out.i

rhashtable_lookup_insert_fast.exit.i.cleanup_crit_edge: ; preds = %rhashtable_lookup_insert_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out.i:                                            ; preds = %rhashtable_lookup_insert_fast.exit.i
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i.i, label %out.i.vlan_tunnel_info_release.exit.i_crit_edge, label %land.lhs.true.i.i

out.i.vlan_tunnel_info_release.exit.i_crit_edge:  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlan_tunnel_info_release.exit.i

land.lhs.true.i.i:                                ; preds = %out.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i89.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i89.i, label %land.lhs.true.i.i.vlan_tunnel_info_release.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.vlan_tunnel_info_release.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlan_tunnel_info_release.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b30.i.i = load i1, ptr @vlan_tunnel_info_release.__warned, align 1
  br i1 %.b30.i.i, label %land.lhs.true2.i.i.vlan_tunnel_info_release.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.vlan_tunnel_info_release.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlan_tunnel_info_release.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vlan_tunnel_info_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.7) #7
  br label %vlan_tunnel_info_release.exit.i

vlan_tunnel_info_release.exit.i:                  ; preds = %if.then.i.i, %land.lhs.true2.i.i.vlan_tunnel_info_release.exit.i_crit_edge, %land.lhs.true.i.i.vlan_tunnel_info_release.exit.i_crit_edge, %out.i.vlan_tunnel_info_release.exit.i_crit_edge
  %87 = ptrtoint ptr %tunnel_dst.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tunnel_dst.i, align 8
  %89 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store volatile i64 0, ptr %tinfo.i, align 8
  store volatile ptr null, ptr %tunnel_dst.i, align 8
  tail call void @dst_release(ptr noundef %88) #7
  br label %cleanup

cleanup:                                          ; preds = %vlan_tunnel_info_release.exit.i, %rhashtable_lookup_insert_fast.exit.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %nbp_vlan_group.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %nbp_vlan_group.exit.cleanup_crit_edge ], [ %retval.0.i.i, %vlan_tunnel_info_release.exit.i ], [ -17, %do.end.i.cleanup_crit_edge ], [ 0, %rhashtable_lookup_insert_fast.exit.i.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_vlan_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nbp_vlan_tunnel_info_delete(ptr nocapture noundef readonly %port, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @nbp_vlan_tunnel_info_delete.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !70

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_tunnel_info_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 121) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end29.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1477, ptr noundef nonnull @.str.7) #7
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.end29.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 8
  %call38 = tail call ptr @br_vlan_find(ptr noundef %1, i16 noundef zeroext %vid) #7
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %nbp_vlan_group.exit.cleanup_crit_edge, label %if.end41

nbp_vlan_group.exit.cleanup_crit_edge:            ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vlan_tunnel_info_del(ptr noundef %1, ptr noundef nonnull %call38)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %nbp_vlan_group.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -2, %nbp_vlan_group.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nbp_vlan_tunnel_info_flush(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @nbp_vlan_tunnel_info_flush.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !70

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_tunnel_info_flush.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 145) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i, label %if.end29.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end29.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1477, ptr noundef nonnull @.str.7) #7
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.end29.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp.i, align 8
  %vlan_list.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan_list.i, align 4
  %cmp.not19.i = icmp eq ptr %3, %vlan_list.i
  br i1 %cmp.not19.i, label %nbp_vlan_group.exit.__vlan_tunnel_info_flush.exit_crit_edge, label %nbp_vlan_group.exit.for.body.i_crit_edge

nbp_vlan_group.exit.for.body.i_crit_edge:         ; preds = %nbp_vlan_group.exit
  br label %for.body.i

nbp_vlan_group.exit.__vlan_tunnel_info_flush.exit_crit_edge: ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__vlan_tunnel_info_flush.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %nbp_vlan_group.exit.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %3, %nbp_vlan_group.exit.for.body.i_crit_edge ]
  %vlan.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -556
  %4 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  tail call void @vlan_tunnel_info_del(ptr noundef %1, ptr noundef %vlan.0.i) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.body.i.__vlan_tunnel_info_flush.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.__vlan_tunnel_info_flush.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__vlan_tunnel_info_flush.exit

__vlan_tunnel_info_flush.exit:                    ; preds = %for.body.i.__vlan_tunnel_info_flush.exit_crit_edge, %nbp_vlan_group.exit.__vlan_tunnel_info_flush.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_tunnel_init(ptr noundef %vg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel_hash = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1
  %call = tail call i32 @rhashtable_init(ptr noundef %tunnel_hash, ptr noundef nonnull @br_vlan_tunnel_rht_params) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_tunnel_deinit(ptr noundef %vg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel_hash = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1
  tail call void @rhashtable_destroy(ptr noundef %tunnel_hash) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_handle_ingress_vlan_tunnel(ptr nocapture noundef %skb, ptr nocapture noundef readonly %p, ptr noundef %vg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !74

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %entry.skb_dst.exit.i.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.i.i.if.end.i_crit_edge:              ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %5 = inttoptr i32 %and25.i.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.i
  %type.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  br label %skb_tunnel_info.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %skb_dst.exit.i.i.if.end.i_crit_edge
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i29.i

if.end.i.skb_dst.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.lhs.true.i29.i:                              ; preds = %if.end.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i28.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i28.i, label %land.rhs.i.i, label %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge

land.lhs.true.i29.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i29.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !74

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge, %if.end.i.skb_dst.exit.i_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool2.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool2.not.i, label %skb_dst.exit.i.cleanup_crit_edge, label %land.lhs.true3.i

skb_dst.exit.i.cleanup_crit_edge:                 ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %skb_dst.exit.i
  %13 = inttoptr i32 %and25.i.i to ptr
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lwtstate.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %land.lhs.true5.i.cleanup_crit_edge [
    i16 2, label %land.lhs.true5.i.if.then15.i_crit_edge
    i16 4, label %land.lhs.true5.i.if.then15.i_crit_edge45
  ]

land.lhs.true5.i.if.then15.i_crit_edge45:         ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

land.lhs.true5.i.if.then15.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15.i:                                      ; preds = %land.lhs.true5.i.if.then15.i_crit_edge, %land.lhs.true5.i.if.then15.i_crit_edge45
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %15, i32 0, i32 7
  br label %skb_tunnel_info.exit

skb_tunnel_info.exit:                             ; preds = %if.then15.i, %if.then.i
  %retval.0.i = phi ptr [ %u.i, %if.then.i ], [ %data.i.i, %if.then15.i ]
  %tobool.not = icmp eq ptr %vg, null
  %tobool1.not = icmp eq ptr %retval.0.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %skb_tunnel_info.exit.cleanup_crit_edge, label %if.end

skb_tunnel_info.exit.cleanup_crit_edge:           ; preds = %skb_tunnel_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %skb_tunnel_info.exit
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %19 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %skb_vlan_tagged.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_vlan_tagged.exit:                             ; preds = %if.end
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %protocol.i, align 8
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %21, label %if.end4 [
    i16 -30552, label %skb_vlan_tagged.exit.cleanup_crit_edge
    i16 -32512, label %skb_vlan_tagged.exit.cleanup_crit_edge46
  ]

skb_vlan_tagged.exit.cleanup_crit_edge46:         ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_vlan_tagged.exit.cleanup_crit_edge:           ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %skb_vlan_tagged.exit
  %tunnel_hash = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %retval.0.i, align 8
  %tunnel_id.addr.sroa.0.0.extract.shift.i = lshr i64 %24, 32
  %tunnel_id.addr.sroa.0.0.extract.trunc.i = trunc i64 %tunnel_id.addr.sroa.0.0.extract.shift.i to i32
  %tunnel_id.addr.sroa.3.0.extract.trunc.i = trunc i64 %24 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i18 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i18, label %if.end4.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i20

if.end4.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i20:                            ; preds = %if.end4
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i19 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i19, label %land.lhs.true.i.i.i20.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i20.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i20
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i20.rcu_read_lock.exit.i.i_crit_edge, %if.end4.rcu_read_lock.exit.i.i_crit_edge
  %29 = ptrtoint ptr %tunnel_hash to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %tunnel_hash, align 4
  %call.i.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tunnel_hash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %call5.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i
  %call7.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end12.i.i.i.i_crit_edge, label %land.lhs.true9.i.i.i.i

land.lhs.true.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i.i

land.lhs.true9.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b92.i.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i.i, label %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 594, ptr noundef nonnull @.str.2) #7
  br label %do.end12.i.i.i.i

do.end12.i.i.i.i:                                 ; preds = %if.then.i.i.i.i, %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end12.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg, i32 0, i32 1, i32 3, i32 3
  br label %restart.i.i.i.i

restart.i.i.i.i:                                  ; preds = %do.end60.i.i.i.i.restart.i.i.i.i_crit_edge, %do.end12.i.i.i.i
  %tbl.0.i.i.i.i = phi ptr [ %30, %do.end12.i.i.i.i ], [ %51, %do.end60.i.i.i.i.restart.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %32, -559038729
  %add33.i.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i.i, %tunnel_id.addr.sroa.3.0.extract.trunc.i
  %add36.i.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i.i, %tunnel_id.addr.sroa.0.0.extract.trunc.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #7
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #7
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #7
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #7
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #7
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #7
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #7
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %33 = ptrtoint ptr %tbl.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl.0.i.i.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %34, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.false.i.i.i.i.i, label %cond.true.i.i.i.i.i, !prof !70

cond.true.i.i.i.i.i:                              ; preds = %restart.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i.i, i32 noundef %and.i3.i.i.i.i.i) #7
  br label %rht_bucket.exit.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %restart.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket.exit.i.i.i.i

rht_bucket.exit.i.i.i.i:                          ; preds = %cond.false.i.i.i.i.i, %cond.true.i.i.i.i.i
  %cond.i.i.i.i.i = phi ptr [ %call.i.i.i.i.i, %cond.true.i.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i.i.i.i.i ]
  %37 = ptrtoint ptr %cond.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %37, 1
  %38 = inttoptr i32 %or.i.i.i.i.i.i to ptr
  br label %do.body16.i.i.i.i

do.body16.i.i.i.i:                                ; preds = %do.cond34.i.i.i.i.do.body16.i.i.i.i_crit_edge, %rht_bucket.exit.i.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %39 = ptrtoint ptr %cond.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %cond.i.i.i.i.i, align 4
  %call.i93.i.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i.i)
  %tobool.not.i94.i.i.i.i = icmp eq i32 %call.i93.i.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %do.body16.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge

do.body16.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge: ; preds = %do.body16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr_rcu.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %do.body16.i.i.i.i
  %call2.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr_rcu.exit.i.i.i.i

land.lhs.true4.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b11.i.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rht_ptr_rcu.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 369, ptr noundef nonnull @.str.2) #7
  br label %rht_ptr_rcu.exit.i.i.i.i

rht_ptr_rcu.exit.i.i.i.i:                         ; preds = %if.then.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge, %do.body16.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i_crit_edge
  %41 = ptrtoint ptr %40 to i32
  %and.i.i95.i.i.i.i = and i32 %41, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i.i)
  %tobool.not.i.i96.i.i.i.i = icmp eq i32 %and.i.i95.i.i.i.i, 0
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i95.i.i.i.i
  %42 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %and.i106.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i.i)
  %tobool.i.not107.i.i.i.i = icmp eq i32 %and.i106.i.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i.i, label %for.body.i.i.i.preheader.i, label %rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond34.i.i.i.i

for.body.i.i.i.preheader.i:                       ; preds = %rht_ptr_rcu.exit.i.i.i.i
  %43 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i98.i.i.i.i = zext i16 %44 to i32
  %idx.neg.i99.i.i.i.i = sub nsw i32 0, %conv.i98.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i.i.preheader.i
  %he.0108.i.i.i.i = phi ptr [ %48, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %42, %for.body.i.i.i.preheader.i ]
  %add.ptr.i100.i.i.i.i = getelementptr i8, ptr %he.0108.i.i.i.i, i32 %idx.neg.i99.i.i.i.i
  %tinfo.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %add.ptr.i100.i.i.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %tinfo.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tinfo.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %24)
  %cmp.i.not.i = icmp eq i64 %46, %24
  br i1 %cmp.i.not.i, label %__rhashtable_lookup.exit.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %47 = ptrtoint ptr %he.0108.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %he.0108.i.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i.i.i.i = and i32 %49, 1
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge

for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge:      ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond34.i.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

do.cond34.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge
  %he.0.lcssa.i.i.i.i = phi ptr [ %42, %rht_ptr_rcu.exit.i.i.i.i.do.cond34.i.i.i.i_crit_edge ], [ %48, %for.inc.i.i.i.i.do.cond34.i.i.i.i_crit_edge ]
  %cmp.not.i.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i.i, %38
  br i1 %cmp.not.i.i.i.i, label %do.end39.i.i.i.i, label %do.cond34.i.i.i.i.do.body16.i.i.i.i_crit_edge

do.cond34.i.i.i.i.do.body16.i.i.i.i_crit_edge:    ; preds = %do.cond34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.i.i.i.i

do.end39.i.i.i.i:                                 ; preds = %do.cond34.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !80
  %future_tbl.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %future_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %future_tbl.i.i.i.i, align 4
  %call47.i.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tunnel_hash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i.i)
  %tobool48.not.i.i.i.i = icmp eq i32 %call47.i.i.i.i, 0
  br i1 %tobool48.not.i.i.i.i, label %lor.lhs.false49.i.i.i.i, label %do.end39.i.i.i.i.do.end60.i.i.i.i_crit_edge

do.end39.i.i.i.i.do.end60.i.i.i.i_crit_edge:      ; preds = %do.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i.i.i.i

lor.lhs.false49.i.i.i.i:                          ; preds = %do.end39.i.i.i.i
  %call50.i.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i.i)
  %tobool51.not.i.i.i.i = icmp eq i32 %call50.i.i.i.i, 0
  br i1 %tobool51.not.i.i.i.i, label %land.lhs.true52.i.i.i.i, label %lor.lhs.false49.i.i.i.i.do.end60.i.i.i.i_crit_edge

lor.lhs.false49.i.i.i.i.do.end60.i.i.i.i_crit_edge: ; preds = %lor.lhs.false49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i.i.i.i

land.lhs.true52.i.i.i.i:                          ; preds = %lor.lhs.false49.i.i.i.i
  %call53.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i.i)
  %tobool54.not.i.i.i.i = icmp eq i32 %call53.i.i.i.i, 0
  br i1 %tobool54.not.i.i.i.i, label %land.lhs.true52.i.i.i.i.do.end60.i.i.i.i_crit_edge, label %land.lhs.true55.i.i.i.i

land.lhs.true52.i.i.i.i.do.end60.i.i.i.i_crit_edge: ; preds = %land.lhs.true52.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i.i.i.i

land.lhs.true55.i.i.i.i:                          ; preds = %land.lhs.true52.i.i.i.i
  %.b9091.i.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.17, align 1
  br i1 %.b9091.i.i.i.i, label %land.lhs.true55.i.i.i.i.do.end60.i.i.i.i_crit_edge, label %if.then57.i.i.i.i

land.lhs.true55.i.i.i.i.do.end60.i.i.i.i_crit_edge: ; preds = %land.lhs.true55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60.i.i.i.i

if.then57.i.i.i.i:                                ; preds = %land.lhs.true55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__rhashtable_lookup.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 614, ptr noundef nonnull @.str.2) #7
  br label %do.end60.i.i.i.i

do.end60.i.i.i.i:                                 ; preds = %if.then57.i.i.i.i, %land.lhs.true55.i.i.i.i.do.end60.i.i.i.i_crit_edge, %land.lhs.true52.i.i.i.i.do.end60.i.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.i.do.end60.i.i.i.i_crit_edge, %do.end39.i.i.i.i.do.end60.i.i.i.i_crit_edge
  %tobool62.not.i.i.i.i = icmp eq ptr %51, null
  br i1 %tobool62.not.i.i.i.i, label %do.end60.i.i.i.i.rhashtable_lookup.exit.i.i_crit_edge, label %do.end60.i.i.i.i.restart.i.i.i.i_crit_edge, !prof !70

do.end60.i.i.i.i.restart.i.i.i.i_crit_edge:       ; preds = %do.end60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.i.i.i.i

do.end60.i.i.i.i.rhashtable_lookup.exit.i.i_crit_edge: ; preds = %do.end60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rhashtable_lookup.exit.i.i

__rhashtable_lookup.exit.i.i.i:                   ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not.i1.i.i = icmp eq ptr %he.0108.i.i.i.i, null
  %spec.select.i = select i1 %tobool.not.i1.i.i, ptr null, ptr %add.ptr.i100.i.i.i.i
  br label %rhashtable_lookup.exit.i.i

rhashtable_lookup.exit.i.i:                       ; preds = %__rhashtable_lookup.exit.i.i.i, %do.end60.i.i.i.i.rhashtable_lookup.exit.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %spec.select.i, %__rhashtable_lookup.exit.i.i.i ], [ null, %do.end60.i.i.i.i.rhashtable_lookup.exit.i.i_crit_edge ]
  %call.i2.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i2.i.i, label %rhashtable_lookup.exit.i.i.br_vlan_tunnel_lookup.exit_crit_edge, label %land.lhs.true.i5.i.i

rhashtable_lookup.exit.i.i.br_vlan_tunnel_lookup.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_tunnel_lookup.exit

land.lhs.true.i5.i.i:                             ; preds = %rhashtable_lookup.exit.i.i
  %call1.i3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.br_vlan_tunnel_lookup.exit_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.br_vlan_tunnel_lookup.exit_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_tunnel_lookup.exit

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.br_vlan_tunnel_lookup.exit_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.br_vlan_tunnel_lookup.exit_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %br_vlan_tunnel_lookup.exit

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %br_vlan_tunnel_lookup.exit

br_vlan_tunnel_lookup.exit:                       ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.br_vlan_tunnel_lookup.exit_crit_edge, %land.lhs.true.i5.i.i.br_vlan_tunnel_lookup.exit_crit_edge, %rhashtable_lookup.exit.i.i.br_vlan_tunnel_lookup.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %52 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i.i9.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool6.not = icmp eq ptr %cond.i.i.i, null
  br i1 %tobool6.not, label %br_vlan_tunnel_lookup.exit.cleanup_crit_edge, label %if.end8

br_vlan_tunnel_lookup.exit.cleanup_crit_edge:     ; preds = %br_vlan_tunnel_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %br_vlan_tunnel_lookup.exit
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i21 = icmp eq i32 %57, 0
  br i1 %tobool.not.i21, label %if.end8.skb_dst_drop.exit_crit_edge, label %if.then.i24

if.end8.skb_dst_drop.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst_drop.exit

if.then.i24:                                      ; preds = %if.end8
  %and.i.i22 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.then.i.i, label %if.then.i24.refdst_drop.exit.i_crit_edge

if.then.i24.refdst_drop.exit.i_crit_edge:         ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %57, -2
  %58 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %58) #7
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i24.refdst_drop.exit.i_crit_edge
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %0, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end8.skb_dst_drop.exit_crit_edge
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p, align 8
  %vlan_proto = getelementptr inbounds %struct.net_bridge, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vlan_proto, align 4
  %vid = getelementptr inbounds %struct.net_bridge_vlan, ptr %cond.i.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vid, align 8
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %66 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %63, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %67 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %65, ptr %vlan_tci2.i, align 2
  %68 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load.i27 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i27, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %skb_dst_drop.exit, %br_vlan_tunnel_lookup.exit.cleanup_crit_edge, %skb_vlan_tagged.exit.cleanup_crit_edge, %skb_vlan_tagged.exit.cleanup_crit_edge46, %if.end.cleanup_crit_edge, %skb_tunnel_info.exit.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %skb_dst.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_handle_egress_vlan_tunnel(ptr noundef %skb, ptr noundef %vlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vlan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %tinfo = getelementptr inbounds %struct.net_bridge_vlan, ptr %vlan, i32 0, i32 9
  %0 = ptrtoint ptr %tinfo to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %tinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool2.not = icmp eq i64 %1, 0
  br i1 %tobool2.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool3.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8, !prof !74

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end8.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end8.skb_dst_drop.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end8
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %5, -2
  %6 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %6) #7
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %3, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end8.skb_dst_drop.exit_crit_edge
  %call = tail call i32 @skb_vlan_pop(ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %skb_dst_drop.exit.cleanup_crit_edge

skb_dst_drop.exit.cleanup_crit_edge:              ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %skb_dst_drop.exit
  %tunnel_dst17 = getelementptr inbounds %struct.net_bridge_vlan, ptr %vlan, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %tunnel_dst17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tunnel_dst17, align 8
  %call19 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end11.do.end28_crit_edge

if.end11.do.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

land.lhs.true:                                    ; preds = %if.end11
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b46 = load i1, ptr @br_handle_egress_vlan_tunnel.__warned, align 1
  br i1 %.b46, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @br_handle_egress_vlan_tunnel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.2) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %if.end11.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %9, null
  br i1 %tobool30.not, label %do.end28.cleanup_crit_edge, label %land.lhs.true31

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true31:                                  ; preds = %do.end28
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #7, !srcloc !82
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true31.cleanup_crit_edge, label %if.then33

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !83
  %11 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i = load i32, ptr %vlan_present, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %vlan_present, align 2
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %land.lhs.true31.cleanup_crit_edge, %do.end28.cleanup_crit_edge, %skb_dst_drop.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call, %skb_dst_drop.exit.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %do.end28.cleanup_crit_edge ], [ 0, %land.lhs.true31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_vlan_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !84
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #7
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !85

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #7, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !70

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %7 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !90
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #7
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !74

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #7, !srcloc !92
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #7, !srcloc !94
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %3 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %2 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @br_vlan_tunid_cmp(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %tinfo = getelementptr inbounds %struct.net_bridge_vlan, ptr %ptr, i32 0, i32 9
  %4 = ptrtoint ptr %tinfo to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tinfo, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp = icmp ne i64 %5, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/bridge/br_vlan_tunnel.c", i32 103, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/bridge/br_vlan_tunnel.c", i32 121, i32 2}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/bridge/br_vlan_tunnel.c", i32 145, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/bridge/br_vlan_tunnel.c", i32 204, i32 15}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @br_vlan_tunnel_rht_params, !37, !"br_vlan_tunnel_rht_params", i1 false, i1 false}
!37 = !{!"../net/bridge/br_vlan_tunnel.c", i32 28, i32 39}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/bridge/br_vlan_tunnel.c", i32 46, i32 30}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/bridge/br_vlan_tunnel.c", i32 66, i32 34}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2149591064}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2158067330}
!72 = !{i64 2148215145, i64 2148215171, i64 2148215200, i64 2148215234, i64 2148215265, i64 2148215288}
!73 = !{i8 0, i8 2}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2149591330}
!76 = !{i64 2158204077}
!77 = !{i64 2158045471, i64 2158045962, i64 2158045508, i64 2158045564, i64 2158045598, i64 2158045622, i64 2158045663, i64 2158045684, i64 2158045712, i64 2158045746}
!78 = !{i64 2148212680, i64 2148212706, i64 2148212735, i64 2148212769, i64 2148212800, i64 2148212823}
!79 = !{i64 2158004015}
!80 = !{i64 2158007449}
!81 = !{i64 2148212099}
!82 = !{i64 696922, i64 696947, i64 696969, i64 696985, i64 696997, i64 697017, i64 697041, i64 697057, i64 697069}
!83 = !{i64 2148212287}
!84 = !{i64 2152632780}
!85 = !{!"branch_weights", i32 2146410443, i32 1073205}
!86 = !{i64 2148221538, i64 2148221570, i64 2148221599, i64 2148221633, i64 2148221664, i64 2148221687}
!87 = !{i64 2148310619}
!88 = !{i64 2152632940}
!89 = !{i64 2152633217}
!90 = !{i64 2152633059}
!91 = !{i64 2152633422}
!92 = !{i64 2152634485, i64 2152634977, i64 2152634522, i64 2152634578, i64 2152634612, i64 2152634636, i64 2152634677, i64 2152634698, i64 2152634726, i64 2152634760}
!93 = !{i64 2148309506}
!94 = !{i64 2148219925, i64 2148219957, i64 2148219986, i64 2148220020, i64 2148220051, i64 2148220074}
!95 = !{i64 2152635880}
!96 = !{i64 2157997088}
!97 = !{i64 2157999387}
