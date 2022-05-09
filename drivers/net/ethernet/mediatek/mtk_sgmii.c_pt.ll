; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_sgmii.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_sgmii.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mtk_sgmii = type { [2 x ptr], [2 x i32], i32 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.mtk_eth = type { ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, [116 x i8], %struct.net_device, [2 x ptr], [2 x ptr], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, i8, %struct.refcount_struct, %struct.mtk_tx_ring, [4 x %struct.mtk_rx_ring], %struct.mtk_rx_ring, %struct.napi_struct, %struct.napi_struct, ptr, i32, ptr, [18 x ptr], ptr, %struct.work_struct, i32, ptr, %struct.spinlock, i32, i32, i32, %struct.dim, i32, i32, i32, %struct.dim, i32, i32, i32, i32, %struct.mtk_ppe, %struct.rhashtable, [100 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mtk_tx_ring = type { ptr, ptr, i32, ptr, ptr, i32, i16, %struct.atomic_t, i32, ptr, i32, i32 }
%struct.mtk_rx_ring = type { ptr, ptr, i32, i16, i16, i16, i8, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mtk_ppe = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mtk_soc_data = type { i32, i32, i32, i8, i8, i64 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,sgmiisys\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 2500]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [45 x i8] c"../drivers/net/ethernet/mediatek/mtk_sgmii.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 28 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_sgmii_init(ptr nocapture noundef %ss, ptr noundef %r, i32 noundef %ana_rgc3) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ana_rgc31 = getelementptr inbounds %struct.mtk_sgmii, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %ana_rgc31 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ana_rgc3, ptr %ana_rgc31, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #3
  %1 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %r, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %entry.of_parse_phandle.exit.thread_crit_edge

entry.of_parse_phandle.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_parse_phandle.exit.thread

for.cond:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #3
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i.1 = call i32 @__of_parse_phandle_with_args(ptr noundef %r, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %of_parse_phandle.exit.1, label %for.cond.of_parse_phandle.exit.thread_crit_edge

for.cond.of_parse_phandle.exit.thread_crit_edge:  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_parse_phandle.exit.thread

of_parse_phandle.exit.1:                          ; preds = %for.cond
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #3
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %of_parse_phandle.exit.1.cleanup_crit_edge, label %if.end.1

of_parse_phandle.exit.1.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.1:                                         ; preds = %of_parse_phandle.exit.1
  %call2.1 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %4) #3
  %arrayidx.1 = getelementptr [2 x ptr], ptr %ss, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.1, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %call2.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end.1.if.then6_crit_edge, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.1.if.then6_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

of_parse_phandle.exit.thread:                     ; preds = %for.cond.of_parse_phandle.exit.thread_crit_edge, %entry.of_parse_phandle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #3
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #3
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %7) #3
  %8 = ptrtoint ptr %ss to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %ss, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then6_crit_edge, label %for.cond

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.1.if.then6_crit_edge
  %call2.lcssa = phi ptr [ %call2, %if.end.if.then6_crit_edge ], [ %call2.1, %if.end.1.if.then6_crit_edge ]
  %9 = ptrtoint ptr %call2.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %if.end.1.cleanup_crit_edge, %of_parse_phandle.exit.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ 0, %of_parse_phandle.exit.thread ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %of_parse_phandle.exit.1.cleanup_crit_edge ], [ 0, %of_parse_phandle.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_sgmii_setup_mode_an(ptr nocapture noundef readonly %ss, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !11
  %arrayidx = getelementptr [2 x ptr], ptr %ss, i32 0, i32 %id
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @regmap_write(ptr noundef nonnull %2, i32 noundef 24, i32 noundef 100000) #3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %val) #3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %or = or i32 %6, 256
  store i32 %or, ptr %val, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 @regmap_write(ptr noundef %8, i32 noundef 32, i32 noundef %or) #3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %val) #3
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or12 = or i32 %12, 512
  store i32 %or12, ptr %val, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call15 = call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef %or12) #3
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call18 = call i32 @regmap_read(ptr noundef %16, i32 noundef 232, ptr noundef nonnull %val) #3
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, -17
  store i32 %and, ptr %val, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call21 = call i32 @regmap_write(ptr noundef %20, i32 noundef 232, i32 noundef %and) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_sgmii_setup_mode_force(ptr nocapture noundef readonly %ss, i32 noundef %id, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !11
  %arrayidx = getelementptr [2 x ptr], ptr %ss, i32 0, i32 %id
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ana_rgc3 = getelementptr inbounds %struct.mtk_sgmii, ptr %ss, i32 0, i32 2
  %3 = ptrtoint ptr %ana_rgc3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ana_rgc3, align 4
  %call = call i32 @regmap_read(ptr noundef nonnull %2, i32 noundef %4, ptr noundef nonnull %val) #3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, -13
  store i32 %and, ptr %val, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %8)
  %cmp = icmp eq i32 %8, 22
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %and, 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %val, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %ana_rgc3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ana_rgc3, align 4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %call8 = call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %15) #3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 @regmap_read(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %val) #3
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %and12 = and i32 %19, -4097
  store i32 %and12, ptr %val, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call15 = call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef %and12) #3
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call18 = call i32 @regmap_read(ptr noundef %23, i32 noundef 32, ptr noundef nonnull %val) #3
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and19 = and i32 %25, -63
  store i32 %and19, ptr %val, align 4
  %speed = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end4.sw.epilog_crit_edge [
    i32 1000, label %if.end4.sw.bb23_crit_edge
    i32 100, label %sw.bb21
    i32 2500, label %if.end4.sw.bb23_crit_edge59
  ]

if.end4.sw.bb23_crit_edge59:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb23

if.end4.sw.bb23_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb23

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %or22 = or i32 %and19, 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or22, ptr %val, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end4.sw.bb23_crit_edge, %if.end4.sw.bb23_crit_edge59
  %or24 = or i32 %and19, 8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or24, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb21, %if.end4.sw.epilog_crit_edge
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %31 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp25 = icmp eq i32 %32, 1
  br i1 %cmp25, label %if.then26, label %sw.epilog.if.end28_crit_edge

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %or27 = or i32 %34, 16
  store i32 %or27, ptr %val, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %sw.epilog.if.end28_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %call31 = call i32 @regmap_write(ptr noundef %36, i32 noundef 32, i32 noundef %38) #3
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %call34 = call i32 @regmap_read(ptr noundef %40, i32 noundef 232, ptr noundef nonnull %val) #3
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %and35 = and i32 %42, -17
  store i32 %and35, ptr %val, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %call38 = call i32 @regmap_write(ptr noundef %44, i32 noundef 232, i32 noundef %and35) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_sgmii_restart_an(ptr nocapture noundef readonly %eth, i32 noundef %mac_id) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sgmii = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 14
  %0 = ptrtoint ptr %sgmii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgmii, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !11
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 30
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp.not, i32 %mac_id, i32 0
  %arrayidx = getelementptr [2 x ptr], ptr %1, i32 0, i32 %spec.select
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = call i32 @regmap_read(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %val) #3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %or = or i32 %10, 512
  store i32 %or, ptr %val, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call5 = call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef %or) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_sgmii.c", i32 24, i32 28}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
