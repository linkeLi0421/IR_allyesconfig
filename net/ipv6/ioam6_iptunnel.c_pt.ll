; ModuleID = '/llk/IR_all_yes/net/ipv6/ioam6_iptunnel.c_pt.bc'
source_filename = "../net/ipv6/ioam6_iptunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.anon.92 = type { i16, i16 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ioam6_lwt_encap = type { %struct.ipv6_opt_hdr, [2 x i8], %struct.ioam6_hdr, %struct.ioam6_trace_hdr }
%struct.ioam6_hdr = type { i8, i8, i8, i8 }
%struct.ioam6_trace_hdr = type { i16, i16, %union.anon.153, [0 x i8] }
%union.anon.153 = type { i32 }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ioam6_iptun_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @ioam6_build_state, ptr @ioam6_destroy_state, ptr @ioam6_output, ptr null, ptr @ioam6_fill_encap_info, ptr @ioam6_encap_nlsize, ptr @ioam6_encap_cmp, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ioam6_build_state.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"this mode needs a tunnel destination\00", [59 x i8] zeroinitializer }, align 32
@ioam6_build_state.__msg.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"missing trace\00", [18 x i8] zeroinitializer }, align 32
@ioam6_build_state.__msg.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid trace validation\00", [39 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@ioam6_iptunnel_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.92 } }, { i8, i8, i16, { %struct.anon.92 } }, { i8, i8, i16, { %struct.anon.92 } } }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.92 } }, { i8, i8, i16, { %struct.anon.92 } }, { i8, i8, i16, { %struct.anon.92 } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.92 } } { i8 1, i8 1, i16 0, { %struct.anon.92 } { %struct.anon.92 { i16 1, i16 3 } } }, { i8, i8, i16, { %struct.anon.92 } } { i8 11, i8 1, i16 0, { %struct.anon.92 } { %struct.anon.92 { i16 16, i16 16 } } }, { i8, i8, i16, { %struct.anon.92 } } { i8 11, i8 1, i16 0, { %struct.anon.92 } { %struct.anon.92 { i16 8, i16 8 } } } }>, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"ioam6_iptun_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 404, i32 40 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 115, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 120, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 126, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 1208, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"ioam6_iptunnel_policy\00", align 1
@___asan_gen_.21 = private constant [29 x i8] c"../net/ipv6/ioam6_iptunnel.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 57, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1011, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @ioam6_iptun_ops, ptr @ioam6_build_state.__msg, ptr @ioam6_build_state.__msg.1, ptr @ioam6_build_state.__msg.2, ptr @nla_parse_nested.__msg, ptr @ioam6_iptunnel_policy, ptr @.str], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_iptun_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_build_state.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_build_state.__msg.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_build_state.__msg.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_iptunnel_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ioam6_iptunnel_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @ioam6_iptun_ops, i32 noundef 9) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ioam6_iptunnel_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_del_ops(ptr noundef nonnull @ioam6_iptun_ops, i32 noundef 9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_build_state(ptr nocapture noundef readnone %net, ptr noundef %nla, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  %tmp = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #7
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %family)
  %cmp.not = icmp eq i32 %family, 10
  %3 = call ptr @memset(ptr %tb, i32 255, i32 16)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #7
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %7 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %8 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %9 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ioam6_iptunnel_policy, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp1 = icmp slt i32 %call6.i, 0
  br i1 %cmp1, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end3

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %nla_parse_nested.exit
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end3.if.end16_crit_edge, label %if.end7

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end7:                                          ; preds = %if.end3
  %add.ptr.i.i150 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i150 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i150, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool9.not = icmp ne ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp10.not = icmp eq i8 %14, 1
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp10.not
  br i1 %or.cond, label %if.end7.if.end16_crit_edge, label %do.body

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.body:                                          ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @ioam6_build_state.__msg) #7
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %if.then14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ioam6_build_state.__msg, ptr %extack, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end7.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %mode.0159 = phi i8 [ %14, %if.end7.if.end16_crit_edge ], [ 1, %if.end3.if.end16_crit_edge ]
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %do.body20, label %if.end28

do.body20:                                        ; preds = %if.end16
  call void @do_trace_netlink_extack(ptr noundef nonnull @ioam6_build_state.__msg.1) #7
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.cleanup_crit_edge, label %if.then23

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ioam6_build_state.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %21 = getelementptr i8, ptr %19, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i151 = icmp eq i32 %23, 0
  br i1 %tobool.not.i151, label %if.end28.do.body33_crit_edge, label %lor.lhs.false.i

if.end28.do.body33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

lor.lhs.false.i:                                  ; preds = %if.end28
  %remlen.i = getelementptr i8, ptr %19, i32 6
  %24 = ptrtoint ptr %remlen.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %bf.load.i = load i16, ptr %remlen.i, align 1
  %25 = trunc i16 %bf.load.i to i8
  %bf.cast.i = and i8 %25, 127
  %26 = add nsw i8 %bf.cast.i, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 -61, i8 %26)
  %27 = icmp ult i8 %26, -61
  br i1 %27, label %lor.lhs.false.i.do.body33_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.do.body33_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %bf.lshr.i = lshr i32 %23, 19
  %bf.lshr12.i = lshr i32 %23, 18
  %bf.clear10797.i = or i32 %bf.lshr.i, %bf.lshr12.i
  %bf.lshr15.i = lshr i32 %23, 17
  %or798.i = or i32 %bf.clear10797.i, %bf.lshr15.i
  %bf.lshr19.i = lshr i32 %23, 16
  %or17799.i = or i32 %or798.i, %bf.lshr19.i
  %bf.lshr23.i = lshr i32 %23, 15
  %or21800.i = or i32 %or17799.i, %bf.lshr23.i
  %bf.lshr27.i = lshr i32 %23, 14
  %or25801.i = or i32 %or21800.i, %bf.lshr27.i
  %bf.lshr31.i = lshr i32 %23, 13
  %or29802.i = or i32 %or25801.i, %bf.lshr31.i
  %bf.lshr35.i = lshr i32 %23, 12
  %or33803.i = or i32 %or29802.i, %bf.lshr35.i
  %bf.lshr39.i = lshr i32 %23, 11
  %or37804.i = or i32 %or33803.i, %bf.lshr39.i
  %bf.lshr43.i = lshr i32 %23, 10
  %or41805.i = or i32 %or37804.i, %bf.lshr43.i
  %or45.i = and i32 %or41805.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or45.i)
  %tobool46.not.i = icmp eq i32 %or45.i, 0
  br i1 %tobool46.not.i, label %if.end.i, label %lor.lhs.false8.i.do.body33_crit_edge

lor.lhs.false8.i.do.body33_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %bf.clear48.i = and i16 %bf.load.i, 2047
  %28 = ptrtoint ptr %remlen.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %bf.clear48.i, ptr %remlen.i, align 1
  %and.i = and i32 %23, -15728640
  %call.i.i = call i32 @__sw_hweight32(i32 noundef %and.i) #7
  %29 = ptrtoint ptr %remlen.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load365.i = load i16, ptr %remlen.i, align 1
  %30 = trunc i32 %call.i.i to i16
  %31 = shl i16 %30, 11
  %bf.lshr366806.i = add i16 %31, %bf.load365.i
  store i16 %bf.lshr366806.i, ptr %remlen.i, align 1
  %and374.i = and i32 %23, 14680064
  %call.i809.i = call i32 @__sw_hweight32(i32 noundef %and374.i) #7
  %32 = ptrtoint ptr %remlen.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %bf.load702.i = load i16, ptr %remlen.i, align 1
  %cond699.tr.i = trunc i32 %call.i809.i to i16
  %33 = shl i16 %cond699.tr.i, 12
  %bf.lshr703807.i = add i16 %33, %bf.load702.i
  store i16 %bf.lshr703807.i, ptr %remlen.i, align 1
  %34 = shl i16 %bf.lshr703807.i, 2
  %35 = and i16 %34, 508
  %narrow = add nuw nsw i16 %35, 7
  %36 = and i16 %narrow, 1016
  %narrow149 = add nuw nsw i16 %36, 44
  %add44 = zext i16 %narrow149 to i32
  %call45 = call ptr @lwtunnel_state_alloc(i32 noundef %add44) #7
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end.i.cleanup_crit_edge, label %if.end48

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body33:                                        ; preds = %lor.lhs.false8.i.do.body33_crit_edge, %lor.lhs.false.i.do.body33_crit_edge, %if.end28.do.body33_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @ioam6_build_state.__msg.2) #7
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %if.then36

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ioam6_build_state.__msg.2, ptr %extack, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %40 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %41 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 0, i32 7
  %call50 = call i32 @dst_cache_init(ptr noundef %data.i, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call45) #7
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %mode54 = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 1, i32 3
  %42 = ptrtoint ptr %mode54 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %mode.0159, ptr %mode54, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %tobool56.not = icmp eq ptr %44, null
  br i1 %tobool56.not, label %if.end53.if.end59_crit_edge, label %if.then57

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %tundst = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %45 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %44, i32 noundef 16) #7
  %46 = call ptr @memcpy(ptr %tundst, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 2
  %add61 = add nuw nsw i16 %36, 16
  %shr = lshr exact i16 %add61, 3
  %47 = trunc i16 %shr to i8
  %conv62 = add nsw i8 %47, -1
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %tuninfo.i, i32 0, i32 1
  %48 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv62, ptr %hdrlen, align 1
  %pad = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 2, i32 1
  %49 = ptrtoint ptr %pad to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %pad, align 1
  %ioamh = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 2, i32 2
  %type = getelementptr inbounds %struct.ioam6_lwt_encap, ptr %tuninfo.i, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %type, align 1
  %51 = ptrtoint ptr %ioamh to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 49, ptr %ioamh, align 1
  %52 = ptrtoint ptr %remlen.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load66 = load i16, ptr %remlen.i, align 1
  %bf.load66.tr = trunc i16 %bf.load66 to i8
  %53 = shl i8 %bf.load66.tr, 2
  %conv72 = add i8 %53, 10
  %opt_len = getelementptr inbounds %struct.ioam6_lwt_encap, ptr %tuninfo.i, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %opt_len to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv72, ptr %opt_len, align 1
  %traceh = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 2, i32 3
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %add.ptr.i, align 1
  %57 = ptrtoint ptr %traceh to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %traceh, align 1
  %bf.load75 = load i16, ptr %remlen.i, align 1
  %58 = shl i16 %bf.load75, 2
  %59 = and i16 %58, 508
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %59)
  %tobool81.not = icmp eq i16 %36, %59
  br i1 %tobool81.not, label %if.end59.if.end101_crit_edge, label %if.then82

if.end59.if.end101_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then82:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %mul79 = zext i16 %59 to i32
  %data = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 2, i32 5
  %arrayidx90 = getelementptr [0 x i8], ptr %data, i32 0, i32 %mul79
  %60 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %arrayidx90, align 1
  %61 = ptrtoint ptr %remlen.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %bf.load94 = load i16, ptr %remlen.i, align 1
  %62 = shl i16 %bf.load94, 2
  %63 = and i16 %62, 508
  %64 = or i16 %63, 1
  %add99 = zext i16 %64 to i32
  %arrayidx100 = getelementptr [0 x i8], ptr %data, i32 0, i32 %add99
  %65 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %arrayidx100, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then82, %if.end59.if.end101_crit_edge
  %66 = ptrtoint ptr %call45 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 9, ptr %call45, align 4
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call45, i32 0, i32 1
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags, align 2
  %69 = or i16 %68, 1
  store i16 %69, ptr %flags, align 2
  %70 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call45, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then52, %if.then36, %do.body33.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then23, %do.body20.cleanup_crit_edge, %if.then14, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.then52 ], [ 0, %if.end101 ], [ -22, %entry.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then14 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then23 ], [ -22, %do.body20.cleanup_crit_edge ], [ -22, %if.then36 ], [ -22, %do.body33.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioam6_destroy_state(ptr noundef %lwt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  tail call void @dst_cache_destroy(ptr noundef %data.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !24

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %7)
  %cmp.not = icmp eq i16 %7, -31011
  br i1 %cmp.not, label %if.end, label %skb_dst.exit.drop_crit_edge

skb_dst.exit.drop_crit_edge:                      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end:                                           ; preds = %skb_dst.exit
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 0, i32 7
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %orig_daddr.sroa.0.0.copyload = load i32, ptr %daddr, align 4
  %orig_daddr.sroa.5.0.daddr.sroa_idx = getelementptr inbounds i8, ptr %daddr, i32 4
  %15 = ptrtoint ptr %orig_daddr.sroa.5.0.daddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %orig_daddr.sroa.5.0.copyload = load i32, ptr %orig_daddr.sroa.5.0.daddr.sroa_idx, align 4
  %orig_daddr.sroa.7.0.daddr.sroa_idx = getelementptr inbounds i8, ptr %daddr, i32 8
  %16 = ptrtoint ptr %orig_daddr.sroa.7.0.daddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %orig_daddr.sroa.7.0.copyload = load i32, ptr %orig_daddr.sroa.7.0.daddr.sroa_idx, align 4
  %orig_daddr.sroa.9.0.daddr.sroa_idx = getelementptr inbounds i8, ptr %daddr, i32 12
  %17 = ptrtoint ptr %orig_daddr.sroa.9.0.daddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %orig_daddr.sroa.9.0.copyload = load i32, ptr %orig_daddr.sroa.9.0.daddr.sroa_idx, align 4
  %mode = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 1, i32 3
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end.drop_crit_edge [
    i8 1, label %if.end.do_inline_crit_edge
    i8 2, label %if.end.do_encap_crit_edge
    i8 3, label %sw.bb28
  ]

if.end.do_encap_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_encap

if.end.do_inline_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_inline

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

do_inline:                                        ; preds = %sw.bb28.do_inline_crit_edge, %if.end.do_inline_crit_edge
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp7 = icmp eq i8 %22, 0
  br i1 %cmp7, label %do_inline.out_crit_edge, label %if.end10

do_inline.out_crit_edge:                          ; preds = %do_inline
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %do_inline
  %tuninfo = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 2
  %hdrlen1.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %tuninfo, i32 0, i32 1
  %23 = ptrtoint ptr %hdrlen1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdrlen1.i, align 1
  %conv.i = zext i8 %24 to i32
  %add.i148 = shl nuw nsw i32 %conv.i, 3
  %shl.i = add nuw nsw i32 %add.i148, 8
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %25 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mac_len.i, align 4
  %conv2.i = zext i16 %26 to i32
  %add3.i = add nuw nsw i32 %shl.i, %conv2.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %27 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end10.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i

if.end10.skb_header_cloned.exit.i.i_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #7
  %30 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i149 = and i32 %31, 65535
  %shr.i.i.i = ashr i32 %31, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i149, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i, %if.end10.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i ], [ true, %if.end10.skb_header_cloned.exit.i.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i.i, align 4
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add3.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %add3.i
  %or.cond.i.i.i = and i1 %retval.0.i.i.i, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end.i_crit_edge:    ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %add3.i, i32 %sub.ptr.sub.i.i.i.i) #7
  %add.i.i.i = add nuw nsw i32 %36, 127
  %and.i4.i.i = and i32 %add.i.i.i, -128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i150 = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i150, label %skb_cow_head.exit.i.if.end.i_crit_edge, label %skb_cow_head.exit.i.drop_crit_edge, !prof !25

skb_cow_head.exit.i.drop_crit_edge:               ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

skb_cow_head.exit.i.if.end.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %skb_cow_head.exit.i.if.end.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i, align 8
  %39 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %40 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i.i
  %call7.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #7
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %43 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %44 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.4)
  switch i2 %trunc.i.i, label %if.end.i.skb_postpull_rcsum.exit.i_crit_edge [
    i2 -2, label %if.then.i.i
    i2 -1, label %land.lhs.true.i.i
  ]

if.end.i.skb_postpull_rcsum.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpull_rcsum.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i151 = zext i16 %46 to i32
  %add.ptr.i.i152 = getelementptr i8, ptr %42, i32 %conv.i.i151
  %47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %sub.i.i46.i = sub i32 0, %49
  %call2.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i152, i32 noundef 40, i32 noundef %sub.i.i46.i) #7
  %sub.i1.i.i = sub i32 0, %call2.i.i
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i1.i.i, ptr %47, align 8
  br label %skb_postpull_rcsum.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 8
  %conv.i.i47.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i50.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i.i51.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.neg.i.i.i = add i32 %conv.i.i47.i, %sub.ptr.rhs.cast.i.i.i51.i
  %sub.i2.i.i = sub i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.lhs.cast.i.i.i50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i.i)
  %cmp13.i.i = icmp slt i32 %sub.i2.i.i, 0
  br i1 %cmp13.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.skb_postpull_rcsum.exit.i_crit_edge

land.lhs.true.i.i.skb_postpull_rcsum.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpull_rcsum.exit.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear18.i.i = and i16 %bf.load.i.i, -1537
  %56 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %bf.clear18.i.i, ptr %ip_summed.i.i, align 8
  br label %skb_postpull_rcsum.exit.i

skb_postpull_rcsum.exit.i:                        ; preds = %if.then15.i.i, %land.lhs.true.i.i.skb_postpull_rcsum.exit.i_crit_edge, %if.then.i.i, %if.end.i.skb_postpull_rcsum.exit.i_crit_edge
  %add9.i = add nuw nsw i32 %add.i148, 48
  %call10.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add9.i) #7
  %57 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i, align 4
  %59 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i53.i = trunc i32 %sub.ptr.sub.i.i to i16
  %61 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i53.i, ptr %network_header.i.i, align 4
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %62 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %mac_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp.i.not.i55.i = icmp eq i16 %63, -1
  br i1 %cmp.i.not.i55.i, label %skb_postpull_rcsum.exit.i.skb_mac_header_rebuild.exit.i_crit_edge, label %if.then.i64.i

skb_postpull_rcsum.exit.i.skb_mac_header_rebuild.exit.i_crit_edge: ; preds = %skb_postpull_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_mac_header_rebuild.exit.i

if.then.i64.i:                                    ; preds = %skb_postpull_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i57.i = zext i16 %63 to i32
  %add.ptr.i.i58.i = getelementptr i8, ptr %60, i32 %conv.i.i57.i
  %64 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mac_len.i, align 4
  %conv.i59.i = zext i16 %65 to i32
  %conv1.i11.i.i = sub i16 %conv.i53.i, %65
  %66 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv1.i11.i.i, ptr %mac_header.i.i.i, align 2
  %conv.i14.i.i = zext i16 %conv1.i11.i.i to i32
  %add.ptr.i15.i.i = getelementptr i8, ptr %60, i32 %conv.i14.i.i
  %67 = call ptr @memmove(ptr %add.ptr.i15.i.i, ptr %add.ptr.i.i58.i, i32 %conv.i59.i)
  br label %skb_mac_header_rebuild.exit.i

skb_mac_header_rebuild.exit.i:                    ; preds = %if.then.i64.i, %skb_postpull_rcsum.exit.i.skb_mac_header_rebuild.exit.i_crit_edge
  %68 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i, align 8
  %70 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i67.i = zext i16 %71 to i32
  %add.ptr.i.i68.i = getelementptr i8, ptr %69, i32 %conv.i.i67.i
  %72 = call ptr @memmove(ptr %add.ptr.i.i68.i, ptr %add.ptr.i.i.i, i32 40)
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i68.i, i32 0, i32 3
  %73 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nexthdr.i, align 2
  %75 = ptrtoint ptr %tuninfo to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %tuninfo, align 1
  %76 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i.i, align 4
  %78 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i70.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %add.i.i = add i16 %conv.i.i70.i, 40
  %79 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %add.i.i, ptr %transport_header.i.i.i, align 2
  %80 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i71.i = load i16, ptr %ip_summed.i.i, align 8
  %81 = and i16 %bf.load.i.i71.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %81)
  %cmp.i.i.i = icmp eq i16 %81, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %skb_mac_header_rebuild.exit.i.skb_postpush_rcsum.exit.i_crit_edge

skb_mac_header_rebuild.exit.i.skb_postpush_rcsum.exit.i_crit_edge: ; preds = %skb_mac_header_rebuild.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpush_rcsum.exit.i

if.then.i.i.i:                                    ; preds = %skb_mac_header_rebuild.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %call.i.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i68.i, i32 noundef %add9.i, i32 noundef 0) #7
  %add.i.i.i.i.i = add i32 %call.i.i.i, %84
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add1.i.i.i.i.i, ptr %82, align 8
  br label %skb_postpush_rcsum.exit.i

skb_postpush_rcsum.exit.i:                        ; preds = %if.then.i.i.i, %skb_mac_header_rebuild.exit.i.skb_postpush_rcsum.exit.i_crit_edge
  %86 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i.i, align 8
  %88 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i73.i = zext i16 %89 to i32
  %add.ptr.i74.i = getelementptr i8, ptr %87, i32 %conv.i73.i
  %90 = call ptr @memcpy(ptr %add.ptr.i74.i, ptr %tuninfo, i32 %shl.i)
  %91 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %nexthdr.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %92 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len.i, align 4
  %94 = trunc i32 %93 to i16
  %conv17.i = add i16 %94, -40
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i68.i, i32 0, i32 2
  %95 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv17.i, ptr %payload_len.i, align 4
  %96 = load ptr, ptr %head.i.i, align 8
  %97 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i77.i = zext i16 %97 to i32
  %add.ptr.i.i78.i = getelementptr i8, ptr %96, i32 %conv.i.i77.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i78.i, i32 8
  %98 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %add.ptr2.i.i, align 1
  %call3.i.i = tail call ptr @ioam6_namespace(ptr noundef %net, i16 noundef zeroext %99) #7
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %skb_postpush_rcsum.exit.i.sw.epilog_crit_edge, label %if.then.i79.i

skb_postpush_rcsum.exit.i.sw.epilog_crit_edge:    ; preds = %skb_postpush_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i79.i:                                    ; preds = %skb_postpush_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ioam6_fill_trace_data(ptr noundef %skb, ptr noundef nonnull %call3.i.i, ptr noundef %add.ptr2.i.i, i1 noundef zeroext false) #7
  br label %sw.epilog

do_encap:                                         ; preds = %sw.bb28.do_encap_crit_edge, %if.end.do_encap_crit_edge
  %tuninfo17 = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 2
  %tundst = getelementptr inbounds %struct.lwtunnel_state, ptr %9, i32 1, i32 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i153 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i153, label %do_encap.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i154

do_encap.skb_dst.exit.i_crit_edge:                ; preds = %do_encap
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.lhs.true.i.i154:                             ; preds = %do_encap
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i154.skb_dst.exit.i_crit_edge

land.lhs.true.i.i154.skb_dst.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i154
  %call2.i.i155 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i155)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i155, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !24

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i154.skb_dst.exit.i_crit_edge, %do_encap.skb_dst.exit.i_crit_edge
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %101, -2
  %102 = inttoptr i32 %and25.i.i to ptr
  %hdrlen1.i156 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %tuninfo17, i32 0, i32 1
  %103 = ptrtoint ptr %hdrlen1.i156 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %hdrlen1.i156, align 1
  %conv.i157 = zext i8 %104 to i32
  %add.i158 = shl nuw nsw i32 %conv.i157, 3
  %add2.i = add nuw nsw i32 %add.i158, 48
  %mac_len.i159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %105 = ptrtoint ptr %mac_len.i159 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mac_len.i159, align 4
  %conv3.i = zext i16 %106 to i32
  %add4.i = add nuw nsw i32 %add2.i, %conv3.i
  %cloned.i.i.i160 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %107 = ptrtoint ptr %cloned.i.i.i160 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load.i.i.i161 = load i8, ptr %cloned.i.i.i160, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i161)
  %tobool.not.i.i.i162 = icmp sgt i8 %bf.load.i.i.i161, -1
  br i1 %tobool.not.i.i.i162, label %skb_dst.exit.i.skb_header_cloned.exit.i.i179_crit_edge, label %if.end.i.i.i170

skb_dst.exit.i.skb_header_cloned.exit.i.i179_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_header_cloned.exit.i.i179

if.end.i.i.i170:                                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i.i163 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %108 = ptrtoint ptr %end.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i.i.i163, align 4
  %dataref1.i.i.i164 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 10
  %call.i.i.i.i.i165 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i164, i32 noundef 4) #7
  %110 = ptrtoint ptr %dataref1.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %dataref1.i.i.i164, align 4
  %and.i.i.i166 = and i32 %111, 65535
  %shr.i.i.i167 = ashr i32 %111, 16
  %sub.i.i.i168 = sub nsw i32 %and.i.i.i166, %shr.i.i.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i168)
  %cmp.i.not.i.i169 = icmp eq i32 %sub.i.i.i168, 1
  br label %skb_header_cloned.exit.i.i179

skb_header_cloned.exit.i.i179:                    ; preds = %if.end.i.i.i170, %skb_dst.exit.i.skb_header_cloned.exit.i.i179_crit_edge
  %retval.0.i.i.i171 = phi i1 [ %cmp.i.not.i.i169, %if.end.i.i.i170 ], [ true, %skb_dst.exit.i.skb_header_cloned.exit.i.i179_crit_edge ]
  %data.i.i.i.i172 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %112 = ptrtoint ptr %data.i.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i.i.i.i172, align 4
  %114 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i174 = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i.i.i.i175 = ptrtoint ptr %115 to i32
  %sub.ptr.sub.i.i.i.i176 = sub i32 %sub.ptr.lhs.cast.i.i.i.i174, %sub.ptr.rhs.cast.i.i.i.i175
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i176, i32 %add4.i)
  %tobool.not.i3.i.i177 = icmp uge i32 %sub.ptr.sub.i.i.i.i176, %add4.i
  %or.cond.i.i.i178 = and i1 %retval.0.i.i.i171, %tobool.not.i3.i.i177
  br i1 %or.cond.i.i.i178, label %skb_header_cloned.exit.i.i179.if.end.i194_crit_edge, label %skb_cow_head.exit.i184

skb_header_cloned.exit.i.i179.if.end.i194_crit_edge: ; preds = %skb_header_cloned.exit.i.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i194

skb_cow_head.exit.i184:                           ; preds = %skb_header_cloned.exit.i.i179
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %add4.i, i32 %sub.ptr.sub.i.i.i.i176) #7
  %add.i.i.i180 = add nuw nsw i32 %116, 127
  %and.i4.i.i181 = and i32 %add.i.i.i180, -128
  %call4.i.i.i182 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i181, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i182)
  %tobool.not.i183 = icmp eq i32 %call4.i.i.i182, 0
  br i1 %tobool.not.i183, label %skb_cow_head.exit.i184.if.end.i194_crit_edge, label %skb_cow_head.exit.i184.drop_crit_edge, !prof !25

skb_cow_head.exit.i184.drop_crit_edge:            ; preds = %skb_cow_head.exit.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

skb_cow_head.exit.i184.if.end.i194_crit_edge:     ; preds = %skb_cow_head.exit.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i194

if.end.i194:                                      ; preds = %skb_cow_head.exit.i184.if.end.i194_crit_edge, %skb_header_cloned.exit.i.i179.if.end.i194_crit_edge
  %shl.i185 = add nuw nsw i32 %add.i158, 8
  %117 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i, align 8
  %119 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i187 = zext i16 %120 to i32
  %add.ptr.i.i.i188 = getelementptr i8, ptr %118, i32 %conv.i.i.i187
  %call9.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add2.i) #7
  %121 = ptrtoint ptr %data.i.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i.i.i.i172, align 4
  %123 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i189 = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i.i190 = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i.i191 = sub i32 %sub.ptr.lhs.cast.i.i189, %sub.ptr.rhs.cast.i.i190
  %conv.i.i192 = trunc i32 %sub.ptr.sub.i.i191 to i16
  %125 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i.i192, ptr %network_header.i.i, align 4
  %mac_header.i.i.i193 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %126 = ptrtoint ptr %mac_header.i.i.i193 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %mac_header.i.i.i193, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %127)
  %cmp.i.not.i49.i = icmp eq i16 %127, -1
  br i1 %cmp.i.not.i49.i, label %if.end.i194.skb_mac_header_rebuild.exit.i208_crit_edge, label %if.then.i.i199

if.end.i194.skb_mac_header_rebuild.exit.i208_crit_edge: ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_mac_header_rebuild.exit.i208

if.then.i.i199:                                   ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i51.i = zext i16 %127 to i32
  %add.ptr.i.i52.i = getelementptr i8, ptr %124, i32 %conv.i.i51.i
  %128 = ptrtoint ptr %mac_len.i159 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %mac_len.i159, align 4
  %conv.i53.i195 = zext i16 %129 to i32
  %conv1.i11.i.i196 = sub i16 %conv.i.i192, %129
  %130 = ptrtoint ptr %mac_header.i.i.i193 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv1.i11.i.i196, ptr %mac_header.i.i.i193, align 2
  %conv.i14.i.i197 = zext i16 %conv1.i11.i.i196 to i32
  %add.ptr.i15.i.i198 = getelementptr i8, ptr %124, i32 %conv.i14.i.i197
  %131 = call ptr @memmove(ptr %add.ptr.i15.i.i198, ptr %add.ptr.i.i52.i, i32 %conv.i53.i195)
  br label %skb_mac_header_rebuild.exit.i208

skb_mac_header_rebuild.exit.i208:                 ; preds = %if.then.i.i199, %if.end.i194.skb_mac_header_rebuild.exit.i208_crit_edge
  %132 = ptrtoint ptr %data.i.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i.i.i172, align 4
  %134 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i200 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast.i.i.i201 = ptrtoint ptr %135 to i32
  %sub.ptr.sub.i.i.i202 = sub i32 %sub.ptr.lhs.cast.i.i.i200, %sub.ptr.rhs.cast.i.i.i201
  %conv.i.i59.i = trunc i32 %sub.ptr.sub.i.i.i202 to i16
  %transport_header.i.i.i203 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %add.i.i204 = add i16 %conv.i.i59.i, 40
  %136 = ptrtoint ptr %transport_header.i.i.i203 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %add.i.i204, ptr %transport_header.i.i.i203, align 2
  %137 = ptrtoint ptr %tuninfo17 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 41, ptr %tuninfo17, align 1
  %138 = load ptr, ptr %head.i.i, align 8
  %139 = load i16, ptr %transport_header.i.i.i203, align 2
  %conv.i61.i = zext i16 %139 to i32
  %add.ptr.i.i205 = getelementptr i8, ptr %138, i32 %conv.i61.i
  %140 = call ptr @memcpy(ptr %add.ptr.i.i205, ptr %tuninfo17, i32 %shl.i185)
  %141 = load ptr, ptr %head.i.i, align 8
  %142 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i64.i = zext i16 %143 to i32
  %add.ptr.i.i65.i = getelementptr i8, ptr %141, i32 %conv.i.i64.i
  %144 = call ptr @memcpy(ptr %add.ptr.i.i65.i, ptr %add.ptr.i.i.i188, i32 40)
  %nexthdr13.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i65.i, i32 0, i32 3
  %145 = ptrtoint ptr %nexthdr13.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %nexthdr13.i, align 2
  %len14.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %146 = ptrtoint ptr %len14.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len14.i, align 4
  %148 = trunc i32 %147 to i16
  %conv15.i = add i16 %148, -40
  %payload_len.i206 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i65.i, i32 0, i32 2
  %149 = ptrtoint ptr %payload_len.i206 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv15.i, ptr %payload_len.i206, align 4
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i65.i, i32 0, i32 6
  %150 = call ptr @memcpy(ptr %daddr.i, ptr %tundst, i32 16)
  %151 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %102, align 4
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i65.i, i32 0, i32 5
  %call17.i = tail call i32 @ipv6_dev_get_saddr(ptr noundef %net, ptr noundef %152, ptr noundef %daddr.i, i32 noundef 2, ptr noundef %saddr.i) #7
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %153 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %bf.load.i.i66.i = load i16, ptr %ip_summed.i.i.i, align 8
  %154 = and i16 %bf.load.i.i66.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %154)
  %cmp.i.i.i207 = icmp eq i16 %154, 1024
  br i1 %cmp.i.i.i207, label %if.then.i.i.i214, label %skb_mac_header_rebuild.exit.i208.skb_postpush_rcsum.exit.i217_crit_edge

skb_mac_header_rebuild.exit.i208.skb_postpush_rcsum.exit.i217_crit_edge: ; preds = %skb_mac_header_rebuild.exit.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpush_rcsum.exit.i217

if.then.i.i.i214:                                 ; preds = %skb_mac_header_rebuild.exit.i208
  call void @__sanitizer_cov_trace_pc() #9
  %155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 8
  %call.i.i.i209 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i65.i, i32 noundef %add2.i, i32 noundef 0) #7
  %add.i.i.i.i.i210 = add i32 %call.i.i.i209, %157
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i210, i32 %call.i.i.i209)
  %cmp.i.i.i.i.i211 = icmp ult i32 %add.i.i.i.i.i210, %call.i.i.i209
  %conv.i.i.i.i.i212 = zext i1 %cmp.i.i.i.i.i211 to i32
  %add1.i.i.i.i.i213 = add i32 %add.i.i.i.i.i210, %conv.i.i.i.i.i212
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add1.i.i.i.i.i213, ptr %155, align 8
  br label %skb_postpush_rcsum.exit.i217

skb_postpush_rcsum.exit.i217:                     ; preds = %if.then.i.i.i214, %skb_mac_header_rebuild.exit.i208.skb_postpush_rcsum.exit.i217_crit_edge
  %159 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %head.i.i, align 8
  %161 = ptrtoint ptr %transport_header.i.i.i203 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %transport_header.i.i.i203, align 2
  %conv.i.i69.i = zext i16 %162 to i32
  %add.ptr.i.i70.i = getelementptr i8, ptr %160, i32 %conv.i.i69.i
  %add.ptr2.i.i215 = getelementptr i8, ptr %add.ptr.i.i70.i, i32 8
  %163 = ptrtoint ptr %add.ptr2.i.i215 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %add.ptr2.i.i215, align 1
  %call3.i.i216 = tail call ptr @ioam6_namespace(ptr noundef %net, i16 noundef zeroext %164) #7
  %tobool.not.i71.i = icmp eq ptr %call3.i.i216, null
  br i1 %tobool.not.i71.i, label %skb_postpush_rcsum.exit.i217.sw.epilog_crit_edge, label %if.then.i72.i

skb_postpush_rcsum.exit.i217.sw.epilog_crit_edge: ; preds = %skb_postpush_rcsum.exit.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i72.i:                                    ; preds = %skb_postpush_rcsum.exit.i217
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ioam6_fill_trace_data(ptr noundef %skb, ptr noundef nonnull %call3.i.i216, ptr noundef %add.ptr2.i.i215, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %165 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  %tobool29.not = icmp eq ptr %167, null
  br i1 %tobool29.not, label %sw.bb28.do_inline_crit_edge, label %sw.bb28.do_encap_crit_edge

sw.bb28.do_encap_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_encap

sw.bb28.do_inline_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_inline

sw.epilog:                                        ; preds = %if.then.i72.i, %skb_postpush_rcsum.exit.i217.sw.epilog_crit_edge, %if.then.i79.i, %skb_postpush_rcsum.exit.i.sw.epilog_crit_edge
  %168 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %5, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 19
  %170 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %hard_header_len, align 2
  %conv32 = zext i16 %171 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 21
  %172 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %needed_headroom, align 8
  %conv34 = zext i16 %173 to i32
  %add = add nuw nsw i32 %conv34, %conv32
  %and = and i32 %add, 131056
  %add35 = add nuw nsw i32 %and, 16
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %174 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load.i.i219 = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i219)
  %tobool.not.i.i220 = icmp sgt i8 %bf.load.i.i219, -1
  br i1 %tobool.not.i.i220, label %sw.epilog.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

sw.epilog.skb_header_cloned.exit.i_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %175 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %176, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #7
  %177 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i221 = and i32 %178, 65535
  %shr.i.i = ashr i32 %178, 16
  %sub.i.i = sub nsw i32 %and.i.i221, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %sw.epilog.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %sw.epilog.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %179 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %data.i.i.i, align 4
  %181 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i222 = ptrtoint ptr %180 to i32
  %sub.ptr.rhs.cast.i.i.i223 = ptrtoint ptr %182 to i32
  %sub.ptr.sub.i.i.i224 = sub i32 %sub.ptr.lhs.cast.i.i.i222, %sub.ptr.rhs.cast.i.i.i223
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i224, i32 %add35)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i224, %add35
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end45_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end45_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %183 = tail call i32 @llvm.usub.sat.i32(i32 %add35, i32 %sub.ptr.sub.i.i.i224) #7
  %add.i.i225 = add nuw nsw i32 %183, 127
  %and.i4.i = and i32 %add.i.i225, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool37.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool37.not, label %skb_cow_head.exit.if.end45_crit_edge, label %skb_cow_head.exit.drop_crit_edge, !prof !25

skb_cow_head.exit.drop_crit_edge:                 ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

skb_cow_head.exit.if.end45_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end45:                                         ; preds = %skb_cow_head.exit.if.end45_crit_edge, %skb_header_cloned.exit.i.if.end45_crit_edge
  %184 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %head.i.i, align 8
  %186 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i228 = zext i16 %187 to i32
  %add.ptr.i.i229 = getelementptr i8, ptr %185, i32 %conv.i.i228
  %daddr47 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i229, i32 0, i32 6
  %188 = ptrtoint ptr %daddr47 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %daddr47, align 4
  %xor.i = xor i32 %189, %orig_daddr.sroa.0.0.copyload
  %arrayidx6.i = getelementptr [4 x i32], ptr %daddr47, i32 0, i32 1
  %190 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %191, %orig_daddr.sroa.5.0.copyload
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx11.i = getelementptr [4 x i32], ptr %daddr47, i32 0, i32 2
  %192 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %193, %orig_daddr.sroa.7.0.copyload
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx17.i = getelementptr [4 x i32], ptr %daddr47, i32 0, i32 3
  %194 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %195, %orig_daddr.sroa.9.0.copyload
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.end45.out_crit_edge, label %do.body

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body:                                          ; preds = %if.end45
  %196 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i.i = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %199, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %call50 = tail call ptr @dst_cache_get(ptr noundef %data.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %200 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i.i136 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i136 to ptr
  %preempt_count.i.i137 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %preempt_count.i.i137 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %preempt_count.i.i137, align 4
  %sub.i = add i32 %203, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i137, align 4
  %tobool54.not = icmp eq ptr %call50, null
  br i1 %tobool54.not, label %if.then63, label %do.body.if.end86_crit_edge, !prof !24

do.body.if.end86_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then63:                                        ; preds = %do.body
  %204 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %head.i.i, align 8
  %206 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i232 = zext i16 %207 to i32
  %add.ptr.i.i233 = getelementptr i8, ptr %205, i32 %conv.i.i232
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #7
  %208 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr65 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %daddr66 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i233, i32 0, i32 6
  %209 = call ptr @memcpy(ptr %daddr65, ptr %daddr66, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr67 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i233, i32 0, i32 5
  %210 = call ptr @memcpy(ptr %saddr, ptr %saddr67, i32 16)
  %211 = ptrtoint ptr %add.ptr.i.i233 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr.i.i233, align 4
  %and.i234 = and i32 %212, 268435455
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %213 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %and.i234, ptr %flowlabel, align 8
  %214 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %217 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %flowic_mark, align 8
  %nexthdr69 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i233, i32 0, i32 3
  %218 = ptrtoint ptr %nexthdr69 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %nexthdr69, align 2
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %220 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %flowic_proto, align 2
  %call.i235 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #7
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i235, i32 0, i32 15
  %221 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %222)
  %tobool72.not = icmp eq i16 %222, 0
  br i1 %tobool72.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %223 = call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i.i138 = and i32 %223, -16384
  %224 = inttoptr i32 %and.i.i.i138 to ptr
  %preempt_count.i.i139 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %preempt_count.i.i139 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %preempt_count.i.i139, align 4
  %add.i140 = add i32 %226, 1
  store volatile i32 %add.i140, ptr %preempt_count.i.i139, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  call void @dst_cache_set_ip6(ptr noundef %data.i, ptr noundef %call.i235, ptr noundef %saddr) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  %227 = call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i.i141 = and i32 %227, -16384
  %228 = inttoptr i32 %and.i.i.i141 to ptr
  %preempt_count.i.i142 = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %preempt_count.i.i142 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %preempt_count.i.i142, align 4
  %sub.i143 = add i32 %230, -1
  store volatile i32 %sub.i143, ptr %preempt_count.i.i142, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #7
  br label %if.end86

cleanup:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %conv75 = sext i16 %222 to i32
  call void @dst_release(ptr noundef %call.i235) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #7
  br label %drop

if.end86:                                         ; preds = %cleanup.thread, %do.body.if.end86_crit_edge
  %dst.0 = phi ptr [ %call50, %do.body.if.end86_crit_edge ], [ %call.i235, %cleanup.thread ]
  %231 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i236 = icmp ne i32 %232, 0
  %and.i.i237 = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i237)
  %tobool.not.i.i238 = icmp eq i32 %and.i.i237, 0
  %or.cond = and i1 %tobool.not.i236, %tobool.not.i.i238
  br i1 %or.cond, label %if.then.i.i239, label %if.end86.skb_dst_drop.exit_crit_edge

if.end86.skb_dst_drop.exit_crit_edge:             ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst_drop.exit

if.then.i.i239:                                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %232, -2
  %233 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %233) #7
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i239, %if.end86.skb_dst_drop.exit_crit_edge
  %tobool.not.i241 = icmp eq ptr %dst.0, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %234 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i241, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %235 = ptrtoint ptr %dst.0 to i32
  %236 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %0, align 8
  %and.i.i242 = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i242)
  %tobool.not.i.i243 = icmp eq i32 %and.i.i242, 0
  br i1 %tobool.not.i.i243, label %skb_dst_drop.exit.dst_output.exit_crit_edge, label %land.lhs.true.i.i246

skb_dst_drop.exit.dst_output.exit_crit_edge:      ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_output.exit

land.lhs.true.i.i246:                             ; preds = %skb_dst_drop.exit
  %call.i.i244 = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i244)
  %tobool1.not.i.i245 = icmp eq i32 %call.i.i244, 0
  br i1 %tobool1.not.i.i245, label %land.rhs.i.i249, label %land.lhs.true.i.i246.dst_output.exit_crit_edge

land.lhs.true.i.i246.dst_output.exit_crit_edge:   ; preds = %land.lhs.true.i.i246
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_output.exit

land.rhs.i.i249:                                  ; preds = %land.lhs.true.i.i246
  %call2.i.i247 = call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i247)
  %tobool3.not.i.i248 = icmp eq i32 %call2.i.i247, 0
  br i1 %tobool3.not.i.i248, label %do.end.i.i250, label %land.rhs.i.i249.dst_output.exit_crit_edge, !prof !24

land.rhs.i.i249.dst_output.exit_crit_edge:        ; preds = %land.rhs.i.i249
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_output.exit

do.end.i.i250:                                    ; preds = %land.rhs.i.i249
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i250, %land.rhs.i.i249.dst_output.exit_crit_edge, %land.lhs.true.i.i246.dst_output.exit_crit_edge, %skb_dst_drop.exit.dst_output.exit_crit_edge
  %237 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %0, align 8
  %and25.i.i251 = and i32 %238, -2
  %239 = inttoptr i32 %and25.i.i251 to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %239, i32 0, i32 6
  %240 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %output.i, align 4
  %call1.i = call i32 %241(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #7
  br label %cleanup91

out:                                              ; preds = %if.end45.out_crit_edge, %do_inline.out_crit_edge
  %242 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %lwtstate, align 4
  %orig_output = getelementptr inbounds %struct.lwtunnel_state, ptr %243, i32 0, i32 4
  %244 = ptrtoint ptr %orig_output to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %orig_output, align 4
  %call90 = tail call i32 %245(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #7
  br label %cleanup91

drop:                                             ; preds = %cleanup, %skb_cow_head.exit.drop_crit_edge, %skb_cow_head.exit.i184.drop_crit_edge, %skb_cow_head.exit.i.drop_crit_edge, %if.end.drop_crit_edge, %skb_dst.exit.drop_crit_edge
  %err.1 = phi i32 [ -22, %skb_dst.exit.drop_crit_edge ], [ -22, %if.end.drop_crit_edge ], [ %call4.i.i, %skb_cow_head.exit.drop_crit_edge ], [ %conv75, %cleanup ], [ %call4.i.i.i, %skb_cow_head.exit.i.drop_crit_edge ], [ %call4.i.i.i182, %skb_cow_head.exit.i184.drop_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup91

cleanup91:                                        ; preds = %drop, %out, %dst_output.exit
  %retval.0 = phi i32 [ %err.1, %drop ], [ %call90, %out ], [ %call1.i, %dst_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioam6_fill_encap_info(ptr noundef %skb, ptr noundef %lwtstate) #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.ret_crit_edge

entry.ret_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %tundst = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 4
  %call.i18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %tundst) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool6.not = icmp eq i32 %call.i18, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then4.ret_crit_edge

if.then4.ret_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %traceh = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 2, i32 3
  %call10 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef %traceh) #7
  br label %ret

ret:                                              ; preds = %if.end9, %if.then4.ret_crit_edge, %entry.ret_crit_edge
  %err.0 = phi i32 [ %call.i, %entry.ret_crit_edge ], [ %call.i18, %if.then4.ret_crit_edge ], [ %call10, %if.end9 ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ioam6_encap_nlsize(ptr nocapture noundef readonly %lwtstate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  %spec.select = select i1 %cmp.not, i32 20, i32 40
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ioam6_encap_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %traceh.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 2, i32 3
  %traceh.i23 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 2, i32 3
  %mode = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  %mode4 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 3
  %2 = ptrtoint ptr %mode4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode4, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp9.not = icmp eq i8 %1, 1
  br i1 %cmp9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tundst = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 4
  %tundst11 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 4
  %4 = ptrtoint ptr %tundst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tundst, align 4
  %6 = ptrtoint ptr %tundst11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tundst11, align 4
  %xor.i = xor i32 %7, %5
  %arrayidx4.i = getelementptr %struct.lwtunnel_state, ptr %a, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.lwtunnel_state, ptr %b, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %11, %9
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr %struct.lwtunnel_state, ptr %a, i32 1, i32 6
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.lwtunnel_state, ptr %b, i32 1, i32 6
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %15, %13
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr %struct.lwtunnel_state, ptr %a, i32 1, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.lwtunnel_state, ptr %b, i32 1, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %19, %17
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true.lor.rhs_crit_edge, label %land.lhs.true.lor.end_crit_edge

land.lhs.true.lor.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %20 = ptrtoint ptr %traceh.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %traceh.i, align 1
  %22 = ptrtoint ptr %traceh.i23 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %traceh.i23, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp16 = icmp ne i16 %21, %23
  %phi.cast = zext i1 %cmp16 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.lor.end_crit_edge, %entry.lor.end_crit_edge
  %24 = phi i32 [ 1, %land.lhs.true.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioam6_namespace(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioam6_fill_trace_data(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @ioam6_iptun_ops, !1, !"ioam6_iptun_ops", i1 false, i1 false}
!1 = !{!"../net/ipv6/ioam6_iptunnel.c", i32 404, i32 40}
!2 = !{ptr @ioam6_build_state.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/ipv6/ioam6_iptunnel.c", i32 115, i32 3}
!4 = !{ptr @ioam6_build_state.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/ipv6/ioam6_iptunnel.c", i32 120, i32 3}
!6 = !{ptr @ioam6_build_state.__msg.2, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ipv6/ioam6_iptunnel.c", i32 126, i32 3}
!8 = !{ptr @nla_parse_nested.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!10 = !{ptr @ioam6_iptunnel_policy, !11, !"ioam6_iptunnel_policy", i1 false, i1 false}
!11 = !{!"../net/ipv6/ioam6_iptunnel.c", i32 57, i32 32}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
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
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2157672521}
!27 = !{i64 2157672618}
!28 = !{i64 2157672904}
!29 = !{i64 2157673001}
