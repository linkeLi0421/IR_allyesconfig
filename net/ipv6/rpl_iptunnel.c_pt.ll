; ModuleID = '/llk/IR_all_yes/net/ipv6/rpl_iptunnel.c_pt.bc'
source_filename = "../net/ipv6/rpl_iptunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipv6_rpl_sr_hdr = type { i8, i8, i8, i8, i32, %union.anon.153 }
%union.anon.153 = type { [0 x %struct.in6_addr] }

@rpl_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @rpl_build_state, ptr @rpl_destroy_state, ptr @rpl_output, ptr @rpl_input, ptr @rpl_fill_encap_info, ptr @rpl_encap_nlsize, ptr @rpl_encap_cmp, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rpl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016RPL Segment Routing with IPv6\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rpl_init\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ipv6/rpl_iptunnel.c\00", [40 x i8] zeroinitializer }, align 32
@rpl_init._entry_ptr = internal global ptr @rpl_init._entry, section ".printk_index", align 4
@rpl_iptunnel_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.91 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"rpl_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 346, i32 40 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 365, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"rpl_iptunnel_policy\00", align 1
@___asan_gen_.20 = private constant [27 x i8] c"../net/ipv6/rpl_iptunnel.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 35, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1208, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1011, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @rpl_init._entry, ptr @rpl_init._entry_ptr, ptr @rpl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rpl_iptunnel_policy, ptr @nla_parse_nested.__msg, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpl_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpl_iptunnel_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @rpl_ops, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpl_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_del_ops(ptr noundef nonnull @rpl_ops, i32 noundef 8) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpl_build_state(ptr noundef %net, ptr noundef %nla, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #4 align 64 {
entry:
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #11
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !24
  %1 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %family)
  %cmp.not = icmp eq i32 %family, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %3 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not.i = icmp sgt i16 %4, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %6 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %7 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %8 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @rpl_iptunnel_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp1 = icmp slt i32 %call6.i, 0
  br i1 %cmp1, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end3

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %nla_parse_nested.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i = zext i16 %13 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp10 = icmp ult i32 %sub.i, 8
  br i1 %cmp10, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %sub = add nsw i32 %conv.i, -12
  %hdrlen.i = getelementptr i8, ptr %11, i32 5
  %14 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdrlen.i, align 1
  %conv.i50 = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i50, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %sub)
  %cmp.not.i = icmp eq i32 %shl.i, %sub
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %segments_left.i = getelementptr i8, ptr %11, i32 7
  %16 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %segments_left.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i51 = icmp ne i8 %17, 0
  %conv3.i = zext i8 %17 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub)
  %cmp4.not.i = icmp eq i32 %mul.i, %sub
  %or.cond.i = select i1 %tobool.not.i51, i1 %cmp4.not.i, i1 false
  br i1 %or.cond.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %cmpri.i = getelementptr i8, ptr %11, i32 8
  %18 = ptrtoint ptr %cmpri.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load.i = load i32, ptr %cmpri.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load.i)
  %19 = icmp ult i32 %bf.load.i, 16777216
  br i1 %19, label %if.end14.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14.i:                                       ; preds = %if.end7.i
  %segments.i = getelementptr i8, ptr %11, i32 12
  %call.i = call i32 @ipv6_chk_rpl_srh_loop(ptr noundef %net, ptr noundef %segments.i, i8 noundef zeroext %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool16.not.i, label %rpl_validate_srh.exit, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rpl_validate_srh.exit:                            ; preds = %if.end14.i
  %20 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %segments_left.i, align 1
  %conv21.i = zext i8 %21 to i32
  %sub.i52 = add nsw i32 %conv21.i, -1
  %arrayidx.i = getelementptr [0 x %struct.in6_addr], ptr %segments.i, i32 0, i32 %sub.i52
  %call.i.i = call i32 @__ipv6_addr_type(ptr noundef %arrayidx.i) #11
  %and.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end15, label %rpl_validate_srh.exit.cleanup_crit_edge

rpl_validate_srh.exit.cleanup_crit_edge:          ; preds = %rpl_validate_srh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %rpl_validate_srh.exit
  %add = add nuw nsw i32 %conv.i, 4
  %call16 = call ptr @lwtunnel_state_alloc(i32 noundef %add) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call16, i32 0, i32 7
  %call21 = call i32 @dst_cache_init(ptr noundef %data.i, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call16) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %tuninfo = getelementptr inbounds %struct.lwtunnel_state, ptr %call16, i32 1, i32 3
  %22 = call ptr @memcpy(ptr %tuninfo, ptr %add.ptr.i, i32 %sub.i)
  %23 = ptrtoint ptr %call16 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %call16, align 4
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call16, i32 0, i32 1
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags, align 2
  %26 = or i16 %25, 3
  store i16 %26, ptr %flags, align 2
  %27 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call16, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %if.end15.cleanup_crit_edge, %rpl_validate_srh.exit.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ 0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %rpl_validate_srh.exit.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ], [ -22, %if.end14.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpl_destroy_state(ptr noundef %lwt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  tail call void @dst_cache_destroy(ptr noundef %data.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpl_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #4 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !25

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 0, i32 7
  %call2 = tail call fastcc i32 @rpl_do_srh(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %skb_dst.exit.drop_crit_edge, !prof !26

skb_dst.exit.drop_crit_edge:                      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

do.body:                                          ; preds = %skb_dst.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %call5 = tail call ptr @dst_cache_get(ptr noundef %data.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %12 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i82 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i82 to ptr
  %preempt_count.i.i83 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i83, align 4
  %sub.i = add i32 %15, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i83, align 4
  %tobool9.not = icmp eq ptr %call5, null
  br i1 %tobool9.not, label %if.then18, label %do.body.if.end38_crit_edge, !prof !25

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then18:                                        ; preds = %do.body
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #11
  %20 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %daddr20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %21 = call ptr @memcpy(ptr %daddr, ptr %daddr20, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr21 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %saddr, ptr %saddr21, i32 16)
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %and.i90 = and i32 %24, 268435455
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %25 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i90, ptr %flowlabel, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %29 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flowic_mark, align 8
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nexthdr, align 2
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %32 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %flowic_proto, align 2
  %call.i91 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #11
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i91, i32 0, i32 15
  %33 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool25.not = icmp eq i16 %34, 0
  br i1 %tobool25.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %35 = call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i84 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i84 to ptr
  %preempt_count.i.i85 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i85, align 4
  %add.i86 = add i32 %38, 1
  store volatile i32 %add.i86, ptr %preempt_count.i.i85, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  call void @dst_cache_set_ip6(ptr noundef %data.i, ptr noundef %call.i91, ptr noundef %saddr) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %39 = call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i87 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i87 to ptr
  %preempt_count.i.i88 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i88, align 4
  %sub.i89 = add i32 %42, -1
  store volatile i32 %sub.i89, ptr %preempt_count.i.i88, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  br label %if.end38

cleanup:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %conv = sext i16 %34 to i32
  call void @dst_release(ptr noundef %call.i91) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  br label %drop

if.end38:                                         ; preds = %cleanup.thread, %do.body.if.end38_crit_edge
  %dst.0 = phi ptr [ %call5, %do.body.if.end38_crit_edge ], [ %call.i91, %cleanup.thread ]
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i92 = icmp ne i32 %44, 0
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond = and i1 %tobool.not.i92, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i.i, label %if.end38.skb_dst_drop.exit_crit_edge

if.end38.skb_dst_drop.exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %44, -2
  %45 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %45) #11
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.end38.skb_dst_drop.exit_crit_edge
  %tobool.not.i93 = icmp eq ptr %dst.0, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %46 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i93, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %47 = ptrtoint ptr %dst.0 to i32
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %0, align 8
  %49 = ptrtoint ptr %dst.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dst.0, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hard_header_len, align 2
  %conv39 = zext i16 %52 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 21
  %53 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %needed_headroom, align 8
  %conv41 = zext i16 %54 to i32
  %add = add nuw nsw i32 %conv41, %conv39
  %and = and i32 %add, 131056
  %add42 = add nuw nsw i32 %and, 16
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %55 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i94 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i94, label %skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge: ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %56 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %58 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i95 = and i32 %59, 65535
  %shr.i.i = ashr i32 %59, 16
  %sub.i.i = sub nsw i32 %and.i.i95, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add42)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add42
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end52_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end52_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %64 = call i32 @llvm.usub.sat.i32(i32 %add42, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %64, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool44.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool44.not, label %skb_cow_head.exit.if.end52_crit_edge, label %skb_cow_head.exit.drop_crit_edge, !prof !26

skb_cow_head.exit.drop_crit_edge:                 ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

skb_cow_head.exit.if.end52_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end52:                                         ; preds = %skb_cow_head.exit.if.end52_crit_edge, %skb_header_cloned.exit.i.if.end52_crit_edge
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %0, align 8
  %and.i.i96 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.not.i.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.not.i.i97, label %if.end52.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.end52.dst_output.exit_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.end52
  %call.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !25

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.end52.dst_output.exit_crit_edge
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %68, -2
  %69 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %output.i, align 4
  %call1.i = call i32 %71(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup54

drop:                                             ; preds = %skb_cow_head.exit.drop_crit_edge, %cleanup, %skb_dst.exit.drop_crit_edge
  %err.1 = phi i32 [ %call2, %skb_dst.exit.drop_crit_edge ], [ %conv, %cleanup ], [ %call4.i.i, %skb_cow_head.exit.drop_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup54

cleanup54:                                        ; preds = %drop, %dst_output.exit
  %retval.0 = phi i32 [ %err.1, %drop ], [ %call1.i, %dst_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpl_input(ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !25

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 0, i32 7
  %call2 = tail call fastcc i32 @rpl_do_srh(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.then, !prof !26

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

do.body:                                          ; preds = %skb_dst.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %call5 = tail call ptr @dst_cache_get(ptr noundef %data.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  %12 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i60 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i60 to ptr
  %preempt_count.i.i61 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i61, align 4
  %sub.i = add i32 %15, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i61, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i68 = icmp eq i32 %17, 0
  br i1 %tobool.not.i68, label %do.body.skb_dst_drop.exit_crit_edge, label %if.then.i

do.body.skb_dst_drop.exit_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %do.body
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %17, -2
  %18 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %18) #11
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %0, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %do.body.skb_dst_drop.exit_crit_edge
  %tobool9.not = icmp eq ptr %call5, null
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %skb_dst_drop.exit
  tail call void @ip6_route_input(ptr noundef %skb) #11
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 8
  %and.i69 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %if.then10.skb_dst.exit79_crit_edge, label %land.lhs.true.i73

if.then10.skb_dst.exit79_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit79

land.lhs.true.i73:                                ; preds = %if.then10
  %call.i71 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool1.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool1.not.i72, label %land.rhs.i76, label %land.lhs.true.i73.skb_dst.exit79_crit_edge

land.lhs.true.i73.skb_dst.exit79_crit_edge:       ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit79

land.rhs.i76:                                     ; preds = %land.lhs.true.i73
  %call2.i74 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74)
  %tobool3.not.i75 = icmp eq i32 %call2.i74, 0
  br i1 %tobool3.not.i75, label %do.end.i77, label %land.rhs.i76.skb_dst.exit79_crit_edge, !prof !25

land.rhs.i76.skb_dst.exit79_crit_edge:            ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit79

do.end.i77:                                       ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit79

skb_dst.exit79:                                   ; preds = %do.end.i77, %land.rhs.i76.skb_dst.exit79_crit_edge, %land.lhs.true.i73.skb_dst.exit79_crit_edge, %if.then10.skb_dst.exit79_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 8
  %and25.i78 = and i32 %23, -2
  %24 = inttoptr i32 %and25.i78 to ptr
  %error = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool12.not = icmp eq i16 %26, 0
  br i1 %tobool12.not, label %do.body14, label %skb_dst.exit79.if.end23_crit_edge

skb_dst.exit79.if.end23_crit_edge:                ; preds = %skb_dst.exit79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.body14:                                        ; preds = %skb_dst.exit79
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i62 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i62 to ptr
  %preempt_count.i.i63 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i63, align 4
  %add.i64 = add i32 %30, 1
  store volatile i32 %add.i64, ptr %preempt_count.i.i63, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %33 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %34 to i32
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  tail call void @dst_cache_set_ip6(ptr noundef %data.i, ptr noundef %24, ptr noundef %saddr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %35 = tail call i32 @llvm.read_register.i32(metadata !14) #11
  %and.i.i.i65 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i65 to ptr
  %preempt_count.i.i66 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i66, align 4
  %sub.i67 = add i32 %38, -1
  store volatile i32 %sub.i67, ptr %preempt_count.i.i66, align 4
  br label %if.end23

if.else:                                          ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %40 = ptrtoint ptr %call5 to i32
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %0, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %do.body14, %skb_dst.exit79.if.end23_crit_edge
  %dst.0 = phi ptr [ %call5, %if.else ], [ %24, %skb_dst.exit79.if.end23_crit_edge ], [ %24, %do.body14 ]
  %42 = ptrtoint ptr %dst.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst.0, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %45 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 21
  %46 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %needed_headroom, align 8
  %conv25 = zext i16 %47 to i32
  %add = add nuw nsw i32 %conv25, %conv
  %and = and i32 %add, 131056
  %add26 = add nuw nsw i32 %and, 16
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %48 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i81 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i81, label %if.end23.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end23.skb_header_cloned.exit.i_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %51 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i82 = and i32 %52, 65535
  %shr.i.i = ashr i32 %52, 16
  %sub.i.i = sub nsw i32 %and.i.i82, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end23.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end23.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %55 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add26)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add26
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end36_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end36_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %57 = tail call i32 @llvm.usub.sat.i32(i32 %add26, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %57, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool28.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool28.not, label %skb_cow_head.exit.if.end36_crit_edge, label %skb_cow_head.exit.cleanup_crit_edge, !prof !26

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_cow_head.exit.if.end36_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end36:                                         ; preds = %skb_cow_head.exit.if.end36_crit_edge, %skb_header_cloned.exit.i.if.end36_crit_edge
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %0, align 8
  %and.i.i83 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %and.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.end36.dst_input.exit_crit_edge, label %land.lhs.true.i.i

if.end36.dst_input.exit_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %if.end36
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !25

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %if.end36.dst_input.exit_crit_edge
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %61, -2
  %62 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %64(ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %dst_input.exit, %skb_cow_head.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call1.i, %dst_input.exit ], [ %call4.i.i, %skb_cow_head.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpl_fill_encap_info(ptr noundef %skb, ptr nocapture noundef readonly %lwtstate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %hdrlen.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %tuninfo.i, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %1 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %call.i = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 1, i32 noundef %shl.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nla_put_rpl_srh.exit_crit_edge, label %2

entry.nla_put_rpl_srh.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_rpl_srh.exit

2:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 4
  %3 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %tuninfo.i, i32 %shl.i)
  br label %nla_put_rpl_srh.exit

nla_put_rpl_srh.exit:                             ; preds = %2, %entry.nla_put_rpl_srh.exit_crit_edge
  %4 = phi i32 [ 0, %2 ], [ -90, %entry.nla_put_rpl_srh.exit_crit_edge ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rpl_encap_nlsize(ptr nocapture noundef readonly %lwtstate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %hdrlen = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %tuninfo.i, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub.i = add nuw nsw i32 %add, 15
  %and.i = and i32 %sub.i, 4092
  ret i32 %and.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rpl_encap_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 3
  %tuninfo.i15 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 3
  %hdrlen = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %tuninfo.i, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %hdrlen4 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %tuninfo.i15, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen4, align 1
  %conv5 = zext i8 %3 to i32
  %add6 = shl nuw nsw i32 %conv5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add6)
  %cmp.not = icmp eq i32 %add, %add6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shl = add nuw nsw i32 %add, 8
  %call9 = tail call i32 @memcmp(ptr noundef %tuninfo.i, ptr noundef %tuninfo.i15, i32 noundef %shl) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_rpl_srh_loop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpl_do_srh(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !25

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %4)
  %cmp.not = icmp eq i16 %4, -31011
  br i1 %cmp.not, label %if.end, label %skb_dst.exit.cleanup_crit_edge

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lwtstate, align 4
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 1, i32 3
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %segments_left.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %tuninfo.i, i32 0, i32 3
  %14 = ptrtoint ptr %segments_left.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %segments_left.i, align 1
  %conv.i = zext i8 %15 to i32
  %16 = shl nuw nsw i32 %conv.i, 5
  %17 = or i32 %16, 16
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 2848) #16
  %tobool.not.i1 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i1, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %hdrlen3.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %tuninfo.i, i32 0, i32 1
  %18 = ptrtoint ptr %hdrlen3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdrlen3.i, align 1
  %conv4.i = zext i8 %19 to i32
  %add.i = shl nuw nsw i32 %conv4.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %add.ptr.i = getelementptr i8, ptr %call8.i.i.i, i32 %shl.i
  %20 = ptrtoint ptr %tuninfo.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %tuninfo.i, align 1
  %22 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %call8.i.i.i, align 128
  %segments.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %call8.i.i.i, i32 0, i32 5
  %segments5.i = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 1, i32 5
  %arrayidx.i = getelementptr %struct.lwtunnel_state, ptr %9, i32 2, i32 2
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %conv7.i = and i32 %24, 255
  %sub.i = shl nuw nsw i32 %conv7.i, 4
  %mul.i = add nsw i32 %sub.i, -16
  %25 = call ptr @memcpy(ptr %segments.i, ptr %arrayidx.i, i32 %mul.i)
  %sub11.i = add nsw i32 %conv7.i, -1
  %arrayidx12.i = getelementptr [0 x %struct.in6_addr], ptr %segments.i, i32 0, i32 %sub11.i
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %26 = call ptr @memcpy(ptr %arrayidx12.i, ptr %daddr.i, i32 16)
  %segments_left15.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %call8.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %segments_left15.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %segments_left15.i, align 1
  %sub17.i = add i8 %28, -1
  tail call void @ipv6_rpl_srh_compress(ptr noundef %add.ptr.i, ptr noundef nonnull %call8.i.i.i, ptr noundef %segments5.i, i8 noundef zeroext %sub17.i) #11
  %hdrlen19.i = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %add.ptr.i, i32 0, i32 1
  %29 = ptrtoint ptr %hdrlen19.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hdrlen19.i, align 1
  %conv20.i = zext i8 %30 to i32
  %add21.i = shl nuw nsw i32 %conv20.i, 3
  %shl22.i = add nuw nsw i32 %add21.i, 8
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %31 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mac_len.i, align 4
  %conv23.i = zext i16 %32 to i32
  %add24.i = add nuw nsw i32 %shl22.i, %conv23.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %33 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i1.i

if.end.i.skb_header_cloned.exit.i.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i.i

if.end.i.i1.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %37, 65535
  %shr.i.i.i = ashr i32 %37, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i1.i, %if.end.i.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i2.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i1.i ], [ true, %if.end.i.skb_header_cloned.exit.i.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i.i, align 4
  %40 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add24.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %add24.i
  %or.cond.i.i.i = and i1 %retval.0.i.i2.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end30.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end30.i_crit_edge:  ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %42 = tail call i32 @llvm.usub.sat.i32(i32 %add24.i, i32 %sub.ptr.sub.i.i.i.i) #11
  %add.i.i.i = add nuw nsw i32 %42, 127
  %and.i4.i.i = and i32 %add.i.i.i, -128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool26.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool26.not.i, label %skb_cow_head.exit.i.if.end30.i_crit_edge, label %skb_cow_head.exit.i.cleanup.sink.split.i_crit_edge, !prof !26

skb_cow_head.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

skb_cow_head.exit.i.if.end30.i_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %skb_cow_head.exit.i.if.end30.i_crit_edge, %skb_header_cloned.exit.i.i.if.end30.i_crit_edge
  %call31.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #11
  %43 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i.i, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %45 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %46 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %if.end30.i.skb_postpull_rcsum.exit.i_crit_edge [
    i2 -2, label %if.then.i.i
    i2 -1, label %land.lhs.true.i.i
  ]

if.end30.i.skb_postpull_rcsum.exit.i_crit_edge:   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_postpull_rcsum.exit.i

if.then.i.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i = zext i16 %48 to i32
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %conv.i.i
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %sub.i.i3.i = sub i32 0, %51
  %call2.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef 40, i32 noundef %sub.i.i3.i) #11
  %sub.i1.i.i = sub i32 0, %call2.i.i
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i1.i.i, ptr %49, align 8
  br label %skb_postpull_rcsum.exit.i

land.lhs.true.i.i:                                ; preds = %if.end30.i
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 8
  %conv.i.i4.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i7.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i.i.i8.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.neg.i.i.i = add i32 %conv.i.i4.i, %sub.ptr.rhs.cast.i.i.i8.i
  %sub.i2.i.i = sub i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.lhs.cast.i.i.i7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i.i)
  %cmp13.i.i = icmp slt i32 %sub.i2.i.i, 0
  br i1 %cmp13.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.skb_postpull_rcsum.exit.i_crit_edge

land.lhs.true.i.i.skb_postpull_rcsum.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_postpull_rcsum.exit.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear18.i.i = and i16 %bf.load.i.i, -1537
  %58 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %bf.clear18.i.i, ptr %ip_summed.i.i, align 8
  br label %skb_postpull_rcsum.exit.i

skb_postpull_rcsum.exit.i:                        ; preds = %if.then15.i.i, %land.lhs.true.i.i.skb_postpull_rcsum.exit.i_crit_edge, %if.then.i.i, %if.end30.i.skb_postpull_rcsum.exit.i_crit_edge
  %add33.i = add nuw nsw i32 %add21.i, 48
  %call34.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add33.i) #11
  %59 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i.i, align 4
  %61 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i10.i = trunc i32 %sub.ptr.sub.i.i to i16
  %63 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i10.i, ptr %network_header.i.i.i, align 4
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %64 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mac_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %65)
  %cmp.i.not.i12.i = icmp eq i16 %65, -1
  br i1 %cmp.i.not.i12.i, label %skb_postpull_rcsum.exit.i.skb_mac_header_rebuild.exit.i_crit_edge, label %if.then.i21.i

skb_postpull_rcsum.exit.i.skb_mac_header_rebuild.exit.i_crit_edge: ; preds = %skb_postpull_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_mac_header_rebuild.exit.i

if.then.i21.i:                                    ; preds = %skb_postpull_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i14.i = zext i16 %65 to i32
  %add.ptr.i.i15.i = getelementptr i8, ptr %62, i32 %conv.i.i14.i
  %66 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mac_len.i, align 4
  %conv.i16.i = zext i16 %67 to i32
  %conv1.i11.i.i = sub i16 %conv.i10.i, %67
  %68 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv1.i11.i.i, ptr %mac_header.i.i.i, align 2
  %conv.i14.i.i = zext i16 %conv1.i11.i.i to i32
  %add.ptr.i15.i.i = getelementptr i8, ptr %62, i32 %conv.i14.i.i
  %69 = call ptr @memmove(ptr %add.ptr.i15.i.i, ptr %add.ptr.i.i15.i, i32 %conv.i16.i)
  br label %skb_mac_header_rebuild.exit.i

skb_mac_header_rebuild.exit.i:                    ; preds = %if.then.i21.i, %skb_postpull_rcsum.exit.i.skb_mac_header_rebuild.exit.i_crit_edge
  %70 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i.i, align 8
  %72 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i24.i = zext i16 %73 to i32
  %add.ptr.i.i25.i = getelementptr i8, ptr %71, i32 %conv.i.i24.i
  %74 = call ptr @memmove(ptr %add.ptr.i.i25.i, ptr %add.ptr.i.i.i, i32 40)
  %add.ptr36.i = getelementptr i8, ptr %add.ptr.i.i25.i, i32 40
  %75 = call ptr @memcpy(ptr %add.ptr36.i, ptr %add.ptr.i, i32 %shl22.i)
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i25.i, i32 0, i32 3
  %76 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nexthdr.i, align 2
  %78 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %add.ptr36.i, align 1
  store i8 43, ptr %nexthdr.i, align 2
  %daddr39.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i25.i, i32 0, i32 6
  %79 = call ptr @memcpy(ptr %daddr39.i, ptr %segments5.i, i32 16)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %82 = trunc i32 %81 to i16
  %conv43.i = add i16 %82, -40
  %83 = load ptr, ptr %head.i.i.i, align 8
  %84 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i28.i = zext i16 %84 to i32
  %add.ptr.i.i29.i = getelementptr i8, ptr %83, i32 %conv.i.i28.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29.i, i32 0, i32 2
  %85 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv43.i, ptr %payload_len.i, align 4
  %86 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i.i.i.i, align 4
  %88 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i31.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %add.i.i = add i16 %conv.i.i31.i, 40
  %89 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %add.i.i, ptr %transport_header.i.i.i, align 2
  %90 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i.i32.i = load i16, ptr %ip_summed.i.i, align 8
  %91 = and i16 %bf.load.i.i32.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %91)
  %cmp.i.i.i = icmp eq i16 %91, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %skb_mac_header_rebuild.exit.i.cleanup.sink.split.i_crit_edge

skb_mac_header_rebuild.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %skb_mac_header_rebuild.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.then.i.i.i:                                    ; preds = %skb_mac_header_rebuild.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %call.i.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i25.i, i32 noundef %add33.i, i32 noundef 0) #11
  %add.i.i.i.i.i = add i32 %call.i.i.i, %94
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i33.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i33.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add1.i.i.i.i.i, ptr %92, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i.i, %skb_mac_header_rebuild.exit.i.cleanup.sink.split.i_crit_edge, %skb_cow_head.exit.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call4.i.i.i, %skb_cow_head.exit.i.cleanup.sink.split.i_crit_edge ], [ 0, %skb_mac_header_rebuild.exit.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.then.i.i.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %skb_dst.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_rpl_srh_compress(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/rpl_iptunnel.c", i32 365, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rpl_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rpl_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @rpl_ops, !7, !"rpl_ops", i1 false, i1 false}
!7 = !{!"../net/ipv6/rpl_iptunnel.c", i32 346, i32 40}
!8 = !{ptr @nla_parse_nested.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!10 = !{ptr @rpl_iptunnel_policy, !11, !"rpl_iptunnel_policy", i1 false, i1 false}
!11 = !{!"../net/ipv6/rpl_iptunnel.c", i32 35, i32 32}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!14 = !{!"sp"}
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
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2157657922}
!28 = !{i64 2157658019}
!29 = !{i64 2157658305}
!30 = !{i64 2157658402}
!31 = !{i64 2157658778}
!32 = !{i64 2157658875}
!33 = !{i64 2157659068}
!34 = !{i64 2157659165}
