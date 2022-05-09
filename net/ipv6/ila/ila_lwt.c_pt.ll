; ModuleID = '/llk/IR_all_yes/net/ipv6/ila/ila_lwt.c_pt.bc'
source_filename = "../net/ipv6/ila/ila_lwt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, ptr, i32, i32, ptr, %struct.nl_info, ptr, i16, i8 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ila_params = type { %struct.ila_locator, %struct.ila_locator, i32, i8, i8 }
%struct.ila_locator = type { %union.anon.154 }
%union.anon.154 = type { i64 }
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
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@ila_encap_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @ila_build_state, ptr @ila_destroy_state, ptr @ila_output, ptr @ila_input, ptr @ila_fill_encap_info, ptr @ila_encap_nlsize, ptr @ila_encap_cmp, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ila_nl_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"ila_encap_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 306, i32 40 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"ila_nl_policy\00", align 1
@___asan_gen_.5 = private constant [26 x i8] c"../net/ipv6/ila/ila_lwt.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 121, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 1011, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ila_encap_ops, ptr @ila_nl_policy, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_encap_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ila_nl_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ila_lwt_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @ila_encap_ops, i32 noundef 3) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ila_lwt_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_del_ops(ptr noundef nonnull @ila_encap_ops, i32 noundef 3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_build_state(ptr nocapture noundef readnone %net, ptr noundef %nla, i32 noundef %family, ptr nocapture noundef readonly %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %tb = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb) #5
  %0 = call ptr @memset(ptr %tb, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %family)
  %cmp.not = icmp eq i32 %family, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %1 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ila_nl_policy, i32 noundef 0, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp1 = icmp slt i32 %call2.i, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %fc_dst = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 10
  %arrayidx6 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 8
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end5.if.then14_crit_edge, label %if.end11

if.end5.if.then14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

if.end11:                                         ; preds = %if.end5
  %add.ptr.i.i112 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i112 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i.i112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp12 = icmp eq i8 %8, 32
  br i1 %cmp12, label %if.end11.if.then14_crit_edge, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

if.then14:                                        ; preds = %if.end11.if.then14_crit_edge, %if.end5.if.then14_crit_edge
  %fc_dst_len = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %fc_dst_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fc_dst_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %10)
  %cmp15 = icmp ult i32 %10, 67
  br i1 %cmp15, label %if.then14.cleanup_crit_edge, label %if.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %ident = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 10, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %ident, align 8
  %bf.lshr = lshr i8 %bf.load, 5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11.if.end19_crit_edge
  %ident_type.0117 = phi i8 [ 32, %if.end18 ], [ %8, %if.end11.if.end19_crit_edge ]
  %eff_ident_type.0 = phi i8 [ %bf.lshr, %if.end18 ], [ %8, %if.end11.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %eff_ident_type.0)
  %cond = icmp eq i8 %eff_ident_type.0, 1
  br i1 %cond, label %sw.epilog, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end19
  %arrayidx22 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 9
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %sw.epilog.sw.epilog32_crit_edge, label %if.end27

sw.epilog.sw.epilog32_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog32

if.end27:                                         ; preds = %sw.epilog
  %add.ptr.i.i113 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i113 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i113, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end27.cleanup_crit_edge [
    i8 0, label %if.end27.sw.epilog32_crit_edge
    i8 1, label %sw.bb30
  ]

if.end27.sw.epilog32_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb30, %if.end27.sw.epilog32_crit_edge, %sw.epilog.sw.epilog32_crit_edge
  %lwt_output.0.off0 = phi i8 [ 0, %sw.bb30 ], [ 64, %if.end27.sw.epilog32_crit_edge ], [ 64, %sw.epilog.sw.epilog32_crit_edge ]
  %arrayidx33 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %18, null
  br i1 %tobool34.not, label %sw.epilog32.if.end47_crit_edge, label %if.end38

sw.epilog32.if.end47_crit_edge:                   ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end38:                                         ; preds = %sw.epilog32
  %add.ptr.i.i114 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i.i114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp40 = icmp eq i8 %20, 1
  br i1 %cmp40, label %land.lhs.true, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end38
  %ident42 = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 10, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %ident42 to i32
  call void @__asan_load8_noabort(i32 %21)
  %.unpack = load i64, ptr %ident42, align 8
  %22 = and i64 %.unpack, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool.i.not = icmp eq i64 %22, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end47_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end38.if.end47_crit_edge, %sw.epilog32.if.end47_crit_edge
  %csum_mode.0122 = phi i8 [ 1, %land.lhs.true.if.end47_crit_edge ], [ %20, %if.end38.if.end47_crit_edge ], [ 2, %sw.epilog32.if.end47_crit_edge ]
  %call48 = call ptr @lwtunnel_state_alloc(i32 noundef 40) #5
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %dst_cache = getelementptr inbounds %struct.lwtunnel_state, ptr %call48, i32 1, i32 6, i32 1
  %call53 = call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call48) #5
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call48, i32 0, i32 7
  %lwt_output59 = getelementptr inbounds %struct.lwtunnel_state, ptr %call48, i32 2, i32 2
  %23 = ptrtoint ptr %lwt_output59 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load60 = load i8, ptr %lwt_output59, align 8
  %bf.clear = and i8 %bf.load60, -65
  %bf.set = or i8 %bf.clear, %lwt_output.0.off0
  store i8 %bf.set, ptr %lwt_output59, align 8
  %csum_mode62 = getelementptr inbounds %struct.lwtunnel_state, ptr %call48, i32 1, i32 6
  %24 = ptrtoint ptr %csum_mode62 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %csum_mode.0122, ptr %csum_mode62, align 4
  %ident_type63 = getelementptr inbounds %struct.ila_params, ptr %data.i, i32 0, i32 4
  %25 = ptrtoint ptr %ident_type63 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %ident_type.0117, ptr %ident_type63, align 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #5
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %tmp.i, align 8, !annotation !15
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef %27, i32 noundef 8) #5
  %29 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #5
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %data.i, align 8
  %locator_match = getelementptr inbounds %struct.lwtunnel_state, ptr %call48, i32 1, i32 3
  %32 = ptrtoint ptr %fc_dst to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fc_dst, align 8
  %34 = ptrtoint ptr %locator_match to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %locator_match, align 8
  call void @ila_init_saved_csum(ptr noundef %data.i) #5
  %35 = ptrtoint ptr %call48 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3, ptr %call48, align 4
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call48, i32 0, i32 1
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags, align 2
  %38 = or i16 %37, 3
  store i16 %38, ptr %flags, align 2
  %fc_dst_len68 = getelementptr inbounds %struct.fib6_config, ptr %cfg, i32 0, i32 2
  %39 = ptrtoint ptr %fc_dst_len68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc_dst_len68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %40)
  %cmp69 = icmp eq i32 %40, 128
  br i1 %cmp69, label %if.then71, label %if.end56.if.end75_crit_edge

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then71:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %lwt_output59 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load72 = load i8, ptr %lwt_output59, align 8
  %bf.set74 = or i8 %bf.load72, -128
  store i8 %bf.set74, ptr %lwt_output59, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end56.if.end75_crit_edge
  %42 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call48, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then55, %if.end47.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %if.then55 ], [ 0, %if.end75 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ila_destroy_state(ptr noundef %lwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_cache = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 1, i32 6, i32 1
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !16

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
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
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %9)
  %cmp.not = icmp eq i16 %9, -31011
  br i1 %cmp.not, label %if.end, label %skb_dst.exit.drop_crit_edge

skb_dst.exit.drop_crit_edge:                      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %drop

if.end:                                           ; preds = %skb_dst.exit
  %lwt_output = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 2, i32 2
  %10 = ptrtoint ptr %lwt_output to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %lwt_output, align 8
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ila_update_ipv6_locator(ptr noundef %skb, ptr noundef %data.i, i1 noundef zeroext true) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %rt6i_flags = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %rt6i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rt6i_flags, align 4
  %and = and i32 %13, 16777218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lwtstate, align 4
  %orig_output = getelementptr inbounds %struct.lwtunnel_state, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %orig_output to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %orig_output, align 4
  %call10 = tail call i32 %17(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5
  br label %cleanup42

if.end11:                                         ; preds = %if.end6
  %dst_cache = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 6, i32 1
  %call12 = tail call ptr @dst_cache_get(ptr noundef %dst_cache) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then17, label %if.end11.if.end40_crit_edge, !prof !16

if.end11.if.end40_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then17:                                        ; preds = %if.end11
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #5
  %22 = getelementptr inbounds i8, ptr %fl6, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 80)
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex, align 4
  %28 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fl6, align 8
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %29 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %flowic_iif, align 4
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %30 = ptrtoint ptr %rt6i_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rt6i_flags, align 4
  %and.i74 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i75, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %if.then17
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %daddr20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %and2.i = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i76 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i76, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !17

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %rt6i_gateway.i, %if.then.i ], [ %rt6i_dst.i, %if.then6.i ], [ %daddr20, %if.else.i.rt6_nexthop.exit_crit_edge ]
  %32 = call ptr @memcpy(ptr %daddr, ptr %retval.0.i, i32 16)
  %call.i77 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #5
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i77, i32 0, i32 15
  %33 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool23.not = icmp eq i16 %34, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %rt6_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @dst_release(ptr noundef %call.i77) #5
  br label %cleanup

if.end25:                                         ; preds = %rt6_nexthop.exit
  %call27 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %call.i77, ptr noundef nonnull %fl6, ptr noundef null, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %36 = ptrtoint ptr %lwt_output to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load32 = load i8, ptr %lwt_output, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32)
  %tobool35.not = icmp sgt i8 %bf.load32, -1
  br i1 %tobool35.not, label %if.end31.cleanup.thread_crit_edge, label %if.then36

if.end31.cleanup.thread_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  call void @dst_cache_set_ip6(ptr noundef %dst_cache, ptr noundef %call27, ptr noundef %saddr) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then36, %if.end31.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  br label %if.end40

cleanup:                                          ; preds = %if.then29, %if.then24
  %err.0 = phi i32 [ -113, %if.then24 ], [ %35, %if.then29 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  br label %drop

if.end40:                                         ; preds = %cleanup.thread, %if.end11.if.end40_crit_edge
  %dst.1 = phi ptr [ %call12, %if.end11.if.end40_crit_edge ], [ %call27, %cleanup.thread ]
  %tobool.not.i78 = icmp eq ptr %dst.1, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i78, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %38 = ptrtoint ptr %dst.1 to i32
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %0, align 8
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end40.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.end40.dst_output.exit_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.end40
  %call.i.i = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !16

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.end40.dst_output.exit_crit_edge
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %41, -2
  %42 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %output.i, align 4
  %call1.i = call i32 %44(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5
  br label %cleanup42

drop:                                             ; preds = %cleanup, %skb_dst.exit.drop_crit_edge
  %err.1 = phi i32 [ -22, %skb_dst.exit.drop_crit_edge ], [ %err.0, %cleanup ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup42

cleanup42:                                        ; preds = %drop, %dst_output.exit, %if.then8
  %retval.0 = phi i32 [ %err.1, %drop ], [ %call10, %if.then8 ], [ %call1.i, %dst_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_input(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !16

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
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
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %9)
  %cmp.not = icmp eq i16 %9, -31011
  br i1 %cmp.not, label %if.end, label %drop

if.end:                                           ; preds = %skb_dst.exit
  %lwt_output = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 2, i32 2
  %10 = ptrtoint ptr %lwt_output to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %lwt_output, align 8
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ila_update_ipv6_locator(ptr noundef %skb, ptr noundef %data.i, i1 noundef zeroext false) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %12 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lwtstate, align 4
  %orig_input = getelementptr inbounds %struct.lwtunnel_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %orig_input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %orig_input, align 4
  %call8 = tail call i32 %15(ptr noundef %skb) #5
  br label %cleanup

drop:                                             ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end6
  %retval.0 = phi i32 [ -22, %drop ], [ %call8, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ila_fill_encap_info(ptr noundef %skb, ptr nocapture noundef readonly %lwtstate) #0 align 64 {
entry:
  %tmp.i27 = alloca i8, align 1
  %tmp.i25 = alloca i8, align 1
  %tmp.i23 = alloca i8, align 1
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 0, i32 7
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %csum_mode = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 6
  %3 = ptrtoint ptr %csum_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %csum_mode, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i23) #5
  %5 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i23, align 1
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i23) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool4.not = icmp eq i32 %call.i24, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %ident_type = getelementptr inbounds %struct.ila_params, ptr %data.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ident_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ident_type, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i25) #5
  %8 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tmp.i25, align 1
  %call.i26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i25) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool8.not = icmp eq i32 %call.i26, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.nla_put_failure_crit_edge

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end10:                                         ; preds = %if.end6
  %lwt_output = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 2, i32 2
  %9 = ptrtoint ptr %lwt_output to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %lwt_output, align 8
  %10 = lshr i8 %bf.load, 6
  %.lobit = and i8 %10, 1
  %11 = xor i8 %.lobit, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27) #5
  %12 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tmp.i27, align 1
  %call.i28 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i27) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool13.not = icmp eq i32 %call.i28, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end10.nla_put_failure_crit_edge

if.end10.nla_put_failure_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end10.nla_put_failure_crit_edge, %if.end6.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ila_encap_nlsize(ptr nocapture noundef readnone %lwtstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ila_encap_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 0, i32 7
  %data.i.i3 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 0, i32 7
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data.i.i, align 8
  %2 = ptrtoint ptr %data.i.i3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data.i.i3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ne i64 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ila_init_saved_csum(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ila_update_ipv6_locator(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ila_encap_ops, !1, !"ila_encap_ops", i1 false, i1 false}
!1 = !{!"../net/ipv6/ila/ila_lwt.c", i32 306, i32 40}
!2 = !{ptr @ila_nl_policy, !3, !"ila_nl_policy", i1 false, i1 false}
!3 = !{!"../net/ipv6/ila/ila_lwt.c", i32 121, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
