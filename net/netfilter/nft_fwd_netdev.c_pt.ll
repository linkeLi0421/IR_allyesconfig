; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_fwd_netdev.c_pt.bc'
source_filename = "../net/netfilter/nft_fwd_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_fwd_neigh = type { i8, i8, i8 }
%struct.sk_buff = type { %union.anon.3, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.nft_offload_ctx = type { %struct.anon.147, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.147 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }
%struct.nft_data = type { %union.anon.145 }
%union.anon.145 = type { [4 x i32] }

@nft_fwd_netdev_type = internal global %struct.nft_expr_type { ptr @nft_fwd_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_fwd_netdev_policy, i32 3, i8 5, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_fwd_netdev__559_264_nft_fwd_netdev_module_init6 = internal global ptr @nft_fwd_netdev_module_init, section ".initcall6.init", align 4
@__exitcall_nft_fwd_netdev_module_exit = internal global ptr @nft_fwd_netdev_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file560 = internal constant [49 x i8] c"nft_fwd_netdev.file=net/netfilter/nft_fwd_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license561 = internal constant [27 x i8] c"nft_fwd_netdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author562 = internal constant [62 x i8] c"nft_fwd_netdev.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias563 = internal constant [36 x i8] c"nft_fwd_netdev.alias=nft-expr-5-fwd\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fwd\00", [28 x i8] zeroinitializer }, align 32
@nft_fwd_netdev_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_fwd_neigh_netdev_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fwd_neigh_eval, ptr null, i32 16, ptr @nft_fwd_neigh_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fwd_neigh_dump, ptr @nft_fwd_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_fwd_netdev_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_fwd_netdev_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fwd_netdev_eval, ptr null, i32 16, ptr @nft_fwd_netdev_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fwd_netdev_dump, ptr @nft_fwd_validate, ptr null, ptr null, ptr @nft_fwd_netdev_offload, ptr @nft_fwd_netdev_offload_action, ptr null, ptr @nft_fwd_netdev_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 247, i32 11 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"nft_fwd_netdev_policy\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 40, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"nft_fwd_neigh_netdev_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 213, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"nft_fwd_netdev_ops\00", align 1
@___asan_gen_.12 = private constant [34 x i8] c"../net/netfilter/nft_fwd_netdev.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 222, i32 34 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias563, ptr @__UNIQUE_ID_author562, ptr @__UNIQUE_ID_file560, ptr @__UNIQUE_ID_license561, ptr @__exitcall_nft_fwd_netdev_module_exit, ptr @__initcall__kmod_nft_fwd_netdev__559_264_nft_fwd_netdev_module_init6, ptr @nft_fwd_netdev_module_exit, ptr @.str, ptr @nft_fwd_netdev_policy, ptr @nft_fwd_neigh_netdev_ops, ptr @nft_fwd_netdev_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fwd_netdev_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fwd_neigh_netdev_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fwd_netdev_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_fwd_netdev_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_fwd_netdev_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_netdev_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_fwd_netdev_type) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_fwd_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -95 to ptr), ptr @nft_fwd_netdev_ops
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ @nft_fwd_neigh_netdev_ops, %entry.return_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_fwd_neigh_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %sreg_addr = getelementptr inbounds %struct.nft_fwd_neigh, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %sreg_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg_addr, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.i, align 1
  %idxprom1 = zext i8 %3 to i32
  %arrayidx2 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pkt, align 4
  %nfproto = getelementptr inbounds %struct.nft_fwd_neigh, ptr %data.i, i32 0, i32 2
  %8 = ptrtoint ptr %nfproto to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nfproto, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %entry.out_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb11
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15, i32 0, i32 18
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %12)
  %cmp.not = icmp eq i16 %12, 2048
  br i1 %cmp.not, label %if.end, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %sw.bb
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 12
  %13 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %skb_cloned.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_cloned.exit.i:                                ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #6
  %16 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.cleanup_crit_edge, label %land.lhs.true.i

skb_cloned.exit.i.cleanup_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %skb_cloned.exit.i
  %18 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #6
  %21 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %22, 65535
  %shr.i.i.i = ashr i32 %22, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = add i32 %sub.ptr.lhs.cast.i.i.i, 20
  %add.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 9
  %27 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i, %conv.i.i
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.cleanup_crit_edge

skb_clone_writable.exit.i.cleanup_crit_edge:      ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = tail call i32 @pskb_expand_head(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.cleanup_crit_edge, label %skb_try_make_writable.exit.out_crit_edge

skb_try_make_writable.exit.out_crit_edge:         ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

skb_try_make_writable.exit.cleanup_crit_edge:     ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %skb_try_make_writable.exit.cleanup_crit_edge, %skb_clone_writable.exit.i.cleanup_crit_edge, %skb_cloned.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i59 = zext i16 %32 to i32
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %conv.i.i59
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %check1.i, align 2
  %add.i = add i16 %34, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %34)
  %cmp.i = icmp ugt i16 %34, -258
  %conv2.i = zext i1 %cmp.i to i16
  %add3.i = add i16 %add.i, %conv2.i
  %35 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add3.i, ptr %check1.i, align 2
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ttl.i, align 4
  %dec.i = add i8 %37, -1
  store i8 %dec.i, ptr %ttl.i, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %protocol12 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15, i32 0, i32 18
  %38 = ptrtoint ptr %protocol12 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol12, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %39)
  %cmp14.not = icmp eq i16 %39, -31011
  br i1 %cmp14.not, label %if.end17, label %sw.bb11.out_crit_edge

sw.bb11.out_crit_edge:                            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %sw.bb11
  %cloned.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 12
  %40 = ptrtoint ptr %cloned.i.i60 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i61 = load i8, ptr %cloned.i.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i61)
  %tobool.not.i.i62 = icmp sgt i8 %bf.load.i.i61, -1
  br i1 %tobool.not.i.i62, label %if.end17.cleanup23_crit_edge, label %skb_cloned.exit.i68

if.end17.cleanup23_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

skb_cloned.exit.i68:                              ; preds = %if.end17
  %end.i.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %41 = ptrtoint ptr %end.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i.i63, align 4
  %dataref.i.i64 = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 10
  %call.i.i.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i64, i32 noundef 4) #6
  %43 = ptrtoint ptr %dataref.i.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dataref.i.i64, align 4
  %and.i.i66 = and i32 %44, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i66)
  %cmp.i.not.i67 = icmp eq i32 %and.i.i66, 1
  br i1 %cmp.i.not.i67, label %skb_cloned.exit.i68.cleanup23_crit_edge, label %land.lhs.true.i71

skb_cloned.exit.i68.cleanup23_crit_edge:          ; preds = %skb_cloned.exit.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

land.lhs.true.i71:                                ; preds = %skb_cloned.exit.i68
  %45 = ptrtoint ptr %cloned.i.i60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i.i69 = load i8, ptr %cloned.i.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i69)
  %tobool.not.i.i.i70 = icmp sgt i8 %bf.load.i.i.i69, -1
  br i1 %tobool.not.i.i.i70, label %land.lhs.true.i71.skb_clone_writable.exit.i88_crit_edge, label %skb_header_cloned.exit.i.i78

land.lhs.true.i71.skb_clone_writable.exit.i88_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_clone_writable.exit.i88

skb_header_cloned.exit.i.i78:                     ; preds = %land.lhs.true.i71
  %46 = ptrtoint ptr %end.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i.i63, align 4
  %dataref1.i.i.i72 = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 10
  %call.i.i.i.i.i73 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i72, i32 noundef 4) #6
  %48 = ptrtoint ptr %dataref1.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %dataref1.i.i.i72, align 4
  %and.i.i.i74 = and i32 %49, 65535
  %shr.i.i.i75 = ashr i32 %49, 16
  %sub.i.i.i76 = sub nsw i32 %and.i.i.i74, %shr.i.i.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i76)
  %cmp.i.not.i.i77 = icmp eq i32 %sub.i.i.i76, 1
  br i1 %cmp.i.not.i.i77, label %skb_header_cloned.exit.i.i78.skb_clone_writable.exit.i88_crit_edge, label %skb_header_cloned.exit.i.i78.skb_try_make_writable.exit93_crit_edge

skb_header_cloned.exit.i.i78.skb_try_make_writable.exit93_crit_edge: ; preds = %skb_header_cloned.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_try_make_writable.exit93

skb_header_cloned.exit.i.i78.skb_clone_writable.exit.i88_crit_edge: ; preds = %skb_header_cloned.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_clone_writable.exit.i88

skb_clone_writable.exit.i88:                      ; preds = %skb_header_cloned.exit.i.i78.skb_clone_writable.exit.i88_crit_edge, %land.lhs.true.i71.skb_clone_writable.exit.i88_crit_edge
  %data.i.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i79, align 4
  %head.i.i.i80 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i80, align 8
  %sub.ptr.lhs.cast.i.i.i81 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i.i82 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i83 = add i32 %sub.ptr.lhs.cast.i.i.i81, 40
  %add.i.i84 = sub i32 %sub.ptr.sub.i.i.i83, %sub.ptr.rhs.cast.i.i.i82
  %hdr_len.i.i85 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 9
  %54 = ptrtoint ptr %hdr_len.i.i85 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hdr_len.i.i85, align 2
  %conv.i.i86 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i84, i32 %conv.i.i86)
  %cmp.i7.not.i87 = icmp ugt i32 %add.i.i84, %conv.i.i86
  br i1 %cmp.i7.not.i87, label %skb_clone_writable.exit.i88.skb_try_make_writable.exit93_crit_edge, label %skb_clone_writable.exit.i88.cleanup23_crit_edge

skb_clone_writable.exit.i88.cleanup23_crit_edge:  ; preds = %skb_clone_writable.exit.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

skb_clone_writable.exit.i88.skb_try_make_writable.exit93_crit_edge: ; preds = %skb_clone_writable.exit.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_try_make_writable.exit93

skb_try_make_writable.exit93:                     ; preds = %skb_clone_writable.exit.i88.skb_try_make_writable.exit93_crit_edge, %skb_header_cloned.exit.i.i78.skb_try_make_writable.exit93_crit_edge
  %call3.i89 = tail call i32 @pskb_expand_head(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i89)
  %tobool4.i90.not = icmp eq i32 %call3.i89, 0
  br i1 %tobool4.i90.not, label %skb_try_make_writable.exit93.cleanup23_crit_edge, label %skb_try_make_writable.exit93.out_crit_edge

skb_try_make_writable.exit93.out_crit_edge:       ; preds = %skb_try_make_writable.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

skb_try_make_writable.exit93.cleanup23_crit_edge: ; preds = %skb_try_make_writable.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

cleanup23:                                        ; preds = %skb_try_make_writable.exit93.cleanup23_crit_edge, %skb_clone_writable.exit.i88.cleanup23_crit_edge, %skb_cloned.exit.i68.cleanup23_crit_edge, %if.end17.cleanup23_crit_edge
  %head.i.i94 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 18
  %56 = ptrtoint ptr %head.i.i94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i94, align 8
  %network_header.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15, i32 0, i32 20
  %58 = ptrtoint ptr %network_header.i.i95 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i.i95, align 4
  %conv.i.i96 = zext i16 %59 to i32
  %add.ptr.i.i97 = getelementptr i8, ptr %57, i32 %conv.i.i96
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i97, i32 0, i32 4
  %60 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hop_limit, align 1
  %dec = add i8 %61, -1
  store i8 %dec, ptr %hop_limit, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup23, %cleanup
  %neigh_table.2 = phi i32 [ 1, %cleanup23 ], [ 0, %cleanup ]
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %62 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net.i, align 4
  %call26 = tail call ptr @dev_get_by_index_rcu(ptr noundef %65, i32 noundef %5) #6
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %sw.epilog.cleanup32_crit_edge, label %if.end30

sw.epilog.cleanup32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end30:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %66 = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call26, ptr %66, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %68, align 8
  %call31 = tail call i32 @neigh_xmit(i32 noundef %neigh_table.2, ptr noundef nonnull %call26, ptr noundef %arrayidx, ptr noundef %7) #6
  br label %out

out:                                              ; preds = %if.end30, %skb_try_make_writable.exit93.out_crit_edge, %sw.bb11.out_crit_edge, %skb_try_make_writable.exit.out_crit_edge, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %verdict.3 = phi i32 [ 2, %if.end30 ], [ -2, %entry.out_crit_edge ], [ 0, %skb_try_make_writable.exit.out_crit_edge ], [ -2, %sw.bb.out_crit_edge ], [ 0, %skb_try_make_writable.exit93.out_crit_edge ], [ -2, %sw.bb11.out_crit_edge ]
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %verdict.3, ptr %regs, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %out, %sw.epilog.cleanup32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_neigh_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %conv = trunc i32 %7 to i8
  %nfproto = getelementptr inbounds %struct.nft_fwd_neigh, ptr %data.i, i32 0, i32 2
  %8 = ptrtoint ptr %nfproto to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %nfproto, align 1
  %9 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %conv, label %if.end.cleanup_crit_edge [
    i8 2, label %if.end.sw.epilog_crit_edge
    i8 10, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %if.end.sw.epilog_crit_edge
  %addr_len.0 = phi i32 [ 16, %sw.bb10 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call12 = tail call i32 @nft_parse_register_load(ptr noundef %11, ptr noundef %data.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1, align 4
  %sreg_addr = getelementptr inbounds %struct.nft_fwd_neigh, ptr %data.i, i32 0, i32 1
  %call17 = tail call i32 @nft_parse_register_load(ptr noundef %13, ptr noundef %sreg_addr, i32 noundef %addr_len.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end15 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_neigh_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %sreg_addr = getelementptr inbounds %struct.nft_fwd_neigh, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %sreg_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sreg_addr, align 1
  %conv2 = zext i8 %3 to i32
  %call3 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %nfproto = getelementptr inbounds %struct.nft_fwd_neigh, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %nfproto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nfproto, align 1
  %conv6 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv6, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false5.nla_put_failure_crit_edge

lor.lhs.false5.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false5.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 3) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_xmit(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_fwd_netdev_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr noundef %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  %6 = getelementptr inbounds %struct.anon.4, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 7
  %11 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %skb_iif, align 8
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  %redirected.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 3
  %16 = ptrtoint ptr %redirected.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %bf.load.i = load i32, ptr %redirected.i, align 2
  %bf.set.i = and i32 %bf.load.i, -98305
  %bf.clear3.i = select i1 %cmp, i32 98304, i32 65536
  %bf.set4.i = or i32 %bf.clear3.i, %bf.set.i
  store i32 %bf.set4.i, ptr %redirected.i, align 2
  br i1 %cmp, label %if.then.i, label %entry.skb_set_redirected.exit_crit_edge

entry.skb_set_redirected.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_set_redirected.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %17, align 8
  br label %skb_set_redirected.exit

skb_set_redirected.exit:                          ; preds = %if.then.i, %entry.skb_set_redirected.exit_crit_edge
  tail call void @nf_fwd_netdev_egress(ptr noundef %pkt, i32 noundef %3) #6
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %regs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_netdev_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call2 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %1, ptr noundef %data.i, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_netdev_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fwd_netdev_offload(ptr noundef %ctx, ptr noundef %flow, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %idxprom = zext i8 %1 to i32
  %data = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call2 = tail call i32 @nft_fwd_dup_netdev_offload(ptr noundef %ctx, ptr noundef %flow, i32 noundef 4, i32 noundef %3) #6
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_fwd_netdev_offload_action(ptr nocapture noundef readnone %expr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_fwd_netdev_egress(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fwd_dup_netdev_offload(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_nft_fwd_netdev__559_264_nft_fwd_netdev_module_init6, !1, !"__initcall__kmod_nft_fwd_netdev__559_264_nft_fwd_netdev_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 264, i32 1}
!2 = !{ptr @__exitcall_nft_fwd_netdev_module_exit, !3, !"__exitcall_nft_fwd_netdev_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 265, i32 1}
!4 = !{ptr @__UNIQUE_ID_file560, !5, !"__UNIQUE_ID_file560", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 267, i32 1}
!6 = !{ptr @__UNIQUE_ID_license561, !5, !"__UNIQUE_ID_license561", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author562, !8, !"__UNIQUE_ID_author562", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 268, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias563, !10, !"__UNIQUE_ID_alias563", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 269, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 247, i32 11}
!13 = !{ptr @nft_fwd_netdev_type, !14, !"nft_fwd_netdev_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 245, i32 29}
!15 = !{ptr @nft_fwd_neigh_netdev_ops, !16, !"nft_fwd_neigh_netdev_ops", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 213, i32 34}
!17 = !{ptr @nft_fwd_netdev_ops, !18, !"nft_fwd_netdev_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 222, i32 34}
!19 = !{ptr @nft_fwd_netdev_policy, !20, !"nft_fwd_netdev_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_fwd_netdev.c", i32 40, i32 32}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
