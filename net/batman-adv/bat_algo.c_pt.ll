; ModuleID = '/llk/IR_all_yes/net/batman-adv/bat_algo.c_pt.bc'
source_filename = "../net/batman-adv/bat_algo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.103 }
%union.anon.103 = type { ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.hlist_node = type { ptr, ptr }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.105 }
%union.anon.105 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@batadv_routing_algo = dso_local global { [20 x i8], [44 x i8] } { [20 x i8] c"BATMAN_IV\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@batadv_algo_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@batadv_algo_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016batman_adv: Trying to register already registered routing algorithm: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"batadv_algo_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/batman-adv/bat_algo.c\00", [38 x i8] zeroinitializer }, align 32
@batadv_algo_register._entry_ptr = internal global ptr @batadv_algo_register._entry, section ".printk_index", align 4
@batadv_algo_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016batman_adv: Routing algo '%s' does not implement required ops\0A\00", [63 x i8] zeroinitializer }, align 32
@batadv_algo_register._entry_ptr.5 = internal global ptr @batadv_algo_register._entry.3, section ".printk_index", align 4
@__param_str_routing_algo = internal constant [24 x i8] c"batman_adv.routing_algo\00", align 1
@batadv_param_ops_ra = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @batadv_param_set_ra, ptr @param_get_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@batadv_param_string_ra = internal global { %struct.kparam_string, [24 x i8] } { %struct.kparam_string { i32 20, ptr @batadv_routing_algo }, [24 x i8] zeroinitializer }, align 32
@__param_routing_algo = internal constant %struct.kernel_param { ptr @__param_str_routing_algo, ptr null, ptr @batadv_param_ops_ra, i16 420, i8 -1, i8 0, %union.anon.103 { ptr @batadv_param_string_ra } }, section "__param", align 4
@batadv_param_set_ra._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013batman_adv: Routing algorithm '%s' is not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"batadv_param_set_ra\00", [44 x i8] zeroinitializer }, align 32
@batadv_param_set_ra._entry_ptr = internal global ptr @batadv_param_set_ra._entry, section ".printk_index", align 4
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"batadv_routing_algo\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 24, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"batadv_algo_list\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 25, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 69, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 81, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"batadv_param_ops_ra\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 136, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"batadv_param_string_ra\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 141, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private constant [29 x i8] c"../net/batman-adv/bat_algo.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 129, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 991, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__param_routing_algo, ptr @batadv_algo_register._entry, ptr @batadv_algo_register._entry.3, ptr @batadv_algo_register._entry_ptr, ptr @batadv_algo_register._entry_ptr.5, ptr @batadv_param_set_ra._entry, ptr @batadv_param_set_ra._entry_ptr, ptr @batadv_routing_algo, ptr @batadv_algo_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @batadv_param_ops_ra, ptr @batadv_param_string_ra, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_routing_algo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_algo_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_algo_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_algo_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_param_ops_ra to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_param_string_ra to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_param_set_ra._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @batadv_algo_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr @batadv_algo_list, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_algo_get(ptr nocapture noundef readonly %name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %bat_algo_ops_tmp.0.in = phi ptr [ @batadv_algo_list, %entry ], [ %bat_algo_ops_tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %bat_algo_ops_tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %bat_algo_ops_tmp.0 = load ptr, ptr %bat_algo_ops_tmp.0.in, align 4
  %tobool2.not = icmp eq ptr %bat_algo_ops_tmp.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %name3 = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops_tmp.0, i32 0, i32 1
  %1 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  ret ptr %bat_algo_ops_tmp.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_algo_register(ptr noundef %bat_algo_ops) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bat_algo_ops_tmp.0.in.i = phi ptr [ @batadv_algo_list, %entry ], [ %bat_algo_ops_tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %bat_algo_ops_tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bat_algo_ops_tmp.0.i = load ptr, ptr %bat_algo_ops_tmp.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %bat_algo_ops_tmp.0.i, null
  br i1 %tobool2.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name3.i = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops_tmp.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %1) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  %enable = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.do.end20_crit_edge, label %lor.lhs.false

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

lor.lhs.false:                                    ; preds = %if.end
  %disable = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end20_crit_edge, label %lor.lhs.false6

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %update_mac = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %update_mac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_mac, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %lor.lhs.false6.do.end20_crit_edge, label %lor.lhs.false9

lor.lhs.false6.do.end20_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %primary_set = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %primary_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %primary_set, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %lor.lhs.false9.do.end20_crit_edge, label %lor.lhs.false12

lor.lhs.false9.do.end20_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %cmp = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmp, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %lor.lhs.false12.do.end20_crit_edge, label %lor.lhs.false14

lor.lhs.false12.do.end20_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %is_similar_or_better = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %is_similar_or_better to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %is_similar_or_better, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %lor.lhs.false14.do.end20_crit_edge, label %if.end24

lor.lhs.false14.do.end20_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false14.do.end20_crit_edge, %lor.lhs.false12.do.end20_crit_edge, %lor.lhs.false9.do.end20_crit_edge, %lor.lhs.false6.do.end20_crit_edge, %lor.lhs.false.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %1) #12
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false14
  %17 = ptrtoint ptr %bat_algo_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %bat_algo_ops, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %bat_algo_ops, i32 0, i32 1
  %18 = load ptr, ptr @batadv_algo_list, align 4
  store volatile ptr %18, ptr %bat_algo_ops, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end24.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end24.hlist_add_head.exit_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i36 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %bat_algo_ops, ptr %pprev.i36, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end24.hlist_add_head.exit_crit_edge
  store volatile ptr %bat_algo_ops, ptr @batadv_algo_list, align 4
  %20 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr @batadv_algo_list, ptr %pprev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %do.end20, %do.end
  %retval.0 = phi i32 [ -17, %do.end ], [ 0, %hlist_add_head.exit ], [ -22, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_algo_select(ptr nocapture noundef writeonly %bat_priv, ptr nocapture noundef readonly %name) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %bat_algo_ops_tmp.0.in.i = phi ptr [ @batadv_algo_list, %entry ], [ %bat_algo_ops_tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %bat_algo_ops_tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bat_algo_ops_tmp.0.i = load ptr, ptr %bat_algo_ops_tmp.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %bat_algo_ops_tmp.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %name3.i = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops_tmp.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %3 = ptrtoint ptr %algo_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bat_algo_ops_tmp.0.i, ptr %algo_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_algo_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid2, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %bat_algo_ops.035 = load ptr, ptr @batadv_algo_list, align 4
  %tobool4.not36 = icmp eq ptr %bat_algo_ops.035, null
  br i1 %tobool4.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bat_algo_ops.038 = phi ptr [ %bat_algo_ops.035, %for.body.lr.ph ], [ %bat_algo_ops.0, %for.inc.for.body_crit_edge ]
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %i.037, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037, i32 %6)
  %cmp = icmp slt i32 %i.037, %6
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlmsg_seq, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %10, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.for.end_crit_edge, label %if.end.i

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i:                                         ; preds = %if.end
  %name.i = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops.038, i32 0, i32 1
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %12) #11
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef %add.i.i, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  br i1 %tobool2.not.i, label %batadv_algo_dump_entry.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.for.end_crit_edge, label %if.then.i.i.i.i

if.then.i.i.for.end_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %14, %add.ptr1.i.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !37

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  tail call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i) #7
  br label %for.end

batadv_algo_dump_entry.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %19 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %batadv_algo_dump_entry.exit, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %bat_algo_ops.038 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bat_algo_ops.0 = load ptr, ptr %bat_algo_ops.038, align 4
  %tobool4.not = icmp eq ptr %bat_algo_ops.0, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i.i.i, %if.then.i.i.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %i.034 = phi i32 [ %i.037, %if.end.i.i.i.i ], [ %i.037, %if.then.i.i.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %i.037, %if.end.for.end_crit_edge ]
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.034, ptr %4, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_param_set_ra(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.for.cond.i.preheader_crit_edge, label %land.lhs.true

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true:                                    ; preds = %entry
  %sub = add i32 %call, -1
  %arrayidx = getelementptr i8, ptr %val, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp1 = icmp eq i8 %1, 10
  br i1 %cmp1, label %if.then, label %land.lhs.true.for.cond.i.preheader_crit_edge

land.lhs.true.for.cond.i.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then, %land.lhs.true.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %bat_algo_ops_tmp.0.in.i = phi ptr [ %bat_algo_ops_tmp.0.i, %for.body.i.for.cond.i_crit_edge ], [ @batadv_algo_list, %for.cond.i.preheader ]
  %3 = ptrtoint ptr %bat_algo_ops_tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bat_algo_ops_tmp.0.i = load ptr, ptr %bat_algo_ops_tmp.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %bat_algo_ops_tmp.0.i, null
  br i1 %tobool2.not.i, label %do.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name3.i = getelementptr inbounds %struct.batadv_algo_ops, ptr %bat_algo_ops_tmp.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name3.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %val) #11
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end8, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %val) #12
  br label %cleanup

if.end8:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @param_set_copystring(ptr noundef %val, ptr noundef %kp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_copystring(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @batadv_routing_algo, !1, !"batadv_routing_algo", i1 false, i1 false}
!1 = !{!"../net/batman-adv/bat_algo.c", i32 24, i32 6}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/bat_algo.c", i32 69, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @batadv_algo_register._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @batadv_algo_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/batman-adv/bat_algo.c", i32 81, i32 3}
!10 = !{ptr @batadv_algo_register._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @batadv_algo_register._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__param_routing_algo, !13, !"__param_routing_algo", i1 false, i1 false}
!13 = !{!"../net/batman-adv/bat_algo.c", i32 146, i32 1}
!14 = !{ptr @batadv_algo_list, !15, !"batadv_algo_list", i1 false, i1 false}
!15 = !{!"../net/batman-adv/bat_algo.c", i32 25, i32 26}
!16 = !{ptr @__param_str_routing_algo, !13, !"__param_str_routing_algo", i1 false, i1 false}
!17 = !{ptr @batadv_param_ops_ra, !18, !"batadv_param_ops_ra", i1 false, i1 false}
!18 = !{!"../net/batman-adv/bat_algo.c", i32 136, i32 38}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/batman-adv/bat_algo.c", i32 129, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @batadv_param_set_ra._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @batadv_param_set_ra._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @batadv_param_string_ra, !25, !"batadv_param_string_ra", i1 false, i1 false}
!25 = !{!"../net/batman-adv/bat_algo.c", i32 141, i32 29}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/net/netlink.h", i32 991, i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
