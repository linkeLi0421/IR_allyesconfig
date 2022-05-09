; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/nft_meta_bridge.c_pt.bc'
source_filename = "../net/bridge/netfilter/nft_meta_bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_meta = type { i8, %union.anon.125, [2 x i8] }
%union.anon.125 = type { i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.101 = type { ptr }
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
%struct.anon.120 = type { ptr, ptr }

@nft_meta_bridge_type = internal global %struct.nft_expr_type { ptr @nft_meta_bridge_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_meta_policy, i32 3, i8 7, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_meta_bridge__420_171_nft_meta_bridge_module_init6 = internal global ptr @nft_meta_bridge_module_init, section ".initcall6.init", align 4
@__exitcall_nft_meta_bridge_module_exit = internal global ptr @nft_meta_bridge_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [58 x i8] c"nft_meta_bridge.file=net/bridge/netfilter/nft_meta_bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [28 x i8] c"nft_meta_bridge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [47 x i8] c"nft_meta_bridge.author=wenxu <wenxu@ucloud.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [38 x i8] c"nft_meta_bridge.alias=nft-expr-7-meta\00", section ".modinfo", align 1
@__UNIQUE_ID_description425 = internal constant [66 x i8] c"nft_meta_bridge.description=Support for bridge dedicated meta key\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"meta\00", [27 x i8] zeroinitializer }, align 32
@nft_meta_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@nft_meta_bridge_get_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_meta_bridge_get_eval, ptr null, i32 16, ptr @nft_meta_bridge_get_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_meta_get_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_meta_bridge_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_meta_bridge_set_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_meta_set_eval, ptr null, i32 16, ptr @nft_meta_set_init, ptr null, ptr null, ptr @nft_meta_set_destroy, ptr null, ptr @nft_meta_set_dump, ptr @nft_meta_set_validate, ptr @nft_meta_bridge_set_reduce, ptr null, ptr null, ptr null, ptr null, ptr @nft_meta_bridge_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 18, i64 28, i64 29]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 18, i64 28, i64 29]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 154, i32 20 }
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"nft_meta_bridge_get_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 95, i32 34 }
@___asan_gen_.9 = private unnamed_addr constant [24 x i8] c"nft_meta_bridge_set_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 122, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [42 x i8] c"../net/bridge/netfilter/nft_meta_bridge.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 63, i32 48 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description425, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_meta_bridge_module_exit, ptr @__initcall__kmod_nft_meta_bridge__420_171_nft_meta_bridge_module_init6, ptr @nft_meta_bridge_module_exit, ptr @.str, ptr @nft_meta_bridge_get_ops, ptr @nft_meta_bridge_set_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_meta_bridge_get_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_meta_bridge_set_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_meta_bridge_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_meta_bridge_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_meta_bridge_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_meta_bridge_type) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_meta_bridge_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %3, null
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %tobool12.not, ptr @nft_meta_bridge_get_ops, ptr inttoptr (i32 -22 to ptr)
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select20 = select i1 %tobool12.not, ptr inttoptr (i32 -22 to ptr), ptr @nft_meta_bridge_set_ops
  br label %return

return:                                           ; preds = %if.end10, %land.lhs.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ], [ %spec.select, %land.lhs.true ], [ %spec.select20, %if.end10 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_meta_bridge_get_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #3 align 64 {
entry:
  %p_pvid = alloca i16, align 2
  %p_proto = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out.i, align 4
  %6 = getelementptr inbounds %struct.nft_meta, ptr %data.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load48 = load i8, ptr %data.i, align 4
  %10 = zext i8 %bf.load48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load48, label %sw.default [
    i8 17, label %sw.bb
    i8 18, label %sw.bb4
    i8 28, label %sw.bb6
    i8 29, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %12, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.sw.epilog.sink.split_crit_edge

land.lhs.true.i.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %tobool.not.i51 = icmp eq ptr %5, null
  br i1 %tobool.not.i51, label %sw.bb4.sw.epilog_crit_edge, label %land.lhs.true.i55

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i55:                                ; preds = %sw.bb4
  %priv_flags.i.i52 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags.i.i52 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i.i52, align 16
  %and.i.i53 = and i64 %14, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i53)
  %tobool.i.not.i54 = icmp eq i64 %and.i.i53, 0
  br i1 %tobool.i.not.i54, label %land.lhs.true.i55.sw.epilog_crit_edge, label %land.lhs.true.i55.sw.epilog.sink.split_crit_edge

land.lhs.true.i55.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

land.lhs.true.i55.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %p_pvid) #7
  %15 = ptrtoint ptr %p_pvid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %p_pvid, align 2, !annotation !32
  %tobool.not.i60 = icmp eq ptr %3, null
  br i1 %tobool.not.i60, label %sw.bb6.cleanup_crit_edge, label %land.lhs.true.i64

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i64:                                ; preds = %sw.bb6
  %priv_flags.i.i61 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i.i61 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i.i61, align 16
  %and.i.i62 = and i64 %17, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i62)
  %tobool.i.not.i63 = icmp eq i64 %and.i.i62, 0
  br i1 %tobool.i.not.i63, label %land.lhs.true.i64.cleanup_crit_edge, label %nft_meta_get_bridge.exit68

land.lhs.true.i64.cleanup_crit_edge:              ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nft_meta_get_bridge.exit68:                       ; preds = %land.lhs.true.i64
  %call1.i65 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %3) #7
  %tobool.not = icmp eq ptr %call1.i65, null
  br i1 %tobool.not, label %nft_meta_get_bridge.exit68.cleanup_crit_edge, label %lor.lhs.false

nft_meta_get_bridge.exit68.cleanup_crit_edge:     ; preds = %nft_meta_get_bridge.exit68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %nft_meta_get_bridge.exit68
  %call8 = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %call1.i65) #7
  br i1 %call8, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 @br_vlan_get_pvid_rcu(ptr noundef nonnull %3, ptr noundef nonnull %p_pvid) #7
  %18 = ptrtoint ptr %p_pvid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %p_pvid, align 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx, align 4
  store i16 %19, ptr %arrayidx, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p_pvid) #7
  br label %cleanup22

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %nft_meta_get_bridge.exit68.cleanup_crit_edge, %land.lhs.true.i64.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p_pvid) #7
  br label %err

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %p_proto) #7
  %21 = ptrtoint ptr %p_proto to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %p_proto, align 2, !annotation !32
  %tobool.not.i69 = icmp eq ptr %3, null
  br i1 %tobool.not.i69, label %sw.bb10.cleanup18_crit_edge, label %land.lhs.true.i73

sw.bb10.cleanup18_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

land.lhs.true.i73:                                ; preds = %sw.bb10
  %priv_flags.i.i70 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i.i70 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i.i70, align 16
  %and.i.i71 = and i64 %23, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i71)
  %tobool.i.not.i72 = icmp eq i64 %and.i.i71, 0
  br i1 %tobool.i.not.i72, label %land.lhs.true.i73.cleanup18_crit_edge, label %nft_meta_get_bridge.exit77

land.lhs.true.i73.cleanup18_crit_edge:            ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

nft_meta_get_bridge.exit77:                       ; preds = %land.lhs.true.i73
  %call1.i74 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %3) #7
  %tobool12.not = icmp eq ptr %call1.i74, null
  br i1 %tobool12.not, label %nft_meta_get_bridge.exit77.cleanup18_crit_edge, label %lor.lhs.false13

nft_meta_get_bridge.exit77.cleanup18_crit_edge:   ; preds = %nft_meta_get_bridge.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

lor.lhs.false13:                                  ; preds = %nft_meta_get_bridge.exit77
  %call14 = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %call1.i74) #7
  br i1 %call14, label %if.end16, label %lor.lhs.false13.cleanup18_crit_edge

lor.lhs.false13.cleanup18_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

if.end16:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 @br_vlan_get_proto(ptr noundef nonnull %call1.i74, ptr noundef nonnull %p_proto) #7
  %24 = ptrtoint ptr %p_proto to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %p_proto, align 2
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx, align 4
  store i16 %25, ptr %arrayidx, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p_proto) #7
  br label %cleanup22

cleanup18:                                        ; preds = %lor.lhs.false13.cleanup18_crit_edge, %nft_meta_get_bridge.exit77.cleanup18_crit_edge, %land.lhs.true.i73.cleanup18_crit_edge, %sw.bb10.cleanup18_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p_proto) #7
  br label %err

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_meta_get_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #7
  br label %cleanup22

sw.epilog.sink.split:                             ; preds = %land.lhs.true.i55.sw.epilog.sink.split_crit_edge, %land.lhs.true.i.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %3, %land.lhs.true.i.sw.epilog.sink.split_crit_edge ], [ %5, %land.lhs.true.i55.sw.epilog.sink.split_crit_edge ]
  %call1.i56 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %.sink) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.i55.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %br_dev.0 = phi ptr [ null, %land.lhs.true.i.sw.epilog_crit_edge ], [ null, %sw.bb.sw.epilog_crit_edge ], [ null, %land.lhs.true.i55.sw.epilog_crit_edge ], [ null, %sw.bb4.sw.epilog_crit_edge ], [ %call1.i56, %sw.epilog.sink.split ]
  %tobool19.not = icmp eq ptr %br_dev.0, null
  %spec.select = select i1 %tobool19.not, ptr @.str.1, ptr %br_dev.0
  %call20 = tail call ptr @strncpy(ptr noundef %arrayidx, ptr noundef nonnull %spec.select, i32 noundef 16)
  br label %cleanup22

err:                                              ; preds = %cleanup18, %cleanup
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2, ptr %regs, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %err, %sw.epilog, %sw.default, %if.end16, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_meta_bridge_get_init(ptr noundef %ctx, ptr noundef %expr, ptr noundef %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = trunc i32 %3 to i8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %data.i, align 4
  %6 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %4, label %sw.default [
    i8 17, label %entry.sw.epilog_crit_edge
    i8 18, label %entry.sw.epilog_crit_edge13
    i8 28, label %entry.sw.bb2_crit_edge
    i8 29, label %entry.sw.bb2_crit_edge14
  ]

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @nft_meta_get_init(ptr noundef %ctx, ptr noundef %expr, ptr noundef %tb) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge13
  %len.0 = phi i32 [ 2, %sw.bb2 ], [ 16, %entry.sw.epilog_crit_edge ], [ 16, %entry.sw.epilog_crit_edge13 ]
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 4
  %9 = getelementptr inbounds %struct.nft_meta, ptr %data.i, i32 0, i32 1
  %call5 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, i32 noundef %len.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ %call3, %sw.default ], [ %call5, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_meta_get_dump(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_pvid_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_proto(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_meta_get_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_meta_get_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_meta_set_eval(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_meta_set_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_meta_set_destroy(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_meta_set_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_meta_set_validate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_meta_bridge_set_reduce(ptr nocapture noundef %track, ptr nocapture noundef readnone %expr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x %struct.anon.120], ptr %track, i32 0, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp4.not = icmp eq ptr %3, @nft_meta_bridge_get_ops
  br i1 %cmp4.not, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %bitwise = getelementptr [20 x %struct.anon.120], ptr %track, i32 0, i32 %i.020, i32 1
  %5 = ptrtoint ptr %bitwise to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bitwise, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_nft_meta_bridge__420_171_nft_meta_bridge_module_init6, !1, !"__initcall__kmod_nft_meta_bridge__420_171_nft_meta_bridge_module_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 171, i32 1}
!2 = !{ptr @__exitcall_nft_meta_bridge_module_exit, !3, !"__exitcall_nft_meta_bridge_module_exit", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 172, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 174, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 175, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 176, i32 1}
!11 = !{ptr @__UNIQUE_ID_description425, !12, !"__UNIQUE_ID_description425", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 177, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 154, i32 20}
!15 = !{ptr @nft_meta_bridge_type, !16, !"nft_meta_bridge_type", i1 false, i1 false}
!16 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 152, i32 29}
!17 = !{ptr @nft_meta_bridge_get_ops, !18, !"nft_meta_bridge_get_ops", i1 false, i1 false}
!18 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 95, i32 34}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 63, i32 48}
!21 = !{ptr @nft_meta_bridge_set_ops, !22, !"nft_meta_bridge_set_ops", i1 false, i1 false}
!22 = !{!"../net/bridge/netfilter/nft_meta_bridge.c", i32 122, i32 34}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
