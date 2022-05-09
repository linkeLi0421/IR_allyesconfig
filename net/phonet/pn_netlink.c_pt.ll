; ModuleID = '/llk/IR_all_yes/net/phonet/pn_netlink.c_pt.bc'
source_filename = "../net/phonet/pn_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.phonet_device = type { %struct.list_head, ptr, [2 x i32], %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/phonet/pn_netlink.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@addr_doit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ifa_phonet_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }>, [40 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, [8 x %struct.nla_policy] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@getaddr_dumpit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@route_doit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rtm_phonet_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [26 x %struct.nla_policy] }>, [40 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [26 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, [26 x %struct.nla_policy] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 36, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 991, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 67, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"ifa_phonet_policy\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 47, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 130, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"rtm_phonet_policy\00", align 1
@___asan_gen_.34 = private constant [27 x i8] c"../net/phonet/pn_netlink.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 213, i32 32 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ifa_phonet_policy, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rtm_phonet_policy], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifa_phonet_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_phonet_policy to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phonet_address_notify(i32 noundef %event, ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.errout_crit_edge, label %if.end

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @fill_addr(ptr noundef nonnull %call.i.i, ptr noundef %dev, i8 noundef zeroext %addr, i32 noundef 0, i32 noundef 0, i32 noundef %event)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end26

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call2)
  %cmp5 = icmp eq i32 %call2, -90
  br i1 %cmp5, label %do.end, label %if.then4.if.end19_crit_edge, !prof !35

if.then4.if.end19_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #6
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then4.if.end19_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %errout

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 21, ptr noundef null, i32 noundef 3264) #6
  br label %cleanup

errout:                                           ; preds = %if.end19, %entry.errout_crit_edge
  %err.0 = phi i32 [ -105, %entry.errout_crit_edge ], [ %call2, %if.end19 ]
  %nd_net.i38 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i38, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %3, i32 noundef 21, i32 noundef %err.0) #6
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end26
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_addr(ptr noundef %skb, ptr nocapture noundef readonly %dev, i8 noundef zeroext %addr, i32 noundef %portid, i32 noundef %seq, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !35

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 8, i32 noundef 0) #6
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 35, ptr %add.ptr.i, align 4
  %ifa_prefixlen = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %ifa_prefixlen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ifa_prefixlen, align 1
  %ifa_flags = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %ifa_flags, align 2
  %ifa_scope = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -3, ptr %ifa_scope, align 1
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %ifa_index = getelementptr i8, ptr %call3.i, i32 20
  %12 = ptrtoint ptr %ifa_index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ifa_index, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %addr, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.then.i.i

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %16 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %18, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !35

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i17 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i18 = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i19 = sub i32 %sub.ptr.lhs.cast.i.i17, %sub.ptr.rhs.cast.i.i18
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i19) #6
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end4, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end4 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtm_phonet_notify(i32 noundef %event, ptr nocapture noundef readonly %dev, i8 noundef zeroext %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.errout_crit_edge, label %if.end

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @fill_route(ptr noundef nonnull %call.i.i, ptr noundef %dev, i8 noundef zeroext %dst, i32 noundef 0, i32 noundef 0, i32 noundef %event)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end28

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call4)
  %cmp7 = icmp eq i32 %call4, -90
  br i1 %cmp7, label %do.end, label %if.then6.if.end21_crit_edge, !prof !35

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #6
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.then6.if.end21_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %errout

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 22, ptr noundef null, i32 noundef 3264) #6
  br label %cleanup

errout:                                           ; preds = %if.end21, %entry.errout_crit_edge
  %err.0 = phi i32 [ -105, %entry.errout_crit_edge ], [ %call4, %if.end21 ]
  %nd_net.i40 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i40 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i40, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %3, i32 noundef 22, i32 noundef %err.0) #6
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_route(ptr noundef %skb, ptr nocapture noundef readonly %dev, i8 noundef zeroext %dst, i32 noundef %portid, i32 noundef %seq, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  %tmp.i23 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !35

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 12, i32 noundef 0) #6
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 35, ptr %add.ptr.i, align 4
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rtm_src_len, align 2
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rtm_tos, align 1
  %rtm_table = getelementptr i8, ptr %call3.i, i32 20
  %10 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %rtm_table, align 4
  %rtm_protocol = getelementptr i8, ptr %call3.i, i32 21
  %11 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %rtm_protocol, align 1
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %12 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rtm_scope, align 2
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %13 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %rtm_type, align 1
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %14 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rtm_flags, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %dst, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i23) #6
  %18 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i23, align 4
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool4.not = icmp eq i32 %call.i24, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %21 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %23, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !35

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i26 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i27 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i28 = sub i32 %sub.ptr.lhs.cast.i.i26, %sub.ptr.rhs.cast.i.i27
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i28) #6
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end6, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end6 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_netlink_register() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 35, i32 noundef 20, ptr noundef nonnull @addr_doit, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 35, i32 noundef 21, ptr noundef nonnull @addr_doit, ptr noundef null, i32 noundef 0) #6
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 35, i32 noundef 22, ptr noundef null, ptr noundef nonnull @getaddr_dumpit, i32 noundef 0) #6
  %call3 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 35, i32 noundef 24, ptr noundef nonnull @route_doit, ptr noundef null, i32 noundef 0) #6
  %call4 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 35, i32 noundef 25, ptr noundef nonnull @route_doit, ptr noundef null, i32 noundef 0) #6
  %call5 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 35, i32 noundef 26, ptr noundef null, ptr noundef nonnull @route_dumpit, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addr_doit(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #6
  %5 = call ptr @memset(ptr %tb, i32 255, i32 44)
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #6
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 21) #6
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.rhs, label %if.end4.if.end36_crit_edge

if.end4.if.end36_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.rhs:                                         ; preds = %if.end4
  %.b94 = load i1, ptr @addr_doit.__already_done, align 1
  br i1 %.b94, label %land.rhs.if.end36_crit_edge, label %if.then14, !prof !36

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @addr_doit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 67) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then14, %land.rhs.if.end36_crit_edge, %if.end4.if.end36_crit_edge
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 24
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end36
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #6
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %if.end36
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %7, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @ifa_phonet_policy, i32 noundef 0, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end46

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %nlmsg_parse_deprecated.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp48 = icmp eq ptr %10, null
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool53.not = icmp eq i8 %13, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %ifa_index = getelementptr i8, ptr %nlh, i32 20
  %14 = ptrtoint ptr %ifa_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifa_index, align 4
  %call56 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %15) #6
  %cmp57 = icmp eq ptr %call56, null
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %16 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %17)
  %cmp62 = icmp eq i16 %17, 20
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = call i32 @phonet_address_add(ptr noundef nonnull %call56, i8 noundef zeroext %12) #6
  br label %if.end67

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %call66 = call i32 @phonet_address_del(ptr noundef nonnull %call56, i8 noundef zeroext %12) #6
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then64
  %err.0 = phi i32 [ %call65, %if.then64 ], [ %call66, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool68.not = icmp eq i32 %err.0, 0
  br i1 %tobool68.not, label %if.then69, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nlmsg_type, align 4
  %conv71 = zext i16 %19 to i32
  call void @phonet_address_notify(i32 noundef %conv71, ptr noundef nonnull %call56, i8 noundef zeroext %12)
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end67.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ -19, %if.end55.cleanup_crit_edge ], [ 0, %if.then69 ], [ %err.0, %if.end67.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @getaddr_dumpit(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call ptr @phonet_device_list(ptr noundef %9) #6
  %10 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @getaddr_dumpit.__warned, align 1
  br i1 %.b82, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @getaddr_dumpit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %pnd.0104 = load volatile ptr, ptr %call2, align 4
  %cmp.not105 = icmp eq ptr %pnd.0104, %call2
  br i1 %cmp.not105, label %do.end.out_crit_edge, label %for.body.lr.ph

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %do.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph
  %pnd.0109 = phi ptr [ %pnd.0104, %for.body.lr.ph ], [ %pnd.0, %for.inc45.for.body_crit_edge ]
  %dev_idx.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc45.for.body_crit_edge ]
  %addr_idx.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %addr_idx.2.ph, %for.inc45.for.body_crit_edge ]
  %addr_start_idx.0106 = phi i32 [ %4, %for.body.lr.ph ], [ %spec.select, %for.inc45.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dev_idx.0108, i32 %2)
  %cmp14 = icmp sgt i32 %dev_idx.0108, %2
  %spec.select = select i1 %cmp14, i32 0, i32 %addr_start_idx.0106
  %inc = add i32 %dev_idx.0108, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %dev_idx.0108, i32 %2)
  %cmp17 = icmp slt i32 %dev_idx.0108, %2
  br i1 %cmp17, label %for.body.for.inc45_crit_edge, label %if.end19

for.body.for.inc45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc45

if.end19:                                         ; preds = %for.body
  %addrs = getelementptr inbounds %struct.phonet_device, ptr %pnd.0109, i32 0, i32 2
  %call20 = tail call i32 @_find_next_bit_be(ptr noundef %addrs, i32 noundef 64, i32 noundef 0) #6
  %conv2299 = and i32 %call20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv2299)
  %cmp23100 = icmp ult i32 %conv2299, 64
  br i1 %cmp23100, label %for.body25.lr.ph, label %if.end19.for.inc45_crit_edge

if.end19.for.inc45_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc45

for.body25.lr.ph:                                 ; preds = %if.end19
  %netdev = getelementptr inbounds %struct.phonet_device, ptr %pnd.0109, i32 0, i32 1
  br label %for.body25

for.body25:                                       ; preds = %for.inc.for.body25_crit_edge, %for.body25.lr.ph
  %conv22103 = phi i32 [ %conv2299, %for.body25.lr.ph ], [ %conv22, %for.inc.for.body25_crit_edge ]
  %addr.0.in102 = phi i32 [ %call20, %for.body25.lr.ph ], [ %call43, %for.inc.for.body25_crit_edge ]
  %addr_idx.1101 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc26, %for.inc.for.body25_crit_edge ]
  %inc26 = add i32 %addr_idx.1101, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %addr_idx.1101, i32 %spec.select)
  %cmp27 = icmp slt i32 %addr_idx.1101, %spec.select
  br i1 %cmp27, label %for.body25.for.inc_crit_edge, label %if.end30

for.body25.for.inc_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30:                                         ; preds = %for.body25
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  %conv22.tr = trunc i32 %addr.0.in102 to i8
  %conv32 = shl i8 %conv22.tr, 2
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %portid, align 4
  %21 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nlmsg_seq, align 4
  %call35 = tail call fastcc i32 @fill_addr(ptr noundef %skb, ptr noundef %16, i8 noundef zeroext %conv32, i32 noundef %20, i32 noundef %24, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end30.out_crit_edge, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc:                                          ; preds = %if.end30.for.inc_crit_edge, %for.body25.for.inc_crit_edge
  %add = add nuw nsw i32 %conv22103, 1
  %call43 = tail call i32 @_find_next_bit_be(ptr noundef %addrs, i32 noundef 64, i32 noundef %add) #6
  %conv22 = and i32 %call43, 255
  %cmp23 = icmp ult i32 %conv22, 64
  br i1 %cmp23, label %for.inc.for.body25_crit_edge, label %for.inc.for.inc45_crit_edge

for.inc.for.inc45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc45

for.inc.for.body25_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.inc45:                                        ; preds = %for.inc.for.inc45_crit_edge, %if.end19.for.inc45_crit_edge, %for.body.for.inc45_crit_edge
  %addr_idx.2.ph = phi i32 [ %addr_idx.0107, %for.body.for.inc45_crit_edge ], [ 0, %if.end19.for.inc45_crit_edge ], [ %inc26, %for.inc.for.inc45_crit_edge ]
  %25 = ptrtoint ptr %pnd.0109 to i32
  call void @__asan_load4_noabort(i32 %25)
  %pnd.0 = load volatile ptr, ptr %pnd.0109, align 4
  %cmp.not = icmp eq ptr %pnd.0, %call2
  br i1 %cmp.not, label %for.inc45.out_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc45.out_crit_edge:                          ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.inc45.out_crit_edge, %if.end30.out_crit_edge, %do.end.out_crit_edge
  %addr_idx.3 = phi i32 [ 0, %do.end.out_crit_edge ], [ %inc26, %if.end30.out_crit_edge ], [ %addr_idx.2.ph, %for.inc45.out_crit_edge ]
  %dev_idx.1 = phi i32 [ 0, %do.end.out_crit_edge ], [ %inc, %if.end30.out_crit_edge ], [ %inc, %for.inc45.out_crit_edge ]
  %call.i83 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i83, label %out.cleanup58_crit_edge, label %land.lhs.true.i86

out.cleanup58_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

land.lhs.true.i86:                                ; preds = %out
  %call1.i84 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i86.cleanup58_crit_edge, label %land.lhs.true2.i88

land.lhs.true.i86.cleanup58_crit_edge:            ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

land.lhs.true2.i88:                               ; preds = %land.lhs.true.i86
  %.b4.i87 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i87, label %land.lhs.true2.i88.cleanup58_crit_edge, label %if.then.i89

land.lhs.true2.i88.cleanup58_crit_edge:           ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.then.i89:                                      ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #6
  br label %cleanup58

cleanup58:                                        ; preds = %if.then.i89, %land.lhs.true2.i88.cleanup58_crit_edge, %land.lhs.true.i86.cleanup58_crit_edge, %out.cleanup58_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i90 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i90 to ptr
  %preempt_count.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i91, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i91, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dev_idx.1, ptr %0, align 4
  %31 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %addr_idx.3, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route_doit(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [31 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #6
  %5 = call ptr @memset(ptr %tb, i32 255, i32 124)
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #6
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 21) #6
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.rhs, label %if.end4.if.end36_crit_edge

if.end4.if.end36_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.rhs:                                         ; preds = %if.end4
  %.b110 = load i1, ptr @route_doit.__already_done, align 1
  br i1 %.b110, label %land.rhs.if.end36_crit_edge, label %if.then14, !prof !36

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @route_doit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 234) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then14, %land.rhs.if.end36_crit_edge, %if.end4.if.end36_crit_edge
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end36
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #6
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %if.end36
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %7, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 30, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @rtm_phonet_policy, i32 noundef 0, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end46

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %nlmsg_parse_deprecated.exit
  %rtm_table = getelementptr i8, ptr %nlh, i32 20
  %9 = ptrtoint ptr %rtm_table to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtm_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %10)
  %cmp48.not = icmp eq i8 %10, -2
  br i1 %cmp48.not, label %lor.lhs.false, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end46
  %rtm_type = getelementptr i8, ptr %nlh, i32 23
  %11 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp51.not = icmp eq i8 %12, 1
  br i1 %cmp51.not, label %if.end54, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp55 = icmp eq ptr %14, null
  br i1 %cmp55, label %if.end54.cleanup_crit_edge, label %lor.lhs.false57

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false57:                                  ; preds = %if.end54
  %arrayidx58 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx58, align 4
  %cmp59 = icmp eq ptr %16, null
  br i1 %cmp59, label %lor.lhs.false57.cleanup_crit_edge, label %if.end62

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false57
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool66.not = icmp eq i8 %19, 0
  br i1 %tobool66.not, label %if.end68, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  %add.ptr.i.i111 = getelementptr i8, ptr %16, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i111, align 4
  %call71 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %21) #6
  %cmp72 = icmp eq ptr %call71, null
  br i1 %cmp72, label %if.end68.cleanup_crit_edge, label %if.end75

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %22 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %23)
  %cmp77 = icmp eq i16 %23, 24
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = call i32 @phonet_route_add(ptr noundef nonnull %call71, i8 noundef zeroext %18) #6
  br label %if.end82

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call i32 @phonet_route_del(ptr noundef nonnull %call71, i8 noundef zeroext %18) #6
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then79
  %err.0 = phi i32 [ %call80, %if.then79 ], [ %call81, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool83.not = icmp eq i32 %err.0, 0
  br i1 %tobool83.not, label %if.then84, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nlmsg_type, align 4
  %conv86 = zext i16 %25 to i32
  call void @rtm_phonet_notify(i32 noundef %conv86, ptr noundef nonnull %call71, i8 noundef zeroext %18)
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end82.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ -22, %lor.lhs.false57.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ], [ -22, %if.end62.cleanup_crit_edge ], [ -19, %if.end68.cleanup_crit_edge ], [ 0, %if.then84 ], [ %err.0, %if.end82.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @route_dumpit(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %conv = trunc i32 %11 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv)
  %cmp40 = icmp ult i8 %conv, 64
  br i1 %cmp40, label %for.body.lr.ph, label %rcu_read_lock.exit.out_crit_edge

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.041 = phi i8 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i8 %addr.041, 2
  %call5 = tail call ptr @phonet_route_get_rcu(ptr noundef %4, i8 noundef zeroext %shl) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %portid, align 4
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq, align 4
  %call11 = tail call fastcc i32 @fill_route(ptr noundef %skb, ptr noundef nonnull %call5, i8 noundef zeroext %shl, i32 noundef %15, i32 noundef %19, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.out_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i8 %addr.041, 1
  %cmp = icmp ult i8 %addr.041, 63
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %addr.0.lcssa = phi i8 [ %conv, %rcu_read_lock.exit.out_crit_edge ], [ %addr.041, %if.end.out_crit_edge ], [ 64, %for.inc.out_crit_edge ]
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i30, label %out.cleanup18_crit_edge, label %land.lhs.true.i33

out.cleanup18_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

land.lhs.true.i33:                                ; preds = %out
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.cleanup18_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.cleanup18_crit_edge:            ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.cleanup18_crit_edge, label %if.then.i36

land.lhs.true2.i35.cleanup18_crit_edge:           ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #6
  br label %cleanup18

cleanup18:                                        ; preds = %if.then.i36, %land.lhs.true2.i35.cleanup18_crit_edge, %land.lhs.true.i33.cleanup18_crit_edge, %out.cleanup18_crit_edge
  %conv1 = zext i8 %addr.0.lcssa to i32
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %20 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i37 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv1, ptr %9, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_address_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_address_del(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phonet_device_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_route_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_route_del(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phonet_route_get_rcu(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !20, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/phonet/pn_netlink.c", i32 36, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/net/netlink.h", i32 991, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/phonet/pn_netlink.c", i32 67, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__nlmsg_parse.__msg, !8, !"__msg", i1 false, i1 false}
!8 = !{!"../include/net/netlink.h", i32 729, i32 3}
!9 = !{ptr @ifa_phonet_policy, !10, !"ifa_phonet_policy", i1 false, i1 false}
!10 = !{!"../net/phonet/pn_netlink.c", i32 47, i32 32}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/phonet/pn_netlink.c", i32 130, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../net/phonet/pn_netlink.c", i32 234, i32 2}
!23 = !{ptr @rtm_phonet_policy, !24, !"rtm_phonet_policy", i1 false, i1 false}
!24 = !{!"../net/phonet/pn_netlink.c", i32 213, i32 32}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2149696972}
!38 = !{i64 2149697238}
